void sub_21B61E054(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_21B6C9444();
    sub_21B61785C(0, &qword_28120B150, 0x277CF0B58);
    sub_21B61E3A8(&qword_28120B148, &qword_28120B150, 0x277CF0B58);
    sub_21B6C8FB4();
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (1)
  {
    if (v3 < 0)
    {
      if (!sub_21B6C9474() || (sub_21B61785C(0, &qword_28120B150, 0x277CF0B58), swift_dynamicCast(), (v14 = v19) == 0))
      {
LABEL_25:
        sub_21B61E2EC(v3);
        return;
      }

      goto LABEL_19;
    }

    v12 = v6;
    v13 = v7;
    if (!v7)
    {
      break;
    }

LABEL_15:
    v7 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_19:
    v15 = *(v2 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
    if (v15 && (v16 = [v15 rootViewController]) != 0)
    {
      v17 = v16;
      type metadata accessor for PosterRackCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        if ((PosterRackCollectionViewController.handle(_:)(v14) & 1) == 0)
        {

          goto LABEL_9;
        }

        v18 = sub_21B61C124(v14);
      }

      else
      {
      }
    }

    else
    {
LABEL_9:
    }
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_25;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21B61E3A8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_21B61785C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B61E3F8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B6C96E4() & 1;
  }
}

uint64_t sub_21B61E450(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B6C88C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21B61E4B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_titleLabelSpacingFromTopEdge] = 0x4042000000000000;
  *&v5[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_footerLabelSpacingFromBottomEdge] = 0x4024000000000000;
  BSRectWithSize();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10, &unk_21B6D8340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D8270;
  *(inited + 32) = v18;
  *(inited + 40) = v19;
  *(inited + 48) = v20;
  v22 = inited & 0xC000000000000001;
  v23 = v18;
  v56 = v19;
  v58 = v20;
  if ((inited & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x21CEF66E0](0, inited);
  }

  else
  {
    v24 = v23;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = *MEMORY[0x277D76800];
  [v25 setMaximumContentSizeCategory_];
  [v25 setAdjustsFontForContentSizeCategory_];
  [v25 setAdjustsFontSizeToFitWidth_];
  [v25 setMinimumScaleFactor_];
  [v25 setTextAlignment_];
  v28 = [v26 whiteColor];
  [v25 setTextColor_];

  [v25 setNumberOfLines_];
  if (v22)
  {
    v29 = MEMORY[0x21CEF66E0](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_22;
    }

    v29 = *(inited + 40);
  }

  v30 = v29;
  [v29 setMaximumContentSizeCategory_];
  [v30 setAdjustsFontForContentSizeCategory_];
  [v30 setAdjustsFontSizeToFitWidth_];
  [v30 setMinimumScaleFactor_];
  [v30 setTextAlignment_];
  v31 = [v26 whiteColor];
  [v30 setTextColor_];

  [v30 setNumberOfLines_];
  if (v22)
  {
    v32 = MEMORY[0x21CEF66E0](2, inited);
    goto LABEL_11;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = *(inited + 48);
LABEL_11:
  v33 = v32;

  [v33 setMaximumContentSizeCategory_];
  [v33 setAdjustsFontForContentSizeCategory_];
  [v33 setAdjustsFontSizeToFitWidth_];
  [v33 setMinimumScaleFactor_];
  [v33 setTextAlignment_];
  v34 = [v26 whiteColor];
  [v33 setTextColor_];

  [v33 setNumberOfLines_];
  v35 = sub_21B6C8D74();
  v36 = PBFLocalizedString(v35);

  if (!v36)
  {
    sub_21B6C8DA4();
    v36 = sub_21B6C8D74();
  }

  [v23 setText_];

  v37 = sub_21B6C8D74();
  v38 = PBFLocalizedString(v37);

  if (!v38)
  {
    sub_21B6C8DA4();
    v38 = sub_21B6C8D74();
  }

  [v57 setText_];

  v39 = sub_21B6C8D74();
  v40 = PBFLocalizedString(v39);

  if (!v40)
  {
    sub_21B6C8DA4();
    v40 = sub_21B6C8D74();
  }

  [v58 setText_];

  v41 = objc_opt_self();
  v42 = [v41 _preferredFontDescriptorWithTextStyle_weight_];
  if (!v42)
  {
    goto LABEL_23;
  }

  v43 = v42;
  v44 = objc_opt_self();
  v45 = [v44 fontWithDescriptor:v43 size:0.0];
  [v23 setFont_];
  v46 = [v41 _preferredFontDescriptorWithTextStyle_weight_];
  if (v46)
  {
    v47 = v46;
    v48 = [v44 fontWithDescriptor:v46 size:0.0];
    [v57 setFont_];
    [v58 setFont_];

    *&v5[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_titleLabel] = v23;
    *&v5[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_lockFooterLabel] = v57;
    *&v5[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_homeFooterLabel] = v58;
    v59.receiver = v5;
    v59.super_class = type metadata accessor for PosterCoupledTitlesView();
    v49 = v23;
    v50 = v57;
    v51 = v58;
    v52 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a2, a3, a4, a5);
    [v52 addSubview_];
    [v52 addSubview_];
    [v52 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92C88, qword_21B6D82B0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_21B6D7FE0;
    v54 = sub_21B6C8B54();
    v55 = MEMORY[0x277D74DB8];
    *(v53 + 32) = v54;
    *(v53 + 40) = v55;
    MEMORY[0x21CEF6310](v53, sel_setNeedsLayout);

    swift_unknownObjectRelease();

    return;
  }

LABEL_24:
  __break(1u);
}

id sub_21B61ECF0()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for PosterCoupledTitlesView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  v10 = *&v0[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_titleLabel];
  [v10 sizeThatFits_];
  BSSizeCeilForScale();
  v26.origin.x = v2;
  v26.origin.y = v4;
  v26.size.width = v6;
  v26.size.height = v8;
  CGRectGetMidX(v26);
  v27.origin.x = v2;
  v27.origin.y = v4;
  v27.size.width = v6;
  v27.size.height = v8;
  CGRectGetMinY(v27);
  BSPointRoundForScale();
  [v10 setFrame_];
  v11 = [v0 effectiveUserInterfaceLayoutDirection];
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  v12 = (CGRectGetWidth(v28) + -10.0) * 0.5;
  v29.origin.x = v2;
  v29.origin.y = v4;
  v29.size.width = v6;
  v29.size.height = v8;
  Height = CGRectGetHeight(v29);
  v30.origin.x = v2;
  v30.origin.y = v4;
  v30.size.width = v6;
  v30.size.height = v8;
  CGRectGetMaxY(v30);
  v14 = *&v0[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_lockFooterLabel];
  [v14 sizeThatFits_];
  BSSizeCeilForScale();
  v15 = v2;
  v16 = v4;
  v17 = v6;
  v18 = v8;
  if (v11)
  {
    CGRectGetMaxX(*&v15);
  }

  else
  {
    CGRectGetMinX(*&v15);
  }

  BSFloatRoundForScale();
  [v14 setFrame_];
  v19 = *&v0[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_homeFooterLabel];
  [v19 sizeThatFits_];
  BSSizeCeilForScale();
  v20 = v2;
  v21 = v4;
  v22 = v6;
  v23 = v8;
  if (v11)
  {
    CGRectGetMinX(*&v20);
  }

  else
  {
    CGRectGetMaxX(*&v20);
  }

  BSFloatRoundForScale();
  return [v19 setFrame_];
}

id sub_21B61F028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterCoupledTitlesView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B61F0DC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21B6C9594();
    v4 = v1 + 56;
    result = sub_21B6C9414();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 64;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = PBFSnapshotDefinitionForIdentifier(*(*(v1 + 48) + 8 * v5));
      sub_21B6C9574();
      sub_21B6C95A4();
      v1 = v19;
      sub_21B6C95B4();
      result = sub_21B6C9584();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_21B62A0B8(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_21B62A0B8(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
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
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_21B61F2F8(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for PosterStore()) init];
  qword_28120CDA8 = result;
  return result;
}

id sub_21B61F3A0()
{
  v1 = v0;
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  v8 = [*(v1 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) activeConfiguration];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _path];
    v11 = [v10 serverIdentity];

    if (v11)
    {
      v12 = [v11 posterUUID];

      sub_21B6C88A4();
      v11 = sub_21B6C8874();

      (*(v3 + 8))(v6, v2);
    }

    else
    {
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = [*(v1 + v7) selectedConfiguration];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 _path];
    v16 = [v15 serverIdentity];

    if (v16)
    {
      v17 = [v16 posterUUID];

      sub_21B6C88A4();
      sub_21B6C8874();

      (*(v3 + 8))(v6, v2);
    }

    else
    {
    }
  }

  return v11;
}

void *sub_21B61F5F8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21B6C9454())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CEF66E0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = *&v9[OBJC_IVAR___PBFPosterPair_id] == a1 && *&v9[OBJC_IVAR___PBFPosterPair_id + 8] == a2;
      if (v12 || (sub_21B6C96E4() & 1) != 0)
      {

        return v10;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_17:

  return 0;
}

void *sub_21B61F748(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B6C9454())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CEF66E0](j, a3);
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

char *sub_21B61F85C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    v7 = sub_21B6C9454();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v24 = MEMORY[0x277D84F90];

    result = sub_21B696384(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v22 = a1;
    v23 = a2;
    v10 = 0;
    v8 = v24;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEF66E0](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = *&v11[OBJC_IVAR___PBFPosterPair_id];
      v14 = *&v11[OBJC_IVAR___PBFPosterPair_id + 8];

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21B696384((v15 > 1), v16 + 1, 1);
      }

      ++v10;
      *(v24 + 16) = v16 + 1;
      v17 = v24 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
    }

    while (v7 != v10);

    a1 = v22;
    a2 = v23;
  }

  v18 = *(v8 + 16);
  v19 = 0;
  if (v18)
  {
    v20 = (v8 + 40);
    while (1)
    {
      v21 = *(v20 - 1) == a1 && *v20 == a2;
      if (v21 || (sub_21B6C96E4() & 1) != 0)
      {
        break;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        v19 = 0;
        break;
      }
    }
  }

  return v19;
}

unint64_t sub_21B61FA3C(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_21B6C9454();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEF66E0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for PosterPair();
    v8 = sub_21B6C91A4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_21B61FB2C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = swift_allocObject();
  *(v49 + 16) = MEMORY[0x277D84F98];
  v58 = MEMORY[0x277D84F90];
  v50 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v47 = a2;
  v7 = [a2 definitions];
  sub_21B61785C(0, &qword_28120B238, off_2782C4448);
  v8 = sub_21B6C8E84();

  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = &protocol conformance descriptor for PosterEditingConfirmationViewControllerUserChoice;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_15:

    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_12:

      sub_21B6C96F4();
LABEL_13:

      v34 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F08, &qword_21B6D8350);
      v35 = sub_21B6C8E74();

      v36 = [v34 join_];

      v37 = swift_allocObject();
      v37[2] = v49;
      v37[3] = a3;
      v37[4] = a4;
      v56 = sub_21B62A81C;
      v57 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = sub_21B6208A8;
      v55 = &block_descriptor_129;
      v38 = _Block_copy(&aBlock);

      [v36 addCompletionBlock_];
      _Block_release(v38);

      return;
    }

LABEL_16:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F08, &qword_21B6D8350);
    sub_21B6C95E4();

    goto LABEL_13;
  }

  v10 = sub_21B6C9454();
  v9 = v8;
  v11 = &protocol conformance descriptor for PosterEditingConfirmationViewControllerUserChoice;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_3:
  v12 = v9;
  v45 = objc_opt_self();
  if (v10 >= 1)
  {
    v39 = a3;
    v40 = a4;
    v13 = 0;
    v14 = v12;
    v41 = v12 & 0xC000000000000001;
    v42 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
    v15 = v11[60];
    v43 = v10;
    v44 = v12;
    do
    {
      if (v41)
      {
        v16 = MEMORY[0x21CEF66E0](v13, v14);
      }

      else
      {
        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v16 uniqueIdentifier];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10, &unk_21B6D8340);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21B6D81D0;
      *(v19 + 32) = v17;
      v51 = v17;
      v20 = sub_21B6C8E74();

      v21 = [v47 requestWithDefinitions_];

      v22 = [*(v48 + v42) dataStore];
      v23 = [v22 snapshotBundleForRequest_];

      v24 = swift_allocObject();
      v24[2] = v50;
      v24[3] = v49;
      v24[4] = v18;
      v56 = sub_21B62A808;
      v57 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v53 = v15;
      v54 = sub_21B620234;
      v55 = &block_descriptor_117;
      v25 = _Block_copy(&aBlock);
      v26 = v50;

      v27 = v18;

      [v23 addSuccessBlock:v25 scheduler:{objc_msgSend(v45, sel_offMainThreadScheduler)}];
      swift_unknownObjectRelease();
      _Block_release(v25);
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = a1;
      v56 = sub_21B62A814;
      v57 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v53 = v15;
      v54 = sub_21B6204B4;
      v55 = &block_descriptor_123;
      v29 = _Block_copy(&aBlock);
      v30 = v27;
      v31 = a1;

      [v23 addFailureBlock_];
      _Block_release(v29);
      v32 = v23;
      MEMORY[0x21CEF6000]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      ++v13;
      sub_21B6C8EA4();

      v14 = v44;
    }

    while (v43 != v13);
    v33 = v58;

    a3 = v39;
    a4 = v40;
    if (!(v33 >> 62))
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  __break(1u);
}

id sub_21B62016C(void *a1, id a2, uint64_t a3, void *a4)
{
  [a2 lock];
  swift_beginAccess();
  v8 = a4;
  v9 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_21B645810(v9, v8, isUniquelyReferenced_nonNull_native);

  *(a3 + 16) = v12;
  swift_endAccess();
  return [a2 unlock];
}

void sub_21B62023C(void *a1, void *a2, void *a3)
{
  if (qword_28120B3A0 != -1)
  {
    swift_once();
  }

  v6 = sub_21B6C8AB4();
  __swift_project_value_buffer(v6, qword_28120CD90);
  v7 = sub_21B6C9024();
  v8 = a2;
  v9 = a3;
  v10 = a1;
  oslog = sub_21B6C8A94();

  if (os_log_type_enabled(oslog, v7))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136315650;
    type metadata accessor for Identifier(0);
    v14 = v8;
    v15 = sub_21B6C8DB4();
    v17 = sub_21B656178(v15, v16, &v23);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    v18 = [v9 _path];
    *(v11 + 14) = v18;
    *v12 = v18;
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v19 = sub_21B6C9744();
    v21 = sub_21B656178(v19, v20, &v23);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_21B526000, oslog, v7, "Failed to fetch snapshot for kind '%s' for poster at path: %@ due to error: %s", v11, 0x20u);
    sub_21B62AA8C(v12, &qword_27CD92EF0, &unk_21B6D8C20);
    MEMORY[0x21CEF8150](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CEF8150](v13, -1, -1);
    MEMORY[0x21CEF8150](v11, -1, -1);
  }

  else
  {
  }
}

void sub_21B6204BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21B620528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_opt_self() offMainThreadScheduler];
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v12[4] = sub_21B62A868;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21B63863C;
  v12[3] = &block_descriptor_135;
  v10 = _Block_copy(v12);

  [v8 performBlock_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

id sub_21B62064C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = [*(*(v6 + 56) + ((v13 << 9) | (8 * v14))) prepareForPresentation])
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v15 = [objc_opt_self() mainThreadScheduler];
      v16 = swift_allocObject();
      v16[2] = a2;
      v16[3] = a3;
      v16[4] = a1;
      aBlock[4] = sub_21B62A874;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B63863C;
      aBlock[3] = &block_descriptor_141;
      v17 = _Block_copy(aBlock);

      [v15 performBlock_];
      _Block_release(v17);
      return swift_unknownObjectRelease();
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B620840(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  a1(v4);
}

void sub_21B6208A8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_21B620934(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [*(v1 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v4 = [a1 identity];
  v5 = [v4 provider];

  if (!v5)
  {
    sub_21B6C8DA4();
    v5 = sub_21B6C8D74();
  }

  v6 = sub_21B6C8D74();
  v12[0] = 0;
  v7 = [v3 acquireExtensionInstance:v5 reason:v6 error:v12];

  v8 = v12[0];
  if (!v7)
  {
    v9 = v8;
    v10 = sub_21B6C8764();

    swift_willThrow();
  }

  return v7;
}

BOOL sub_21B620A90(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + OBJC_IVAR___PBFPosterPair_configuredProperties) focusConfiguration];
  if (v2)
  {

    return 0;
  }

  else
  {
    v4 = [*(v1 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) configurations];
    sub_21B61785C(0, &qword_28120B290, 0x277D3ED58);
    v5 = sub_21B6C8E84();

    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_21:
      v7 = sub_21B6C9454();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v9 = 0;
    v10 = v5 & 0xC000000000000001;
    v11 = &selRef_iconImageView;
    v26 = v5 & 0xC000000000000001;
    while (v7 != v8)
    {
      if (v10)
      {
        v21 = MEMORY[0x21CEF66E0](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_19;
        }

        v21 = *(v5 + 8 * v8 + 32);
      }

      v22 = v21;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v27[0] = 0;
      v23 = [v21 v11[400]];
      if (v23)
      {
        v24 = v23;
        v25 = v27[0];

        v19 = 0;
      }

      else
      {
        v12 = v27[0];
        v13 = v7;
        v14 = v5;
        v15 = v6;
        v16 = v11;
        v17 = sub_21B6C8764();

        swift_willThrow();
        v18 = v17;
        v11 = v16;
        v6 = v15;
        v5 = v14;
        v7 = v13;
        v10 = v26;

        v19 = 1;
      }

      ++v8;
      v20 = __OFADD__(v9, v19);
      v9 += v19;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    return v9 == 1;
  }
}

void *sub_21B620CB8(id *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v415 = a5;
  v427 = a4;
  v432 = a3;
  v411 = a2;
  v439[4] = *MEMORY[0x277D85DE8];
  v433 = sub_21B6C88C4();
  v435 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v423 = &v394 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v417 = &v394 - v10;
  MEMORY[0x28223BE20](v11);
  v409 = &v394 - v12;
  MEMORY[0x28223BE20](v13);
  v407 = &v394 - v14;
  MEMORY[0x28223BE20](v15);
  v405 = &v394 - v16;
  MEMORY[0x28223BE20](v17);
  v403 = &v394 - v18;
  MEMORY[0x28223BE20](v19);
  v402 = &v394 - v20;
  MEMORY[0x28223BE20](v21);
  v406 = &v394 - v22;
  MEMORY[0x28223BE20](v23);
  v404 = &v394 - v24;
  MEMORY[0x28223BE20](v25);
  v410 = &v394 - v26;
  MEMORY[0x28223BE20](v27);
  v414 = &v394 - v28;
  MEMORY[0x28223BE20](v29);
  v416 = &v394 - v30;
  MEMORY[0x28223BE20](v31);
  v426 = &v394 - v32;
  MEMORY[0x28223BE20](v33);
  v431 = (&v394 - v34);
  MEMORY[0x28223BE20](v35);
  v420 = &v394 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8, &unk_21B6D8330);
  MEMORY[0x28223BE20](v37 - 8);
  v422 = &v394 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v413 = &v394 - v40;
  MEMORY[0x28223BE20](v41);
  v418 = &v394 - v42;
  MEMORY[0x28223BE20](v43);
  v419 = &v394 - v44;
  MEMORY[0x28223BE20](v45);
  v412 = (&v394 - v46);
  *&v48 = MEMORY[0x28223BE20](v47).n128_u64[0];
  v50 = &v394 - v49;
  v51 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  v52 = [*(v5 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) configurations];
  v53 = sub_21B61785C(0, &qword_28120B290, 0x277D3ED58);
  v54 = sub_21B6C8E84();

  [*(v5 + v51) mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  v55 = sub_21B61785C(0, &unk_28120B1E0, 0x277D3ED10);
  swift_dynamicCast();
  v56 = v436;
  v434 = a1;
  [v436 ingestNewPosterConfiguration_];
  v57 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
  v58 = v6;
  v59 = [*(v6 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v60 = sub_21B6C8D74();
  v439[0] = 0;
  v424 = v56;
  v425 = [v59 updateDataStoreForSwitcherConfiguration:v56 options:1 reason:v60 error:v439];

  if (v439[0])
  {
    v61 = v439[0];

    if (qword_28120B3A0 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_3;
  }

  v396 = v55;
  v76 = v433;
  v395 = v57;
  v400 = v53;
  v397 = 0;
  v421 = v50;
  v408 = v58;
  v439[0] = MEMORY[0x277D84F90];
  v61 = v54;
  if (v54 >> 62)
  {
    v77 = sub_21B6C9454();
  }

  else
  {
    v77 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = v432;
  v79 = v76;
  v80 = MEMORY[0x277D84F90];
  v430 = v61;
  if (v77)
  {
    v81 = 0;
    v428 = (v61 & 0xFFFFFFFFFFFFFF8);
    v429 = (v61 & 0xC000000000000001);
    v82 = &selRef_newAssertionForBundleIdentifier_withReason_level_;
    while (1)
    {
      if (v429)
      {
        v83 = MEMORY[0x21CEF66E0](v81, v61);
      }

      else
      {
        if (v81 >= v428[2].isa)
        {
          goto LABEL_44;
        }

        v83 = *(v61 + 8 * v81 + 32);
      }

      v84 = v83;
      v85 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        swift_once();
LABEL_3:
        v62 = sub_21B6C8AB4();
        __swift_project_value_buffer(v62, qword_28120CD90);
        v63 = sub_21B6C9024();
        v64 = v61;
        v65 = v434;
        v66 = sub_21B6C8A94();

        if (os_log_type_enabled(v66, v63))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v439[0] = v69;
          *v67 = 138412546;
          v70 = [v65 sourceIdentity];
          *(v67 + 4) = v70;
          *v68 = v70;
          *(v67 + 12) = 2080;
          v71 = [v64 localizedDescription];
          v72 = sub_21B6C8DA4();
          v74 = v73;

          v75 = sub_21B656178(v72, v74, v439);

          *(v67 + 14) = v75;
          _os_log_impl(&dword_21B526000, v66, v63, "PosterStore failed to ingest poster %@ due to error %s", v67, 0x16u);
          sub_21B62AA8C(v68, &qword_27CD92EF0, &unk_21B6D8C20);
          MEMORY[0x21CEF8150](v68, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x21CEF8150](v69, -1, -1);
          MEMORY[0x21CEF8150](v67, -1, -1);
        }

        else
        {
        }

        return 0;
      }

      v86 = [v83 _path];
      v87 = [v86 serverIdentity];

      if (v87)
      {
        v88 = [v87 v82[404]];

        v87 = sub_21B6C8DA4();
        v90 = v89;
      }

      else
      {
        v90 = 0;
      }

      v91 = [v434 sourceIdentity];
      v92 = v82;
      v93 = [v91 v82[404]];

      v94 = sub_21B6C8DA4();
      v96 = v95;

      if (v90)
      {
        if (v87 == v94 && v90 == v96)
        {

          v82 = v92;
        }

        else
        {
          v97 = sub_21B6C96E4();

          v82 = v92;
          if ((v97 & 1) == 0)
          {

            goto LABEL_10;
          }
        }

        sub_21B6C9574();
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
      }

      else
      {

        v82 = v92;
      }

LABEL_10:
      v81 = (v81 + 1);
      v61 = v430;
      v78 = v432;
      if (v85 == v77)
      {
        v80 = v439[0];
        v79 = v433;
        break;
      }
    }
  }

  if ((v80 & 0x8000000000000000) != 0 || (v80 & 0x4000000000000000) != 0)
  {
    v98 = sub_21B6C9454();
    if (v98)
    {
LABEL_31:
      v439[0] = MEMORY[0x277D84F90];
      sub_21B6963C4(0, v98 & ~(v98 >> 63), 0);
      if (v98 < 0)
      {
        goto LABEL_97;
      }

      v79 = 0;
      v99 = v439[0];
      while (1)
      {
        v77 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_45;
        }

        if ((v80 & 0xC000000000000001) != 0)
        {
          v100 = MEMORY[0x21CEF66E0](v79, v80);
        }

        else
        {
          if (v79 >= *(v80 + 16))
          {
            goto LABEL_46;
          }

          v100 = *(v80 + 8 * v79 + 32);
        }

        v101 = v100;
        v102 = [v100 _path];
        v103 = [v102 serverIdentity];

        if (!v103)
        {
          break;
        }

        v104 = [v103 posterUUID];

        v105 = v431;
        sub_21B6C88A4();

        v439[0] = v99;
        v107 = v99[2];
        v106 = v99[3];
        v61 = v107 + 1;
        if (v107 >= v106 >> 1)
        {
          sub_21B6963C4((v106 > 1), v107 + 1, 1);
          v99 = v439[0];
        }

        v99[2] = v61;
        (*(v435 + 32))(v99 + ((*(v435 + 80) + 32) & ~*(v435 + 80)) + *(v435 + 72) * v107, v105, v433);
        ++v79;
        if (v77 == v98)
        {

          v78 = v432;
          v79 = v433;
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }
  }

  else
  {
    v98 = *(v80 + 16);
    if (v98)
    {
      goto LABEL_31;
    }
  }

  v99 = MEMORY[0x277D84F90];
LABEL_51:
  v108 = sub_21B699EC8(v99);

  v109 = [v434 sourceIdentity];
  v110 = [v109 posterUUID];

  v111 = v420;
  sub_21B6C88A4();

  v401 = v108;
  v112 = v111;
  LOBYTE(v111) = sub_21B66FC04(v111, v108);
  v77 = v435 + 8;
  v399 = *(v435 + 8);
  v399(v112, v79);
  v98 = v427;
  v113 = MEMORY[0x277D84F90];
  if (v111)
  {
    if (qword_28120B3A0 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_53;
  }

  v398 = v77;
  v128 = [v425 configurations];
  v77 = sub_21B6C8E84();

  v439[0] = v113;
  if (v77 >> 62)
  {
    v129 = sub_21B6C9454();
  }

  else
  {
    v129 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v130 = MEMORY[0x277D84F90];
  if (!v129)
  {
LABEL_78:

    if ((v130 & 0x8000000000000000) != 0 || (v130 & 0x4000000000000000) != 0)
    {
      v98 = sub_21B6C9454();
      v78 = v432;
      v79 = v433;
      v77 = v398;
      if (v98)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v98 = *(v130 + 16);
      v78 = v432;
      v79 = v433;
      v77 = v398;
      if (v98)
      {
LABEL_81:
        v439[0] = MEMORY[0x277D84F90];
        sub_21B6963C4(0, v98 & ~(v98 >> 63), 0);
        if (v98 < 0)
        {
          __break(1u);
          goto LABEL_208;
        }

        v77 = 0;
        v145 = v439[0];
        do
        {
          v79 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_95;
          }

          if ((v130 & 0xC000000000000001) != 0)
          {
            v146 = MEMORY[0x21CEF66E0](v77, v130);
          }

          else
          {
            if (v77 >= *(v130 + 16))
            {
              goto LABEL_96;
            }

            v146 = *(v130 + 8 * v77 + 32);
          }

          v147 = v146;
          v148 = [v146 _path];
          v149 = [v148 serverIdentity];

          if (!v149)
          {
            goto LABEL_214;
          }

          v150 = [v149 posterUUID];

          v78 = v426;
          sub_21B6C88A4();

          v439[0] = v145;
          v152 = v145[2];
          v151 = v145[3];
          if (v152 >= v151 >> 1)
          {
            sub_21B6963C4((v151 > 1), v152 + 1, 1);
            v145 = v439[0];
          }

          v145[2] = v152 + 1;
          (*(v435 + 32))(v145 + ((*(v435 + 80) + 32) & ~*(v435 + 80)) + *(v435 + 72) * v152, v78, v433);
          ++v77;
        }

        while (v79 != v98);

        v78 = v432;
        v79 = v433;
        v77 = v398;
LABEL_102:
        v153 = sub_21B699EC8(v145);

        v436 = v153;
        sub_21B629200(v401);
        v154 = v435;
        v98 = v427;
        if (*(v436 + 2) == 1)
        {
          v155 = v412;
          sub_21B623F90(v436, v412);
          result = (*(v154 + 48))(v155, 1, v79);
          if (result == 1)
          {
LABEL_224:
            __break(1u);
            return result;
          }

          v157 = *(v154 + 32);
          v158 = v416;
          v157(v416, v155, v79);
          v77 = *(v154 + 16);
          v159 = v421;
          (v77)(v421, v158, v79);
          (*(v154 + 56))(v159, 0, 1, v79);
          if (!v411)
          {

            if (qword_28120B3A0 != -1)
            {
              swift_once();
            }

            v225 = sub_21B6C8AB4();
            __swift_project_value_buffer(v225, qword_28120CD90);
            v226 = sub_21B6C9044();
            v227 = v409;
            v180 = v416;
            v79 = v433;
            (v77)(v409, v416, v433);
            v228 = v434;
            v229 = sub_21B6C8A94();

            if (os_log_type_enabled(v229, v226))
            {
              v230 = swift_slowAlloc();
              v231 = swift_slowAlloc();
              v232 = swift_slowAlloc();
              v439[0] = v232;
              *v230 = 138412546;
              v233 = [v228 sourceIdentity];
              *(v230 + 4) = v233;
              *v231 = v233;
              *(v230 + 12) = 2080;
              sub_21B61E450(&unk_27CD93530, MEMORY[0x277CC9628]);
              v234 = sub_21B6C9654();
              v236 = v235;
              v237 = v227;
              v77 = v398;
              v193 = v399;
              v399(v237, v79);
              v238 = sub_21B656178(v234, v236, v439);
              v180 = v416;

              *(v230 + 14) = v238;
              _os_log_impl(&dword_21B526000, v229, v226, "PosterStore ingested poster %@ as %s", v230, 0x16u);
              sub_21B62AA8C(v231, &qword_27CD92EF0, &unk_21B6D8C20);
              MEMORY[0x21CEF8150](v231, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v232);
              MEMORY[0x21CEF8150](v232, -1, -1);
              MEMORY[0x21CEF8150](v230, -1, -1);
            }

            else
            {

              v255 = v227;
              v77 = v398;
              v193 = v399;
              v399(v255, v79);
            }

            v126 = 0;
            v127 = v423;
            v98 = v427;
            v78 = v432;
            goto LABEL_143;
          }

          v160 = v411;
          [v425 mutableCopy];
          sub_21B6C93E4();
          swift_unknownObjectRelease();
          swift_dynamicCast();
          v161 = v438;
          v162 = OBJC_IVAR___PBFPosterPair_configuration;
          v163 = [*(&v160->isa + OBJC_IVAR___PBFPosterPair_configuration) _path];
          v164 = [v163 serverIdentity];

          if (!v164)
          {

            if (qword_28120B3A0 != -1)
            {
              swift_once();
            }

            v239 = sub_21B6C8AB4();
            __swift_project_value_buffer(v239, qword_28120CD90);
            v240 = sub_21B6C9024();
            v241 = v160;
            v242 = sub_21B6C8A94();

            v243 = os_log_type_enabled(v242, v240);
            v78 = v432;
            v77 = v398;
            if (v243)
            {
              v244 = swift_slowAlloc();
              v245 = swift_slowAlloc();
              *v244 = 138412290;
              v246 = *(&v160->isa + v162);
              *(v244 + 4) = v246;
              *v245 = v246;
              v247 = v246;
              _os_log_impl(&dword_21B526000, v242, v240, "PosterStore failed to find uuid of pair to be replaced %@", v244, 0xCu);
              sub_21B62AA8C(v245, &qword_27CD92EF0, &unk_21B6D8C20);
              MEMORY[0x21CEF8150](v245, -1, -1);
              MEMORY[0x21CEF8150](v244, -1, -1);
            }

            v126 = 0;
            v127 = v423;
            v98 = v427;
            v79 = v433;
            v399(v416, v433);
            goto LABEL_144;
          }

          v428 = v160;
          v165 = [v164 posterUUID];

          v166 = v410;
          sub_21B6C88A4();

          v167 = v414;
          v157(v414, v166, v433);
          v168 = [v161 configurations];
          v169 = sub_21B6C8E84();

          MEMORY[0x28223BE20](v170);
          *(&v394 - 2) = v167;
          v171 = v397;
          sub_21B64763C(sub_21B62AA6C, (&v394 - 4), v169);
          v429 = v172;
          LOBYTE(v168) = v173;

          v431 = v161;
          v174 = [v161 configurations];
          v175 = sub_21B6C8E84();

          MEMORY[0x28223BE20](v176);
          *(&v394 - 2) = v416;
          sub_21B64763C(sub_21B62AB38, (&v394 - 4), v175);
          v178 = v177;
          v180 = v179;

          v397 = v171;
          if (v168 & 1) != 0 || (v180)
          {
            if (qword_28120B3A0 == -1)
            {
              goto LABEL_109;
            }

            goto LABEL_212;
          }

          v275 = v429;
          v276 = v408;
          if (v429 == v178)
          {
            v79 = v431;
            if (qword_28120B3A0 == -1)
            {
LABEL_161:
              v277 = sub_21B6C8AB4();
              __swift_project_value_buffer(v277, qword_28120CD90);
              v278 = sub_21B6C9044();
              v279 = v405;
              v280 = v433;
              (v77)(v405, v414, v433);
              v281 = sub_21B6C8A94();
              if (os_log_type_enabled(v281, v278))
              {
                v282 = swift_slowAlloc();
                v283 = swift_slowAlloc();
                v439[0] = v283;
                *v282 = 136315138;
                sub_21B61E450(&unk_27CD93530, MEMORY[0x277CC9628]);
                v284 = sub_21B6C9654();
                v286 = v285;
                v287 = v279;
                v77 = v398;
                v193 = v399;
                v399(v287, v280);
                v288 = sub_21B656178(v284, v286, v439);

                *(v282 + 4) = v288;
                _os_log_impl(&dword_21B526000, v281, v278, "PosterStore replacement is the same as ingested - no need for further changes: %s", v282, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v283);
                MEMORY[0x21CEF8150](v283, -1, -1);
                MEMORY[0x21CEF8150](v282, -1, -1);
              }

              else
              {

                v341 = v279;
                v77 = v398;
                v193 = v399;
                v399(v341, v280);
              }

              v79 = v280;
              v126 = 0;
              goto LABEL_142;
            }

LABEL_215:
            swift_once();
            goto LABEL_161;
          }

          v289 = [v431 configurations];
          v290 = sub_21B6C8E84();

          if ((v290 & 0xC000000000000001) != 0)
          {
            v426 = MEMORY[0x21CEF66E0](v275, v290);
            v291 = v406;
          }

          else
          {
            v291 = v406;
            if ((v275 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_218;
            }

            if (v275 >= *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_220;
            }

            v426 = *(v290 + 8 * v275 + 32);
          }

          v292 = [v431 configurations];
          v290 = sub_21B6C8E84();

          if ((v290 & 0xC000000000000001) == 0)
          {
            if ((v178 & 0x8000000000000000) == 0)
            {
              if (v178 < *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v293 = *(v290 + 8 * v178 + 32);
                goto LABEL_171;
              }

LABEL_221:
              __break(1u);
              goto LABEL_222;
            }

LABEL_220:
            __break(1u);
            goto LABEL_221;
          }

LABEL_218:
          v293 = MEMORY[0x21CEF66E0](v178, v290);
LABEL_171:
          v294 = v293;

          v295 = v431;
          v296 = [v431 configurations];
          v297 = sub_21B6C8E84();

          v439[0] = v297;
          sub_21B6241EC(v429, v178);
          v298 = sub_21B6C8E74();

          [v295 setConfigurations:v298];

          sub_21B61785C(0, &qword_28120B120, 0x277D82BB8);
          v299 = [v295 selectedConfiguration];
          LOBYTE(v298) = sub_21B6C91A4();

          if (v298)
          {
            [v295 setSelectedConfiguration:v294];
          }

          v420 = v294;
          v300 = [v295 activeConfiguration];
          v301 = v395;
          if (v300)
          {
            v302 = v300;
            v303 = v426;
            v304 = sub_21B6C91A4();

            v276 = v408;
            if (v304)
            {
              [v295 setDesiredActiveConfiguration:v420];
            }
          }

          [v295 removeConfiguration:v426];
          v305 = [*(v276 + v301) dataStore];
          v306 = sub_21B6C8D74();
          v438 = 0;

          v126 = v438 == 0;
          v307 = qword_28120B3A0;
          if (!v438)
          {
            v180 = v416;
            if (qword_28120B3A0 != -1)
            {
              swift_once();
            }

            v342 = sub_21B6C8AB4();
            __swift_project_value_buffer(v342, qword_28120CD90);
            v343 = sub_21B6C9044();
            v344 = v402;
            v79 = v433;
            (v77)(v402, v180, v433);
            v345 = v403;
            (v77)(v403, v414, v79);
            v346 = v434;
            v347 = sub_21B6C8A94();

            LODWORD(v434) = v343;
            if (os_log_type_enabled(v347, v343))
            {
              v348 = swift_slowAlloc();
              v349 = swift_slowAlloc();
              LODWORD(v429) = v126;
              v350 = v349;
              v412 = swift_slowAlloc();
              v438 = v412;
              *v348 = 138412802;
              v351 = [v346 sourceIdentity];
              *(v348 + 4) = v351;
              *v350 = v351;
              *(v348 + 12) = 2080;
              sub_21B61E450(&unk_27CD93530, MEMORY[0x277CC9628]);
              v352 = v347;
              v353 = sub_21B6C9654();
              v355 = v354;
              v356 = v344;
              v77 = v398;
              v357 = v399;
              v399(v356, v79);
              v358 = sub_21B656178(v353, v355, &v438);

              *(v348 + 14) = v358;
              *(v348 + 22) = 2080;
              v359 = sub_21B6C9654();
              v361 = v360;
              v357(v345, v79);
              v362 = sub_21B656178(v359, v361, &v438);
              v180 = v416;

              *(v348 + 24) = v362;
              _os_log_impl(&dword_21B526000, v352, v434, "PosterStore ingested poster %@ as %s replacing %s", v348, 0x20u);
              sub_21B62AA8C(v350, &qword_27CD92EF0, &unk_21B6D8C20);
              v363 = v350;
              v126 = v429;
              MEMORY[0x21CEF8150](v363, -1, -1);
              v364 = v412;
              swift_arrayDestroy();
              MEMORY[0x21CEF8150](v364, -1, -1);
              MEMORY[0x21CEF8150](v348, -1, -1);
            }

            else
            {

              v77 = v398;
              v367 = v344;
              v368 = v399;
              v399(v345, v79);
              v368(v367, v79);
            }

            v127 = v423;
            v78 = v432;
            v369 = v428;
            sub_21B6276B0(0, 0);

            v98 = v427;
            v366 = v431;
LABEL_189:

            v193 = v399;
            v399(v414, v79);
            goto LABEL_143;
          }

          LODWORD(v429) = 0;
          v290 = v438;
          v180 = v416;
          if (v307 == -1)
          {
LABEL_178:
            v308 = sub_21B6C8AB4();
            __swift_project_value_buffer(v308, qword_28120CD90);
            v309 = sub_21B6C9044();
            v310 = v404;
            v311 = v433;
            (v77)(v404, v180, v433);
            v312 = v291;
            (v77)(v291, v414, v311);
            v313 = v434;
            v314 = v290;
            v315 = sub_21B6C8A94();

            LODWORD(v434) = v309;
            if (os_log_type_enabled(v315, v309))
            {
              v316 = swift_slowAlloc();
              v429 = v315;
              v317 = v310;
              v318 = v316;
              v319 = swift_slowAlloc();
              v412 = v319;
              v320 = swift_slowAlloc();
              v438 = v320;
              *v318 = 138413058;
              v321 = [v313 sourceIdentity];
              *(v318 + 4) = v321;
              *v319 = v321;
              *(v318 + 12) = 2080;
              sub_21B61E450(&unk_27CD93530, MEMORY[0x277CC9628]);
              v322 = sub_21B6C9654();
              v323 = v314;
              v325 = v324;
              v326 = v317;
              v77 = v398;
              v327 = v312;
              v193 = v399;
              v399(v326, v311);
              v328 = sub_21B656178(v322, v325, &v438);

              *(v318 + 14) = v328;
              *(v318 + 22) = 2080;
              v329 = sub_21B6C9654();
              v331 = v330;
              v193(v327, v311);
              v332 = sub_21B656178(v329, v331, &v438);

              *(v318 + 24) = v332;
              *(v318 + 32) = 2080;
              v333 = [v323 localizedDescription];
              v334 = sub_21B6C8DA4();
              v336 = v335;

              v337 = v334;
              v180 = v416;
              v338 = sub_21B656178(v337, v336, &v438);

              *(v318 + 34) = v338;
              v339 = v429;
              _os_log_impl(&dword_21B526000, v429, v434, "PosterStore failed to select poster %@ as %s replacing %s due to error %s", v318, 0x2Au);
              v340 = v412;
              sub_21B62AA8C(v412, &qword_27CD92EF0, &unk_21B6D8C20);
              MEMORY[0x21CEF8150](v340, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x21CEF8150](v320, -1, -1);
              MEMORY[0x21CEF8150](v318, -1, -1);

              v126 = 0;
              v79 = v311;
              v127 = v423;
              v98 = v427;
              v78 = v432;
              v193(v414, v311);
              goto LABEL_143;
            }

            v77 = v398;
            v365 = v399;
            v399(v291, v311);
            v365(v310, v311);
            v366 = v314;
            v79 = v311;
            v127 = v423;
            v98 = v427;
            v78 = v432;
            v126 = v429;
            goto LABEL_189;
          }

LABEL_222:
          swift_once();
          goto LABEL_178;
        }

        if (qword_28120B3A0 == -1)
        {
LABEL_112:
          v203 = sub_21B6C8AB4();
          __swift_project_value_buffer(v203, qword_28120CD90);
          LODWORD(v204) = sub_21B6C9024();
          v205 = v434;
          v206 = v425;
          v207 = sub_21B6C8A94();

          if (!os_log_type_enabled(v207, v204))
          {

            v224 = v421;
            goto LABEL_137;
          }

          v208 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v439[0] = v78;
          *v208 = 138412546;
          v209 = [v205 sourceIdentity];
          *(v208 + 4) = v209;
          *v79 = v209;
          *(v208 + 6) = 2080;
          v210 = [v206 configurations];
          v77 = sub_21B6C8E84();

          if (v77 >> 62)
          {
            goto LABEL_210;
          }

          v211 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_115;
        }

LABEL_208:
        swift_once();
        goto LABEL_112;
      }
    }

    v145 = MEMORY[0x277D84F90];
    goto LABEL_102;
  }

  v131 = 0;
  v431 = (v77 & 0xC000000000000001);
  v428 = v129;
  v429 = (v77 & 0xFFFFFFFFFFFFFF8);
  v132 = &selRef_newAssertionForBundleIdentifier_withReason_level_;
  while (1)
  {
    if (v431)
    {
      v133 = MEMORY[0x21CEF66E0](v131, v77);
    }

    else
    {
      if (v131 >= v429[2].isa)
      {
        goto LABEL_94;
      }

      v133 = *(v77 + 8 * v131 + 32);
    }

    v79 = v133;
    v134 = (v131 + 1);
    if (__OFADD__(v131, 1))
    {
      break;
    }

    v135 = [v133 _path];
    v136 = [v135 serverIdentity];

    if (v136)
    {
      v137 = [v136 v132[404]];

      v136 = sub_21B6C8DA4();
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    v140 = [v434 sourceIdentity];
    v98 = v132;
    v141 = [v140 v132[404]];

    v142 = sub_21B6C8DA4();
    v78 = v143;

    if (v139)
    {
      if (v136 == v142 && v139 == v78)
      {

        v132 = v98;
      }

      else
      {
        v144 = sub_21B6C96E4();

        v132 = v98;
        if ((v144 & 1) == 0)
        {

          goto LABEL_61;
        }
      }

      sub_21B6C9574();
      sub_21B6C95A4();
      sub_21B6C95B4();
      sub_21B6C9584();
    }

    else
    {

      v132 = v98;
    }

LABEL_61:
    v131 = (v131 + 1);
    if (v134 == v428)
    {
      v130 = v439[0];
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  swift_once();
LABEL_53:
  v114 = sub_21B6C8AB4();
  __swift_project_value_buffer(v114, qword_28120CD90);
  v115 = sub_21B6C9044();
  v116 = v434;
  v117 = sub_21B6C8A94();

  if (os_log_type_enabled(v117, v115))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v118 = 138412290;
    v120 = [v116 sourceIdentity];
    *(v118 + 4) = v120;
    *v119 = v120;
    _os_log_impl(&dword_21B526000, v117, v115, "PosterStore updated poster %@", v118, 0xCu);
    sub_21B62AA8C(v119, &qword_27CD92EF0, &unk_21B6D8C20);
    v121 = v119;
    v98 = v427;
    MEMORY[0x21CEF8150](v121, -1, -1);
    MEMORY[0x21CEF8150](v118, -1, -1);
  }

  v122 = [v116 sourceIdentity];
  v123 = [v122 posterUUID];

  v124 = v421;
  sub_21B6C88A4();

  v125 = v435;
  (*(v435 + 56))(v124, 0, 1, v79);
  v126 = 0;
  v127 = v423;
  while (2)
  {
    v257 = v124;
    v258 = v419;
    sub_21B62A994(v257, v419);
    v259 = *(v125 + 48);
    v434 = (v125 + 48);
    v431 = v259;
    if ((v259)(v258, 1, v79) == 1)
    {
      sub_21B62AA8C(v258, &qword_27CD92EE8, &unk_21B6D8330);
      v260 = v399;
      goto LABEL_196;
    }

    v261 = v258;
    v262 = v417;
    (*(v125 + 32))(v417, v261, v79);
    v263 = [v425 configurations];
    v264 = sub_21B6C8E84();

    MEMORY[0x28223BE20](v265);
    *(&v394 - 2) = v262;
    v266 = sub_21B61F748(sub_21B62AA04, (&v394 - 4), v264);

    v127 = v423;
    if (v266)
    {
      v428 = v266;
      LODWORD(v429) = v126;
      v207 = [objc_opt_self() defaultConfigurationDefinitions];
      v426 = sub_21B61785C(0, &qword_28120B238, off_2782C4448);
      v267 = sub_21B6C8E84();

      if (v267 >> 62)
      {
        v204 = sub_21B6C9454();
        if (!v204)
        {
LABEL_191:

          v269 = MEMORY[0x277D84F90];
LABEL_192:
          v370 = sub_21B69A064(v269);

          sub_21B6247E4(v371, v370);
          v373 = v372;
          v374 = objc_opt_self();
          v375 = v428;
          v376 = [v374 snapshotRequestForConfiguration:v428 context:v98];
          sub_21B61F0DC(v373);

          v377 = sub_21B6C8E74();

          v378 = [v376 requestWithDefinitions_];

          LOBYTE(v126) = v429;
          if (v415 > 0)
          {
            v379 = [v378 requestWithSignificantEventsCounter_];

            v378 = v379;
          }

          v262 = v417;
          sub_21B61FB2C(v375, v378, CGPointMake, 0);

          break;
        }
      }

      else
      {
        v204 = *((v267 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v204)
        {
          goto LABEL_191;
        }
      }

      v398 = v77;
      v439[0] = MEMORY[0x277D84F90];
      v208 = v439;
      sub_21B6963A4(0, v204 & ~(v204 >> 63), 0);
      if ((v204 & 0x8000000000000000) == 0)
      {
        v268 = 0;
        v269 = v439[0];
        do
        {
          if ((v267 & 0xC000000000000001) != 0)
          {
            v270 = MEMORY[0x21CEF66E0](v268, v267);
          }

          else
          {
            v270 = *(v267 + 8 * v268 + 32);
          }

          v271 = v270;
          v272 = [v270 uniqueIdentifier];

          v439[0] = v269;
          v274 = v269[2];
          v273 = v269[3];
          if (v274 >= v273 >> 1)
          {
            sub_21B6963A4((v273 > 1), v274 + 1, 1);
            v269 = v439[0];
          }

          ++v268;
          v269[2] = v274 + 1;
          v269[v274 + 4] = v272;
          v98 = v427;
        }

        while (v204 != v268);

        v79 = v433;
        v127 = v423;
        goto LABEL_192;
      }

      __break(1u);
LABEL_210:
      v211 = sub_21B6C9454();
LABEL_115:
      v434 = v208;
      v431 = v78;
      v429 = v79;
      if (v211)
      {
        LODWORD(v426) = v204;
        v428 = v207;
        v438 = MEMORY[0x277D84F90];
        sub_21B696384(0, v211 & ~(v211 >> 63), 0);
        if ((v211 & 0x8000000000000000) == 0)
        {
          v212 = 0;
          v213 = v438;
          do
          {
            if ((v77 & 0xC000000000000001) != 0)
            {
              v214 = MEMORY[0x21CEF66E0](v212, v77);
            }

            else
            {
              v214 = *(v77 + 8 * v212 + 32);
            }

            v215 = v214;
            v216 = [v214 _path];
            v217 = [v216 serverIdentity];

            v437 = v217;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F10, &qword_21B6D8358);
            v218 = sub_21B6C8DB4();
            v220 = v219;

            v438 = v213;
            isa = v213[2].isa;
            v221 = v213[3].isa;
            if (isa >= v221 >> 1)
            {
              sub_21B696384((v221 > 1), isa + 1, 1);
              v213 = v438;
            }

            ++v212;
            v213[2].isa = (isa + 1);
            v223 = &v213[2 * isa];
            v223[4].isa = v218;
            v223[5].isa = v220;
            v98 = v427;
          }

          while (v211 != v212);

          v207 = v428;
          LOBYTE(v204) = v426;
          goto LABEL_136;
        }

        __break(1u);
LABEL_212:
        swift_once();
LABEL_109:
        v181 = sub_21B6C8AB4();
        __swift_project_value_buffer(v181, qword_28120CD90);
        v182 = sub_21B6C9024();
        v183 = v407;
        v184 = v433;
        (v77)(v407, v414, v433);
        v185 = v434;
        v186 = sub_21B6C8A94();

        if (os_log_type_enabled(v186, v182))
        {
          v187 = swift_slowAlloc();
          v434 = swift_slowAlloc();
          v439[0] = v434;
          *v187 = 136315394;
          sub_21B61E450(&unk_27CD93530, MEMORY[0x277CC9628]);
          v188 = sub_21B6C9654();
          v190 = v189;
          v191 = v183;
          v192 = v398;
          v193 = v399;
          v399(v191, v184);
          v194 = sub_21B656178(v188, v190, v439);

          *(v187 + 4) = v194;
          *(v187 + 12) = 2080;
          v195 = [v185 sourceIdentity];
          v196 = [v195 posterUUID];

          v197 = v420;
          sub_21B6C88A4();

          v77 = v192;
          v198 = sub_21B6C9654();
          v200 = v199;
          v193(v197, v184);
          v201 = sub_21B656178(v198, v200, v439);

          *(v187 + 14) = v201;
          _os_log_impl(&dword_21B526000, v186, v182, "PosterStore failed to find replacement info: uuidOfReplaced=%s uuidOfIngested=%s", v187, 0x16u);
          v202 = v434;
          swift_arrayDestroy();
          MEMORY[0x21CEF8150](v202, -1, -1);
          MEMORY[0x21CEF8150](v187, -1, -1);
        }

        else
        {

          v256 = v183;
          v77 = v398;
          v193 = v399;
          v399(v256, v184);
        }

        v126 = 0;
        v79 = v184;
LABEL_142:
        v127 = v423;
        v98 = v427;
        v78 = v432;
        v180 = v416;
        v193(v414, v79);
LABEL_143:
        v193(v180, v79);
      }

      else
      {

        v213 = MEMORY[0x277D84F90];
LABEL_136:
        v438 = v213;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F18, &unk_21B6D8360);
        sub_21B62AA24(&qword_28120B350, &qword_27CD92F18, &unk_21B6D8360, MEMORY[0x277D83958]);
        v248 = sub_21B6C8D54();
        v250 = v249;

        v251 = sub_21B656178(v248, v250, v439);

        v252 = v434;
        *(v434 + 14) = v251;
        _os_log_impl(&dword_21B526000, v207, v204, "PosterStore cannot find result of ingested poster: %@ :configs={\n\t%s\n}", v252, 0x16u);
        v253 = v429;
        sub_21B62AA8C(v429, &qword_27CD92EF0, &unk_21B6D8C20);
        MEMORY[0x21CEF8150](v253, -1, -1);
        v254 = v431;
        __swift_destroy_boxed_opaque_existential_0(v431);
        MEMORY[0x21CEF8150](v254, -1, -1);
        MEMORY[0x21CEF8150](v252, -1, -1);

        v78 = v432;
        v79 = v433;
        v224 = v421;
        v77 = v398;
LABEL_137:
        (*(v435 + 56))(v224, 1, 1, v79);
        v126 = 0;
        v127 = v423;
      }

LABEL_144:
      v125 = v435;
      v124 = v421;
      continue;
    }

    break;
  }

  v260 = v399;
  v399(v262, v79);
LABEL_196:
  v380 = v422;
  v381 = v418;
  if (v126)
  {

    v382 = v431;
    goto LABEL_203;
  }

  v383 = v421;
  sub_21B62A994(v421, v418);
  v382 = v431;
  if ((v431)(v381, 1, v79) != 1)
  {
    sub_21B62AA8C(v381, &qword_27CD92EE8, &unk_21B6D8330);
    v386 = v413;
    sub_21B62A994(v383, v413);
    result = (v382)(v386, 1, v79);
    if (result != 1)
    {

      v387 = v386;
      v388 = sub_21B6C8874();
      v385 = v389;
      v260(v387, v79);
      v384 = v388;
      v127 = v423;
      goto LABEL_202;
    }

    __break(1u);
    goto LABEL_224;
  }

  sub_21B62AA8C(v381, &qword_27CD92EE8, &unk_21B6D8330);
  v384 = 0;
  v385 = 0;
LABEL_202:
  sub_21B6276B0(v384, v385);
  v380 = v422;
LABEL_203:

  v390 = v421;
  sub_21B62A994(v421, v380);
  if ((v382)(v380, 1, v79) == 1)
  {
    sub_21B62AA8C(v390, &qword_27CD92EE8, &unk_21B6D8330);

    sub_21B62AA8C(v380, &qword_27CD92EE8, &unk_21B6D8330);
    return 0;
  }

  (*(v435 + 32))(v127, v380, v79);
  v391 = sub_21B6C8874();
  v393 = sub_21B61F5F8(v391, v392);

  v260(v127, v79);
  sub_21B62AA8C(v390, &qword_27CD92EE8, &unk_21B6D8330);
  return v393;
}

uint64_t sub_21B623F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B6C9414();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_21B6295F0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_21B6C88C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_21B62404C(id *a1, uint64_t a2)
{
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v16 - v9;
  v11 = [*a1 _path];
  v12 = [v11 serverIdentity];

  if (v12)
  {
    v13 = [v12 posterUUID];

    sub_21B6C88A4();
    (*(v4 + 32))(v10, v6, v3);
    v14 = sub_21B6C8894();
    (*(v4 + 8))(v10, v3);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void sub_21B6241EC(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v6 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x21CEF66E0](a1, *v2);
      v9 = MEMORY[0x21CEF66E0](a2, v6);
      goto LABEL_7;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 > a1)
      {
        if (v7 > a2)
        {
          v8 = *(v6 + 32 + 8 * a2);
          v3 = *(v6 + 32 + 8 * a1);
          v9 = v8;
LABEL_7:
          v10 = v9;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = sub_21B69F91C();
            v11 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v11) = 0;
          }

          v12 = v6 & 0xFFFFFFFFFFFFFF8;
          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

          if ((v6 & 0x8000000000000000) == 0 && !v11)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          v6 = sub_21B69F91C();
          v12 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v12 + 16) > a2)
            {
              v14 = v12 + 8 * a2;
              v15 = *(v14 + 32);
              *(v14 + 32) = v3;

              *v2 = v6;
              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_21B624328(id *a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93370, &qword_21B6D8C30);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8, &unk_21B6D8330);
  MEMORY[0x28223BE20](v9 - 8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v30 - v16;
  v18 = [*a1 _path];
  v19 = [v18 serverIdentity];

  if (v19)
  {
    v20 = [v19 posterUUID];

    sub_21B6C88A4();
    v21 = *(v4 + 56);
    v21(v17, 0, 1, v3);
  }

  else
  {
    v21 = *(v4 + 56);
    v21(v17, 1, 1, v3);
  }

  (*(v4 + 16))(v13, v33, v3);
  v21(v13, 0, 1, v3);
  v22 = *(v6 + 48);
  sub_21B62A994(v17, v8);
  sub_21B62A994(v13, &v8[v22]);
  v23 = *(v4 + 48);
  if (v23(v8, 1, v3) != 1)
  {
    v25 = v32;
    sub_21B62A994(v8, v32);
    if (v23(&v8[v22], 1, v3) != 1)
    {
      v26 = &v8[v22];
      v27 = v31;
      (*(v4 + 32))(v31, v26, v3);
      sub_21B61E450(&qword_27CD92F20, MEMORY[0x277CC9610]);
      v24 = sub_21B6C8D64();
      v28 = *(v4 + 8);
      v28(v27, v3);
      sub_21B62AA8C(v13, &qword_27CD92EE8, &unk_21B6D8330);
      sub_21B62AA8C(v17, &qword_27CD92EE8, &unk_21B6D8330);
      v28(v32, v3);
      sub_21B62AA8C(v8, &qword_27CD92EE8, &unk_21B6D8330);
      return v24 & 1;
    }

    sub_21B62AA8C(v13, &qword_27CD92EE8, &unk_21B6D8330);
    sub_21B62AA8C(v17, &qword_27CD92EE8, &unk_21B6D8330);
    (*(v4 + 8))(v25, v3);
    goto LABEL_9;
  }

  sub_21B62AA8C(v13, &qword_27CD92EE8, &unk_21B6D8330);
  sub_21B62AA8C(v17, &qword_27CD92EE8, &unk_21B6D8330);
  if (v23(&v8[v22], 1, v3) != 1)
  {
LABEL_9:
    sub_21B62AA8C(v8, &unk_27CD93370, &qword_21B6D8C30);
    v24 = 0;
    return v24 & 1;
  }

  sub_21B62AA8C(v8, &qword_27CD92EE8, &unk_21B6D8330);
  v24 = 1;
  return v24 & 1;
}

void sub_21B6247E4(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_21B61A034(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_21B6248D8(unint64_t a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if ((v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8] & 1) != 0 || *&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex] != a1 || v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] == 1)
  {
    v3 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
    [*&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig] mutableCopy];
    sub_21B6C93E4();
    swift_unknownObjectRelease();
    sub_21B61785C(0, &unk_28120B1E0, 0x277D3ED10);
    swift_dynamicCast();
    v4 = [*&v1[v3] configurations];
    sub_21B61785C(0, &qword_28120B290, 0x277D3ED58);
    v5 = sub_21B6C8E84();

    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v6 = *(v5 + 8 * a1 + 32);
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_24;
    }

    v6 = MEMORY[0x21CEF66E0](a1, v5);
LABEL_8:
    v4 = v6;

    v7 = [*&v1[v3] focusConfigurationForPoster_];
    if (v7)
    {
    }

    else
    {
      [v23 setSelectedConfiguration_];
    }

    [v23 setDesiredActiveConfiguration_];
    v8 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
    v9 = [*&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
    v10 = sub_21B6C8D74();
    v24[0] = 0;

    if (!v24[0])
    {
      sub_21B6276B0(0, 0);
      if (v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] != 1)
      {
LABEL_19:

        return;
      }

      v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] = 0;
      v15 = [*&v1[v8] dataStore];
      [v15 updateFocusModeForActivePosterChange];
LABEL_18:

      goto LABEL_19;
    }

    v11 = qword_28120B3A0;
    v1 = v24[0];
    if (v11 == -1)
    {
LABEL_13:
      v12 = sub_21B6C8AB4();
      __swift_project_value_buffer(v12, qword_28120CD90);
      v13 = sub_21B6C9024();
      v14 = v1;
      v15 = sub_21B6C8A94();

      if (os_log_type_enabled(v15, v13))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24[0] = v17;
        *v16 = 134218242;
        *(v16 + 4) = a1;
        *(v16 + 12) = 2080;
        v18 = [v14 localizedDescription];
        v19 = sub_21B6C8DA4();
        v21 = v20;

        v22 = sub_21B656178(v19, v21, v24);

        *(v16 + 14) = v22;
        _os_log_impl(&dword_21B526000, v15, v13, "PosterStore failed to persist new selection index: %ld due to error: %s", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x21CEF8150](v17, -1, -1);
        MEMORY[0x21CEF8150](v16, -1, -1);

        return;
      }

      goto LABEL_18;
    }

LABEL_24:
    swift_once();
    goto LABEL_13;
  }
}

BOOL sub_21B624D1C(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = sub_21B6C9454();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = a2;
  a2 += OBJC_IVAR___PBFPosterPair_id;

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      return 0;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CEF66E0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (*&v8[OBJC_IVAR___PBFPosterPair_id] == *a2 && *&v8[OBJC_IVAR___PBFPosterPair_id + 8] == *(a2 + 1))
    {
      break;
    }

    v11 = sub_21B6C96E4();

    ++v7;
    if (v11)
    {

      goto LABEL_18;
    }
  }

LABEL_18:
  v13 = a1;
  v12 = sub_21B6296B0(v16, v2, v13);

  return v12;
}

BOOL sub_21B624EA0(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = sub_21B6C9454();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = a2;
  v7 = &a2[OBJC_IVAR___PBFPosterPair_id];
  a2 = (v5 & 0xC000000000000001);

  v8 = 0;
  while (1)
  {
    if (v6 == v8)
    {

      return 0;
    }

    if (a2)
    {
      v9 = MEMORY[0x21CEF66E0](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (*&v9[OBJC_IVAR___PBFPosterPair_id] == *v7 && *&v9[OBJC_IVAR___PBFPosterPair_id + 8] == *(v7 + 1))
    {
      break;
    }

    v12 = sub_21B6C96E4();

    ++v8;
    if (v12)
    {

      goto LABEL_18;
    }
  }

LABEL_18:
  v14 = a1;
  v13 = sub_21B62A14C(v16, v2, a1);

  return v13;
}

void sub_21B625024(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8, &unk_21B6D8330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_21B6C88C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = *&a1[OBJC_IVAR___PBFPosterPair_configuration];
  v17 = [v16 _path];
  v18 = [v17 serverIdentity];

  if (v18)
  {
    v19 = [v18 posterUUID];

    sub_21B6C88A4();
    sub_21B6C8874();

    v33 = *(v10 + 8);
    v33(v15, v9);
    sub_21B6C8864();

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v27 = [*(v4 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
      v28 = sub_21B6C8884();
      v29 = swift_allocObject();
      v30 = v35;
      *(v29 + 16) = v34;
      *(v29 + 24) = v30;
      aBlock[4] = sub_21B62A7E0;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B625498;
      aBlock[3] = &block_descriptor_108;
      v31 = _Block_copy(aBlock);

      [v27 duplicatePosterConfigurationMatchingUUID:v28 completion:v31];
      _Block_release(v31);

      v33(v12, v9);
      return;
    }

    sub_21B62AA8C(v8, &qword_27CD92EE8, &unk_21B6D8330);
  }

  else
  {
  }

  if (qword_28120B3A0 != -1)
  {
    swift_once();
  }

  v20 = sub_21B6C8AB4();
  __swift_project_value_buffer(v20, qword_28120CD90);
  v21 = sub_21B6C9024();
  v22 = a1;
  v23 = sub_21B6C8A94();

  if (os_log_type_enabled(v23, v21))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v22;
    *v25 = v22;
    v26 = v22;
    _os_log_impl(&dword_21B526000, v23, v21, "Unable to find poster ID for %@", v24, 0xCu);
    sub_21B62AA8C(v25, &qword_27CD92EF0, &unk_21B6D8C20);
    MEMORY[0x21CEF8150](v25, -1, -1);
    MEMORY[0x21CEF8150](v24, -1, -1);
  }
}

uint64_t sub_21B625498(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8, &unk_21B6D8330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_21B6C88A4();
    v10 = sub_21B6C88C4();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_21B6C88C4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_21B62AA8C(v8, &qword_27CD92EE8, &unk_21B6D8330);
}

void sub_21B6255EC(void *a1, void *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v5 = sub_21B6C88C4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v36[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &unk_28120B1E0, 0x277D3ED10);
  swift_dynamicCast();
  v10 = v35;
  [v35 ingestNewPosterConfiguration:a1 toBeAssociatedWithHomeScreenConfiguration:a2];
  v11 = [*(v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v12 = sub_21B6C8D74();
  v36[0] = 0;

  if (v36[0])
  {
    v13 = qword_28120B3A0;
    v14 = v36[0];
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_21B6C8AB4();
    __swift_project_value_buffer(v15, qword_28120CD90);
    v16 = sub_21B6C9024();
    v17 = v14;
    v18 = a1;
    v19 = sub_21B6C8A94();

    if (os_log_type_enabled(v19, v16))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v20 = 138412546;
      *(v20 + 4) = v18;
      *v21 = v18;
      *(v20 + 12) = 2080;
      v23 = v18;
      v24 = [v17 localizedDescription];
      v25 = sub_21B6C8DA4();
      v27 = v26;

      v28 = sub_21B656178(v25, v27, v36);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_21B526000, v19, v16, "PosterStore failed to ingest home poster: %@ due to error: %s", v20, 0x16u);
      sub_21B62AA8C(v21, &qword_27CD92EF0, &unk_21B6D8C20);
      MEMORY[0x21CEF8150](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x21CEF8150](v22, -1, -1);
      MEMORY[0x21CEF8150](v20, -1, -1);

      return;
    }

    goto LABEL_9;
  }

  v29 = [a2 _path];
  v30 = [v29 serverIdentity];

  if (v30)
  {
    v31 = [v30 posterUUID];

    sub_21B6C88A4();
    v32 = sub_21B6C8874();
    v34 = v33;
    (*(v6 + 8))(v9, v5);
    sub_21B6276B0(v32, v34);

LABEL_9:

    return;
  }

  __break(1u);
}

void sub_21B625CE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v13[4] = a6;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_21B63863C;
  v13[3] = a7;
  v11 = _Block_copy(v13);
  v12 = a1;

  BSDispatchMain();

  _Block_release(v11);
}

void sub_21B625DA4(void *a1)
{
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 _path];
  v8 = [v7 serverIdentity];

  if (v8)
  {
    v9 = [v8 posterUUID];

    sub_21B6C88A4();
    v10 = sub_21B6C8874();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    v13 = sub_21B61F5F8(v10, v12);

    if (v13)
    {
      v14 = *&v13[OBJC_IVAR___PBFPosterPair_configuration];
      *&v13[OBJC_IVAR___PBFPosterPair_configuration] = a1;
      v15 = a1;
      sub_21B6A1AA4(v14);
    }
  }
}

void sub_21B625F5C(uint64_t a1, void *a2)
{
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 _path];
  v9 = [v8 serverIdentity];

  if (v9)
  {
    v10 = [v9 posterUUID];

    sub_21B6C88A4();
    v11 = sub_21B6C8874();
    v13 = v12;
    (*(v4 + 8))(v7, v3);
    sub_21B6276B0(v11, v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_21B626238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v14[4] = a8;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21B63863C;
  v14[3] = a9;
  v12 = _Block_copy(v14);
  v13 = a1;

  BSDispatchMain();

  _Block_release(v12);
}

void sub_21B6262FC(void *a1)
{
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 _path];
  v8 = [v7 serverIdentity];

  if (v8)
  {
    v9 = [v8 posterUUID];

    sub_21B6C88A4();
    v10 = sub_21B6C8874();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    v13 = sub_21B61F5F8(v10, v12);

    if (v13)
    {
      sub_21B6A2638();
    }
  }
}

void sub_21B62648C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a1;
  v17[4] = a6;
  v17[5] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21B63863C;
  v17[3] = a7;
  v12 = _Block_copy(v17);
  v13 = a4;
  v14 = a1;
  v15 = v13;
  v16 = v14;

  BSDispatchMain();

  _Block_release(v12);
}

void sub_21B62656C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = [*(a1 + OBJC_IVAR____TtC11PosterBoard11PosterStore_observers) allObjects];
  v4 = sub_21B6C8E84();

  if (v4 >> 62)
  {
    v5 = sub_21B6C9454();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEF66E0](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && v7)
    {
      a2(v7, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
}

void sub_21B6266B4()
{
  v54 = sub_21B6C88C4();
  v1 = *(v54 - 8);
  *&v2 = MEMORY[0x28223BE20](v54).n128_u64[0];
  v53 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *&v0[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex];
  v51 = &v0[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex];
  LODWORD(v4) = v0[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8];
  v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  v59 = v0;
  v6 = [*&v0[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig] activeConfiguration];
  v7 = &selRef_displayNameSystemSymbolName;
  v8 = &selRef_removedAssocPosters;
  v58 = v5;
  if (v6)
  {
    v9 = v6;
    v10 = [v6 _path];
    v11 = [v10 serverIdentity];

    if (v11)
    {
      v12 = [v11 posterUUID];

      v13 = v53;
      sub_21B6C88A4();

      v55 = sub_21B6C8874();
      v57 = v14;

      (*(v1 + 8))(v13, v54);
    }

    else
    {

      v55 = 0;
      v57 = 0;
    }

    v5 = v58;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v50 = v1;
  v15 = [*&v59[v5] configurations];
  sub_21B61785C(0, &qword_28120B290, 0x277D3ED58);
  v16 = sub_21B6C8E84();

  aBlock[0] = MEMORY[0x277D84F90];
  if (v16 >> 62)
  {
    goto LABEL_22;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v17; i = v4)
  {
    v18 = 0;
    v4 = OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter;
    v7 = (v16 & 0xC000000000000001);
    v8 = (v16 & 0xFFFFFFFFFFFFFF8);
    v56 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v19 = MEMORY[0x21CEF66E0](v18, v16);
      }

      else
      {
        if (v18 >= v8[2])
        {
          goto LABEL_21;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if ([*&v59[v4] shouldIncludePosterConfiguration:v19 inSwitcherConfiguration:*&v59[v5]])
      {
        sub_21B6C9574();
        sub_21B6C95A4();
        v5 = v58;
        sub_21B6C95B4();
        sub_21B6C9584();
        v8 = v56;
      }

      else
      {
      }

      ++v18;
      if (v21 == v17)
      {
        v22 = aBlock[0];
        LOBYTE(v4) = i;
        v7 = &selRef_displayNameSystemSymbolName;
        v8 = &selRef_removedAssocPosters;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v17 = sub_21B6C9454();
  }

  v22 = MEMORY[0x277D84F90];
LABEL_24:

  if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
  {
LABEL_54:
    v23 = sub_21B6C9454();
    if (v23)
    {
      goto LABEL_27;
    }

LABEL_55:

LABEL_56:
    v42 = v51;
    *v51 = 0;
    v39 = 1;
    *(v42 + 8) = 1;
    if (v4)
    {
      return;
    }

    v24 = 0;
LABEL_58:
    v43 = swift_allocObject();
    v44 = v59;
    *(v43 + 16) = v59;
    *(v43 + 24) = v24;
    *(v43 + 32) = v39;
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = sub_21B62A7D4;
    v45[4] = v43;
    aBlock[4] = sub_21B62ABA8;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B63863C;
    aBlock[3] = &block_descriptor_102;
    v46 = _Block_copy(aBlock);
    v47 = v44;

    BSDispatchMain();
    _Block_release(v46);

    return;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_55;
  }

LABEL_27:
  v24 = 0;
  v58 = v22 & 0xC000000000000001;
  v4 = v50 + 8;
  while (1)
  {
    if (v58)
    {
      v25 = MEMORY[0x21CEF66E0](v24, v22);
    }

    else
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      v25 = *(v22 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = [v25 v7[498]];
    v28 = [v27 v8[104]];

    if (!v28)
    {
      v37 = v57;

      if (!v37)
      {
        goto LABEL_48;
      }

LABEL_40:
      v38 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v29 = v8;
    v30 = v7;
    v31 = [v28 posterUUID];

    v32 = v53;
    sub_21B6C88A4();

    v33 = sub_21B6C8874();
    v35 = v34;
    (*v4)(v32, v54);
    if (v57)
    {
      break;
    }

    v7 = v30;
    v8 = v29;
    v38 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:

      LOBYTE(v4) = i;
      goto LABEL_56;
    }

LABEL_41:
    ++v24;
    if (v38 == v23)
    {
      goto LABEL_46;
    }
  }

  if (v33 == v55 && v57 == v35)
  {

    goto LABEL_49;
  }

  v36 = sub_21B6C96E4();

  v7 = v30;
  v8 = v29;
  if ((v36 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_48:

LABEL_49:
  v39 = 0;
  v40 = v51;
  *v51 = v24;
  *(v40 + 8) = 0;
  v41 = i;
  if (v49 != v24)
  {
    v41 = 1;
  }

  if (v41)
  {
    goto LABEL_58;
  }
}

void sub_21B626D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  BSDispatchQueueAssertMain();
  if (!*(a1 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode) && (a5 & 1) == 0)
  {
    sub_21B690260(a4, 0, 0);
  }
}

uint64_t sub_21B626D8C(void *a1)
{
  v2 = v1;
  v60 = sub_21B6C88C4();
  v4 = *(v60 - 8);
  *&v5 = MEMORY[0x28223BE20](v60).n128_u64[0];
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 addObserver_];
  v7 = [a1 switcherConfiguration];
  v8 = *(v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig);
  v61 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  *(v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) = v7;
  v9 = v7;

  v10 = [v9 configurations];
  sub_21B61785C(0, &qword_28120B290, 0x277D3ED58);
  v11 = sub_21B6C8E84();

  v62[0] = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    goto LABEL_16;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v9; v12; i = v9)
  {
    v56 = v4;
    v57 = v12;
    v13 = 0;
    v9 = OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter;
    v58 = OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CEF66E0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v4 = v14;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([*&v9[v2] shouldIncludePosterConfiguration:v14 inSwitcherConfiguration:*(v2 + v61)])
      {
        sub_21B6C9574();
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
        v12 = v57;
        v9 = v58;
      }

      else
      {
      }

      ++v13;
      if (v15 == v12)
      {
        v16 = v62[0];
        v9 = i;
        v4 = v56;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v12 = sub_21B6C9454();
  }

  v16 = MEMORY[0x277D84F90];
LABEL_18:

  v18 = v16;
  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    result = sub_21B6C9454();
    v18 = v16;
    v19 = result;
    if (result)
    {
      goto LABEL_21;
    }

LABEL_52:
  }

  v19 = *(v16 + 16);
  if (!v19)
  {
    goto LABEL_52;
  }

LABEL_21:
  if (v19 >= 1)
  {
    v20 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    v53 = (v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex);
    v55 = v18 & 0xC000000000000001;
    swift_beginAccess();
    v21 = v16;
    v22 = 0;
    v57 = v16;
    v58 = v4 + 8;
    v56 = v19;
    while (1)
    {
      if (v55)
      {
        v23 = MEMORY[0x21CEF66E0](v22, v21);
      }

      else
      {
        v23 = *(v21 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = [v23 _path];
      v26 = [v25 serverIdentity];

      if (v26)
      {
        v27 = [v26 posterUUID];

        v28 = v59;
        sub_21B6C88A4();

        v29 = sub_21B6C8874();
        v31 = v30;
        (*v58)(v28, v60);
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v32 = [*(v2 + v61) activeConfiguration];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 _path];
        v35 = [v34 serverIdentity];

        if (v35)
        {
          v36 = [v35 posterUUID];

          v37 = v59;
          sub_21B6C88A4();

          v38 = sub_21B6C8874();
          v35 = v39;

          v40 = v37;
          v9 = i;
          (*v58)(v40, v60);
          if (!v31)
          {
            goto LABEL_39;
          }
        }

        else
        {

          v38 = 0;
          if (!v31)
          {
LABEL_39:
            if (!v35)
            {
              goto LABEL_43;
            }

LABEL_40:

            goto LABEL_46;
          }
        }
      }

      else
      {
        v38 = 0;
        v35 = 0;
        if (!v31)
        {
          goto LABEL_39;
        }
      }

      if (!v35)
      {
        goto LABEL_40;
      }

      if (v29 == v38 && v31 == v35)
      {

LABEL_43:
        v42 = *(v2 + v20);
        if (v42 >> 62)
        {
          v43 = sub_21B6C9454();
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v44 = v53;
        *v53 = v43;
        *(v44 + 8) = 0;
        goto LABEL_46;
      }

      v41 = sub_21B6C96E4();

      if (v41)
      {
        goto LABEL_43;
      }

LABEL_46:
      v45 = [v9 homeScreenPosterConfigurationForPosterConfiguration_];
      v46 = objc_allocWithZone(type metadata accessor for PosterPair());
      v47 = v24;
      v48 = v45;
      sub_21B6A3A58(v47, v45);
      v50 = v49;

      swift_beginAccess();
      v51 = v50;
      MEMORY[0x21CEF6000]();
      if (*((*(v2 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      ++v22;
      sub_21B6C8EA4();
      swift_endAccess();

      v21 = v57;
      if (v56 == v22)
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B627440(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  *&a1[v2] = MEMORY[0x277D84F90];

  v3 = &a1[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex];
  *v3 = 0;
  v3[8] = 1;
  a1[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] = 0;
  v4 = [*&a1[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
  sub_21B626D8C(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = sub_21B62A888;
  v6[4] = v5;
  aBlock[4] = sub_21B62ABA8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B63863C;
  aBlock[3] = &block_descriptor_157;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  BSDispatchMain();
  _Block_release(v7);
}

void sub_21B6276B0(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v114 = sub_21B6C8964();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114 - 8);
  v115 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92ED0, &qword_21B6D8318);
  MEMORY[0x28223BE20](v122);
  v123 = &v105 - v5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92ED8, &qword_21B6D8320);
  v112 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v111 = &v105 - v6;
  v126 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  v7 = *&v2[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig];
  v129 = v2;
  v8 = *&v2[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue];
  v9 = v7;
  v10 = [v8 dataStore];
  v11 = [v10 switcherConfiguration];

  v12 = &selRef_collectionViewLayout;
  v127 = v9;
  v13 = [v9 configurations];
  v125 = sub_21B61785C(0, &qword_28120B290, 0x277D3ED58);
  v14 = sub_21B6C8E84();

  aBlock = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21B6C9454())
  {
    v110 = a2;
    v16 = OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter;
    v17 = MEMORY[0x277D84F90];
    v18 = v129;
    if (i)
    {
      v128 = v11;
      v12 = 0;
      v11 = (v14 & 0xC000000000000001);
      a2 = v14 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          v19 = MEMORY[0x21CEF66E0](v12, v14);
        }

        else
        {
          if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v19 = *(v14 + 8 * v12 + 32);
        }

        v20 = v19;
        v21 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([*&v18[v16] shouldIncludePosterConfiguration:v19 inSwitcherConfiguration:v127])
        {
          sub_21B6C9574();
          sub_21B6C95A4();
          sub_21B6C95B4();
          sub_21B6C9584();
          v18 = v129;
        }

        else
        {
        }

        ++v12;
        if (v21 == i)
        {
          v22 = aBlock;
          v11 = v128;
          v12 = 0x2782CD000;
          v17 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_16:

    v23 = [v11 *(v12 + 432)];
    v14 = sub_21B6C8E84();

    aBlock = v17;
    v24 = v124;
    if (!(v14 >> 62))
    {
      v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v129;
      if (!v12)
      {
        break;
      }

      goto LABEL_18;
    }

    v12 = sub_21B6C9454();
    v25 = v129;
    if (!v12)
    {
      break;
    }

LABEL_18:
    v121 = v22;
    v26 = 0;
    a2 = v14 & 0xFFFFFFFFFFFFFF8;
    v128 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CEF66E0](v26, v14);
      }

      else
      {
        if (v26 >= *(a2 + 16))
        {
          goto LABEL_32;
        }

        v27 = *(v14 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if ([*&v25[v16] shouldIncludePosterConfiguration:v27 inSwitcherConfiguration:v11])
      {
        sub_21B6C9574();
        sub_21B6C95A4();
        a2 = v128;
        sub_21B6C95B4();
        sub_21B6C9584();
        v25 = v129;
      }

      else
      {
      }

      ++v26;
      if (v29 == v12)
      {
        v30 = aBlock;
        v24 = v124;
        v22 = v121;
        goto LABEL_36;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_36:

  v31 = *&v25[v126];
  *&v25[v126] = v11;
  v118 = v11;

  v32 = v114;
  v33 = swift_allocBox();
  v119 = v34;
  sub_21B6C8954();
  if ((sub_21B667FA8(v22, v30) & 1) == 0)
  {
    v108 = v33;
    v126 = v30;
    aBlock = v30;
    v136 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE0, &qword_21B6D8328);
    sub_21B62AA24(&qword_28120B348, &qword_27CD92EE0, &qword_21B6D8328, MEMORY[0x277D83958]);
    v36 = v111;
    sub_21B6C8D44();

    v107 = swift_allocBox();
    v117 = v37;
    sub_21B6C8954();
    v106 = swift_allocBox();
    v116 = v38;
    sub_21B6C8954();
    v39 = v123;
    (*(v112 + 16))(v123, v36, v24);
    v33 = *(v122 + 36);
    j = sub_21B62AA24(&unk_28120B0E0, &qword_27CD92ED8, &qword_21B6D8320, MEMORY[0x277D84490]);
    sub_21B6C8FC4();
    v128 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    sub_21B6C8FD4();
    if (*(v39 + v33) == aBlock)
    {
LABEL_40:
      sub_21B62AA8C(v39, &qword_27CD92ED0, &qword_21B6D8318);
      v41 = v128;
      v42 = v129;
      swift_beginAccess();
      v43 = *(v42 + v41);
      if (v43 >> 62)
      {
        goto LABEL_124;
      }

      for (j = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = v66)
      {
        v32 = v114;
        if (j)
        {
          break;
        }

LABEL_65:
        sub_21B6266B4();
        v53 = v113;
        v54 = *(v113 + 16);
        v55 = v115;
        v54(v115, v117, v32);
        v56 = sub_21B6C8934();
        v14 = *(v53 + 8);
        (v14)(v55, v32);
        v57 = v107;
        v58 = v106;
        if ((v56 & 1) == 0 || (v59 = v115, v54(v115, v116, v32), v60 = sub_21B6C8934(), (v14)(v59, v32), (v60 & 1) == 0))
        {
          v61 = swift_allocObject();
          v62 = v129;
          v61[2] = v129;
          v61[3] = v57;
          v61[4] = v58;
          v63 = swift_allocObject();
          v63[2] = v62;
          v63[3] = sub_21B62A114;
          v63[4] = v61;
          v134 = sub_21B62A120;
          v135 = v63;
          aBlock = MEMORY[0x277D85DD0];
          v131 = 1107296256;
          v132 = sub_21B63863C;
          v133 = &block_descriptor_0;
          v64 = _Block_copy(&aBlock);
          v65 = v62;

          BSDispatchMain();
          _Block_release(v64);
        }

        (*(v112 + 8))(v111, v124);

        v35 = v110;
        v33 = v108;
        v30 = v126;
        if (!v110)
        {
          goto LABEL_70;
        }

LABEL_69:
        v42 = v129;
        v66 = sub_21B61F85C(v109, v35);
        if (v67)
        {
          goto LABEL_70;
        }

        j = v66;
        if ((v30 & 0xC000000000000001) != 0)
        {
          goto LABEL_127;
        }

        if ((v66 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_129:

          v71 = MEMORY[0x21CEF66E0](j, v14);

          goto LABEL_79;
        }

        if (v66 >= *(v30 + 16))
        {
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v68 = *(v30 + 8 * v66 + 32);
LABEL_75:
        v42 = v68;

        v69 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
        v70 = v129;
        v66 = swift_beginAccess();
        v14 = *&v70[v69];
        if ((v14 & 0xC000000000000001) != 0)
        {
          goto LABEL_129;
        }

        if ((j & 0x8000000000000000) != 0)
        {
          goto LABEL_131;
        }

        if (j < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v71 = *(v14 + 8 * j + 32);
LABEL_79:
          v72 = *&v71[OBJC_IVAR___PBFPosterPair_configuration];
          *&v71[OBJC_IVAR___PBFPosterPair_configuration] = v42;
          v73 = v42;
          sub_21B6A1AA4(v72);

          v74 = [v118 homeScreenPosterConfigurationForPosterConfiguration_];
          v75 = *&v71[OBJC_IVAR___PBFPosterPair_associatedConfiguration];
          *&v71[OBJC_IVAR___PBFPosterPair_associatedConfiguration] = v74;
          v76 = v74;
          sub_21B6A223C(v75);

          sub_21B6C8914();
          goto LABEL_80;
        }

LABEL_132:
        __break(1u);
LABEL_133:
        ;
      }

      v44 = v126 & 0xC000000000000001;
      if ((v126 & 0xC000000000000001) != 0 || j <= *(v126 + 16))
      {
        v33 = 4;
        while (1)
        {
          v47 = v33 - 4;
          v42 = *(v42 + v128);
          if ((v42 & 0xC000000000000001) != 0)
          {

            v48 = MEMORY[0x21CEF66E0](v33 - 4, v42);
          }

          else
          {
            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_115;
            }

            if (v47 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_116;
            }

            v48 = *(v42 + 8 * v33);
          }

          v49 = *&v48[OBJC_IVAR___PBFPosterPair_configuration];

          v50 = v44 ? MEMORY[0x21CEF66E0](v33 - 4, v126) : *(v126 + 8 * v33);
          v30 = v50;
          v42 = sub_21B6C91A4();

          if ((v42 & 1) == 0)
          {
            break;
          }

LABEL_48:
          ++v33;
          --j;
          v42 = v129;
          if (!j)
          {
            goto LABEL_65;
          }
        }

        v51 = *&v129[v128];
        if ((v51 & 0xC000000000000001) != 0)
        {

          v52 = MEMORY[0x21CEF66E0](v33 - 4, v51);

          if (!v44)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_117;
          }

          if (v47 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_118;
          }

          v52 = *(v51 + 8 * v33);
          if (!v44)
          {
LABEL_61:
            v45 = *(v126 + 8 * v33);
            goto LABEL_47;
          }
        }

        v45 = MEMORY[0x21CEF66E0](v33 - 4, v126);
LABEL_47:
        v46 = *&v52[OBJC_IVAR___PBFPosterPair_configuration];
        *&v52[OBJC_IVAR___PBFPosterPair_configuration] = v45;
        v30 = v45;
        sub_21B6A1AA4(v46);

        sub_21B6C8914();
        goto LABEL_48;
      }

LABEL_126:
      __break(1u);
LABEL_127:
      v68 = MEMORY[0x21CEF66E0](j, v30);
      goto LABEL_75;
    }

    v121 = j;
    v122 = v33;
    while (1)
    {
      v88 = sub_21B6C8FF4();
      v30 = *v89;
      v32 = *(v89 + 8);
      v90 = *(v89 + 25);
      v91 = v32;
      v88(&aBlock, 0);
      sub_21B6C8FE4();
      if ((v90 & 1) == 0)
      {
        break;
      }

      sub_21B6C8914();
      j = v128;
      v92 = v129;
      swift_beginAccess();
      v42 = *&v92[j];
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v92[j] = v42;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v42 < 0 || (v42 & 0x4000000000000000) != 0)
      {
        v42 = sub_21B69F91C();
        *&v129[j] = v42;
      }

      v94 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30 >= v94)
      {
        goto LABEL_119;
      }

      v95 = v94 - 1;
      v96 = *((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
      memmove(((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 32), ((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 40), 8 * (v94 - 1 - v30));
      *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) = v95;
      *&v129[j] = v42;
      swift_endAccess();
LABEL_87:

      v39 = v123;
      j = v121;
      sub_21B6C8FD4();
      v33 = v122;
      if (*(v39 + v122) == aBlock)
      {
        goto LABEL_40;
      }
    }

    v97 = [v118 homeScreenPosterConfigurationForPosterConfiguration_];
    v98 = objc_allocWithZone(type metadata accessor for PosterPair());
    v99 = v32;
    v100 = v97;
    sub_21B6A3A58(v32, v97);
    v33 = v101;
    v120 = v100;

    sub_21B6C8914();
    j = v128;
    v42 = v129;
    swift_beginAccess();
    v85 = *(v42 + j);
    v102 = v85 >> 62;
    if (v85 >> 62)
    {
      if (sub_21B6C9454() < v30)
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        v66 = sub_21B6C9454();
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_133;
        }

        __break(1u);
        goto LABEL_126;
      }
    }

    else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) < v30)
    {
      goto LABEL_114;
    }

    if (v30 < 0)
    {
      goto LABEL_120;
    }

    if (v102)
    {
      if (v85 < 0)
      {
        v42 = v85;
      }

      else
      {
        v42 = v85 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_21B6C9454() < v30)
      {
        goto LABEL_123;
      }

      v103 = sub_21B6C9454();
    }

    else
    {
      v103 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v103 < v30)
      {
        goto LABEL_122;
      }
    }

    v42 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      goto LABEL_121;
    }

    v96 = v33;
    v104 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v129[j] = v85;
    if (v104)
    {
      if (!v102)
      {
        if (v42 <= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v86 = v129;
          goto LABEL_86;
        }

LABEL_85:
        v85 = sub_21B6C9554();
        v86 = v129;
        *&v129[j] = v85;
LABEL_86:
        v87 = v86;
        sub_21B699350(v30, v30, 1, v96);
        *&v87[j] = v85;
        swift_endAccess();

        goto LABEL_87;
      }
    }

    else if (!v102)
    {
      goto LABEL_85;
    }

    sub_21B6C9454();
    goto LABEL_85;
  }

  sub_21B6266B4();
  v35 = v110;
  if (v110)
  {
    goto LABEL_69;
  }

LABEL_70:

LABEL_80:
  v77 = v113;
  v78 = v115;
  (*(v113 + 16))(v115, v119, v32);
  v79 = sub_21B6C8934();
  (*(v77 + 8))(v78, v32);
  if ((v79 & 1) == 0)
  {
    v80 = swift_allocObject();
    v81 = v129;
    *(v80 + 16) = v129;
    *(v80 + 24) = v33;
    v82 = swift_allocObject();
    v82[2] = v81;
    v82[3] = sub_21B62A144;
    v82[4] = v80;
    v134 = sub_21B62ABA8;
    v135 = v82;
    aBlock = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_21B63863C;
    v133 = &block_descriptor_92;
    v83 = _Block_copy(&aBlock);
    v84 = v81;

    BSDispatchMain();
    _Block_release(v83);
  }
}

uint64_t sub_21B6287F8(id *a1, void **a2)
{
  v4 = sub_21B6C88C4();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = [*a1 _path];
  v11 = [v10 serverIdentity];

  if (v11)
  {
    v12 = [v11 posterUUID];

    sub_21B6C88A4();
    v13 = sub_21B6C8874();
    v11 = v14;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v13 = 0;
  }

  v15 = [v9 _path];
  v16 = [v15 serverIdentity];

  if (v16)
  {
    v17 = [v16 posterUUID];

    sub_21B6C88A4();
    v18 = sub_21B6C8874();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      if (v20)
      {
        if (v13 == v18 && v11 == v20)
        {

          v21 = 1;
        }

        else
        {
          v21 = sub_21B6C96E4();
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v20)
    {
      v21 = 0;
      goto LABEL_16;
    }
  }

  else if (v11)
  {
LABEL_11:
    v21 = 0;
LABEL_16:

    return v21 & 1;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_21B628A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_21B6C8964();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-v10];
  v12 = swift_projectBox();
  v13 = swift_projectBox();
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v11, v12, v5);
  swift_beginAccess();
  v14(v8, v13, v5);
  sub_21B69A4F8(v11, v8);
  v15 = *(v6 + 8);
  v15(v8, v5);
  return (v15)(v11, v5);
}

uint64_t sub_21B628BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21B6C8964();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_projectBox();
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  sub_21B68B8C8(a3, v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21B628D0C(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v4 = *&v1[v3];

  v5 = sub_21B61FA3C(a1, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v8 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
    [*&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig] mutableCopy];
    sub_21B6C93E4();
    swift_unknownObjectRelease();
    sub_21B61785C(0, &unk_28120B1E0, 0x277D3ED10);
    swift_dynamicCast();
    v9 = [*&v1[v8] configurations];
    sub_21B61785C(0, &qword_28120B290, 0x277D3ED58);
    v10 = sub_21B6C8E84();

    if ((v10 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v10 + 8 * v5 + 32);
        goto LABEL_6;
      }

      __break(1u);
LABEL_17:
      swift_once();
LABEL_8:
      v16 = sub_21B6C8AB4();
      __swift_project_value_buffer(v16, qword_28120CD90);
      v17 = sub_21B6C9024();
      v18 = v1;
      v19 = a1;
      v20 = sub_21B6C8A94();

      if (os_log_type_enabled(v20, v17))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30[0] = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_21B656178(*&v19[OBJC_IVAR___PBFPosterPair_id], *&v19[OBJC_IVAR___PBFPosterPair_id + 8], v30);
        *(v21 + 12) = 2080;
        v23 = [v18 localizedDescription];
        v24 = sub_21B6C8DA4();
        v26 = v25;

        v27 = sub_21B656178(v24, v26, v30);

        *(v21 + 14) = v27;
        _os_log_impl(&dword_21B526000, v20, v17, "PosterStore failed to delete poster with ID: %s due to error: %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEF8150](v22, -1, -1);
        MEMORY[0x21CEF8150](v21, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    v11 = MEMORY[0x21CEF66E0](v5, v10);
LABEL_6:
    v12 = v11;

    [v29 removeConfiguration_];

    v13 = [*&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
    v14 = sub_21B6C8D74();
    v30[0] = 0;

    if (!v30[0])
    {
      sub_21B6276B0(0, 0);

      return 1;
    }

    v15 = qword_28120B3A0;
    v1 = v30[0];
    if (v15 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  return 0;
}

id sub_21B629120(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PosterStore();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_21B629200(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8, &unk_21B6D8330);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_21B6C88C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_21B61C2CC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_21B62AA8C(v5, &qword_27CD92EE8, &unk_21B6D8330);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

char *sub_21B629420(uint64_t a1, _BYTE *a2)
{
  v4 = &a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex];
  *v4 = 0;
  v4[8] = 1;
  *&a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_significantEventsCounter] = 0;
  v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
  *&a2[v5] = [objc_opt_self() sharedInstance];
  *&a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC11PosterBoard11PosterStore_observers;
  *&a2[v6] = [objc_opt_self() weakObjectsHashTable];
  a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] = 0;
  v7 = [*&a2[v5] dataStore];
  v8 = [v7 switcherConfiguration];

  *&a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig] = v8;
  *&a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter] = a1;
  v15.receiver = a2;
  v15.super_class = type metadata accessor for PosterStore();
  v9 = objc_msgSendSuper2(&v15, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:sel_dataStoreDidTearDown name:PBFPosterExtensionDataStoreDidTearDownNotification object:0];

  v13 = [*&v11[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
  sub_21B626D8C(v13);

  return v11;
}

uint64_t sub_21B6295F0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_21B6C88C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

BOOL sub_21B6296B0(char *a1, uint64_t a2, uint64_t a3)
{
  v51[5] = *MEMORY[0x277D85DE8];
  v6 = OBJC_IVAR___PBFPosterPair_configuredProperties;
  v7 = *&a1[OBJC_IVAR___PBFPosterPair_configuredProperties];
  [v7 mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &qword_28120B1B0, 0x277D3EDD8);
  swift_dynamicCast();
  v8 = v51[0];
  [v51[0] setHomeScreenConfiguration_];
  [*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &unk_28120B1E0, 0x277D3ED10);
  swift_dynamicCast();
  v50 = v51[0];
  v9 = [v7 focusConfiguration];
  v10 = [v51[0] focusConfiguration];
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  if (!v10)
  {
    v11 = v9;
LABEL_8:

    goto LABEL_9;
  }

  sub_21B61785C(0, &unk_27CD92EF8, 0x277D3ED98);
  v12 = sub_21B6C91A4();

  if (v12)
  {
    goto LABEL_19;
  }

LABEL_9:
  v13 = [v51[0] focusConfiguration];
  [v51[0] setFocusConfiguration:v13 forPosterConfiguration:*&a1[OBJC_IVAR___PBFPosterPair_configuration]];

  if (*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8))
  {
    goto LABEL_19;
  }

  v14 = *(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex);
  v15 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v16 = *(a2 + v15);
  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v16 + 8 * v14 + 32);
      goto LABEL_14;
    }

    __break(1u);
  }

  v17 = MEMORY[0x21CEF66E0](v14, v16);

LABEL_14:
  v19 = *&v17[OBJC_IVAR___PBFPosterPair_id];
  v18 = *&v17[OBJC_IVAR___PBFPosterPair_id + 8];

  if (v19 == *&a1[OBJC_IVAR___PBFPosterPair_id] && v18 == *&a1[OBJC_IVAR___PBFPosterPair_id + 8])
  {
  }

  else
  {
    v20 = sub_21B6C96E4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  *(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate) = 1;
LABEL_19:
  v21 = [v8 homeScreenConfiguration];
  v22 = v50;
  if (v21)
  {
    v23 = v21;
    v24 = [v7 homeScreenConfiguration];
    if (!v24 || (v25 = v24, sub_21B61785C(0, &unk_28120B1D0, 0x277D3EDB0), v26 = v7, v27 = v23, v28 = sub_21B6C91A4(), v25, v27, v7 = v26, v22 = v50, (v28 & 1) == 0))
    {
      [v22 setHomeConfiguration:v23 forPosterConfiguration:*&a1[OBJC_IVAR___PBFPosterPair_configuration]];
    }
  }

  v29 = [*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v30 = sub_21B6C8D74();
  v51[0] = 0;

  v31 = v51[0];
  if (v51[0])
  {
    v49 = v7;
    v32 = qword_28120B3A0;
    v33 = v51[0];
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_21B6C8AB4();
    __swift_project_value_buffer(v34, qword_28120CD90);
    v35 = sub_21B6C9024();
    v36 = v33;
    v37 = a1;
    v38 = sub_21B6C8A94();

    if (os_log_type_enabled(v38, v35))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_21B656178(*&v37[OBJC_IVAR___PBFPosterPair_id], *&v37[OBJC_IVAR___PBFPosterPair_id + 8], v51);
      *(v39 + 12) = 2080;
      v41 = [v36 localizedDescription];
      v42 = sub_21B6C8DA4();
      v44 = v43;

      v45 = sub_21B656178(v42, v44, v51);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_21B526000, v38, v35, "PosterStore failed to persist change for poster with ID: %s due to error: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEF8150](v40, -1, -1);
      MEMORY[0x21CEF8150](v39, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v46 = *&a1[v6];
    *&a1[v6] = v8;
    v47 = v8;
    sub_21B6A1CC4(v46);

    sub_21B6276B0(0, 0);
  }

  return v31 == 0;
}

void sub_21B629D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_21B6C88C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() snapshotRequestForConfiguration:a1 context:a3];
  sub_21B61F0DC(a2);
  sub_21B61785C(0, &qword_28120B238, off_2782C4448);
  v16 = sub_21B6C8E74();

  v17 = [v15 requestWithDefinitions_];

  if (*(v5 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8))
  {
    goto LABEL_15;
  }

  v35 = v12;
  v18 = *(v5 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex);
  v19 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v20 = *(v5 + v19);
  v36 = a4;
  v37 = a5;
  if ((v20 & 0xC000000000000001) != 0)
  {

    v21 = MEMORY[0x21CEF66E0](v18, v20);

LABEL_6:
    v23 = *&v21[OBJC_IVAR___PBFPosterPair_id];
    v22 = *&v21[OBJC_IVAR___PBFPosterPair_id + 8];

    v24 = [a1 _path];
    v25 = [v24 serverIdentity];

    if (!v25)
    {

      a4 = v36;
      a5 = v37;
LABEL_14:

LABEL_15:
      sub_21B61FB2C(a1, v17, a4, a5);

      return;
    }

    v26 = v5;
    v27 = [v25 posterUUID];

    sub_21B6C88A4();
    v28 = sub_21B6C8874();
    v30 = v29;
    (*(v35 + 8))(v14, v11);
    if (v23 == v28 && v22 == v30)
    {

      v31 = v26;
      a4 = v36;
    }

    else
    {
      v32 = sub_21B6C96E4();

      v31 = v26;
      a4 = v36;
      if ((v32 & 1) == 0)
      {
LABEL_13:
        a5 = v37;
        goto LABEL_14;
      }
    }

    v33 = [v17 requestWithSignificantEventsCounter_];

    v17 = v33;
    goto LABEL_13;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v20 + 8 * v18 + 32);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21B62A0B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_21B62A14C(char *a1, uint64_t a2, uint64_t a3)
{
  v51[5] = *MEMORY[0x277D85DE8];
  v6 = OBJC_IVAR___PBFPosterPair_configuredProperties;
  v7 = *&a1[OBJC_IVAR___PBFPosterPair_configuredProperties];
  [v7 mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &qword_28120B1B0, 0x277D3EDD8);
  swift_dynamicCast();
  v8 = v51[0];
  [v51[0] setFocusConfiguration_];
  [*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &unk_28120B1E0, 0x277D3ED10);
  swift_dynamicCast();
  v50 = v51[0];
  v9 = [v7 focusConfiguration];
  v10 = [v51[0] focusConfiguration];
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  if (!v10)
  {
    v11 = v9;
LABEL_8:

    goto LABEL_9;
  }

  sub_21B61785C(0, &unk_27CD92EF8, 0x277D3ED98);
  v12 = sub_21B6C91A4();

  if (v12)
  {
    goto LABEL_19;
  }

LABEL_9:
  v13 = [v51[0] focusConfiguration];
  [v51[0] setFocusConfiguration:v13 forPosterConfiguration:*&a1[OBJC_IVAR___PBFPosterPair_configuration]];

  if (*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8))
  {
    goto LABEL_19;
  }

  v14 = *(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex);
  v15 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v16 = *(a2 + v15);
  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v16 + 8 * v14 + 32);
      goto LABEL_14;
    }

    __break(1u);
  }

  v17 = MEMORY[0x21CEF66E0](v14, v16);

LABEL_14:
  v19 = *&v17[OBJC_IVAR___PBFPosterPair_id];
  v18 = *&v17[OBJC_IVAR___PBFPosterPair_id + 8];

  if (v19 == *&a1[OBJC_IVAR___PBFPosterPair_id] && v18 == *&a1[OBJC_IVAR___PBFPosterPair_id + 8])
  {
  }

  else
  {
    v20 = sub_21B6C96E4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  *(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate) = 1;
LABEL_19:
  v21 = [v8 homeScreenConfiguration];
  v22 = v50;
  if (v21)
  {
    v23 = v21;
    v24 = [v7 homeScreenConfiguration];
    if (!v24 || (v25 = v24, sub_21B61785C(0, &unk_28120B1D0, 0x277D3EDB0), v26 = v7, v27 = v23, v28 = sub_21B6C91A4(), v25, v27, v7 = v26, v22 = v50, (v28 & 1) == 0))
    {
      [v22 setHomeConfiguration:v23 forPosterConfiguration:*&a1[OBJC_IVAR___PBFPosterPair_configuration]];
    }
  }

  v29 = [*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v30 = sub_21B6C8D74();
  v51[0] = 0;

  v31 = v51[0];
  if (v51[0])
  {
    v49 = v7;
    v32 = qword_28120B3A0;
    v33 = v51[0];
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_21B6C8AB4();
    __swift_project_value_buffer(v34, qword_28120CD90);
    v35 = sub_21B6C9024();
    v36 = v33;
    v37 = a1;
    v38 = sub_21B6C8A94();

    if (os_log_type_enabled(v38, v35))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_21B656178(*&v37[OBJC_IVAR___PBFPosterPair_id], *&v37[OBJC_IVAR___PBFPosterPair_id + 8], v51);
      *(v39 + 12) = 2080;
      v41 = [v36 localizedDescription];
      v42 = sub_21B6C8DA4();
      v44 = v43;

      v45 = sub_21B656178(v42, v44, v51);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_21B526000, v38, v35, "PosterStore failed to persist change for poster with ID: %s due to error: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEF8150](v40, -1, -1);
      MEMORY[0x21CEF8150](v39, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v46 = *&a1[v6];
    *&a1[v6] = v8;
    v47 = v8;
    sub_21B6A1CC4(v46);

    sub_21B6276B0(0, 0);
  }

  return v31 == 0;
}

uint64_t objectdestroy_125Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_21B62A904(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  BSDispatchQueueAssertMain();
  v5 = *(a1 + OBJC_IVAR___PBFPosterRackCollectionViewController_galleryDataProvider);

  return [v5 configureForGallery_];
}

uint64_t objectdestroy_81Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B62A994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8, &unk_21B6D8330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B62AA24(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_21B62AA8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_21B62AC3C(id result)
{
  v2 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView;
  if (*&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView] != result)
  {
    v3 = result;
    v4 = [result superview];
    if (v4)
    {
      v5 = v4;

      if (v5 == v1)
      {
        [v3 removeFromSuperview];
      }
    }

    [v1 addSubview_];

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_21B62ACF0(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title];
  v5 = *&v2[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title];
  v6 = *&v2[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  if (v5 == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = sub_21B6C96E4();

    if ((v8 & 1) == 0)
    {
      v10 = *&v2[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel];

      v11 = sub_21B6C8D74();

      [v10 setText_];

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

char *sub_21B62ADFC(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_maximumHorizontalTitleOutset] = 0;
  [a1 setUserInteractionEnabled_];
  v4 = [a1 layer];
  [v4 setBorderWidth_];

  v5 = [a1 layer];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.075];
  v7 = [v6 CGColor];

  [v5 setBorderColor_];
  *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView] = a1;
  v8 = a1;
  [v8 setAccessibilityIgnoresInvertColors_];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel;
  *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel] = v9;
  v11 = qword_28120B3A8;
  v12 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setFont_];

  [*&v1[v10] setTextAlignment_];
  [*&v1[v10] setAdjustsFontSizeToFitWidth_];
  [*&v1[v10] setAllowsDefaultTighteningForTruncation_];
  [*&v1[v10] setMinimumScaleFactor_];
  [*&v1[v10] setNumberOfLines_];
  [*&v1[v10] setAccessibilityIgnoresInvertColors_];
  v13 = sub_21B6C8D74();
  v14 = [objc_opt_self() systemImageNamed_];

  v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v16 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView;
  *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView] = v15;
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 systemWhiteColor];
  [v18 setTintColor_];

  [*&v1[v16] setAlpha_];
  [*&v1[v16] sizeToFit];
  [v8 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v35.receiver = v1;
  v35.super_class = type metadata accessor for HomeScreenConfigurationControl();
  v28 = objc_msgSendSuper2(&v35, sel_initWithFrame_, v21, v23, v25, v27);
  [v28 addSubview_];
  [v28 addSubview_];
  [v28 addSubview_];
  v29 = [v28 layer];
  v34[3] = &type metadata for PosterRackFeatures;
  v34[4] = sub_21B62C9EC();
  LOBYTE(v34[0]) = 5;
  LOBYTE(v19) = sub_21B6C8A54();
  __swift_destroy_boxed_opaque_existential_0(v34);
  v30 = &selRef_systemBlueColor;
  if (v19)
  {
    v30 = &selRef_systemWhiteColor;
  }

  v31 = [v17 *v30];
  v32 = [v31 CGColor];

  [v29 setBorderColor_];
  return v28;
}

void sub_21B62B2F8(uint64_t a1)
{
  v27.receiver = v1;
  v27.super_class = type metadata accessor for HomeScreenConfigurationControl();
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 traitCollection];
  [v10 displayScale];

  v28.origin.x = v3;
  v28.origin.y = v5;
  v28.size.width = v7;
  v28.size.height = v9;
  Width = CGRectGetWidth(v28);
  v29.origin.x = v3;
  v29.origin.y = v5;
  v29.size.width = v7;
  v29.size.height = v9;
  Height = CGRectGetHeight(v29);
  if (Height >= Width)
  {
    Height = Width;
  }

  v13 = Height * 0.5;
  v14 = [v1 layer];
  [v14 setCornerRadius_];

  v15 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView;
  v16 = [*&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView] layer];
  [v16 setCornerRadius_];

  [*&v1[v15] setBounds_];
  v17 = *&v1[v15];
  v30.origin.x = v3;
  v30.origin.y = v5;
  v30.size.width = v7;
  v30.size.height = v9;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = v3;
  v31.origin.y = v5;
  v31.size.width = v7;
  v31.size.height = v9;
  [v17 setCenter_];

  v19 = *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView];
  [*&v1[v15] center];
  [v19 setCenter_];
  v20 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel;
  v21 = *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel];
  BSRectWithSize();
  [v21 textRectForBounds:objc_msgSend(*&v1[v20] limitedToNumberOfLines:{sel_numberOfLines), v22, v23, v24, v25}];

  BSSizeCeilForScale();
  v32.origin.x = v3;
  v32.origin.y = v5;
  v32.size.width = v7;
  v32.size.height = v9;
  CGRectGetMidX(v32);
  v33.origin.x = v3;
  v33.origin.y = v5;
  v33.size.width = v7;
  v33.size.height = v9;
  CGRectGetMaxY(v33);
  v26 = *&v1[v20];
  BSPointRoundForScale();
  [v26 setFrame_];
}

void sub_21B62B6E8(char a1)
{
  if ([v1 isSelected] != (a1 & 1))
  {
    v2 = *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView];
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      _ZF = v2 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      if ([v1 isSelected])
      {
        CGAffineTransformMakeScale(&aBlock, 0.725, 0.725);
        __asm { FMOV            V0.2D, #3.0 }

        *(&_Q0 + 1) = *&aBlock.a;
        *v17 = _Q0;
        *(&_Q0 + 1) = *&aBlock.tx;
        v16 = *&aBlock.d;
        *&_Q0 = aBlock.ty;
        v14 = *&aBlock.b;
        v15 = _Q0;
        if (v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected])
        {
          v8 = 1.0;
        }

        else
        {
          v8 = 0.0;
        }
      }

      else
      {
        v15 = xmmword_21B6D8370;
        v16 = xmmword_21B6D8380;
        *v17 = xmmword_21B6D8390;
        v14 = 0u;
        v8 = 0.0;
      }

      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 40) = v14;
      *(v11 + 24) = *v17;
      *(v11 + 72) = v15;
      *(v11 + 56) = v16;
      *(v11 + 88) = v8;
      *&aBlock.tx = sub_21B62CB50;
      *&aBlock.ty = v11;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21B63863C;
      *&aBlock.d = &block_descriptor_45;
      v12 = _Block_copy(&aBlock);
      v13 = v1;

      [v10 animateWithDuration:131078 delay:v12 options:0 animations:0.15 completion:0.0];
      _Block_release(v12);
    }

    else
    {
      v18 = v2;
      v9 = [v1 isSelected];
      v18[OBJC_IVAR____TtC11PosterBoard45HomeScreenConfigurationBlurControlContentView_isSelected] = v9;
      sub_21B62C78C();
    }
  }
}

id sub_21B62B958(char *a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = [a1 layer];
  [v12 setBorderWidth_];

  v13 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView;
  v14 = *&a1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView];
  v15 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v15;
  v19 = v10;
  v20 = v11;
  [v14 setTransform_];
  v16 = [*&a1[v13] layer];
  [v16 setBorderWidth_];

  return [*&a1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView] setAlpha_];
}

void sub_21B62BAB4(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for HomeScreenConfigurationControl();
  v11.receiver = v1;
  v11.super_class = v3;
  v4 = objc_msgSendSuper2(&v11, sel_isHighlighted);
  v10.receiver = v1;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, sel_setHighlighted_, v2 & 1);
  if (v4 != [v1 isHighlighted])
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v9[4] = sub_21B62CAEC;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21B63863C;
    v9[3] = &block_descriptor_39;
    v7 = _Block_copy(v9);
    v8 = v1;

    [v5 animateWithDuration:6 delay:v7 options:0 animations:0.15 completion:0.0];
    _Block_release(v7);
  }
}

id sub_21B62BC14(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HomeScreenConfigurationControl();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_21B62BCA8(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for HomeScreenConfigurationControl();
  v12.receiver = v1;
  v12.super_class = v3;
  v4 = objc_msgSendSuper2(&v12, sel_isEnabled);
  v11.receiver = v1;
  v11.super_class = v3;
  objc_msgSendSuper2(&v11, sel_setEnabled_, v2 & 1);
  if (v4 != [v1 isEnabled])
  {
    if ([v1 isEnabled])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.5;
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v5;
    v10[4] = sub_21B62CA68;
    v10[5] = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_21B63863C;
    v10[3] = &block_descriptor_1;
    v8 = _Block_copy(v10);
    v9 = v1;

    [v6 animateWithDuration:131078 delay:v8 options:0 animations:0.15 completion:0.0];
    _Block_release(v8);
  }
}

id sub_21B62BE28()
{
  result = [objc_opt_self() systemFontOfSize:10.0 weight:*MEMORY[0x277D74420]];
  qword_28120B3B0 = result;
  return result;
}

void sub_21B62BF50(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImage];
  *&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImage] = a1;
  v5 = a1;

  if (a1)
  {
    v4 = *&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView];
    [v4 setImage_];
    [v4 setContentMode_];
    [v4 setBackgroundColor_];
    [v1 setNeedsLayout];
  }
}

char *sub_21B62C020(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImage] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  *&v2[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v5 setContentMode_];
  *&v2[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_floatingImageView] = v5;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for HomeScreenConfigurationPosterControlContentView();
  v6 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView;
  v8 = *&v6[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView];
  v9 = v6;
  [v9 addSubview_];
  [v9 addSubview_];
  [v9 setClipsToBounds_];
  if (a2)
  {
    v10 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:17.0];
    v11 = *&v6[v7];
    v12 = v10;
    v13 = sub_21B6C8D74();

    v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

    [v11 setImage_];
    v15 = *&v6[v7];
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 systemWhiteColor];
    [v17 setTintColor_];

    [*&v6[v7] setContentMode_];
  }

  v19 = *&v6[v7];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 tertiarySystemBackgroundColor];
  [v21 setBackgroundColor_];

  return v9;
}

id sub_21B62C328(uint64_t a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for HomeScreenConfigurationPosterControlContentView();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImage];
  v11 = 1.0;
  if (v10)
  {
    [v10 size];
    if (v12 > 0.0)
    {
      v11 = v13 / v12;
    }
  }

  v14 = _UILerp(v11);
  CGFloatMax(v14);
  v25.origin.x = v3;
  v25.origin.y = v5;
  v25.size.width = v7;
  v25.size.height = v9;
  CGRectGetWidth(v25);
  v26.origin.x = v3;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  CGRectGetHeight(v26);
  BSRectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [*&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView] setFrame_];
  return [*&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_floatingImageView] setFrame_];
}

id sub_21B62C56C()
{
  v0[OBJC_IVAR____TtC11PosterBoard45HomeScreenConfigurationBlurControlContentView_isSelected] = 0;
  v1 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:17.0];
  v2 = sub_21B6C8D74();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  v10.receiver = v0;
  v10.super_class = type metadata accessor for HomeScreenConfigurationBlurControlContentView();
  v4 = objc_msgSendSuper2(&v10, sel_initWithImage_, v3);

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemWhiteColor];
  [v6 setTintColor_];

  [v6 setContentMode_];
  v8 = [v5 tertiarySystemBackgroundColor];
  [v6 setBackgroundColor_];

  return v6;
}

void sub_21B62C78C()
{
  v1 = OBJC_IVAR____TtC11PosterBoard45HomeScreenConfigurationBlurControlContentView_isSelected;
  if (v0[OBJC_IVAR____TtC11PosterBoard45HomeScreenConfigurationBlurControlContentView_isSelected] == 1 && (v10 = &type metadata for PosterRackFeatures, v11 = sub_21B62C9EC(), LOBYTE(v9[0]) = 5, v2 = sub_21B6C8A54(), __swift_destroy_boxed_opaque_existential_0(v9), (v2 & 1) != 0))
  {
    v3 = &selRef_systemBlackColor;
  }

  else
  {
    v3 = &selRef_systemWhiteColor;
  }

  v4 = [objc_opt_self() *v3];
  [v0 setTintColor_];

  if (v0[v1] == 1)
  {
    v10 = &type metadata for PosterRackFeatures;
    v11 = sub_21B62C9EC();
    LOBYTE(v9[0]) = 5;
    v5 = sub_21B6C8A54();
    __swift_destroy_boxed_opaque_existential_0(v9);
    v6 = objc_opt_self();
    v7 = &selRef_systemBlueColor;
    if (v5)
    {
      v7 = &selRef_systemWhiteColor;
    }
  }

  else
  {
    v6 = objc_opt_self();
    v7 = &selRef_tertiarySystemBackgroundColor;
  }

  v8 = [v6 *v7];
  [v0 setBackgroundColor_];
}

id sub_21B62C990(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_21B62C9EC()
{
  result = qword_28120B9C0;
  if (!qword_28120B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B9C0);
  }

  return result;
}

id sub_21B62CA68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [*(v1 + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView) setAlpha_];
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel);

  return [v3 setAlpha_];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21B62CAEC()
{
  v1 = *(v0 + 16);
  v2 = [v1 isHighlighted];
  v3 = 0.6;
  if (!v2)
  {
    v3 = 1.0;
  }

  return [v1 setAlpha_];
}

char *sub_21B62CC38(double a1, double a2, double a3, double a4)
{
  v9 = sub_21B6C9204();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21B6C9364();
  v13 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  *&v4[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = &v4[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButtonDimension] = 0x4051000000000000;
  v20 = type metadata accessor for PosterSectionRemovalView();
  v37.receiver = v4;
  v37.super_class = v20;
  v21 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 systemRedColor];
  sub_21B6C9354();
  v25 = sub_21B6C8D74();
  v26 = [objc_opt_self() systemImageNamed_];

  sub_21B6C9304();
  v27 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:27.0];
  sub_21B6C91C4();
  (*(v10 + 104))(v12, *MEMORY[0x277D74FD8], v9);
  sub_21B6C9224();
  v28 = v24;
  sub_21B6C92C4();
  v29 = [v28 colorWithAlphaComponent_];
  sub_21B6C92B4();
  sub_21B61785C(0, &unk_28120B100, 0x277D75220);
  v30 = v36;
  (*(v13 + 16))(v15, v18, v36);
  sub_21B61785C(0, &unk_28120B110, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21B6C91B4();
  v31 = sub_21B6C9374();
  [v31 setOverrideUserInterfaceStyle_];
  v32 = sub_21B6C8D74();
  [v31 setAccessibilityIdentifier_];

  [v31 setTintAdjustmentMode_];
  [v23 addSubview_];

  (*(v13 + 8))(v18, v30);
  v33 = *&v23[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton];
  *&v23[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton] = v31;

  return v23;
}

void sub_21B62D0D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID + 8);
    if (v4 && (v5 = *(Strong + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID), swift_unknownObjectWeakLoadStrong()))
    {

      sub_21B687C20(v3, v5, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21B62D254(uint64_t a1, uint64_t a2)
{
  v14.receiver = v2;
  v14.super_class = type metadata accessor for PosterSectionRemovalView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v2 traitCollection];
  [v11 displayScale];

  v12 = *&v2[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton];
  if (v12)
  {
    v13 = v12;
    BSRectWithSize();
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    CGRectGetMidX(v15);
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    CGRectGetMidY(v16);
    CGPointMake();
    UIRectCenteredAboutPointScale();
    [v13 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id sub_21B62D3F4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PosterSectionRemovalView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21B62D4B4(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout] = 1;
  v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] = 0;
  v5 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutModeTransitioningTo];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_minimumLineSpacing] = 0;
  v7 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionInset];
  v8 = *(MEMORY[0x277D768C8] + 16);
  *v7 = *MEMORY[0x277D768C8];
  v7[1] = v8;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_scrollDirection] = 1;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_zoomCardSizeMultiplier] = 0x3FE70A3D70A3D70ALL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cardSizeMultiplier] = 0x3FE6666666666666;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_peekingCardSizeMultiplier] = 0x3FE47AE147AE147BLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCardUpscale] = 0x3FF428F5C28F5C29;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCardLesserUpscale] = 0x3FF35C28F5C28F5CLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_maximumVerticalRevealFraction] = 0x3FD0000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_overhangMultiplier] = 0x3FAEB851EB851EB8;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_zoomCardSizeOverlapMultiplier] = 0x3FD0000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedFrontBaseOffset] = 0x3FE599999999999ALL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontBaseOffset] = 0xBFA2B020C49BA5E3;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontShovedMultiplier] = 0xBFC999999999999ALL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontShovedMultiplierPad] = 0xBFCEB851EB851EB8;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontParallaxLeadingMultiplier] = 0xBF826E978D4FDF3BLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontParallaxTrailingMultiplier] = 0xBFBBC6A7EF9DB22DLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backBaseOffset] = 0x3FB147AE147AE148;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backParallaxMultiplier] = 0xBFCB126E978D4FDFLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backParallaxMultiplierPad] = 0xBFCEE147AE147AE1;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_coupledContentEdgeMargin] = 0x4000000000000000;
  v9 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_contentBounds];
  *v9 = 0u;
  v9[1] = 0u;
  v10 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes] = v10;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes] = v10;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes] = v10;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgresses] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete] = v10;
  v11 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_indexPathToMaintainForTransition;
  v12 = sub_21B6C8A04();
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode] = a1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for PosterRackStackedLayout(0);
  v13 = objc_msgSendSuper2(&v18, sel_init);
  type metadata accessor for PosterCoupledTitlesView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = v13;
  v16 = sub_21B6C8D74();
  [v15 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v16];

  return v15;
}

uint64_t sub_21B62D8AC()
{
  v1 = v0;
  v20 = sub_21B6C8A04();
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21B6C88D4();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD930B8, qword_21B6D8638);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_21B6C88E4();
  v9 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete;
  sub_21B6C8964();
  sub_21B633594(&qword_27CD930C0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v21 = v0;
  ++v22;
  v19 = v23 + 32;
  while (1)
  {
    sub_21B6C8FD4();
    sub_21B633594(&qword_27CD930C8, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v10 = sub_21B6C8D64();
    (*v22)(v5, v3);
    if (v10)
    {
      break;
    }

    v11 = sub_21B6C8FF4();
    v13 = *v12;
    v11(v25, 0);
    sub_21B6C8FE4();
    MEMORY[0x21CEF5B40](0, v13);
    v14 = *(v1 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v9) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_21B6A3078(0, v14[2] + 1, 1, v14);
      *(v1 + v9) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_21B6A3078((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    (*(v23 + 32))(v14 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, v24, v20);
    v1 = v21;
    *(v21 + v9) = v14;
  }

  return sub_21B62AA8C(v8, &qword_27CD930B8, qword_21B6D8638);
}

uint64_t sub_21B62DC48@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500, &qword_21B6D8630);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_indexPathToMaintainForTransition;
  swift_beginAccess();
  sub_21B633524(v1 + v13, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v17 = *(v7 + 32);
    v17(v12, v5, v6);
    v17(a1, v12, v6);
    goto LABEL_9;
  }

  sub_21B62AA8C(v5, &qword_27CD93500, &qword_21B6D8630);
  v14 = *(v1 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete);
  if (!*(v14 + 16))
  {
    v18 = 1;
    return (*(v7 + 56))(a1, v18, 1, v6);
  }

  (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  sub_21B630624();
  if ((v15 & 1) == 0)
  {
    (*(v7 + 32))(a1, v9, v6);
    goto LABEL_9;
  }

  result = sub_21B6C89F4();
  if (!__OFSUB__(result, 1))
  {
    MEMORY[0x21CEF5B40](0, result - 1);
    (*(v7 + 8))(v9, v6);
LABEL_9:
    v18 = 0;
    return (*(v7 + 56))(a1, v18, 1, v6);
  }

  __break(1u);
  return result;
}

void sub_21B62E05C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500, &qword_21B6D8630);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v49 - v4;
  v58 = sub_21B6C8A04();
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PosterRackStackedLayout(0);
  v59.receiver = v1;
  v59.super_class = v7;
  objc_msgSendSuper2(&v59, sel_prepareForTransitionFromLayout_, a1);
  v56 = v1;
  v8 = [v1 collectionView];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v12 = a1;
  [v9 contentOffset];
  v14 = v13;
  v16 = v15;
  [v9 bounds];
  v18 = v17;
  v20 = v19;
  v21 = [v11 layoutAttributesForElementsInRect_];
  if (v21)
  {
    v22 = v21;
    sub_21B6335DC();
    v23 = sub_21B6C8E84();

    if (!(v23 >> 62))
    {
      goto LABEL_5;
    }

LABEL_22:
    v24 = sub_21B6C9454();
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_23:

LABEL_24:

    return;
  }

  v23 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_22;
  }

LABEL_5:
  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_23;
  }

LABEL_6:
  v50 = v12;
  v51 = v9;
  if (v24 >= 1)
  {
    v25 = 0;
    v26 = *&v56[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode];
    v27 = v23 & 0xC000000000000001;
    v55 = (v5 + 8);
    v52 = (v5 + 56);
    v53 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_indexPathToMaintainForTransition;
    v28 = 0.0;
    v29 = &selRef_collectionViewLayout;
    v30 = &off_2782CA000;
    while (1)
    {
      if (v27)
      {
        v31 = MEMORY[0x21CEF66E0](v25, v23);
      }

      else
      {
        v31 = *(v23 + 8 * v25 + 32);
      }

      v32 = v31;
      [v31 v29[412]];
      v62.origin.x = v14;
      v62.origin.y = v16;
      v62.size.width = v18;
      v62.size.height = v20;
      v61 = CGRectIntersection(v60, v62);
      Width = CGRectGetWidth(v61);
      v34 = Width;
      if (v26 == 4)
      {
        v35 = [v32 v30[472]];
        v36 = v57;
        sub_21B6C8994();

        v37 = sub_21B6C89B4();
        (*v55)(v36, v58);
        if (v28 < v34 && v37 == 1)
        {
LABEL_18:
          v38 = [v32 v30[472]];
          v39 = v30;
          v40 = v27;
          v41 = v26;
          v42 = v24;
          v43 = v23;
          v44 = v29;
          v45 = v54;
          sub_21B6C8994();

          (*v52)(v45, 0, 1, v58);
          v46 = v56;
          v47 = v53;
          swift_beginAccess();
          v48 = v45;
          v29 = v44;
          v23 = v43;
          v24 = v42;
          v26 = v41;
          v27 = v40;
          v30 = v39;
          sub_21B633628(v48, &v46[v47]);
          swift_endAccess();
          v28 = v34;
          goto LABEL_9;
        }
      }

      else if (v28 < Width)
      {
        goto LABEL_18;
      }

LABEL_9:
      if (v24 == ++v25)
      {

        goto LABEL_24;
      }
    }
  }

  __break(1u);
}

void sub_21B62E630()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500, &qword_21B6D8630);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v188 - v4;
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v188 - v11;
  MEMORY[0x28223BE20](v13);
  v192 = &v188 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v188 - v16;
  v18 = type metadata accessor for PosterRackStackedLayout(0);
  v229.receiver = v2;
  v229.super_class = v18;
  objc_msgSendSuper2(&v229, sel_prepareLayout);
  v19 = [v2 collectionView];
  if (!v19)
  {
    return;
  }

  v195 = v7;
  v20 = v19;
  [v20 bounds];
  v22 = v21;
  v24 = *&v23;
  [v20 safeAreaInsets];
  v199 = v25;

  v26 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode];
  v201 = v26;
  v27 = v22;
  if (!v26)
  {
    LODWORD(v212) = 0;
    v30 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize;
    *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize] = v22;
    v31 = &v2[v30];
    v31[1] = v24;
    v194 = v31 + 1;
    v32 = 0.0;
    v28 = 1.0;
    LODWORD(v211) = 1;
    goto LABEL_23;
  }

  LODWORD(v211) = v26 != 4;
  if (v26 == 4)
  {
    v28 = 0.7;
  }

  else
  {
    v28 = 1.0;
  }

  LODWORD(v212) = 1;
  if (v26 == 6 || v26 == 4)
  {
LABEL_15:
    v33 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize;
    *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize] = v22 * v28;
    *&v2[v33 + 8] = v24 * v28;
    v194 = &v2[v33 + 8];
    v32 = 0.0;
    if (v26 == 6)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (v26 != 2)
  {
    LODWORD(v212) = 0;
    LODWORD(v211) = 0;
    v28 = 0.7;
    v26 = v201;
    goto LABEL_15;
  }

  LODWORD(v211) = 0;
  LODWORD(v212) = 0;
  if (v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack])
  {
    v28 = 0.847;
  }

  else
  {
    v28 = 0.882;
  }

  v29 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize];
  *v29 = v22 * v28;
  v29[1] = v24 * v28;
  v194 = v29 + 1;
LABEL_16:
  v34 = 24.0;
  if ((v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout] & 1) == 0)
  {
    v35 = BSFloatLessThanOrEqualToFloat();
    v34 = 16.0;
    if (!v35)
    {
      v36 = BSFloatLessThanOrEqualToFloat();
      v34 = 22.0;
      if (v36)
      {
        v34 = 20.0;
      }
    }
  }

  if (v201 == 2)
  {
    v32 = v34 * 0.545;
  }

  else
  {
    v32 = v34;
  }

LABEL_23:
  v191 = v5;
  v204 = v12;
  *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_minimumLineSpacing] = v32;
  v37 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionInset];
  *v37 = 0.0;
  v37[1] = v32 * 0.5;
  v37[2] = 0.0;
  v37[3] = v32 * 0.5;
  v38 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
  swift_beginAccess();
  v39 = MEMORY[0x277D84F90];
  v223 = v38;
  *&v2[v38] = MEMORY[0x277D84F90];

  v40 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes;
  swift_beginAccess();
  v198 = v40;
  *&v2[v40] = v39;

  v41 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  v197 = v41;
  *&v2[v41] = v39;

  v42 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes;
  swift_beginAccess();
  v203 = v42;
  *&v2[v42] = v39;

  v43 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider];
  v222 = v6;
  if (v43)
  {
    v44 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider + 8];

    v46 = v43(v45);
    sub_21B52B410(v43, v44);
  }

  else
  {
    v46 = sub_21B698B34(MEMORY[0x277D84F90]);
  }

  v47 = v201;
  *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgresses] = v46;

  v48 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_contentBounds];
  *v48 = 0;
  *(v48 + 1) = 0;
  *(v48 + 2) = v27;
  *(v48 + 3) = v24;
  v49 = [v20 numberOfSections];
  v50 = v223;
  if (v49 + 0x4000000000000000 < 0)
  {
    goto LABEL_146;
  }

  v51 = v27 * (1.0 - v28);
  v188 = v49;
  v46 = 2 * v49;
  v52 = *v194;
  v53 = (v24 - *v194) * 0.5;
  v54 = v51 * 0.5;
  v55 = v51 * 0.5 - v32;
  v239.origin.x = 0.0;
  v239.origin.y = v53;
  v239.size.width = v55;
  v239.size.height = *v194;
  *v48 = CGRectUnion(*v48, v239);
  if (v47 == 2)
  {
    v56 = v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] == 0;
    v57 = 0.882;
    if (v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack])
    {
      v57 = 0.847;
    }

    v213 = v57;
    v58 = 0.8064;
    if (!v56)
    {
      v58 = 0.7744;
    }

    v210 = v58;
  }

  else
  {
    v210 = 0.64;
    v213 = 0.7;
  }

  if ((v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_147;
  }

  v189 = v54;
  v190 = v53;
  v193 = v20;
  v217 = v9;
  v209 = v27 * v213;
  v220 = v46;
  v214 = v27;
  if (v46)
  {
    v200 = v32;
    v207 = v27 * 0.5;
    v208 = v27 * v210;
    v206 = v24 * 0.5;
    v205 = objc_opt_self();
    v59 = 0;
    v196 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout;
    v60 = (v195 + 8);
    v61 = v212;
    if (v47 == 3)
    {
      v61 = 1;
    }

    v202 = v61;
    v62 = 0.0;
    v63 = v53;
    v64 = v55;
    v65 = v52;
    v221 = v47;
    v32 = v27;
    v215 = v24;
    while (1)
    {
      v47 = v59 % 2;
      v68 = v209;
      if (v59 % 2)
      {
        v68 = v208;
      }

      v69 = v213;
      if (v59 % 2)
      {
        v69 = v210;
      }

      v70 = v24 * v69;
      v55 = v211 ? v32 : v68;
      v52 = v211 ? v24 : v70;
      *&v219 = v62;
      *&v218 = v63;
      *&v216 = v64;
      v71 = v32;
      v72 = v62;
      v73 = v63;
      v74 = v64;
      v75 = v65;
      v66 = v47 ? CGRectGetMidX(*(&v65 - 3)) + v55 * -0.5 : v200 + CGRectGetMaxX(*(&v65 - 3));
      v67 = (v24 - v52) * 0.5;
      v231.origin.x = v66;
      v231.origin.y = v67;
      v231.size.width = v55;
      v231.size.height = v52;
      v76 = CGRectGetMidX(v231) - v207;
      v232.origin.x = v66;
      v232.origin.y = v67;
      v232.size.width = v55;
      v232.size.height = v52;
      v77 = CGRectGetMidY(v232) - v206;
      MEMORY[0x21CEF5B60](v59 % 2, v59 / 2);
      v78 = sub_21B6C8974();
      v79 = [v205 layoutAttributesForCellWithIndexPath_];

      v80 = v76;
      v24 = v215;
      v81 = v77;
      v32 = v71;
      [v79 setFrame_];
      if (v47)
      {
        break;
      }

      v50 = v223;
      if (v212)
      {
        goto LABEL_61;
      }

LABEL_62:
      swift_beginAccess();
      v84 = v79;
      MEMORY[0x21CEF6000]();
      if (*((*&v2[v50] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v50] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
        v50 = v223;
      }

      sub_21B6C8EA4();
      swift_endAccess();
      if (v47)
      {
        (*v60)(v17, v222);

        v62 = *&v219;
        v66 = *&v219;
        v63 = *&v218;
        v67 = *&v218;
        v64 = *&v216;
        v55 = *&v216;
        v65 = v75;
        v52 = v75;
      }

      else
      {
        v240.origin.x = v66;
        v240.origin.y = v67;
        v240.size.width = v55;
        v240.size.height = v52;
        v233 = CGRectUnion(*v48, v240);
        x = v233.origin.x;
        y = v233.origin.y;
        width = v233.size.width;
        height = v233.size.height;

        (*v60)(v17, v222);
        *v48 = x;
        *(v48 + 1) = y;
        v62 = v66;
        v63 = v67;
        v64 = v55;
        v65 = v52;
        *(v48 + 2) = width;
        *(v48 + 3) = height;
        v32 = v214;
        v24 = v215;
      }

      if (v220 == ++v59)
      {
        goto LABEL_67;
      }
    }

    v82 = v221;
    if (!v212)
    {
      v82 = 3;
    }

    v221 = v82;
    v50 = v223;
    if (v202)
    {
      goto LABEL_62;
    }

    v83 = v2[v196];
    v221 = v201;
    if (v83 != 1)
    {
      goto LABEL_62;
    }

LABEL_61:
    [v79 setHidden_];
    goto LABEL_62;
  }

  v66 = 0.0;
  v67 = v53;
  v221 = v47;
  v32 = v27;
LABEL_67:
  v234.origin.x = v66;
  v234.origin.y = v67;
  v234.size.width = v55;
  v234.size.height = v52;
  v241.origin.x = CGRectGetMaxX(v234);
  v241.size.height = *v194;
  v241.size.width = v189;
  v241.origin.y = v190;
  *v48 = CGRectUnion(*v48, v241);
  [v193 contentOffset];
  v1 = v89;
  v90 = v191;
  v46 = v2;
  sub_21B62DC48(v191);
  v20 = v195;
  v48 = v222;
  if ((*(v195 + 48))(v90, 1, v222) != 1)
  {
    v17 = v192;
    (*(v20 + 32))(v192, v90, v48);
    v46 = v17;
    v91 = sub_21B6C89F4();
    if (v91 + 0x4000000000000000 < 0)
    {
      goto LABEL_148;
    }

    v50 = v91;
    v92 = sub_21B6C89D4();
    v46 = v92 + 2 * v50;
    if (__OFADD__(v92, 2 * v50))
    {
      goto LABEL_149;
    }

    v50 = v223;
    v93 = *&v2[v223];
    if (v93 >> 62)
    {
      goto LABEL_150;
    }

    v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_73;
  }

  sub_21B62AA8C(v90, &qword_27CD93500, &qword_21B6D8630);
  while (1)
  {
    *&v216 = v188 & 0x7FFFFFFFFFFFFFFFLL;
    if ((v188 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      break;
    }

    v215 = COERCE_DOUBLE(objc_opt_self());
    v47 = 0;
    v20 = 0;
    v213 = COERCE_DOUBLE("erRackStackedLayout");
    if (v221 == 3)
    {
      v98 = 1.0;
    }

    else
    {
      v98 = 0.0;
    }

    v99 = (v195 + 8);
    v17 = v204;
    while (v20 != 0x4000000000000000)
    {
      v46 = *&v2[v50];
      if ((v46 & 0xC000000000000001) != 0)
      {

        v100 = MEMORY[0x21CEF66E0](v47, v46);
      }

      else
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_136;
        }

        if (v47 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_137;
        }

        v100 = *(v46 + 8 * v47 + 32);
      }

      [v100 frame];
      v102 = v101;
      v104 = v103;
      v106 = v105;
      v108 = v107;

      v109 = sub_21B62FACC(v102, v104, v106, v108, *&v1);
      MEMORY[0x21CEF5B60](0, v20);
      sub_21B6304B0(&v224, v102, v104, v106, v108);
      a = v224.a;
      b = v224.b;
      c = v224.c;
      d = v224.d;
      v114 = v226;
      v115 = v227;
      v218 = v225;
      v219 = *&v224.tx;
      v116 = sub_21B6C8D74();
      v117 = sub_21B6C8974();
      v118 = [*&v215 layoutAttributesForDecorationViewOfKind:v116 withIndexPath:v117];

      [v118 setFrame_];
      *&v224.a = v219;
      *&v224.c = v218;
      v224.tx = v114;
      v224.ty = v115;
      [v118 setTransform_];
      [v118 setAlpha_];
      [v118 setHidden_];
      [v118 setZIndex_];
      v119 = v203;
      swift_beginAccess();
      v120 = v118;
      MEMORY[0x21CEF6000]();
      if (*((*&v2[v119] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v119] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      ++v20;
      v46 = &v2[v119];
      sub_21B6C8EA4();
      swift_endAccess();

      v48 = v222;
      (*v99)(v17, v222);
      v47 += 2;
      v50 = v223;
      v32 = v214;
      if (v216 == v20)
      {
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v94 = sub_21B6C9454();
    if ((v94 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
LABEL_73:
      if (v46 >= v94)
      {
        goto LABEL_78;
      }

      v47 = *&v2[v50];
      if ((v47 & 0xC000000000000001) == 0)
      {
        if (v46 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v95 = *(v47 + 8 * v46 + 32);
        goto LABEL_77;
      }
    }

    v95 = MEMORY[0x21CEF66E0](v46, v47);

LABEL_77:
    [v95 frame];
    MinX = CGRectGetMinX(v235);
    v46 = v2;
    sub_21B632ED0(0, MinX);
    v1 = v97;

LABEL_78:
    (*(v20 + 8))(v17, v48);
  }

LABEL_94:
  v50 = v217;
  if (v220)
  {
    v121 = 0;
    if (v211)
    {
      v122 = v32;
    }

    else
    {
      v122 = v209;
    }

    v123 = round(*&v1 / v122);
    v215 = COERCE_DOUBLE(llround(*&v1 / v122));
    v124 = *MEMORY[0x277D767D8];
    *&v125 = v195 + 8;
    v209 = *MEMORY[0x277D767D0];
    v212 = v1;
    v213 = v123;
    v214 = v122;
    *&v210 = v195 + 8;
    v211 = v124;
    while (1)
    {
      v46 = v121 / 2;
      v47 = v121 % 2;
      MEMORY[0x21CEF5B60](v121 % 2, v121 / 2);
      if (v122 == 0.0)
      {
        v20 = v121 / -2;
        v126 = v223;
      }

      else
      {
        v126 = v223;
        if ((*&v123 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        if (v123 <= -9.22337204e18)
        {
          goto LABEL_142;
        }

        if (v123 >= 9.22337204e18)
        {
          goto LABEL_144;
        }

        v20 = *&v215 - v46;
        if (__OFSUB__(*&v215, v46))
        {
          goto LABEL_145;
        }
      }

      if (v20 < 0)
      {
        v127 = __OFSUB__(0, v20);
        v20 = -v20;
        if (v127)
        {
          goto LABEL_143;
        }
      }

      v46 = *&v2[v126];
      if ((v46 & 0xC000000000000001) == 0)
      {
        break;
      }

      v17 = MEMORY[0x21CEF66E0](v121, v46);

      if (!v47)
      {
        goto LABEL_111;
      }

LABEL_128:
      if (__OFSUB__(100 - v47, v20))
      {
        goto LABEL_139;
      }

      ++v121;
      [v17 setZIndex_];
      [v17 frame];
      v50 = v217;
      sub_21B62FBE8(&v230, v184, v185, v186, v187, *&v1);
      v224 = v230;
      [v17 setTransform_];

      (**&v125)(v50, v48);
      if (v121 == v220)
      {
        goto LABEL_133;
      }
    }

    if (v121 < 0)
    {
      goto LABEL_138;
    }

    if (v121 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_140;
    }

    v17 = *(v46 + 8 * v121 + 32);
    if (v47)
    {
      goto LABEL_128;
    }

LABEL_111:
    [v17 frame];
    sub_21B630260(&v224.a, v128, v129, v130, v131, v199, v1);
    v132 = v224.a;
    v133 = v224.b;
    v134 = v224.c;
    v135 = v224.d;
    v136 = v226;
    v137 = v227;
    v138 = v228;
    v219 = *&v224.tx;
    v216 = v225;
    v139 = v211;
    v140 = sub_21B6C8974();
    *&v218 = objc_opt_self();
    v141 = [v218 layoutAttributesForSupplementaryViewOfKind:v139 withIndexPath:v140];

    [v141 setFrame_];
    *&v224.c = v216;
    *&v224.a = v219;
    v224.tx = v136;
    v224.ty = v137;
    [v141 setTransform_];
    v142 = 0.0;
    if (v221 == 1)
    {
      v142 = v138;
    }

    [v141 setAlpha_];
    [v141 setZIndex_];
    v143 = v198;
    swift_beginAccess();
    v144 = v141;
    MEMORY[0x21CEF6000]();
    v145 = *((*&v2[v143] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v146 = *((*&v2[v143] & 0xFFFFFFFFFFFFFF8) + 0x18);
    *&v219 = v144;
    if (v145 >= v146 >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
    swift_endAccess();
    v147 = sub_21B6C89F4();
    v148 = COERCE_DOUBLE(sub_21B63083C(v147));
    if (v149)
    {
      v148 = 0.0;
    }

    *&v216 = v148;
    [v17 frame];
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v157 = v156;
    v158 = [v2 collectionView];
    if (v158)
    {
      v159 = v158;
      v160 = [v158 traitCollection];

      [v160 displayScale];
    }

    CGAffineTransformMakeScale(&v224, 0.7, 0.7);
    v236.origin.x = v151;
    v236.origin.y = v153;
    v236.size.width = v155;
    v236.size.height = v157;
    CGRectApplyAffineTransform(v236, &v224);
    UIRectCenteredIntegralRectScale();
    v162 = v161;
    v163 = v153;
    v165 = v164;
    v237.origin.x = v151;
    v167 = v166;
    v169 = v168;
    v237.origin.y = v163;
    v237.size.width = v155;
    v237.size.height = v157;
    CGRectGetHeight(v237);
    v238.origin.x = v162;
    v238.origin.y = v165;
    v238.size.width = v167;
    v238.size.height = v169;
    CGRectGetMaxY(v238);
    UIRectRoundToScale();
    v171 = v170;
    v173 = v172;
    v32 = v174;
    v176 = v175;
    v177 = *&v209;
    v178 = sub_21B6C8974();
    v179 = [v218 layoutAttributesForSupplementaryViewOfKind:v177 withIndexPath:v178];

    [v179 setFrame_];
    v224.b = 0.0;
    v224.c = 0.0;
    v224.a = 1.0;
    v224.d = 1.0;
    v224.tx = 0.0;
    v224.ty = 0.0;
    [v179 setTransform_];
    v180 = 0.0;
    if (v221 == 1)
    {
      v180 = *&v216;
      v181 = *&v216 <= 0.75;
    }

    else
    {
      v181 = 1;
    }

    if (v181)
    {
      v50 = 0;
    }

    else
    {
      v50 = 250;
    }

    [v179 setAlpha_];
    [v179 setZIndex_];
    v182 = v197;
    swift_beginAccess();
    v183 = v179;
    MEMORY[0x21CEF6000]();
    if (*((*&v2[v182] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v182] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v50 = *((*&v2[v182] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21B6C8E94();
    }

    v46 = &v2[v182];
    sub_21B6C8EA4();
    swift_endAccess();

    v48 = v222;
    v1 = v212;
    v123 = v213;
    v122 = v214;
    v125 = v210;
    goto LABEL_128;
  }

LABEL_133:
}

uint64_t sub_21B62FACC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v10 = [v5 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 traitCollection];

    [v12 displayScale];
  }

  v13 = [v5 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 bounds];
  }

  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMidX(v16);
  BSFloatFloorForScale();
  return BSFloatIsZero();
}

CGFloat sub_21B62FBE8@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v71 = sub_21B6C89D4();
  v12 = *&v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode];
  v13 = &v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex];
  HIDWORD(v69) = v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex + 8];
  v14 = (sub_21B6C89F4() == *v13) & ~v13[8];
  if ((v12 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout;
  if ((v12 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout];
  }

  LODWORD(v69) = (v12 & 0xFFFFFFFFFFFFFFFDLL) == 4;
  v18 = [v6 collectionView];
  v19 = 0.0;
  if (v18)
  {
    v20 = v18;
    [v18 bounds];
    v19 = v21;
  }

  v22 = [v6 collectionView];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 traitCollection];

    [v24 displayScale];
  }

  v80.origin.x = a2;
  v80.origin.y = a3;
  v80.size.width = a4;
  v80.size.height = a5;
  *v25.i64 = v19 * 0.5 + a6 - CGRectGetMidX(v80);
  v72 = v25;
  v26 = PFCurrentDeviceClass();
  if (!v12 || v12 == 6)
  {
    v28 = 24.0;
    if ((v6[v16] & 1) == 0)
    {
      v29 = BSFloatLessThanOrEqualToFloat();
      v28 = 16.0;
      if ((v29 & 1) == 0)
      {
        v30 = BSFloatLessThanOrEqualToFloat();
        v28 = 22.0;
        if (v30)
        {
          v28 = 20.0;
        }
      }
    }

    v27.i64[0] = 1.0;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    *&v32 = vbslq_s8(vnegq_f64(v31), v27, v72).u64[0];
    v33 = 0.0;
    if (*v72.i64 == 0.0)
    {
      v32 = 0.0;
    }

    v34 = -(v28 * v32);
    v35 = 0.0;
    v36 = 1.0;
    goto LABEL_20;
  }

  if (v12 == 5 || v12 == 3)
  {
    if (sub_21B62FACC(a2, a3, a4, a5, a6))
    {
      if (v12 == 5)
      {
        if (!v71)
        {
          v27.i64[0] = 1.0;
          v33 = 0.0;
          v35 = 0.0;
          v36 = 1.0;
          v34 = 0.0;
          goto LABEL_20;
        }

        v27.i64[0] = _UILerp_0(0.64);
        v34 = 0.0;
        if (*v27.i64 >= 1.0)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      BSFloatRoundForScale();
      *v27.i64 = (v19 + -10.0 + -4.0) * 0.5 / a4;
      if (v71)
      {
        v34 = v47;
      }

      else
      {
        v34 = -v47;
      }

LABEL_57:
      v33 = 0.0;
      if (*v27.i64 >= 1.0 || a4 <= 0.0)
      {
        goto LABEL_62;
      }

      v51 = a5 <= 0.0;
      goto LABEL_60;
    }

    v45.i64[0] = 1.0;
    v46.f64[0] = NAN;
    v46.f64[1] = NAN;
    v45.i64[0] = vbslq_s8(vnegq_f64(v46), v45, v72).u64[0];
    if (*v72.i64 == 0.0)
    {
      *v45.i64 = 0.0;
    }

    v34 = v19 * 0.3 * -0.5 * *v45.i64;
LABEL_31:
    v27.i64[0] = 0x3FE6666666666666;
    goto LABEL_57;
  }

  if (v71)
  {
    if (v15)
    {
      v27.i64[0] = 0x3FE6666666666666;
      v34 = 0.0;
      goto LABEL_53;
    }

    if (v12 == 2)
    {
      v49 = v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] == 0;
      v50 = 0.8064;
      v27.i64[0] = 0x3FE8C7E28240B780;
LABEL_45:
      if (v49)
      {
        *v27.i64 = v50;
      }

      v34 = 0.0;
      goto LABEL_53;
    }

    if (!v17)
    {
      v34 = v19 * 0.0675 + *v72.i64 * dbl_21B6D8560[v26 == 1];
      v27.i64[0] = 0x3FE47AE147AE147BLL;
      goto LABEL_57;
    }

    v27.i64[0] = 0x3FE47AE147AE147BLL;
    v34 = 0.0;
  }

  else
  {
    if (v15)
    {
      v81.origin.x = a2;
      v81.origin.y = a3;
      v81.size.width = a4;
      v81.size.height = a5;
      Width = CGRectGetWidth(v81);
      v27.i64[0] = 0x3FE70A3D70A3D70ALL;
      v34 = -4.0 - v19 * 0.5 + Width * 0.72 * -0.5;
      goto LABEL_57;
    }

    if (v12 == 2)
    {
      v49 = v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] == 0;
      v50 = 0.882;
      v27.i64[0] = 0x3FEB1A9FBE76C8B4;
      goto LABEL_45;
    }

    if (!v17)
    {
      v61 = v26;
      v62 = v19 * -0.0365;
      v63 = [v6 collectionView];
      if (v63 && (v64 = v63, v65 = [v63 numberOfItemsInSection_], v64, v65 == 1))
      {
        v66 = *v72.i64;
        v67 = fabs(*v72.i64 / (a4 * 0.33));
        if (v67 > 1.0)
        {
          v67 = 1.0;
        }

        v62 = v62 * v67;
      }

      else
      {
        v66 = *v72.i64;
      }

      v68 = (&unk_21B6D8570 + 8 * (v61 == 1));
      if ((v70 & (HIDWORD(v70) ^ 1)) == 0)
      {
        v68 = (&unk_21B6D8580 + 8 * (v66 > 0.0));
      }

      v34 = v66 * *v68 + v62;
      goto LABEL_31;
    }

    v34 = 0.0;
    v27.i64[0] = 0x3FE6666666666666;
  }

LABEL_53:
  if (a4 <= 0.0)
  {
LABEL_55:
    v33 = 0.0;
LABEL_62:
    v35 = 0.0;
    v36 = *v27.i64;
    goto LABEL_20;
  }

  v51 = a5 <= 0.0;
  v33 = 0.0;
LABEL_60:
  v35 = 0.0;
  v36 = *v27.i64;
  if (!v51)
  {
    CGAffineTransformMakeScale(&t1, *v27.i64, *v27.i64);
    v82.origin.x = a2;
    v82.origin.y = a3;
    v82.size.width = a4;
    v82.size.height = a5;
    CGRectApplyAffineTransform(v82, &t1);
    BSSizeRoundForScale();
    v53 = v52 / a4;
    v74 = v54 / a5;
    BSRectWithSize();
    UIRectCenteredRect();
    v56 = v55;
    v58 = v57;
    BSRectRoundForScale();
    v60 = v59;
    v36 = v53;
    v33 = *v27.i64 - v58;
    v35 = v60 - v56;
    *v27.i64 = v74;
  }

LABEL_20:
  CGAffineTransformMakeScale(&t1, v36, *v27.i64);
  tx = t1.tx;
  ty = t1.ty;
  v73 = *&t1.c;
  recta = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, v35 + v34, v33);
  v39 = *&t1.a;
  v40 = *&t1.c;
  v41 = *&t1.tx;
  *&t1.a = recta;
  *&t1.c = v73;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v39;
  *&t2.c = v40;
  *&t2.tx = v41;
  CGAffineTransformConcat(&v77, &t1, &t2);
  result = v77.a;
  v43 = *&v77.c;
  v44 = *&v77.tx;
  *a1 = *&v77.a;
  a1[1] = v43;
  a1[2] = v44;
  return result;
}

uint64_t *sub_21B630260@<X0>(double *__return_ptr a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, uint64_t a7)
{
  v14 = [v7 collectionView];
  v15 = 0.0;
  if (v14)
  {
    v16 = v14;
    v17 = [v14 traitCollection];

    [v17 displayScale];
  }

  v18 = [v7 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 bounds];
    v21 = v20;

    v15 = v21 * 0.5;
  }

  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  MidX = CGRectGetMidX(v42);
  CGAffineTransformMakeScale(&v41, 0.7, 0.7);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  CGRectApplyAffineTransform(v43, &v41);
  UIRectCenteredIntegralRectScale();
  x = v44.origin.x;
  width = v44.size.width;
  height = v44.size.height;
  CGRectGetMinY(v44);
  v45.origin.x = x;
  v45.origin.y = a6;
  v45.size.width = width;
  v45.size.height = height;
  CGRectGetMinY(v45);
  UIRectRoundToScale();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = PUIFeatureEnabled();
  if (result)
  {
    v37 = v15 + *&a7 - MidX;
    v35.i64[0] = 1.0;
    v38 = fmin(vabdd_f64(v15 + *&a7, MidX) / v15, 1.0);
    v39 = (1.0 - v38) * (1.0 - v38);
    *v36.i64 = -v37;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v35.i64[0] = vbslq_s8(vnegq_f64(v40), v35, v36).u64[0];
    if (v37 == 0.0)
    {
      *v35.i64 = -0.0;
    }

    v27 = *v35.i64 * v38 * 114.0 + v27;
  }

  else
  {
    v39 = 1.0;
  }

  *a1 = v27;
  *(a1 + 1) = v29;
  *(a1 + 2) = v31;
  *(a1 + 3) = v33;
  a1[4] = 1.0;
  a1[5] = 0.0;
  a1[6] = 0.0;
  a1[7] = 1.0;
  a1[8] = 0.0;
  a1[9] = 0.0;
  a1[10] = v39;
  return result;
}

void sub_21B6304B0(void *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = [v5 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 traitCollection];

    [v13 displayScale];
  }

  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetWidth(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetHeight(v20);
  BSFloatRoundForScale();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetWidth(v21);
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v16;
  a1[3] = v17;
  a1[4] = 0x3FF0000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0x3FF0000000000000;
  a1[8] = 0;
  a1[9] = 0;
}

void sub_21B630624()
{
  v1 = v0;
  v2 = sub_21B6C8A04();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 numberOfSections];

    v10 = *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete];
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = __OFSUB__(v9, 1);
      v13 = v9 - 1;
      if (!v12)
      {
        v14 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v15 = v3 + 16;
        v25 = (v3 + 8);

        v16 = 0;
        while (v16 < *(v10 + 16))
        {
          (*(v3 + 16))(v6, v14 + *(v3 + 72) * v16, v2);
          if (sub_21B6C89F4() == v13)
          {
            v17 = v15;
            v18 = v14;
            v19 = v10;
            v20 = v11;
            v21 = v13;
            v22 = sub_21B6C89F4();
            (*v25)(v6, v2);
            v23 = v22 <= 0;
            v13 = v21;
            v11 = v20;
            v10 = v19;
            v14 = v18;
            v15 = v17;
            if (!v23)
            {
LABEL_12:

              return;
            }
          }

          else
          {
            (*v25)(v6, v2);
          }

          if (v11 == ++v16)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_21B63083C(uint64_t a1)
{
  v3 = sub_21B6C8A04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v24 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete);
  v10 = *(v9 + 16);

  v31 = v10;
  if (v10)
  {
    v12 = 0;
    v29 = (v4 + 32);
    v30 = v4 + 16;
    v25 = (v4 + 8);
    v13 = MEMORY[0x277D84F90];
    v27 = v3;
    v28 = a1;
    v26 = v9;
    while (v12 < *(v9 + 16))
    {
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      (*(v4 + 16))(v8, v9 + v14 + v15 * v12, v3);
      if (sub_21B6C89F4() > a1)
      {
        result = (*v25)(v8, v3);
      }

      else
      {
        v16 = *v29;
        (*v29)(v32, v8, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21B696408(0, *(v13 + 16) + 1, 1);
          v13 = v33;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21B696408((v18 > 1), v19 + 1, 1);
          v13 = v33;
        }

        *(v13 + 16) = v19 + 1;
        v3 = v27;
        result = (v16)(v13 + v14 + v19 * v15, v32, v27);
        a1 = v28;
        v9 = v26;
      }

      if (v31 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_13:

  v20 = *(v13 + 16);

  result = a1 + v20;
  if (__OFADD__(a1, v20))
  {
    goto LABEL_19;
  }

  v21 = *(v24 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgresses);
  if (*(v21 + 16) && (v22 = sub_21B695EF4(result), (v23 & 1) != 0))
  {
    return *(*(v21 + 56) + 8 * v22);
  }

  else
  {
    return 0;
  }
}

char *sub_21B630B1C(unint64_t a1)
{
  v5 = v1;
  v31 = sub_21B6C8A04();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v13 = sub_21B6C89F4();
  if (v13 + 0x4000000000000000 < 0)
  {
    goto LABEL_30;
  }

  v14 = v13;
  v15 = sub_21B6C89D4();
  v16 = __OFADD__(v15, 2 * v14);
  v2 = v15 + 2 * v14;
  if (v16)
  {
    goto LABEL_31;
  }

  v4 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
  swift_beginAccess();
  v17 = *&v4[v5];
  if (v17 >> 62)
  {
    goto LABEL_32;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  if (v2 < v18)
  {
    v3 = *&v4[v5];
    if ((v3 & 0xC000000000000001) == 0)
    {
      if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v3 + 8 * v2 + 32);
        goto LABEL_9;
      }

      __break(1u);
LABEL_36:
      v21 = sub_21B6C9454();
      goto LABEL_13;
    }

    while (1)
    {

      v25 = MEMORY[0x21CEF66E0](v2, v3);

      v19 = v25;
LABEL_9:
      v28 = v19;
      v2 = [v19 indexPath];
      sub_21B6C8994();

      if (sub_21B6C8984())
      {
        (*(v7 + 8))(v12, v31);
        return v28;
      }

      v5 = *&v4[v5];
      if (v5 >> 62)
      {
        goto LABEL_36;
      }

      v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

      if (!v21)
      {
        break;
      }

      v27 = v12;
      v3 = 0;
      v29 = a1;
      v30 = v5 & 0xC000000000000001;
      v12 = (v5 & 0xFFFFFFFFFFFFFF8);
      v22 = (v7 + 8);
      v26[1] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        if (v30)
        {
          v23 = MEMORY[0x21CEF66E0](v3, v5);
        }

        else
        {
          if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v23 = *(v5 + 8 * v3 + 32);
        }

        v4 = v23;
        a1 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v24 = [v23 indexPath];
        sub_21B6C8994();

        v7 = sub_21B6C8984();
        v2 = *v22;
        (*v22)(v9, v31);
        if (v7)
        {
          (v2)(v27, v31);

          return v4;
        }

        ++v3;
        if (a1 == v21)
        {
          (v2)(v27, v31);
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v18 = sub_21B6C9454();
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

    (*(v7 + 8))(v12, v31);
LABEL_25:
  }

  return 0;
}

unint64_t sub_21B630EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B6C89F4();
  if (sub_21B6C8DA4() == a1 && v7 == a2)
  {

    goto LABEL_13;
  }

  v9 = sub_21B6C96E4();

  if (v9)
  {
LABEL_13:
    v13 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes;
    swift_beginAccess();
    v14 = *(v3 + v13);
    if (v14 >> 62)
    {
      v15 = sub_21B6C9454();
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= v15)
    {
      return 0;
    }

    v13 = *(v3 + v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_30;
    }

    if (v6 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v13 + 8 * v6 + 32);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (sub_21B6C8DA4() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_21B6C96E4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  v17 = *(v3 + v13);
  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_22;
  }

LABEL_32:
  result = sub_21B6C9454();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

LABEL_22:
  if (v6 < result)
  {
    v13 = *(v3 + v13);
    if ((v13 & 0xC000000000000001) == 0)
    {
      if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return 0;
      }

      return *(v13 + 8 * v6 + 32);
    }

LABEL_30:

    v18 = MEMORY[0x21CEF66E0](v6, v13);

    return v18;
  }

  return 0;
}

unint64_t sub_21B6310C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B6C89F4();
  if ((a1 != 0xD000000000000017 || 0x800000021B6EEE10 != a2) && (sub_21B6C96E4() & 1) == 0)
  {
    return 0;
  }

  v7 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = sub_21B6C9454();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= result)
  {
    return 0;
  }

  v7 = *(v3 + v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v10 = MEMORY[0x21CEF66E0](v6, v7);

    return v10;
  }

  if (v6 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v7 + 8 * v6 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B631220(uint64_t a1)
{
  v2 = v1;
  v51 = sub_21B6C8A04();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45[0] = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v45 - v10;
  v12 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete];
  v13 = *(v12 + 16);
  if (v13)
  {
    v46 = a1;
    v47 = v2;
    v48 = v8;
    v49 = v4;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v50 = v15;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    v45[1] = v12;

    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = v51;
      v50(v11, v16, v51);
      v20 = sub_21B6C89F4();
      (*(v14 - 8))(v11, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_21B6A30A0(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_21B6A30A0((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      *&v18[8 * v22 + 32] = v20;
      v16 += v17;
      --v13;
    }

    while (v13);

    v8 = v48;
    v4 = v49;
    v2 = v47;
    a1 = v46;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v23 = sub_21B6C89F4();
  v24 = *(v18 + 2);
  v25 = 32;
  do
  {
    if (!v24)
    {

      v42 = sub_21B6C8974();
      v43 = type metadata accessor for PosterRackStackedLayout(0);
      v52.receiver = v2;
      v52.super_class = v43;
      a = COERCE_DOUBLE(objc_msgSendSuper2(&v52, sel_finalLayoutAttributesForDisappearingItemAtIndexPath_, v42));

      return *&a;
    }

    v26 = *&v18[v25];
    v25 += 8;
    --v24;
  }

  while (v26 != v23);

  (*(v4 + 16))(v8, a1, v51);
  sub_21B630624();
  v28 = v27;
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = sub_21B6C89B4();
  result = sub_21B6C89F4();
  if (!__OFSUB__(result, 1))
  {
    v31 = v45[0];
    MEMORY[0x21CEF5B40](v29, result - 1);
    v32 = v51;
    (*(v4 + 8))(v8, v51);
    (*(v4 + 32))(v8, v31, v32);
LABEL_16:
    v33 = sub_21B6C8974();
    v34 = [v2 layoutAttributesForItemAtIndexPath_];

    if (v34 && ([v34 copy], v34, sub_21B6C93E4(), swift_unknownObjectRelease(), sub_21B6335DC(), (swift_dynamicCast() & 1) != 0))
    {
      a = v53.a;
      if (v28)
      {
        v36 = sub_21B6C8974();
        v37 = [v2 layoutAttributesForItemAtIndexPath_];

        if (v37)
        {
          [v37 transform];
          [*&a setTransform_];
        }
      }

      v38 = [v2 collectionView];
      if (v38)
      {
        v39 = v38;
        [v38 bounds];
        v41 = v40;
      }

      else
      {
        v41 = 0.0;
      }

      [*&a transform];
      if (*&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode] == 2)
      {
        v44 = 0.882;
        if (v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack])
        {
          v44 = 0.847;
        }
      }

      else
      {
        v44 = 0.7;
      }

      CGAffineTransformTranslate(&v53, &v54, 0.0, -v41 / v44);
      v54 = v53;
      [*&a setTransform_];
      [*&a setZIndex_];
      (*(v4 + 8))(v8, v51);
    }

    else
    {
      (*(v4 + 8))(v8, v51);
      a = 0.0;
    }

    return *&a;
  }

  __break(1u);
  return result;
}

id sub_21B6317CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

char *sub_21B6318D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = sub_21B6C8A04();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = *&v4[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete];
  v17 = *(v16 + 16);
  if (v17)
  {
    v45 = a3;
    v46 = a1;
    v47 = a2;
    v48 = v4;
    v49 = v12;
    v50 = v8;
    v51 = *(v8 + 16);
    v18 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    v20 = (v8 + 8);
    v44 = v16;

    v21 = MEMORY[0x277D84F90];
    do
    {
      v22 = v52;
      v51(v15, v18, v52);
      v23 = sub_21B6C89F4();
      (*v20)(v15, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_21B6A30A0(0, *(v21 + 2) + 1, 1, v21);
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v21 = sub_21B6A30A0((v24 > 1), v25 + 1, 1, v21);
      }

      *(v21 + 2) = v25 + 1;
      *&v21[8 * v25 + 32] = v23;
      v18 += v19;
      --v17;
    }

    while (v17);

    v12 = v49;
    v8 = v50;
    v4 = v48;
    a3 = v45;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v26 = sub_21B6C89F4();
  v27 = *(v21 + 2);
  v28 = 32;
  do
  {
    if (!v27)
    {

      v39 = sub_21B6C8D74();
      v40 = sub_21B6C8974();
      v41 = type metadata accessor for PosterRackStackedLayout(0);
      v53.receiver = v4;
      v53.super_class = v41;
      v38 = objc_msgSendSuper2(&v53, sel_finalLayoutAttributesForDisappearingSupplementaryElementOfKind_atIndexPath_, v39, v40);

      return v38;
    }

    v29 = *&v21[v28];
    v28 += 8;
    --v27;
  }

  while (v29 != v26);

  (*(v8 + 16))(v12, a3, v52);
  sub_21B630624();
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

  v31 = sub_21B6C89B4();
  result = sub_21B6C89F4();
  if (!__OFSUB__(result, 1))
  {
    v33 = v43;
    MEMORY[0x21CEF5B40](v31, result - 1);
    v34 = v52;
    (*(v8 + 8))(v12, v52);
    (*(v8 + 32))(v12, v33, v34);
LABEL_16:
    v35 = sub_21B6C8D74();
    v36 = sub_21B6C8974();
    v37 = [v4 layoutAttributesForSupplementaryViewOfKind:v35 atIndexPath:v36];

    if (v37 && ([v37 copy], v37, sub_21B6C93E4(), swift_unknownObjectRelease(), sub_21B6335DC(), (swift_dynamicCast() & 1) != 0))
    {
      v38 = v54;
      [v54 setAlpha_];
      [v38 setZIndex_];
      (*(v8 + 8))(v12, v52);
    }

    else
    {
      (*(v8 + 8))(v12, v52);
      return 0;
    }

    return v38;
  }

  __break(1u);
  return result;
}

id sub_21B631D58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B6C8DA4();
  v13 = v12;
  sub_21B6C8994();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

id sub_21B631E8C(uint64_t a1)
{
  sub_21B6C8A04();

  v1 = sub_21B6C8E74();

  return v1;
}

void (**sub_21B631EF0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4))(char *, uint64_t)
{
  v98 = sub_21B6C8A04();
  v12 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v89 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - v18;
  v99 = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
  swift_beginAccess();
  v97 = v5;
  v21 = *(v5 + v20);
  if (v21 >> 62)
  {
    v22 = sub_21B6C9454();
    if (v22 < 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v22)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v97;
  v23 = sub_21B633078(0, v22 - 1, a1, a2, a3, a4);
  if (v24)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = v23;
  if (v23 < 0)
  {
    goto LABEL_47;
  }

  v5 = *&v97[v20];
  v4 = v5 >> 62;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v23)
    {
      goto LABEL_9;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v50 = sub_21B6C9454();
    v6 = v91;
    v14 = v93;
    if (v50 < v91)
    {
      goto LABEL_58;
    }

    v19 = v50;
    if (sub_21B6C9454() < v6)
    {
      goto LABEL_59;
    }

    if (sub_21B6C9454() >= v19)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_48:
  if (sub_21B6C9454() < 0)
  {
    goto LABEL_57;
  }

  if (sub_21B6C9454() < v7)
  {
    goto LABEL_50;
  }

LABEL_9:
  v94 = v20;
  v26 = (v5 & 0xC000000000000001) == 0 || v7 == 0;
  if (v26)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_21B6335DC();
    swift_bridgeObjectRetain_n();
    v27 = 0;
    do
    {
      v28 = v27 + 1;
      sub_21B6C9534();
      v27 = v28;
    }

    while (v7 != v28);
  }

  v93 = v14;

  v91 = v7;
  if (v4)
  {
    v90 = sub_21B6C9604();
    v30 = v32;
    v29 = v33;
    v35 = v34;

    v31 = v35 >> 1;
  }

  else
  {
    v29 = 0;
    v90 = v5 & 0xFFFFFFFFFFFFFF8;
    v30 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v31 = v7;
  }

  v92 = v12;
  if (v31 != v29)
  {
    v36 = (v12 + 8);
    v96 = MEMORY[0x277D84F90];
    v37 = v31;
    while (!__OFSUB__(v37--, 1))
    {
      if (v37 < v29 || v37 >= v31)
      {
        goto LABEL_43;
      }

      v39 = *(v30 + 8 * v37);
      [v39 frame];
      MaxX = CGRectGetMaxX(v100);
      v101.origin.x = a1;
      v101.origin.y = a2;
      v101.size.width = a3;
      v101.size.height = a4;
      if (CGRectGetMinX(v101) > MaxX)
      {

        goto LABEL_34;
      }

      v41 = [v39 indexPath];
      sub_21B6C8994();

      v42 = [v97 collectionView];
      if (v42)
      {
        v43 = v42;
        v44 = sub_21B6C89D4();
        v45 = [v43 numberOfItemsInSection_];

        (*v36)(v19, v98);
        if (v44 < v45)
        {
          v46 = v39;
          MEMORY[0x21CEF6000]();
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21B6C8E94();
          }

          sub_21B6C8EA4();

          v96 = v99;
        }

        else
        {
        }
      }

      else
      {

        (*v36)(v19, v98);
      }

      if (v37 == v29)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  v96 = MEMORY[0x277D84F90];
LABEL_34:
  swift_unknownObjectRelease();
  v5 = *&v97[v94];
  v4 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v91;
  v14 = v93;
  v47 = v92;
  if (v19 < v91)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    while (v6 != v19)
    {
      if (v6 < v19)
      {
        sub_21B6335DC();
        swift_bridgeObjectRetain_n();
        v48 = v6;
        do
        {
          v49 = (v48 + 1);
          sub_21B6C9534();
          v48 = v49;
        }

        while (v19 != v49);
        goto LABEL_62;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v47 = v92;
      if ((v5 & 0xC000000000000001) == 0)
      {
        break;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_62:

  if (v4)
  {
    v52 = sub_21B6C9604();
    v94 = v53;
    v6 = v54;
    v56 = v55;

    v51 = v52;
    v19 = (v56 >> 1);
  }

  else
  {
    v51 = v5 & 0xFFFFFFFFFFFFFF8;
    v94 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v91 = v51;
  swift_unknownObjectRetain();
  v57 = v95;
  if (v6 != v19)
  {
    v58 = (v47 + 8);
    v90 = (v19 - 1);
    v59 = v6;
    while (1)
    {
      v14 = v59;
      while (1)
      {
        if (v59 < v6 || v14 >= v19)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        v60 = *(v94 + 8 * v14);
        [v60 frame];
        MinX = CGRectGetMinX(v102);
        v103.origin.x = a1;
        v103.origin.y = a2;
        v103.size.width = a3;
        v103.size.height = a4;
        if (MinX > CGRectGetMaxX(v103))
        {

LABEL_82:
          v14 = v93;
          goto LABEL_83;
        }

        v62 = [v60 indexPath];
        sub_21B6C8994();

        v63 = [v97 collectionView];
        if (v63)
        {
          break;
        }

        (*v58)(v57, v98);
LABEL_69:
        if (v19 == ++v14)
        {
          goto LABEL_82;
        }
      }

      v64 = v63;
      v65 = sub_21B6C89D4();
      v66 = [v64 numberOfItemsInSection_];

      (*v58)(v57, v98);
      if (v65 >= v66)
      {
        break;
      }

      v67 = v60;
      MEMORY[0x21CEF6000]();
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      v59 = (v14 + 1);
      sub_21B6C8EA4();

      v96 = v99;
      v26 = v90 == v14;
      v14 = v93;
      v57 = v95;
      if (v26)
      {
        goto LABEL_83;
      }
    }

    v57 = v95;
    goto LABEL_69;
  }

LABEL_83:
  swift_unknownObjectRelease_n();
  v58 = v96;
  if (v96 >> 62)
  {
LABEL_124:
    v95 = (v58 & 0xFFFFFFFFFFFFFF8);
    v68 = sub_21B6C9454();
  }

  else
  {
    v95 = (v96 & 0xFFFFFFFFFFFFFF8);
    v68 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes;
  v70 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes;
  v71 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes;

  v93 = v69;
  swift_beginAccess();
  v91 = v70;
  swift_beginAccess();
  v90 = v71;
  swift_beginAccess();
  v25 = v58;
  if (!v68)
  {
LABEL_119:

    return v25;
  }

  v72 = 0;
  v94 = v58 & 0xC000000000000001;
  v73 = (v92 + 8);
  v25 = v58;
  while (1)
  {
    v74 = v72;
    while (1)
    {
      if (v94)
      {
        v75 = MEMORY[0x21CEF66E0](v74, v58);
      }

      else
      {
        if (v74 >= *(v95 + 2))
        {
          goto LABEL_122;
        }

        v75 = v58[v74 + 4];
      }

      v76 = v75;
      v72 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v77 = [v75 indexPath];
      sub_21B6C8994();

      v78 = sub_21B6C89D4();
      v79 = *v73;
      (*v73)(v14, v98);
      if (!v78)
      {
        break;
      }

      ++v74;
      v58 = v96;
      if (v72 == v68)
      {
        goto LABEL_119;
      }
    }

    v80 = [v76 indexPath];
    sub_21B6C8994();

    v81 = sub_21B6C89F4();
    result = (v79)(v14, v98);
    v83 = *&v97[v93];
    if ((v83 & 0xC000000000000001) != 0)
    {

      MEMORY[0x21CEF66E0](v81, v83);

      v58 = v96;
      goto LABEL_100;
    }

    v58 = v96;
    if ((v81 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v81 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_126;
    }

    v84 = *(v83 + 8 * v81 + 32);
LABEL_100:
    MEMORY[0x21CEF6000](v84);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    result = sub_21B6C8EA4();
    v85 = *&v97[v91];
    if ((v85 & 0xC000000000000001) != 0)
    {

      MEMORY[0x21CEF66E0](v81, v85);
    }

    else
    {
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_127;
      }

      if (v81 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

      v86 = *(v85 + 8 * v81 + 32);
    }

    MEMORY[0x21CEF6000](v86);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    result = sub_21B6C8EA4();
    v87 = *&v97[v90];
    if ((v87 & 0xC000000000000001) != 0)
    {

      MEMORY[0x21CEF66E0](v81, v87);
    }

    else
    {
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      if (v81 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_130;
      }

      v88 = *(v87 + 8 * v81 + 32);
    }

    MEMORY[0x21CEF6000](v88);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();

    v25 = v99;
    if (v72 == v68)
    {
      goto LABEL_119;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}