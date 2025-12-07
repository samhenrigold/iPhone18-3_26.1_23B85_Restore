char *sub_249ECB780(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = &v5[OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v5[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  v13 = &v5[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  v13[80] = -1;
  v14 = &v5[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions] = 0;
  BSRectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v6[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFillParentView] = v23;
  v24 = objc_allocWithZone(type metadata accessor for DropletGroupView());
  *&v6[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] = sub_249EB4A0C(v23, v16, v18, v20, v22, 0.0);
  v34.receiver = v6;
  v34.super_class = type metadata accessor for DropletShapeView();
  v25 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a2, a3, a4, a5);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = v25;

  v28 = sub_249ED6C60();
  v33[4] = sub_249ECBF20;
  v33[5] = v26;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 1107296256;
  v33[2] = sub_249ECBB54;
  v33[3] = &block_descriptor_3;
  v29 = _Block_copy(v33);
  v30 = [objc_opt_self() assertionWithIdentifier:v28 stateDidChangeHandler:v29];

  _Block_release(v29);

  v31 = *&v27[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  *&v27[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions] = v30;

  [v27 addSubview_];
  [v27 addSubview_];

  return v27;
}

void sub_249ECBA5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions))
    {
      v3 = *(Strong + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
      v4 = Strong;
      v5 = [*(Strong + OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions) isActive];
      v6 = [v3 layer];
      [v6 setShouldRasterize_];

      v7 = sub_249EB582C();
      v8 = [v7 layer];

      [v8 setShouldRasterize_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_249ECBB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_249ECBCA0()
{
  result = *&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for DropletShapeView();
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_249ECBDF0(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DropletShapeView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v3 = *&v1[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v4 = sub_249EB582C();
  [v2 bounds];
  [v4 setFrame_];

  v5 = *&v2[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFillParentView];
  [v2 bounds];
  [v5 setFrame_];
  [v2 bounds];
  return [v3 setFrame_];
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_249ECBF40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 != 255)
  {
    sub_249ECBF60(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_249ECBF60(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
  }
}

void sub_249ECBF74(float *a1)
{
  v2 = &v1[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
  if (*&v1[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix] != *a1 || *(v2 + 1) != a1[1] || *(v2 + 2) != a1[2] || *(v2 + 3) != a1[3] || *(v2 + 4) != a1[4] || *(v2 + 5) != a1[5] || *(v2 + 6) != a1[6] || *(v2 + 7) != a1[7] || *(v2 + 8) != a1[8] || *(v2 + 9) != a1[9] || *(v2 + 10) != a1[10] || *(v2 + 12) != a1[12] || *(v2 + 13) != a1[13] || *(v2 + 14) != a1[14] || *(v2 + 15) != a1[15] || *(v2 + 17) != a1[17] || *(v2 + 18) != a1[18] || *(v2 + 19) != a1[19])
  {
    v3 = [v1 layer];
    v4 = *(v2 + 3);
    v10 = *(v2 + 2);
    v11 = v4;
    v12 = *(v2 + 4);
    v5 = *(v2 + 1);
    v8 = *v2;
    v9 = v5;
    v6 = [objc_opt_self() valueWithCAColorMatrix_];
    if (qword_281252CA8 != -1)
    {
      swift_once();
    }

    v7 = sub_249ED6C60();
    [v3 setValue:v6 forKeyPath:{v7, v8, v9, v10, v11, v12}];
  }
}

char *sub_249ECC1C8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for AnimatableAdaptiveColorMatrixView();
  v10 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setAllowsInPlaceFiltering_];

  v12 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v13 = *MEMORY[0x277CDA2C0];
  v14 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v15 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 48];
  v30 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 32];
  v31 = v15;
  v32 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 64];
  v16 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 16];
  v28 = *&v10[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
  v29 = v16;
  v17 = objc_opt_self();
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v26[0] = v28;
  v26[1] = v29;
  v18 = [v17 valueWithCAColorMatrix_];
  [v14 setValue:v18 forKey:v13];

  v19 = [v10 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249ED8E50;
  v21 = sub_249EA1BF8(0, &qword_281252C90, 0x277CD9EA0);
  *(v20 + 32) = v12;
  *(v20 + 88) = v21;
  *(v20 + 56) = v21;
  *(v20 + 64) = v14;
  v22 = v12;
  v23 = v14;
  v24 = sub_249ED6CC0();

  [v19 setFilters_];

  return v10;
}

id sub_249ECC610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatableAdaptiveColorMatrixView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249ECC668(uint64_t a1, uint64_t a2)
{
  v2 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v2);

  MEMORY[0x24C205AA0](46, 0xE100000000000000);
  v3 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v3);

  qword_281253390 = 0x2E737265746C6966;
  *algn_281253398 = 0xE800000000000000;
  return result;
}

uint64_t sub_249ECC70C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_249ECC7B8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x24C205BD0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_249ED6E70();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t DRPDropletContextView.disableDropletEffectFilters.getter()
{
  v0 = sub_249ECCA8C();
  v1 = *(*&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);

  return v1;
}

void DRPDropletContextView.disableDropletEffectFilters.setter(char a1)
{
  v2 = a1 & 1;
  v3 = sub_249ECCA8C();
  v4 = *&v3[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v5 = *(v4 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);
  *(v4 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters) = a1;
  if (v5 != v2)
  {
    v6 = v3;
    sub_249EB6188();
    v3 = v6;
  }
}

id sub_249ECCA8C()
{
  v1 = OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView;
  v2 = *&v0[OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(type metadata accessor for DropletShapeView()) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

unint64_t DRPDropletContextView.boundaryEdges.getter()
{
  v0 = sub_249ECCA8C();
  v1 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference];
  v2 = v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference + 8];

  if (v2 != 1)
  {
    return v1;
  }

  result = sub_249ECCEE0();
  if (result >> 62)
  {
    v7 = result;
    v8 = sub_249ED6E70();
    result = v7;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C205BD0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(result + 32);
LABEL_7:
    v5 = v4;

    v6 = [v5 boundaryEdges];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t DRPDropletContextView.boundaryEdges.setter(uint64_t a1)
{
  v2 = sub_249ECCA8C();
  v3 = &v2[OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference];
  *v3 = a1;
  v3[8] = 0;
  v4 = sub_249EB4510();
  v24 = v2;
  v25 = v4;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    v6 = 0;
    v7 = v25 & 0xC000000000000001;
    v8 = v25 & 0xFFFFFFFFFFFFFF8;
    v9 = v25 + 32;
    v10 = MEMORY[0x277D85000];
    while (1)
    {
      if (v7)
      {
        v11 = MEMORY[0x24C205BD0](v6, v25);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_20;
        }

        v11 = *(v9 + 8 * v6);
      }

      v12 = v11;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v14 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges;
      v15 = *&v11[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges];
      *&v11[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges] = a1;
      if (v15 == a1)
      {

        if (v6 == i)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
        swift_beginAccess();
        v17 = *&v12[v16];
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = i;
          v20 = v17 + 32;

          do
          {
            sub_249EB7448(v20, v26);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v22 = Strong;
              (*((*v10 & *Strong) + 0xC8))(v12, *&v12[v14]);
            }

            sub_249ECFD64(v26);
            v20 += 8;
            --v18;
          }

          while (v18);

          i = v19;
          v7 = v25 & 0xC000000000000001;
        }

        v9 = v25 + 32;
        v8 = v25 & 0xFFFFFFFFFFFFFF8;
        if (v6 == i)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:
}

uint64_t sub_249ECCEE0()
{
  v0 = sub_249ECEE38();
  v1 = [v0 subviews];

  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v2 = sub_249ED6CD0();

  v10 = MEMORY[0x277D84F90];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_249ED6E70();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C205BD0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x24C205AB0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_249ED6CE0();
    }

    sub_249ED6CF0();
    v5 = v10;
  }

  while (v4 != v3);
LABEL_21:

  return v5;
}

double DRPDropletContextView.dropletRadius.getter()
{
  v0 = sub_249ECCA8C();
  v1 = *(*&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);

  return v1;
}

void DRPDropletContextView.dropletRadius.setter(double a1)
{
  v2 = sub_249ECCA8C();
  v3 = *&v2[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v4 = OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence;
  v5 = *(v3 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);
  *(v3 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence) = a1;
  if (v5 == a1)
  {
  }

  else
  {
    v28 = v2;
    v6 = sub_249EB4510();
    v29 = v6;
    if (v6 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v8 = 0;
      v9 = v29 & 0xFFFFFFFFFFFFFF8;
      v10 = v29 + 32;
      v11 = MEMORY[0x277D85000];
      v30 = i;
      v31 = v3;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x24C205BD0](v8, v29);
        }

        else
        {
          if (v8 >= *(v9 + 16))
          {
            goto LABEL_24;
          }

          v12 = *(v10 + 8 * v8);
        }

        v13 = v12;
        if (__OFADD__(v8++, 1))
        {
          break;
        }

        v15 = *(v3 + v4);
        v16 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence;
        v17 = *&v12[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence];
        *&v12[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence] = v15;
        if (v15 == v17)
        {

          if (v8 == i)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v18 = v4;
          v19 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
          swift_beginAccess();
          v20 = *&v13[v19];
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = v20 + 32;

            do
            {
              sub_249EB7448(v22, v32);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v24 = Strong;
                (*((*v11 & *Strong) + 0x68))(*&v13[v16]);
              }

              sub_249ECFD64(v32);
              v22 += 8;
              --v21;
            }

            while (v21);

            i = v30;
          }

          v4 = v18;
          v9 = v29 & 0xFFFFFFFFFFFFFF8;
          v3 = v31;
          v10 = v29 + 32;
          if (v8 == i)
          {
            goto LABEL_26;
          }
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    v25 = sub_249EB5820();
    sub_249EA0FD0(*(v3 + v4));

    v26 = sub_249EB59F4();
    sub_249EA0FD0(*(v3 + v4));

    v27 = sub_249EB582C();
    sub_249EA0FD0(*(v3 + v4));
  }
}

void *DRPDropletContextView.dropletColor.getter()
{
  v1 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DRPDropletContextView.dropletColor.setter(void *a1)
{
  v3 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_249ECD5D0(v4);
}

void sub_249ECD5D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    if (a1)
    {
      sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
      v6 = v5;
      v7 = a1;
      v8 = sub_249ED6D80();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = sub_249ECCA8C();
  v10 = *&v2[v4];
  if (v10)
  {
    v11 = *&v2[v4];
  }

  else
  {
    v11 = [objc_opt_self() blackColor];
    v10 = 0;
  }

  v12 = v10;
  v13 = [v2 traitCollection];
  v14 = [v11 resolvedColorWithTraitCollection_];

  v15 = [v14 CGColor];
  sub_249EB4360(v15);
}

double DRPDropletContextView.keylineStyle.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t DRPDropletContextView.keylineStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletContextView_keylineStyle;
  swift_beginAccess();
  *&v1[v3] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v1 applyKeylineStyle:a1 forContainerView:0];
  return swift_unknownObjectRelease();
}

void DRPDropletContextView.applyKeylineStyle(_:for:)(void *a1, void *a2)
{
  v7 = v2;
  v9 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 || (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    swift_unknownObjectRetain();
    v12 = sub_249ECCA8C();
    [v11 innerWidth];
    v3 = v13;
    v112 = v11;
    [v11 outerWidth];
    v14 = &v12[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
    v16 = *&v12[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
    v15 = *&v12[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth + 8];
    *v14 = v3;
    *(v14 + 1) = v17;
    sub_249ECB2F4(v16, v15);

    v18 = v7;
    v19 = *(*(v7 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
    v20 = sub_249EB5820();
    v21 = [v20 layer];
    v22 = [v21 softRim];

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
LABEL_9:
    v50 = sub_249ECCA8C();
    v51 = &v50[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
    v52 = *&v50[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
    v53 = *&v50[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth + 8];
    *v51 = 0;
    *(v51 + 1) = 0;
    sub_249ECB2F4(v52, v53);

    v18 = v7;
    v19 = *(*(v7 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
    v20 = sub_249EB5820();
    v54 = [v20 layer];
    v55 = [v54 softRim];

    v112 = 0;
    if ((v55 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v47 = 0;
    goto LABEL_11;
  }

  v24 = v23;
  swift_unknownObjectRetain();
  v25 = sub_249ECCA8C();
  [v24 innerWidth];
  v27 = v26;
  [v24 outerWidth];
  v28 = &v25[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
  v30 = *&v25[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth];
  v29 = *&v25[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth + 8];
  *v28 = v27;
  *(v28 + 1) = v31;
  sub_249ECB2F4(v30, v29);

  v32 = OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView;
  v33 = *(v7 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView);
  [v24 keylineInputEnd];
  v35 = v34;
  [v24 keylineInputStart];
  v4 = v36;
  [v24 keylineInputEnd];
  v5 = v37;
  v38 = sub_249EB59F4();
  v39 = &v38[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  v40 = *&v38[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect];
  v41 = *&v38[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 8];
  v42 = *&v38[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 16];
  v43 = v38[OBJC_IVAR____TtC9DropletUI17DropletEffectView_effect + 24];
  *v39 = v35;
  *(v39 + 1) = v4;
  *(v39 + 2) = v5;
  v39[24] = 1;
  sub_249EB8B98(v40, v41, v42, v43);

  v44 = *(v7 + v32);
  [v24 keylineBlurRadius];
  v3 = v45;
  v46 = sub_249EB5940();
  sub_249EA0FD0(v3);

  v18 = v7;
  v19 = *(*(v7 + v32) + OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView);
  v112 = v24;
  v47 = [v24 softRim];
  v20 = sub_249EB5820();
  v48 = [v20 layer];
  v49 = [v48 softRim];

  if (v47 != v49)
  {
LABEL_11:
    v56 = [v20 layer];
    [v56 setSoftRim_];
  }

LABEL_12:

  if (!a2)
  {
    v65 = sub_249ECCA8C();
    if (v9)
    {
      objc_opt_self();
      v66 = swift_dynamicCastObjCClass();
      if (v66)
      {
        v67 = [v66 color];
        v68 = v67 >> 8;
        v69 = v67 & 0xFFFFFFFFFFFF0000;
LABEL_28:
        v70 = 1;
LABEL_29:
        v120 = v114;
        v121 = v115;
        v122 = v116;
        v123 = v117;
        v118 = v69 | v67 | (v68 << 8);
        v119 = v3;
        v124 = v70;
        sub_249ECB0AC(&v118);

        v71 = *(v18 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView);
        if (v9)
        {
          v72 = v71;
          [v9 keylineFadeLengths];
          v3 = v73;
          v4 = v74;
          v5 = v75;
          v6 = v76;
        }

        else
        {
          v3 = *MEMORY[0x277D768C8];
          v4 = *(MEMORY[0x277D768C8] + 8);
          v5 = *(MEMORY[0x277D768C8] + 16);
          v6 = *(MEMORY[0x277D768C8] + 24);
          v72 = v71;
        }

        v77 = &v72[OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference];
        *v77 = v3;
        v77[1] = v4;
        v77[2] = v5;
        v77[3] = v6;
        *(v77 + 32) = 0;
        v78 = sub_249EB4510();
        v111 = v78;
        v110 = v72;
        if (v78 >> 62)
        {
          goto LABEL_67;
        }

        v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v79)
        {
          goto LABEL_34;
        }

        goto LABEL_68;
      }

      objc_opt_self();
      v104 = swift_dynamicCastObjCClass();
      if (v104)
      {
        [v104 adaptiveColorMatrix];
        v70 = 0;
        LOBYTE(v67) = v118;
        v3 = v119;
        v114 = v120;
        v115 = v121;
        v116 = v122;
        v117 = v123;
        v68 = v118 >> 8;
        v69 = v118 & 0xFFFFFFFFFFFF0000;
        goto LABEL_29;
      }

      objc_opt_self();
      v67 = swift_dynamicCastObjCClass();
      if (v67)
      {
        v105 = v67;
        swift_unknownObjectRetain();
        v106 = [v105 preferAudioReactivity];
        v107 = [v105 screenBlendMode];
        [v105 alpha];
        v3 = v108;
        swift_unknownObjectRelease();
        v69 = 0;
        LOBYTE(v67) = v106;
        v70 = 2;
        LOBYTE(v68) = v107;
        goto LABEL_29;
      }
    }

    else
    {
      LOBYTE(v67) = 0;
    }

    LOBYTE(v68) = 0;
    v69 = 0;
    goto LABEL_28;
  }

  type metadata accessor for DRPDropletContainerView();
  v57 = a2;
  sub_249ED6E60();

  v58 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v59 = *&v57[v58];

  if (v59 >> 62)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      break;
    }

    while (1)
    {
      v61 = 0;
      while (1)
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x24C205BD0](v61, v59);
        }

        else
        {
          if (v61 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v62 = *(v59 + 8 * v61 + 32);
        }

        v63 = v62;
        v64 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        *&v114 = v62;
        sub_249ECE5F4(&v114, v9);

        ++v61;
        if (v64 == v60)
        {
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        v79 = sub_249ED6E70();
        if (!v79)
        {
          break;
        }

LABEL_34:
        v80 = 0;
        v81 = v111 & 0xC000000000000001;
        v82 = v111 & 0xFFFFFFFFFFFFFF8;
        v83 = v111 + 32;
        v84 = MEMORY[0x277D85000];
        while (1)
        {
          if (v81)
          {
            v85 = MEMORY[0x24C205BD0](v80, v111);
          }

          else
          {
            if (v80 >= *(v82 + 16))
            {
              goto LABEL_66;
            }

            v85 = *(v83 + 8 * v80);
          }

          v86 = v85;
          if (__OFADD__(v80++, 1))
          {
            break;
          }

          v88 = &v85[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
          v89 = *&v85[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
          v90 = *&v85[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 8];
          v91 = *&v85[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 16];
          v92 = *&v85[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 24];
          *v88 = v3;
          v88[1] = v4;
          v88[2] = v5;
          v88[3] = v6;
          if (v3 == v89 && v4 == v90 && v5 == v91 && v6 == v92)
          {

            if (v80 == v79)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v96 = v9;
            v97 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
            swift_beginAccess();
            v98 = *&v86[v97];
            v99 = *(v98 + 16);
            if (v99)
            {
              v100 = v79;
              v101 = v98 + 32;

              do
              {
                sub_249EB7448(v101, v113);
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v103 = Strong;
                  (*((*v84 & *Strong) + 0xE0))(v86, *v88, v88[1], v88[2], v88[3]);
                }

                sub_249ECFD64(v113);
                v101 += 8;
                --v99;
              }

              while (v99);

              v79 = v100;
              v81 = v111 & 0xC000000000000001;
            }

            v9 = v96;
            v83 = v111 + 32;
            v82 = v111 & 0xFFFFFFFFFFFFFF8;
            if (v80 == v79)
            {
              goto LABEL_68;
            }
          }
        }
      }

LABEL_68:

      v109 = sub_249ECCEE0();
      v59 = sub_249ECE2A0(v109);

      if (!(v59 >> 62))
      {
        break;
      }

LABEL_69:
      v60 = sub_249ED6E70();
      if (!v60)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_70:
}

unint64_t sub_249ECE2A0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x24C205BD0](v2, v26);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = OBJC_IVAR___DRPDropletContainerView_participantViews;
      swift_beginAccess();
      v7 = *&v4[v6];

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_249ED6E70();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_249ED6E70();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_249ED6E70();
        goto LABEL_20;
      }

      if (v10)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_249ED6DE0();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_249ED6E70();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v14 >> 1) - v13) < v34)
          {
            goto LABEL_42;
          }

          v32 = v3;
          v17 = v12 + 8 * v13 + 32;
          v28 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_44;
            }

            sub_249ECFEA0();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29960, &unk_249ED9390);
              v19 = sub_249EB3580(v33, i, v7);
              v21 = *v20;
              (v19)(v33, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for DropletParticipantView();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v32;
          if (v34 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v34);
            v23 = v22 + v34;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_25;
        }
      }

      if (v34 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

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
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_249ED6E70();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_249ECE5F4(uint64_t *a1, id a2)
{
  v4 = *a1;
  if (a2)
  {
    [a2 keylineFadeLengths];
  }

  else
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
  }

  v9 = (v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths);
  v10 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths);
  v11 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 8);
  v12 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 16);
  v13 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 24);
  *v9 = v5;
  v9[1] = v6;
  v9[2] = v7;
  v9[3] = v8;
  if (v5 != v10 || v6 != v11 || v7 != v12 || v8 != v13)
  {
    v17 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v18 = *(v4 + v17);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + 32;

      v21 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v20, &v92);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v23 = Strong;
          (*((*v21 & *Strong) + 0xE0))(v4, *v9, v9[1], v9[2], v9[3]);
        }

        sub_249ECFD64(&v92);
        v20 += 8;
        --v19;
      }

      while (v19);
    }
  }

  if (a2)
  {
    [a2 keylineOutsets];
  }

  else
  {
    v24 = *MEMORY[0x277D768C8];
    v25 = *(MEMORY[0x277D768C8] + 8);
    v26 = *(MEMORY[0x277D768C8] + 16);
    v27 = *(MEMORY[0x277D768C8] + 24);
  }

  v28 = (v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets);
  v29 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets);
  v30 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets + 8);
  v31 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets + 16);
  v32 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets + 24);
  *v28 = v24;
  v28[1] = v25;
  v28[2] = v26;
  v28[3] = v27;
  if (v24 != v29 || v25 != v30 || v26 != v31 || v27 != v32)
  {
    v36 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v37 = *(v4 + v36);
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = v37 + 32;

      v40 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v39, &v92);
        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          (*((*v40 & *v41) + 0xE8))(v4, *v28, v28[1], v28[2], v28[3]);
        }

        sub_249ECFD64(&v92);
        v39 += 8;
        --v38;
      }

      while (v38);
    }
  }

  if (!a2)
  {
    LOBYTE(v44) = 0;
    goto LABEL_43;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = [v43 color];
    v45 = v44 >> 8;
    v46 = v44 & 0xFFFFFFFFFFFF0000;
LABEL_44:
    v47 = 1;
    goto LABEL_45;
  }

  objc_opt_self();
  v58 = swift_dynamicCastObjCClass();
  if (v58)
  {
    [v58 adaptiveColorMatrix];
    v47 = 0;
    LOBYTE(v44) = v92;
    v2 = v93;
    v88 = v94;
    v89 = v95;
    v90 = v96;
    v91 = v97;
    v45 = v92 >> 8;
    v46 = v92 & 0xFFFFFFFFFFFF0000;
    goto LABEL_45;
  }

  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {
LABEL_43:
    LOBYTE(v45) = 0;
    v46 = 0;
    goto LABEL_44;
  }

  v81 = v44;
  swift_unknownObjectRetain();
  v82 = [v81 preferAudioReactivity];
  v83 = [v81 screenBlendMode];
  [v81 alpha];
  v2 = v84;
  swift_unknownObjectRelease();
  v46 = 0;
  LOBYTE(v44) = v82;
  v47 = 2;
  LOBYTE(v45) = v83;
LABEL_45:
  v92 = v46 | v44 | (v45 << 8);
  v93 = v2;
  v94 = v88;
  v95 = v89;
  v96 = v90;
  v97 = v91;
  v98 = v47;
  sub_249ED3A80(&v92);
  if (a2)
  {
    [a2 normalizedStartLocation];
  }

  else
  {
    v48 = 0.99;
  }

  v49 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation;
  v50 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation);
  *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation) = v48;
  if (v48 != v50)
  {
    v51 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v52 = *(v4 + v51);
    v53 = *(v52 + 16);
    if (v53)
    {
      v54 = v52 + 32;

      v55 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v54, v87);
        v56 = swift_unknownObjectWeakLoadStrong();
        if (v56)
        {
          v57 = v56;
          (*((*v55 & *v56) + 0x100))(v4, *(v4 + v49));
        }

        sub_249ECFD64(v87);
        v54 += 8;
        --v53;
      }

      while (v53);
    }
  }

  if (a2)
  {
    [a2 normalizedStopLocation];
  }

  else
  {
    v59 = 1.0;
  }

  v60 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation;
  v61 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation);
  *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation) = v59;
  if (v59 != v61)
  {
    v62 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v63 = *(v4 + v62);
    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = v63 + 32;

      v66 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v65, v86);
        v67 = swift_unknownObjectWeakLoadStrong();
        if (v67)
        {
          v68 = v67;
          (*((*v66 & *v67) + 0x108))(v4, *(v4 + v60));
        }

        sub_249ECFD64(v86);
        v65 += 8;
        --v64;
      }

      while (v64);
    }
  }

  if (a2)
  {
    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (v69)
    {
      v70 = v69;
      swift_unknownObjectRetain();
      [v70 edrGain];
      v71 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain;
      v72 = *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain);
      *(v4 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain) = v73;
      if (v73 != v72)
      {
        v74 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
        swift_beginAccess();
        v75 = *(v4 + v74);
        v76 = *(v75 + 16);
        if (v76)
        {
          v77 = v75 + 32;

          v78 = MEMORY[0x277D85000];
          do
          {
            sub_249EB7448(v77, &v85);
            v79 = swift_unknownObjectWeakLoadStrong();
            if (v79)
            {
              v80 = v79;
              (*((*v78 & *v79) + 0xF8))(v4, *(v4 + v71));
            }

            sub_249ECFD64(&v85);
            v77 += 8;
            --v76;
          }

          while (v76);
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

void __swiftcall DRPDropletContextView.addContainer(contentView:)(DRPDropletContainerView *__return_ptr retstr, UIView_optional *contentView)
{
  v3 = v2;
  type metadata accessor for DRPDropletContainerView();
  v5 = contentView;
  v6 = sub_249ECCA8C();
  v7 = sub_249ECB3DC();

  v8 = sub_249EB0FAC(contentView, v7);
  v9 = v3;
  v10 = v8;
  v11 = *(v9 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) + OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference;
  if ((*(v11 + 8) & 1) == 0)
  {
    [v8 setBoundaryEdges_];
  }

  v12 = sub_249ECEE38();
  [v12 addSubview_];
}

id sub_249ECEE38()
{
  v1 = OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView;
  v2 = *&v0[OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

Swift::Void __swiftcall DRPDropletContextView.removeContainer(_:)(DRPDropletContainerView *a1)
{
  v4 = [(DRPDropletContainerView *)a1 superview];
  v20 = v1;
  v5 = sub_249ECEE38();

  if (v4)
  {

    if (v4 != v5)
    {
      goto LABEL_17;
    }

    v6 = OBJC_IVAR___DRPDropletContainerView_participantViews;
    swift_beginAccess();
    v17 = v6;
    v18 = a1;
    v2 = *(&a1->super.super.super.isa + v6);
    if (v2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
    {

      if (!i)
      {
        break;
      }

      v8 = 0;
      v19 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v19)
        {
          v9 = MEMORY[0x24C205BD0](v8, v2);
        }

        else
        {
          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v2 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = sub_249ECCA8C();
        v13 = sub_249EB4510();
        v21 = v10;
        MEMORY[0x28223BE20](v13, v14);
        v16[2] = &v21;
        sub_249ECC7B8(sub_249ECFDCC, v16, v13);

        [v10 removeFromSuperview];
        ++v8;
        if (v11 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_14:

    v15 = v18;
    *(&v18->super.super.super.isa + v17) = MEMORY[0x277D84F90];

    [(DRPDropletContainerView *)v15 removeFromSuperview];
  }

  else
  {
    __break(1u);
  }
}

char *DRPDropletContextView.acquireGeometricChangeAssertion(forReason:)(uint64_t a1, uint64_t a2)
{
  result = sub_249ECCA8C();
  v3 = *&result[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = sub_249ED6C60();
    v7 = [v5 acquireForReason_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DRPDropletContextView.invalidate()()
{
  v0 = sub_249ECCA8C();
  v1 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];

  [v1 invalidate];
}

void __swiftcall DRPDropletContextView.init(frame:)(DRPDropletContextView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id DRPDropletContextView.init(frame:)()
{
  *(v0 + OBJC_IVAR___DRPDropletContextView_dropletColor) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView_keylineStyle) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) = 0;
  v19.super_class = DRPDropletContextView;
  v1 = objc_msgSendSuper2(&v19, sel_initWithFrame_);
  v2 = [v1 layer];
  [v2 setAllowsHitTesting_];

  v3 = sub_249ECCA8C();
  [v1 addSubview_];

  v4 = sub_249ECEE38();
  [v1 addSubview_];

  v5 = [v1 subviews];
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v6 = sub_249ED6CD0();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C205BD0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setOverrideUserInterfaceStyle_];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v12 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v13 = sub_249ED6D00();
  [v12 setValue:v13 forKey:*MEMORY[0x277CDA520]];

  v14 = [v1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249ED8C90;
  *(v15 + 56) = sub_249EA1BF8(0, &qword_281252C90, 0x277CD9EA0);
  *(v15 + 32) = v12;
  v16 = v12;
  v17 = sub_249ED6CC0();

  [v14 setFilters_];

  return v1;
}

void DRPDropletContextView.init(coder:)()
{
  *(v0 + OBJC_IVAR___DRPDropletContextView_dropletColor) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView_keylineStyle) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) = 0;
  sub_249ED6E50();
  __break(1u);
}

void __swiftcall DRPDropletContextView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v12.super_class = DRPDropletContextView;
  v4 = [(UIView_optional *)&v12 hitTest:with.value.super.isa withEvent:_.x, _.y];
  v5 = v4;
  if (v4)
  {
    if (v4 == v3 || (v6 = [v3 subviews], sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18), v7 = sub_249ED6CD0(), v6, v11 = v5, MEMORY[0x28223BE20](v8, v9), v10[2] = &v11, LOBYTE(v6) = sub_249ECC7B8(sub_249ECFE24, v10, v7), , (v6 & 1) != 0))
    {
    }
  }
}

Swift::Void __swiftcall DRPDropletContextView.layoutSubviews()()
{
  v16.super_class = DRPDropletContextView;
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 subviews];
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v10 = sub_249ED6CD0();

  if (v10 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C205BD0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 setFrame_];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_249ECFD64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249ECFEA0()
{
  result = qword_27EF29968;
  if (!qword_27EF29968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF29960, &unk_249ED9390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF29968);
  }

  return result;
}

uint64_t sub_249ECFF04(uint64_t a1, uint64_t a2)
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
  return sub_249ED1CFC(v7, v9) & 1;
}

id sub_249ECFF70(double *a1)
{
  BSRectWithSize();
  UIRectCenteredAboutPoint();
  UIEdgeInsetsInsetRect(v2, v3, v4, v5, -*&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets], -*&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets + 8]);
  BSRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  UIRectGetCenter();
  v15 = v14;
  v17 = v16;
  [v1 bounds];
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  if (!CGRectEqualToRect(v26, v27))
  {
    [v1 setBounds_];
    v18 = sub_249ED1088();
    [v18 setFrame_];

    v19 = sub_249ED0FD4();
    [v19 setFrame_];

    v20 = *&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView];
    if (v20)
    {
      [v20 setFrame_];
    }

    sub_249ED14A4();
  }

  result = [v1 center];
  if (v23 != v15 || v22 != v17)
  {

    return [v1 setCenter_];
  }

  return result;
}

void sub_249ED0190(uint64_t result, float64x2_t a2, float64_t a3, float64x2_t a4, float64_t a5)
{
  v6 = (v5 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths);
  v7 = *(v5 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths);
  v8 = *(v5 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths + 16);
  *v6 = a2.f64[0];
  v6[1] = a3;
  v6[2] = a4.f64[0];
  v6[3] = a5;
  a2.f64[1] = a3;
  a4.f64[1] = a5;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, a2), vceqq_f64(v8, a4)))) & 1) == 0)
  {
    sub_249ED14A4();
  }
}

void sub_249ED01D4(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets];
  v6 = *&v4[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets];
  v7 = *&v4[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets + 16];
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    [v4 setNeedsLayout];

    [v4 layoutIfNeeded];
  }
}

uint64_t sub_249ED0258(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType;
  v5 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 32);
  v6 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 64);
  v13 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 48);
  v14 = v6;
  v15 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 80);
  v7 = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 16);
  v12[0] = *(v2 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType);
  v12[1] = v7;
  v12[2] = v5;
  v16[0] = v12[0];
  v16[1] = v7;
  v16[3] = v13;
  v16[4] = v6;
  v16[2] = v5;
  v17 = v15;
  v8 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v8;
  *(v4 + 80) = *(a2 + 80);
  v9 = *(a2 + 64);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = v9;
  *(v4 + 32) = *(a2 + 32);
  sub_249EB0270(v12, v11);
  sub_249EB0270(a2, v11);
  sub_249EB73F4(v16);
  sub_249ED1FA4();
  return sub_249EB73F4(v12);
}

void sub_249ED030C(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation;
  v3 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation);
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation) = a1;
  if (v3 != a1)
  {
    v4 = v1;
    v5 = sub_249ED113C();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v8 = 0;
      v9 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C205BD0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_249EB383C(*(v4 + v2));
        sub_249EB39A8(*(v4 + v9));

        ++v8;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

void sub_249ED0440(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation;
  v3 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation);
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation) = a1;
  if (v3 != a1)
  {
    v4 = v1;
    v5 = sub_249ED113C();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
    {
      v8 = 0;
      v9 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C205BD0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_249EB383C(*(v4 + v9));
        sub_249EB39A8(*(v4 + v2));

        ++v8;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

void sub_249ED0574()
{
  v1 = v0;
  v2 = [v0 isHidden];
  v3 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView;
  v4 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView];
  if (v2)
  {
    if (v4)
    {
      v22 = v4;
      [v22 setAlpha_];
      [v22 setHidden_];
    }
  }

  else if (v4 || ([v0 bounds], v6 = v5, v8 = v7, v10 = v9, v12 = v11, v13 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_edrGain], v14 = objc_allocWithZone(type metadata accessor for AnimatableIntelligentView()), v15 = sub_249ED2ECC(1, v6, v8, v10, v12, v13), objc_msgSend(v15, sel_setAlpha_, 0.0), v16 = sub_249ED0FD4(), objc_msgSend(v1, sel_insertSubview_aboveSubview_, v15, v16), v16, v17 = objc_opt_self(), v18 = swift_allocObject(), *(v18 + 16) = v1, aBlock[4] = sub_249ED1F40, aBlock[5] = v18, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_249EBF654, aBlock[3] = &block_descriptor_4, v19 = _Block_copy(aBlock), v20 = v1, , objc_msgSend(v17, sel__performWithoutRetargetingAnimations_, v19), _Block_release(v19), v21 = *&v1[v3], *&v1[v3] = v15, v21, (v4 = *&v1[v3]) != 0))
  {
    [v4 setHidden_];
  }
}

void sub_249ED07C4(double a1)
{
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_edrGain) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain;
    *&v2[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain] = a1;
    v4 = v2;
    v5 = sub_249ED34F4();
    sub_249ED23B8(*&v2[v3]);
  }
}

char *sub_249ED0950(_BYTE *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType);
  *v3 = 0;
  v3[80] = 1;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView) = 0;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView) = 0;
  v4 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 16];
  v38[0] = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType];
  v38[1] = v4;
  v5 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 32];
  v6 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 48];
  v7 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 64];
  v39 = a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 80];
  v38[3] = v6;
  v38[4] = v7;
  v38[2] = v5;
  v8 = *(v3 + 1);
  v40[0] = *v3;
  v40[1] = v8;
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v41 = v3[80];
  v40[3] = v10;
  v40[4] = v11;
  v40[2] = v9;
  memmove(v3, &a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType], 0x51uLL);
  sub_249EB0270(v38, v37);
  sub_249EB73F4(v40);
  v12 = (v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths);
  v13 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths + 16];
  *v12 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
  v12[1] = v13;
  v14 = (v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineOutsets);
  v15 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets + 16];
  *v14 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets];
  v14[1] = v15;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation) = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation];
  v16 = 0x27EF29000uLL;
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStopLocation) = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation];
  *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_edrGain) = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain];
  v36 = a1;
  v17 = sub_249EBED94(v36);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 rootSettings];
  [v20 addKeyObserver_];

  sub_249ED1618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249ED8F10;
  *(inited + 32) = sub_249ED1088();
  *(inited + 40) = sub_249ED0FD4();
  v22 = sub_249ED113C();
  if (v22 >> 62)
  {
    goto LABEL_30;
  }

  sub_249ED6EE0();
  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  for (i = v22; ; i = sub_249ED6E60())
  {

    v37[0] = inited;
    sub_249EB6F9C(i);
    v24 = v37[0];
    if (v37[0] >> 62)
    {
      inited = sub_249ED6E70();
    }

    else
    {
      inited = *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v19;
    if (inited)
    {
      v25 = 0;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x24C205BD0](v25, v24);
        }

        else
        {
          if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v26 = *(v24 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v19 addSubview_];

        ++v25;
        if (v28 == inited)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_14:

    sub_249ED1FA4();
    sub_249ED14A4();
    inited = *&v19[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews];
    v29 = inited >> 62 ? sub_249ED6E70() : *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantNormalizedStartLocation;
    v16 = *(v16 + 2480);

    if (!v29)
    {
      break;
    }

    v31 = 0;
    while (1)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x24C205BD0](v31, inited);
      }

      else
      {
        if (v31 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v32 = *(inited + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      sub_249EB383C(*&v19[v30]);
      sub_249EB39A8(*&v19[v16]);

      ++v31;
      if (v34 == v29)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  }

LABEL_25:

  return v19;
}

void sub_249ED0E18(uint64_t a1)
{
  v26.receiver = v1;
  v26.super_class = type metadata accessor for DropletBackgroundView();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v2 = sub_249ED1088();
  [v1 bounds];
  [v2 setFrame_];

  v3 = sub_249ED0FD4();
  [v1 bounds];
  [v3 setFrame_];

  v4 = *&v1[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView];
  if (v4)
  {
    v5 = v4;
    [v1 bounds];
    [v5 setFrame_];
  }

  v6 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 176];
  v22 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 160];
  v23 = v6;
  v24 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 192];
  v25 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 208];
  v7 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 112];
  v18 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 96];
  v19 = v7;
  v8 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 144];
  v20 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 128];
  v21 = v8;
  v9 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 48];
  v14 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 32];
  v15 = v9;
  v10 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 80];
  v16 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 64];
  v17 = v10;
  v11 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 16];
  v12 = *&v1[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry];
  v13 = v11;
  if (!sub_249EB74B8(&v12))
  {
    v27[10] = v22;
    v27[11] = v23;
    v27[12] = v24;
    v28 = v25;
    v27[6] = v18;
    v27[7] = v19;
    v27[8] = v20;
    v27[9] = v21;
    v27[2] = v14;
    v27[3] = v15;
    v27[4] = v16;
    v27[5] = v17;
    v27[0] = v12;
    v27[1] = v13;
    sub_249ECFF70(v27);
  }

  sub_249ED14A4();
}

id sub_249ED0FD4()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(type metadata accessor for AnimatableAdaptiveColorMatrixView()) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_249ED1088()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_249ED113C()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews;
  if (*(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249ED8F30;
    *(v2 + 32) = sub_249ED11EC();
    *(v2 + 40) = sub_249ED1284();
    *(v2 + 48) = sub_249ED132C();
    *(v2 + 56) = sub_249ED13E8();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_249ED11EC()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView];
  }

  else
  {
    [v0 bounds];
    Width = CGRectGetWidth(v9);
    v5 = sub_249EB3EF8(1, 0.0, 0.0, Width, *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths], 0.0, 1.0);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_249ED1284()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths + 8];
    [v0 bounds];
    Height = CGRectGetHeight(v10);
    v6 = sub_249EB3EF8(0, 0.0, 0.0, v4, Height, 0.0, 1.0);
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_249ED132C()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths + 16];
    [v0 bounds];
    v5 = CGRectGetHeight(v11) - v4;
    [v0 bounds];
    Width = CGRectGetWidth(v12);
    v7 = sub_249EB3EF8(1, 0.0, v5, Width, v4, 1.0, 0.0);
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_249ED13E8()
{
  v1 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths + 24];
    [v0 bounds];
    v5 = CGRectGetWidth(v11) - v4;
    [v0 bounds];
    Height = CGRectGetHeight(v12);
    v7 = sub_249EB3EF8(0, v5, 0.0, v4, Height, 1.0, 0.0);
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_249ED14A4()
{
  v1 = sub_249ED11EC();
  [v0 bounds];
  Width = CGRectGetWidth(v13);
  v3 = &v0[OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_participantKeylineFadeLengths];
  [v1 setFrame_];

  v4 = sub_249ED132C();
  v5 = v3[2];
  [v0 bounds];
  v6 = CGRectGetHeight(v14) - v5;
  [v0 bounds];
  [v4 setFrame_];

  v7 = sub_249ED1284();
  v8 = v3[1];
  [v0 bounds];
  [v7 setFrame_];

  v11 = sub_249ED13E8();
  v9 = v3[3];
  [v0 bounds];
  v10 = CGRectGetWidth(v17) - v9;
  [v0 bounds];
  [v11 setFrame_];
}

uint64_t sub_249ED1618()
{
  v1 = [objc_opt_self() rootSettings];
  v2 = [v1 suppressCompositingFilterDestOut];

  if (!v2)
  {
    v14 = sub_249ED6C70();
    v16 = v15;
    v17 = sub_249ED113C();
    v5 = v17;
    if (v17 >> 62)
    {
      v18 = sub_249ED6E70();
      if (v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_16:
        v19 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x24C205BD0](v19, v5);
          }

          else
          {
            if (v19 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v22 = *(v5 + 8 * v19 + 32);
          }

          v23 = v22;
          v24 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_36;
          }

          v25 = [v22 layer];
          v26 = [v25 compositingFilter];

          if (v26)
          {
            sub_249ED6D90();
            swift_unknownObjectRelease();
          }

          else
          {
            v31 = 0u;
            v32 = 0u;
          }

          v33 = v31;
          v34 = v32;
          if (*(&v32 + 1))
          {
            if (swift_dynamicCast())
            {
              if (v29 == v14 && v30 == v16)
              {

                goto LABEL_19;
              }

              v27 = sub_249ED6ED0();

              if (v27)
              {

                goto LABEL_19;
              }
            }
          }

          else
          {
            sub_249EAFF5C(&v33);
          }

          v20 = [v23 layer];
          v21 = sub_249ED6C60();
          [v20 setCompositingFilter_];

LABEL_19:
          ++v19;
        }

        while (v24 != v18);
      }
    }
  }

  v3 = [v0 traitCollection];
  [v3 displayScale];

  v4 = sub_249ED113C();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C205BD0](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v8 = *(v5 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 layer];
      v12 = [v11 compositingFilter];

      if (v12)
      {
        sub_249ED6D90();
        swift_unknownObjectRelease();
        sub_249EA90F4(&v31, &v33);
        sub_249EAFF5C(&v33);
        v13 = [v9 layer];
        [v13 setCompositingFilter_];
      }

      else
      {

        v33 = 0u;
        v34 = 0u;
        sub_249EAFF5C(&v33);
      }

      if (v10 == i)
      {
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }
}

void sub_249ED19FC()
{
  sub_249ECBF60(*(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 8), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 16), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 24), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 32), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 40), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 48), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 56), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 64), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 72), *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 80));

  v1 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView);
}

id sub_249ED1AD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DropletBackgroundView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249ED1C40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_249ED1C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_249ED1CFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = *(a1 + 1);
  if (*(a1 + 80))
  {
    if (*(a1 + 80) != 1)
    {
      if (*(a2 + 80) == 2)
      {
        v7 = (v4 == *(a2 + 1)) & ~(LOBYTE(v3) ^ LOBYTE(v2) | ((LOWORD(v3) ^ LOWORD(v2)) >> 8));
        return v7 & 1;
      }

      goto LABEL_22;
    }

    if (*(a2 + 80) != 1)
    {
      goto LABEL_22;
    }

    if (v3 != 0.0)
    {
      if (v2 != 0.0)
      {
        sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
        sub_249EB0270(a1, v16);
        sub_249EB0270(a2, v16);
        v7 = sub_249ED6D80();
        sub_249EB73F4(a1);
        sub_249EB73F4(a2);
        return v7 & 1;
      }

LABEL_22:
      v7 = 0;
      return v7 & 1;
    }

    if (v2 == 0.0)
    {
      sub_249EB0270(a1, v16);
      sub_249EB0270(a2, v16);
      v7 = 1;
    }

    else
    {
      v14 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (*(a2 + 80))
    {
      goto LABEL_22;
    }

    if (*&v2 != COERCE_FLOAT(LODWORD(v3) & 0xFFFF00FF | (BYTE1(v3) << 8)))
    {
      goto LABEL_22;
    }

    if (*(&v2 + 1) != *(&v3 + 1))
    {
      goto LABEL_22;
    }

    if (*(a2 + 2) != *&v4)
    {
      goto LABEL_22;
    }

    v8.i32[0] = HIDWORD(a1[1]);
    v8.i32[1] = *(a1 + 4);
    v8.i64[1] = *(a1 + 20);
    if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(*(a2 + 12), v8), vceqq_f32(*(a2 + 28), *(a1 + 28))))) & 1) == 0)
    {
      goto LABEL_22;
    }

    v9.i32[0] = HIDWORD(*(a1 + 44));
    v9.i32[1] = *(a1 + 13);
    v9.i64[1] = a1[7];
    v10.i32[0] = HIDWORD(*(a2 + 44));
    v10.i32[1] = *(a2 + 13);
    v10.i64[1] = a2[7];
    if ((vminv_u16(vmovn_s32(vceqq_f32(v9, v10))) & 1) == 0)
    {
      goto LABEL_22;
    }

    v12 = *(a1 + 18) == *(a2 + 18) && COERCE_FLOAT(HIDWORD(a1[8])) == COERCE_FLOAT(HIDWORD(a2[8]));
    v7 = v12 && *(a1 + 19) == *(a2 + 19);
  }

  return v7 & 1;
}

id sub_249ED1F40()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_249ED1FA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 48);
  v31 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 32);
  v32 = v2;
  v33 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 64);
  v34 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 80);
  v3 = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType + 16);
  v30[0] = *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType);
  v30[1] = v3;
  v4 = BYTE1(v30[0]);
  v5 = *(v30 + 2) | (WORD3(v30[0]) << 32);
  v6 = *(v30 + 1);
  v37 = v2;
  v38 = v33;
  v35 = v3;
  v36 = v31;
  if (!v34)
  {
    v12 = sub_249ED1088();
    [v12 setAlpha_];

    v13 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView);
    if (v13)
    {
      [v13 setAlpha_];
    }

    v14 = sub_249ED0FD4();
    v15 = &v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
    v16 = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 48];
    v29[2] = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 32];
    v29[3] = v16;
    v29[4] = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 64];
    v17 = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix + 16];
    v29[0] = *&v14[OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix];
    v29[1] = v17;
    *v15 = v30[0];
    v15[1] = v4;
    *(v15 + 3) = WORD2(v5);
    *(v15 + 2) = v5;
    *(v15 + 1) = v6;
    v18 = v38;
    *(v15 + 3) = v37;
    *(v15 + 4) = v18;
    v19 = v36;
    *(v15 + 1) = v35;
    *(v15 + 2) = v19;
    sub_249ECBF74(v29);

    result = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView);
    v20 = 1.0;
    goto LABEL_9;
  }

  if (v34 == 1)
  {
    v7 = *&v30[0];
    v8 = sub_249ED0FD4();
    [v8 setAlpha_];

    v9 = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView);
    if (v9)
    {
      [v9 setAlpha_];
    }

    v10 = sub_249ED1088();
    [v10 setBackgroundColor_];

    [*(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView) setAlpha_];
    return sub_249EB73F4(v30);
  }

  v21 = sub_249ED1088();
  [v21 setAlpha_];

  v22 = sub_249ED0FD4();
  [v22 setAlpha_];

  v23 = OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView;
  result = *(v1 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView);
  if (result)
  {
    [result setHidden_];
    result = *(v1 + v23);
    if (result)
    {
      v24 = [result layer];
      v25 = (BYTE1(v30[0]) & 1) != 0 ? *MEMORY[0x277CDA600] : 0;
      [v24 setCompositingFilter_];

      result = swift_unknownObjectRelease();
      v26 = *(v1 + v23);
      if (v26)
      {
        v27 = v26[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity];
        v26[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity] = v30[0] & 1;
        v28 = v26;
        sub_249ED2B10(v27);

        result = *(v1 + v23);
        if (result)
        {
          v20 = v6;
LABEL_9:

          return [result setAlpha_];
        }
      }
    }
  }

  return result;
}

void sub_249ED22E4()
{
  v1 = v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_backgroundType;
  *v1 = 0;
  *(v1 + 80) = 1;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___adaptiveColorMatrixView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___colorView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView_intelligentView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___gradientViews) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___topGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___leftGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___bottomGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI21DropletBackgroundView____lazy_storage___rightGradientView) = 0;
  sub_249ED6E50();
  __break(1u);
}

void sub_249ED23B8(double a1)
{
  v3 = [v1 layer];
  [v3 setWantsExtendedDynamicRangeContent_];

  v4 = [v1 layer];
  [v4 setAllowsLimitedHeadroom_];

  v5 = [v1 layer];
  v7 = v5;
  v6 = 2.0;
  if (a1 < 2.0)
  {
    v6 = a1;
  }

  *&v6 = v6;
  [v5 setGain_];
}

void sub_249ED24A0(float *a1)
{
  v2 = &v1[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
  if (*&v1[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix] != *a1 || *(v2 + 1) != a1[1] || *(v2 + 2) != a1[2] || *(v2 + 3) != a1[3] || *(v2 + 4) != a1[4] || *(v2 + 5) != a1[5] || *(v2 + 6) != a1[6] || *(v2 + 7) != a1[7] || *(v2 + 8) != a1[8] || *(v2 + 9) != a1[9] || *(v2 + 10) != a1[10] || *(v2 + 12) != a1[12] || *(v2 + 13) != a1[13] || *(v2 + 14) != a1[14] || *(v2 + 15) != a1[15] || *(v2 + 17) != a1[17] || *(v2 + 18) != a1[18] || *(v2 + 19) != a1[19])
  {
    v3 = [v1 layer];
    v4 = *(v2 + 3);
    v10 = *(v2 + 2);
    v11 = v4;
    v12 = *(v2 + 4);
    v5 = *(v2 + 1);
    v8 = *v2;
    v9 = v5;
    v6 = [objc_opt_self() valueWithCAColorMatrix_];
    if (qword_281252CA8 != -1)
    {
      swift_once();
    }

    v7 = sub_249ED6C60();
    [v3 setValue:v6 forKeyPath:{v7, v8, v9, v10, v11, v12}];
  }
}

uint64_t sub_249ED2764(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (qword_281252DF0 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11[0] = v4;
  v11[1] = a2;
  MEMORY[0x28223BE20](result, a2);
  v9[2] = v11;
  if (sub_249ECC70C(sub_249ED3A64, v9, v5))
  {
    return 1;
  }

  v6 = sub_249ED6C60();
  v7 = type metadata accessor for AnimatableLightView();
  v10.receiver = v2;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel__shouldAnimatePropertyWithKey_, v6);

  return v8;
}

id sub_249ED289C()
{
  v1 = OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(MEMORY[0x277D76058]) initWithFrame:v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_preferringAudioReactivity] preferringAudioReactivity:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_249ED2960()
{
  v1 = OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v9 = [objc_opt_self() whiteColor];
    [v8 setBackgroundColor_];

    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_249ED2B10(char a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity;
  if (v1[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity] != (a1 & 1))
  {
    v3 = v1;
    v4 = sub_249ED34F4();
    [v4 removeFromSuperview];

    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = v3[v2];
    v14 = [objc_opt_self() rootSettings];
    v15 = [v14 intelligentEdgeLightKeylineStyleColorMatrix];

    [v15 caColorMatrix];
    v16 = *&v3[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain];
    v17 = type metadata accessor for AnimatableLightView();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView] = 0;
    *&v18[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView] = 0;
    v19 = &v18[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
    v20 = v45;
    v19[2] = v44;
    v19[3] = v20;
    v19[4] = v46;
    v21 = v43;
    *v19 = v42;
    v19[1] = v21;
    v18[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_preferringAudioReactivity] = v13;
    v41.receiver = v18;
    v41.super_class = v17;
    v22 = objc_msgSendSuper2(&v41, sel_initWithFrame_preferringAudioReactivity_, v13, v6, v8, v10, v12);
    v23 = *MEMORY[0x277CDA2C0];
    v24 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v25 = v22;
    v26 = [v24 initWithType_];
    v27 = objc_opt_self();
    v40[2] = v44;
    v40[3] = v45;
    v40[4] = v46;
    v40[0] = v42;
    v40[1] = v43;
    v28 = [v27 valueWithCAColorMatrix_];
    [v26 setValue:v28 forKeyPath:*MEMORY[0x277CDA440]];

    v29 = sub_249ED6D00();
    [v26 setValue:v29 forKeyPath:*MEMORY[0x277CDA4E0]];

    v30 = sub_249ED6D00();
    [v26 setValue:v30 forKeyPath:*MEMORY[0x277CDA350]];

    v31 = v25;
    v32 = [v31 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_249ED8C90;
    *(v33 + 56) = sub_249ED394C();
    *(v33 + 32) = v26;
    v34 = v26;
    v35 = sub_249ED6CC0();

    [v32 setFilters_];

    v36 = sub_249ED289C();
    v37 = sub_249ED2960();
    [v36 addSubview_];

    [v31 setMaskView_];
    sub_249ED23B8(v16);

    v38 = *&v3[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView];
    *&v3[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView] = v31;
    v39 = v31;

    [v3 addSubview_];
  }
}

id sub_249ED2ECC(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView] = 0;
  v6[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity] = a1;
  *&v6[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain] = a6;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for AnimatableIntelligentView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
  v12 = sub_249ED34F4();
  [v11 addSubview_];

  v13 = [objc_opt_self() rootSettings];
  [v13 addKeyObserver_];

  return v11;
}

uint64_t sub_249ED30B8(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (qword_281252DD8 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11[0] = v4;
  v11[1] = a2;
  MEMORY[0x28223BE20](result, a2);
  v9[2] = v11;
  if (sub_249ECC70C(sub_249ED39F0, v9, v5))
  {
    return 1;
  }

  v6 = sub_249ED6C60();
  v7 = type metadata accessor for AnimatableIntelligentView();
  v10.receiver = v2;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel__shouldAnimatePropertyWithKey_, v6);

  return v8;
}

uint64_t sub_249ED31E0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_249ED6C70();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  v10 = a4(v6, v8);

  return v10 & 1;
}

void sub_249ED3258(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && a3 != 0)
    {
      if (v8 = v6, a2 == 0xD00000000000002BLL) && 0x8000000249ED9E40 == a3 || (sub_249ED6ED0())
      {
        v9 = a1;
        v10 = sub_249ED34F4();
        v11 = [v8 intelligentEdgeLightKeylineStyleColorMatrix];
        [v11 caColorMatrix];

        v12 = &v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
        v13 = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix + 48];
        v22[2] = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix + 32];
        v22[3] = v13;
        v22[4] = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix + 64];
        v14 = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix + 16];
        v22[0] = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
        v22[1] = v14;
        v15 = v18;
        *v12 = v17;
        *(v12 + 1) = v15;
        v16 = v20;
        *(v12 + 2) = v19;
        *(v12 + 3) = v16;
        *(v12 + 4) = v21;
        sub_249ED24A0(v22);
      }
    }
  }
}

uint64_t sub_249ED3434(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249ED8E50;
  *(v3 + 32) = 1852399975;
  *(v3 + 40) = 0xE400000000000000;
  if (qword_281252CA8 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = *algn_281253398;
  *(v3 + 48) = qword_281253390;
  *(v3 + 56) = v4;
  *a2 = v3;
}

char *sub_249ED34F4()
{
  v1 = OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView];
  }

  else
  {
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v0[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity];
    v13 = [objc_opt_self() rootSettings];
    v14 = [v13 intelligentEdgeLightKeylineStyleColorMatrix];

    [v14 caColorMatrix];
    v15 = *&v0[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain];
    v16 = type metadata accessor for AnimatableLightView();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView] = 0;
    *&v17[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView] = 0;
    v18 = &v17[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
    v19 = v46;
    v18[2] = v45;
    v18[3] = v19;
    v18[4] = v47;
    v20 = v44;
    *v18 = v43;
    v18[1] = v20;
    v17[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_preferringAudioReactivity] = v12;
    v42.receiver = v17;
    v42.super_class = v16;
    v21 = objc_msgSendSuper2(&v42, sel_initWithFrame_preferringAudioReactivity_, v12, v5, v7, v9, v11);
    v22 = *MEMORY[0x277CDA2C0];
    v23 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v24 = v21;
    v25 = [v23 initWithType_];
    v26 = objc_opt_self();
    v41[2] = v45;
    v41[3] = v46;
    v41[4] = v47;
    v41[0] = v43;
    v41[1] = v44;
    v27 = [v26 valueWithCAColorMatrix_];
    [v25 setValue:v27 forKeyPath:*MEMORY[0x277CDA440]];

    v28 = sub_249ED6D00();
    [v25 setValue:v28 forKeyPath:*MEMORY[0x277CDA4E0]];

    v29 = sub_249ED6D00();
    [v25 setValue:v29 forKeyPath:*MEMORY[0x277CDA350]];

    v30 = v24;
    v31 = [v30 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_249ED8C90;
    *(v32 + 56) = sub_249ED394C();
    *(v32 + 32) = v25;
    v33 = v25;
    v34 = sub_249ED6CC0();

    [v31 setFilters_];

    v35 = v0;
    v36 = sub_249ED289C();
    v37 = sub_249ED2960();
    [v36 addSubview_];

    [v30 setMaskView_];
    sub_249ED23B8(v15);

    v38 = *&v35[v1];
    *&v35[v1] = v30;
    v3 = v30;

    v2 = 0;
  }

  v39 = v2;
  return v3;
}

id sub_249ED38E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_249ED394C()
{
  result = qword_281252C90;
  if (!qword_281252C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281252C90);
  }

  return result;
}

uint64_t sub_249ED3998(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_249ED6ED0() & 1;
  }
}

uint64_t sub_249ED3A0C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_249ED6ED0() & 1;
  }
}

void sub_249ED3A80(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType;
  v5 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 48);
  v32 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 32);
  v33 = v5;
  v34 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 64);
  v35 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 80);
  v6 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 16);
  v31[0] = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType);
  v31[1] = v6;
  v36[0] = v31[0];
  v36[1] = v6;
  v37 = v35;
  v36[3] = v5;
  v36[4] = v34;
  v36[2] = v32;
  v7 = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v7;
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 80) = *(a1 + 80);
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  sub_249EB0270(v31, v29);
  sub_249EB0270(a1, v29);
  sub_249EB73F4(v36);
  v9 = *(v4 + 48);
  v29[2] = *(v4 + 32);
  v29[3] = v9;
  v29[4] = *(v4 + 64);
  v30 = *(v4 + 80);
  v10 = *(v4 + 16);
  v29[0] = *v4;
  v29[1] = v10;
  sub_249EB0270(v29, v27);
  v11 = sub_249ED1CFC(v29, v31);
  sub_249EB73F4(v29);
  if (v11)
  {
    goto LABEL_12;
  }

  v12 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + 32;

    do
    {
      sub_249EB0208(v15, v26, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v18 = *(v4 + 32);
        v19 = *(v4 + 64);
        v27[3] = *(v4 + 48);
        v27[4] = v19;
        v20 = *(v4 + 16);
        v27[0] = *v4;
        v28 = *(v4 + 80);
        v27[1] = v20;
        v27[2] = v18;
        v21 = *((*MEMORY[0x277D85000] & *Strong) + 0xF0);
        sub_249EB0270(v27, v25);
        v21(v2, v27);
        sub_249EB73F4(v27);
      }

      sub_249EB371C(v26, &qword_27EF296F0, &unk_249ED8F70);
      v15 += 8;
      --v14;
    }

    while (v14);
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_12:
    sub_249EB73F4(v31);
    sub_249EB73F4(a1);
  }

  else
  {
    v23 = 0.0;
    if (*(v4 + 80) == 2)
    {
      v23 = 1.0;
    }

    v24 = v22;
    [v22 setAlpha_];
    sub_249EB73F4(v31);
    sub_249EB73F4(a1);
  }
}

id sub_249ED3DD8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DropletParticipantView();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_249ED3EA4(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for DropletParticipantView();
  v66.receiver = v9;
  v66.super_class = v14;
  objc_msgSendSuper2(&v66, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v65.receiver = v9;
  v65.super_class = v14;
  objc_msgSendSuper2(&v65, *a2, a3, a4, a5, a6);
  [v9 *a1];
  v81.origin.x = v23;
  v81.origin.y = v24;
  v81.size.width = v25;
  v81.size.height = v26;
  v80.origin.x = v16;
  v80.origin.y = v18;
  v80.size.width = v20;
  v80.size.height = v22;
  result = CGRectEqualToRect(v80, v81);
  if ((result & 1) == 0)
  {
    v28 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    result = *&v9[v28];
    v29 = *(result + 16);
    if (v29)
    {
      v30 = result + 32;

      do
      {
        sub_249EB0208(v30, v64, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v32 = Strong;
          [v9 *a1];
          [v9 bounds];
          v34 = v33;
          v45 = v33;
          v36 = v35;
          [v9 center];
          v38 = v37;
          v40 = v39;
          [v9 transform];
          v41 = *(&v56 + 1);
          v44 = v56;
          v42 = v57;
          v46 = *(&v58 + 1);
          v47 = v58;
          [v9 transform3D];
          v76 = v52;
          v77 = v53;
          v78 = v54;
          v79 = v55;
          v72 = v48;
          v73 = v49;
          v74 = v50;
          v75 = v51;
          v58 = v50;
          v67[0] = v9;
          v67[1] = v34;
          v67[2] = v36;
          v67[3] = v38;
          v67[4] = v40;
          v68 = v56;
          v69 = v57;
          v70 = v47;
          v71 = v46;
          v56 = v48;
          v57 = v49;
          (*((*MEMORY[0x277D85000] & *v32) + 0x90))(v67);
          sub_249EB371C(v64, &qword_27EF296F0, &unk_249ED8F70);
          *&v59 = v9;
          *(&v59 + 1) = v45;
          *&v60 = v36;
          *(&v60 + 1) = v38;
          *&v61 = v40;
          *(&v61 + 1) = v44;
          *v62 = v41;
          *&v62[8] = v42;
          *&v62[24] = v47;
          *v63 = v46;
          *&v63[72] = v52;
          *&v63[88] = v53;
          *&v63[104] = v54;
          *&v63[120] = v55;
          *&v63[8] = v48;
          *&v63[24] = v49;
          *&v63[40] = v50;
          *&v63[56] = v51;
          nullsub_1();
          v43 = v32 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
          *v43 = v59;
          *(v43 + 1) = v60;
          *(v43 + 4) = *&v62[16];
          *(v43 + 5) = *v63;
          *(v43 + 2) = v61;
          *(v43 + 3) = *v62;
          *(v43 + 8) = *&v63[48];
          *(v43 + 9) = *&v63[64];
          *(v43 + 6) = *&v63[16];
          *(v43 + 7) = *&v63[32];
          *(v43 + 26) = *(&v55 + 1);
          *(v43 + 11) = *&v63[96];
          *(v43 + 12) = *&v63[112];
          *(v43 + 10) = *&v63[80];
        }

        else
        {
          sub_249EB371C(v64, &qword_27EF296F0, &unk_249ED8F70);
        }

        v30 += 8;
        --v29;
      }

      while (v29);
    }
  }

  return result;
}

void *sub_249ED431C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = type metadata accessor for DropletParticipantView();
  v54.receiver = v4;
  v54.super_class = v7;
  objc_msgSendSuper2(&v54, sel_center);
  v9 = v8;
  v11 = v10;
  v53.receiver = v4;
  v53.super_class = v7;
  objc_msgSendSuper2(&v53, sel_setCenter_, a2, a3);
  result = [v4 center];
  if (v9 != v14 || v11 != v13)
  {
    v16 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    result = *&v4[v16];
    v17 = result[2];
    if (v17)
    {
      v18 = result + 4;

      do
      {
        sub_249EB0208(v18, v52, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          [v4 center];
          [v4 bounds];
          v22 = v21;
          v33 = v21;
          v24 = v23;
          [v4 center];
          v26 = v25;
          v28 = v27;
          [v4 transform];
          v29 = *(&v44 + 1);
          v32 = v44;
          v30 = v45;
          v34 = *(&v46 + 1);
          v35 = v46;
          [v4 transform3D];
          v64 = v40;
          v65 = v41;
          v66 = v42;
          v67 = v43;
          v60 = v36;
          v61 = v37;
          v62 = v38;
          v63 = v39;
          v46 = v38;
          v55[0] = v4;
          v55[1] = v22;
          v55[2] = v24;
          v55[3] = v26;
          v55[4] = v28;
          v56 = v44;
          v57 = v45;
          v58 = v35;
          v59 = v34;
          v44 = v36;
          v45 = v37;
          (*((*MEMORY[0x277D85000] & *v20) + 0x90))(v55);
          sub_249EB371C(v52, &qword_27EF296F0, &unk_249ED8F70);
          *&v47 = v4;
          *(&v47 + 1) = v33;
          *&v48 = v24;
          *(&v48 + 1) = v26;
          *&v49 = v28;
          *(&v49 + 1) = v32;
          *v50 = v29;
          *&v50[8] = v30;
          *&v50[24] = v35;
          *v51 = v34;
          *&v51[72] = v40;
          *&v51[88] = v41;
          *&v51[104] = v42;
          *&v51[120] = v43;
          *&v51[8] = v36;
          *&v51[24] = v37;
          *&v51[40] = v38;
          *&v51[56] = v39;
          nullsub_1();
          v31 = v20 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
          *v31 = v47;
          *(v31 + 1) = v48;
          *(v31 + 4) = *&v50[16];
          *(v31 + 5) = *v51;
          *(v31 + 2) = v49;
          *(v31 + 3) = *v50;
          *(v31 + 8) = *&v51[48];
          *(v31 + 9) = *&v51[64];
          *(v31 + 6) = *&v51[16];
          *(v31 + 7) = *&v51[32];
          *(v31 + 26) = *(&v43 + 1);
          *(v31 + 11) = *&v51[96];
          *(v31 + 12) = *&v51[112];
          *(v31 + 10) = *&v51[80];
        }

        else
        {
          sub_249EB371C(v52, &qword_27EF296F0, &unk_249ED8F70);
        }

        ++v18;
        --v17;
      }

      while (v17);
    }
  }

  return result;
}

uint64_t sub_249ED4774(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = type metadata accessor for DropletParticipantView();
  v47.receiver = v2;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, sel_transform);
  v46.receiver = v2;
  v46.super_class = v6;
  v7 = a1[1];
  v48 = *a1;
  v49 = v7;
  v50 = v4;
  *&v51 = v5;
  objc_msgSendSuper2(&v46, sel_setTransform_, &v48);
  [v2 transform];
  result = sub_249ED6D30();
  if ((result & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    result = *&v2[v9];
    v10 = *(result + 16);
    if (v10)
    {
      v11 = result + 32;

      do
      {
        sub_249EB0208(v11, v45, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          [v2 transform];
          [v2 bounds];
          v15 = v14;
          v26 = v14;
          v17 = v16;
          [v2 center];
          v19 = v18;
          v21 = v20;
          [v2 transform];
          v22 = *(&v37 + 1);
          v25 = v37;
          v23 = v38;
          v27 = *(&v39 + 1);
          v28 = v39;
          [v2 transform3D];
          v59 = v33;
          v60 = v34;
          v61 = v35;
          v62 = v36;
          v55 = v29;
          v56 = v30;
          v57 = v31;
          v58 = v32;
          v39 = v31;
          *&v48 = v2;
          *(&v48 + 1) = v15;
          *&v49 = v17;
          *(&v49 + 1) = v19;
          v50 = v21;
          v51 = v37;
          v52 = v38;
          v53 = v28;
          v54 = v27;
          v37 = v29;
          v38 = v30;
          (*((*MEMORY[0x277D85000] & *v13) + 0x90))(&v48);
          sub_249EB371C(v45, &qword_27EF296F0, &unk_249ED8F70);
          *&v40 = v2;
          *(&v40 + 1) = v26;
          *&v41 = v17;
          *(&v41 + 1) = v19;
          *&v42 = v21;
          *(&v42 + 1) = v25;
          *v43 = v22;
          *&v43[8] = v23;
          *&v43[24] = v28;
          *v44 = v27;
          *&v44[72] = v33;
          *&v44[88] = v34;
          *&v44[104] = v35;
          *&v44[120] = v36;
          *&v44[8] = v29;
          *&v44[24] = v30;
          *&v44[40] = v31;
          *&v44[56] = v32;
          nullsub_1();
          v24 = v13 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
          *v24 = v40;
          *(v24 + 1) = v41;
          *(v24 + 4) = *&v43[16];
          *(v24 + 5) = *v44;
          *(v24 + 2) = v42;
          *(v24 + 3) = *v43;
          *(v24 + 8) = *&v44[48];
          *(v24 + 9) = *&v44[64];
          *(v24 + 6) = *&v44[16];
          *(v24 + 7) = *&v44[32];
          *(v24 + 26) = *(&v36 + 1);
          *(v24 + 11) = *&v44[96];
          *(v24 + 12) = *&v44[112];
          *(v24 + 10) = *&v44[80];
        }

        else
        {
          sub_249EB371C(v45, &qword_27EF296F0, &unk_249ED8F70);
        }

        v11 += 8;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_249ED4BB8(_OWORD *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DropletParticipantView();
  v58.receiver = v2;
  v58.super_class = v4;
  objc_msgSendSuper2(&v58, sel_transform3D);
  v57.receiver = v2;
  v57.super_class = v4;
  v5 = a1[5];
  *&a[64] = a1[4];
  *&a[80] = v5;
  v6 = a1[7];
  *&a[96] = a1[6];
  *&a[112] = v6;
  v7 = a1[1];
  *a = *a1;
  *&a[16] = v7;
  v8 = a1[3];
  *&a[32] = a1[2];
  *&a[48] = v8;
  objc_msgSendSuper2(&v57, sel_setTransform3D_, a);
  [v2 transform3D];
  *&a[64] = v69;
  *&a[80] = v70;
  *&a[96] = v71;
  *&a[112] = v72;
  *a = v65;
  *&a[16] = v66;
  *&a[32] = v67;
  *&a[48] = v68;
  result = CATransform3DEqualToTransform(a, &b);
  if ((result & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    result = *&v2[v10];
    v11 = *(result + 16);
    if (v11)
    {
      v12 = result + 32;

      do
      {
        sub_249EB0208(v12, v56, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v14 = Strong;
          [v2 transform3D];
          [v2 bounds];
          v16 = v15;
          v37 = v15;
          v18 = v17;
          [v2 center];
          v20 = v19;
          v22 = v21;
          [v2 transform];
          v23 = *(&v48 + 1);
          v36 = v48;
          v24 = v49;
          v38 = *(&v50 + 1);
          v39 = v50;
          [v2 transform3D];
          v61 = v44;
          v62 = v45;
          v63 = v46;
          v64 = v47;
          *&a[88] = v40;
          *&a[104] = v41;
          *&a[120] = v42;
          v60 = v43;
          v50 = v42;
          *a = v2;
          *&a[8] = v16;
          *&a[16] = v18;
          *&a[24] = v20;
          *&a[32] = v22;
          *&a[40] = v48;
          *&a[56] = v49;
          *&a[72] = v39;
          *&a[80] = v38;
          v48 = v40;
          v49 = v41;
          (*((*MEMORY[0x277D85000] & *v14) + 0x90))(a);
          sub_249EB371C(v56, &qword_27EF296F0, &unk_249ED8F70);
          *&b = v2;
          *(&b + 1) = v37;
          *&b_16 = v18;
          *(&b_16 + 1) = v20;
          *&b_32 = v22;
          *(&b_32 + 1) = v36;
          *b_48 = v23;
          *&b_48[8] = v24;
          *&b_48[24] = v39;
          *b_80 = v38;
          *&b_80[72] = v44;
          *&b_80[88] = v45;
          *&b_80[104] = v46;
          *&b_80[120] = v47;
          *&b_80[8] = v40;
          *&b_80[24] = v41;
          *&b_80[40] = v42;
          *&b_80[56] = v43;
          nullsub_1();
          v25 = v14 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
          v26 = b_16;
          *v25 = b;
          *(v25 + 1) = v26;
          v27 = b_32;
          v28 = *b_48;
          v29 = *b_80;
          *(v25 + 4) = *&b_48[16];
          *(v25 + 5) = v29;
          *(v25 + 2) = v27;
          *(v25 + 3) = v28;
          v30 = *&b_80[16];
          v31 = *&b_80[32];
          v32 = *&b_80[64];
          *(v25 + 8) = *&b_80[48];
          *(v25 + 9) = v32;
          *(v25 + 6) = v30;
          *(v25 + 7) = v31;
          v33 = *&b_80[80];
          v34 = *&b_80[96];
          v35 = *&b_80[112];
          *(v25 + 26) = *&b_80[128];
          *(v25 + 11) = v34;
          *(v25 + 12) = v35;
          *(v25 + 10) = v33;
        }

        else
        {
          sub_249EB371C(v56, &qword_27EF296F0, &unk_249ED8F70);
        }

        v12 += 8;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

id sub_249ED5020(double a1)
{
  v2 = v1;
  result = [v1 alpha];
  if (v5 != a1)
  {
    v6 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    result = swift_beginAccess();
    v7 = *&v2[v6];
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 32;

      v10 = MEMORY[0x277D85000];
      do
      {
        sub_249EB0208(v9, &v13, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v12 = Strong;
          [v2 alpha];
          (*((*v10 & *v12) + 0xC0))(v2);
        }

        sub_249EB371C(&v13, &qword_27EF296F0, &unk_249ED8F70);
        v9 += 8;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

id sub_249ED522C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = [v2 isHidden];
  if (result != v3)
  {
    v5 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    result = swift_beginAccess();
    v6 = *&v2[v5];
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;

      v9 = MEMORY[0x277D85000];
      do
      {
        sub_249EB0208(v8, &v12, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v11 = Strong;
          (*((*v9 & *Strong) + 0x110))(v2, [v2 isHidden]);
        }

        sub_249EB371C(&v12, &qword_27EF296F0, &unk_249ED8F70);
        v8 += 8;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_249ED5384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = a2;
  v19 = a1;
  v5 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  result = *(v3 + v5);
  v7 = *(result + 16);
  if (v7)
  {
    v8 = result + 32;
    v18[1] = *(v3 + v5);

    while (1)
    {
      sub_249EB0208(v8, v22, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_5;
      }

      v11 = Strong;
      sub_249EB0208(v19, v20, &unk_27EF299E0, &qword_249ED8EB0);
      v12 = v21;
      if (v21)
      {
        v13 = __swift_project_boxed_opaque_existential_0(v20, v21);
        v14 = *(v12 - 8);
        MEMORY[0x28223BE20](v13, v13);
        v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v16);
        v17 = sub_249ED6EC0();
        (*(v14 + 8))(v16, v12);
        __swift_destroy_boxed_opaque_existential_0(v20);
        if (!a3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v17 = 0;
        if (!a3)
        {
LABEL_11:
          v9 = 0;
          goto LABEL_4;
        }
      }

      v9 = sub_249ED6C60();
LABEL_4:
      [v11 _setVelocity_forKey_];

      swift_unknownObjectRelease();
LABEL_5:
      sub_249EB371C(v22, &qword_27EF296F0, &unk_249ED8F70);
      v8 += 8;
      if (!--v7)
      {
      }
    }
  }

  return result;
}

uint64_t sub_249ED5674(char a1)
{
  v3 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      sub_249EB0208(v7, &v10, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        [Strong _removeAllRetargetableAnimations_];
      }

      sub_249EB371C(&v10, &qword_27EF296F0, &unk_249ED8F70);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_249ED57B0(uint64_t a1)
{
  v2 = v1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DropletParticipantView();
  objc_msgSendSuper2(&v11, sel_removeFromSuperview);
  v3 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    v7 = MEMORY[0x277D85000];
    do
    {
      sub_249EB0208(v6, &v10, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        (*((*v7 & *Strong) + 0x128))(v2);
      }

      sub_249EB371C(&v10, &qword_27EF296F0, &unk_249ED8F70);
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  sub_249ED5930();
}

void sub_249ED5930()
{
  v1 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2[2];
  if (v3)
  {
    v4 = 0;
    v5 = 5;
    while (1)
    {
      if (v4 >= v2[2])
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_249EB0208(&v2[v5 - 1], v13, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_249EB371C(v13, &qword_27EF296F0, &unk_249ED8F70);
      if (!Strong)
      {
        break;
      }

      ++v4;
      ++v5;
      if (v3 == v4)
      {
        v4 = v2[2];
        v7 = v4;
        goto LABEL_25;
      }
    }

    v7 = v4 + 1;
    v8 = v2[2];
    if (v8 - 1 == v4)
    {
      goto LABEL_25;
    }

    while (v7 < v8)
    {
      sub_249EB0208(&v2[v5], v13, &qword_27EF296F0, &unk_249ED8F70);
      v9 = swift_unknownObjectWeakLoadStrong();
      sub_249EB371C(v13, &qword_27EF296F0, &unk_249ED8F70);
      if (v9)
      {

        if (v7 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          v10 = v2[2];
          if (v4 >= v10)
          {
            goto LABEL_29;
          }

          sub_249EB0208(&v2[v4 + 4], v13, &qword_27EF296F0, &unk_249ED8F70);
          if (v7 >= v10)
          {
            goto LABEL_30;
          }

          sub_249EB0208(&v2[v5], v12, &qword_27EF296F0, &unk_249ED8F70);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v1) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = sub_249ED60B4(v2);
            *(v0 + v1) = v2;
          }

          if (v4 >= v2[2])
          {
            goto LABEL_31;
          }

          sub_249ED63A0(v12, &v2[v4 + 4]);
          *(v0 + v1) = v2;
          if (v7 >= v2[2])
          {
            goto LABEL_32;
          }

          sub_249ED63A0(v13, &v2[v5]);
          *(v0 + v1) = v2;
        }

        ++v4;
      }

      ++v7;
      v8 = v2[2];
      ++v5;
      if (v7 == v8)
      {
        if (v7 < v4)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v4 = 0;
    v7 = 0;
LABEL_25:
    sub_249ED62E0(v4, v7);
    swift_endAccess();
  }
}

id sub_249ED5BC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DropletParticipantView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_249ED5CA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249ED5DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_249ED5EBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29A90, &unk_249ED94D0);
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
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_249ED603C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_249ED6E70();
  }

  return sub_249ED6DE0();
}

void sub_249ED60C8()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden) = 1;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets);
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
  v6 = (v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths);
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  v7 = (v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets);
  *v7 = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  v8 = v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType;
  *v8 = 0;
  *(v8 + 80) = 1;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews) = MEMORY[0x277D84F90];
  sub_249ED6E50();
  __break(1u);
}

unint64_t sub_249ED61F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = *v3 + 32;
  v9 = v8 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = v9 + 8 * a3;
  v13 = v8 + 8 * a2;
  if (result < v13 || result >= v13 + 8 * (v12 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v13)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v15 = *(v7 + 16);
  v10 = __OFADD__(v15, v11);
  v16 = v15 + v11;
  if (v10)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v16;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_249ED62E0(unint64_t result, uint64_t a2)
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

    v4 = sub_249ED5EBC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_249ED61F0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_249ED63A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double *sub_249ED6410(double *result)
{
  v3 = result[3];
  v2 = result[4];
  v7 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge];
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v6 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets + 16];
      v2 = v6 * 0.5 + CGRectGetMaxY(*&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds]);
    }

    else
    {
      if (v7 != 8)
      {
        return result;
      }

      v5 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets + 24];
      v3 = v5 * 0.5 + CGRectGetMaxX(*&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds]);
    }
  }

  else if (v7 == 1)
  {
    v8 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets];
    v2 = CGRectGetMinY(*&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds]) + v8 * -0.5;
  }

  else
  {
    if (v7 != 2)
    {
      return result;
    }

    v4 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets + 8];
    v3 = CGRectGetMinX(*&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds]) + v4 * -0.5;
  }

  BSRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v1 bounds];
  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  if (!CGRectEqualToRect(v20, v21))
  {
    [v1 setBounds_];
  }

  result = [v1 center];
  if (v18 != v3 || v17 != v2)
  {

    return [v1 setCenter_];
  }

  return result;
}

id sub_249ED6628(uint64_t a1, char a2)
{
  v3 = v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden];
  v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden] = a2;
  if (v3 != (a2 & 1))
  {
    v4 = (a2 & 1) != 0 || (*&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge] & ~*&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges]) != 0;
    return [v2 setHidden_];
  }

  return result;
}

id sub_249ED6684(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges];
  *&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges] = a2;
  if (v3 != a2)
  {
    v4 = (v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden] & 1) != 0 || (*&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge] & ~a2) != 0;
    return [v2 setHidden_];
  }

  return result;
}

void sub_249ED66DC(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets];
  v6 = *&v4[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets];
  v7 = *&v4[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets + 16];
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    [v4 setNeedsLayout];

    [v4 layoutIfNeeded];
  }
}

char *sub_249ED6760(char *a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds);
  *v4 = 0u;
  v4[1] = 0u;
  *(v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge) = a2;
  v5 = [a1 isHidden];
  *(v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden) = v5;
  *(v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges) = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges];
  v6 = (v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets);
  v7 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets + 16];
  *v6 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets];
  v6[1] = v7;
  v8 = a1;
  v9 = sub_249EBED94(v8);
  v10 = (v9[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden] & 1) != 0 || (*&v9[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge] & ~*&v9[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges]) != 0;
  v11 = v9;
  [v11 setHidden_];

  return v11;
}

id sub_249ED69D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DropletBoundaryView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_249ED6A2C(void *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 7104878;
  }

  v13 = 0;
  v14[0] = 0;
  v11 = 0;
  v12 = 0;
  v1 = a1;
  [v1 getRed:v14 green:&v13 blue:&v12 alpha:&v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29AC0, &unk_249ED9510);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249ED9500;
  v3 = v14[0];
  v4 = MEMORY[0x277D85048];
  *(v2 + 56) = MEMORY[0x277D85048];
  v5 = sub_249ED6B6C();
  *(v2 + 64) = v5;
  *(v2 + 32) = v3;
  v6 = v12;
  v7 = v13;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 72) = v7;
  *(v2 + 136) = v4;
  *(v2 + 144) = v5;
  *(v2 + 112) = v6;
  v8 = v11;
  *(v2 + 176) = v4;
  *(v2 + 184) = v5;
  *(v2 + 152) = v8;
  v9 = sub_249ED6C80();

  return v9;
}

unint64_t sub_249ED6B6C()
{
  result = qword_27EF29AC8;
  if (!qword_27EF29AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF29AC8);
  }

  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}