uint64_t type metadata accessor for AccountState(uint64_t a1)
{
  result = qword_1EE2FDAD0;
  if (!qword_1EE2FDAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5A7AA4C(uint64_t a1)
{
  result = sub_1E5ACEE98();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5A7AB04(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1E5ACEE48();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5A7ABB8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_layout];
  *v10 = xmmword_1E5AD5100;
  v10[1] = xmmword_1E5AD5110;
  v10[2] = xmmword_1E5AD5120;
  v10[3] = xmmword_1E5AD5130;
  v11 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = &v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delta];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_initialYContentOffsets;
  *&v4[v15] = sub_1E5A7C3E8(MEMORY[0x1E69E7CC0]);
  v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isBouncing] = 0;
  v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen] = 0;
  *&v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_pendingScrollView] = 0;
  swift_unknownObjectWeakInit();
  sub_1E5ACEF38();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
  v18 = MEMORY[0x1E699DB90];
  *v17 = v16;
  v17[1] = v18;
  v53.receiver = v4;
  v53.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v53, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setClipsToBounds_];
  v20 = OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel;
  [*&v19[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_titleLabel] setAutoresizingMask_];
  v21 = *MEMORY[0x1E69DD9C8];
  v22 = *&v19[v20];
  v23 = [v22 accessibilityTraits];
  if ((v21 & ~v23) != 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  [v22 setAccessibilityTraits_];

  v25 = objc_opt_self();
  v26 = *MEMORY[0x1E69DDD58];
  v27 = *MEMORY[0x1E69DB958];
  v28 = *MEMORY[0x1E69DDC70];
  v29 = *MEMORY[0x1E69DB8C8];
  v30 = [v19 traitCollection];
  v31 = [v25 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

  if (v31)
  {
    v32 = [v31 fontDescriptor];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027448, &qword_1E5AD51E0);
    inited = swift_initStackObject();
    v34 = *MEMORY[0x1E69DB8B0];
    *(inited + 32) = *MEMORY[0x1E69DB8B0];
    v35 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_1E5AD3200;
    *(inited + 64) = v35;
    *(inited + 40) = 1819308129;
    *(inited + 48) = 0xE400000000000000;
    v36 = v34;
    sub_1E5A7B2AC(inited);
    swift_setDeallocating();
    sub_1E5AAE570(inited + 32);
    type metadata accessor for AttributeName(0);
    sub_1E5AAE5D8(&qword_1EE2FC9B8, 255, type metadata accessor for AttributeName, &unk_1E5AD1884);
    v37 = sub_1E5ACFAE8();

    v38 = [v32 fontDescriptorByAddingAttributes_];

    v39 = *&v19[v20];
    v40 = [v25 fontWithDescriptor:v38 size:0.0];
    [v39 setFont_];

    v41 = *&v19[v20];
    v42 = objc_opt_self();
    v43 = v41;
    v44 = [v42 labelColor];
    [v43 setTextColor_];

    v45 = *&v19[v20];
    v46 = sub_1E5ACFBA8();
    [v45 setText_];

    [v19 addSubview_];
    v47 = &v19[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar];
    [*&v19[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar] setAutoresizingMask_];
    v48 = *v47;
    swift_getObjectType();
    sub_1E5AAE5D8(qword_1EE2FD3B0, v49, type metadata accessor for FloatingTitleView, &unk_1E5AD5190);
    v50 = v19;
    v51 = v48;
    sub_1E5ACEFF8();

    [v50 addSubview_];
    [v50 setDirectionalLayoutMargins_];
    v52 = *v47;
    [v50 directionalLayoutMargins];
    [v52 setDirectionalLayoutMargins_];

    [v50 setHideStandardTitle_];
    [v50 setHideBackButton_];
    [v50 setHideLeadingBarButtons_];
    [v50 setHideCenterBarButtons_];
    [v50 setHideTrailingBarButtons_];

    sub_1E5AABFF0();
    [v50 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E5A7B260(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1E5A7B2AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027458, &unk_1E5AD51F0);
    v3 = sub_1E5AD01A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5A9B464(v4, &v11, &qword_1ED027450, &qword_1E5AD51E8);
      v5 = v11;
      result = sub_1E5AAD61C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1E5AAE620(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t _s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5ACEE98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountState(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026760, &qword_1E5AD1E10);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - v16;
  v18 = (&v27 + *(v15 + 56) - v16);
  sub_1E5A7B73C(a1, &v27 - v16);
  sub_1E5A7B73C(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E5A7B73C(v17, v13);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v7, v18, v4);
      v24 = sub_1E5ACEE78();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v13, v4);
      sub_1E5A7B6E0(v17);
      return v24 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_19;
    }

LABEL_15:
    sub_1E5A82B80(v17);
    goto LABEL_16;
  }

  sub_1E5A7B73C(v17, v11);
  v21 = *v11;
  v20 = v11[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_15;
  }

  if (v21 == *v18 && v20 == v18[1])
  {

    goto LABEL_19;
  }

  v23 = sub_1E5AD0348();

  if (v23)
  {
LABEL_19:
    sub_1E5A7B6E0(v17);
    v24 = 1;
    return v24 & 1;
  }

  sub_1E5A7B6E0(v17);
LABEL_16:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1E5A7B6E0(uint64_t a1)
{
  v2 = type metadata accessor for AccountState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5A7B73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A7B7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SidebarModalitiesFeature(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_1E5ACFA78();
  swift_getWitnessTable();
  result = sub_1E5ACF108();
  if (v5 <= 0x3F)
  {
    sub_1E5ACFFD8();
    swift_getWitnessTable();
    result = sub_1E5ACF0D8();
    if (v6 <= 0x3F)
    {
      result = sub_1E5A7B960();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E5A7B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1E5A7B960()
{
  result = qword_1EE2FC990;
  if (!qword_1EE2FC990)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2FC990);
  }

  return result;
}

void sub_1E5A7B9D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SidebarFeature(255, a1[2], a1[6], a4);
  swift_getWitnessTable();
  sub_1E5ACFA78();
  swift_getWitnessTable();
  sub_1E5ACF108();
  if (v4 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          sub_1E5ACFFD8();
          swift_getWitnessTable();
          sub_1E5ACF0D8();
          if (v8 <= 0x3F)
          {
            sub_1E5A7BBB0();
            if (v9 <= 0x3F)
            {
              sub_1E5A7BC08();
              if (v10 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E5A7BBB0()
{
  if (!qword_1EE2FCA70)
  {
    v0 = sub_1E5ACF0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FCA70);
    }
  }
}

void sub_1E5A7BC08()
{
  if (!qword_1EE2FCA50)
  {
    v0 = sub_1E5ACF7B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FCA50);
    }
  }
}

uint64_t sub_1E5A7BC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for NetworkUnavailableView(uint64_t a1)
{
  result = qword_1EE2FCF68;
  if (!qword_1EE2FCF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5A7BD18(uint64_t a1)
{
  result = sub_1E5ACEEE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E5A7BD9C(uint64_t a1)
{
  sub_1E5A7BE40(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5A7BE40(uint64_t a1)
{
  if (!qword_1EE2FCA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027950, qword_1E5AD6E50);
    sub_1E5A8CEF0(&qword_1EE2FCA10, &qword_1ED027950, qword_1E5AD6E50, MEMORY[0x1E6999B78]);
    v1 = sub_1E5ACF108();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2FCA60);
    }
  }
}

uint64_t type metadata accessor for DynamicContentFeature(uint64_t a1)
{
  result = qword_1EE2FD0A0;
  if (!qword_1EE2FD0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5A7BF30(uint64_t a1)
{
  result = sub_1E5ACEEC8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5A7BFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1E5A7C010(uint64_t a1)
{
  sub_1E5ACFB98();
  if (v1 <= 0x3F)
  {
    sub_1E5A7C0BC();
    if (v2 <= 0x3F)
    {
      sub_1E5A7C10C(319, &qword_1EE2FC998, 0x1E696AAE8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5A7C0BC()
{
  if (!qword_1EE2FCA00)
  {
    v0 = sub_1E5ACFFD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FCA00);
    }
  }
}

uint64_t sub_1E5A7C10C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t DynamicContentContainerViewController.TabItem.init(titleLocalizationKey:systemImageName:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1E5ACFB98();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for DynamicContentContainerViewController.TabItem(0, a5, a6, v15);
  v17 = (a7 + *(result + 36));
  *v17 = a2;
  v17[1] = a3;
  *(a7 + *(result + 40)) = a4;
  return result;
}

uint64_t sub_1E5A7C238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5ACFB98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E5A7C3E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027440, &qword_1E5AD51D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027430, &qword_1E5AD51C8);
    v7 = sub_1E5AD01A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5A9B464(v9, v5, &qword_1ED027440, &qword_1E5AD51D8);
      result = sub_1E5AAD57C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E5ACEF78();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t Array<A>.indexOf(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E5ACFFD8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v11, a3);
    v16[1] = a2;
    sub_1E5ACFD08();
    swift_getWitnessTable();
    sub_1E5ACFED8();
    (*(v12 + 8))(v14, a3);
    return v16[2];
  }
}

uint64_t TabBarItemDescriptor.init(isHidden:item:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for TabBarItemDescriptor(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = &a5[*(v8 + 36)];

  return v9(v10, a2, a3);
}

uint64_t TabBarState.init(descriptors:selectedIndex:locale:upNextCount:shouldScrollToOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v13 = type metadata accessor for TabBarState(0, a6, a7, a4);
  *&a8[v13[10]] = a2;
  v14 = v13[12];
  v15 = sub_1E5ACEEE8();
  (*(*(v15 - 8) + 32))(&a8[v14], a3, v15);
  result = sub_1E5A7C974(a4, &a8[v13[9]]);
  a8[v13[11]] = a5;
  return result;
}

uint64_t sub_1E5A7C974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TabBarState.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TabBarItemDescriptor(0, a3, a4, a4);
  swift_getWitnessTable();
  if (sub_1E5ACFD28())
  {
    v9 = type metadata accessor for TabBarState(0, a3, a4, v8);
    if ((sub_1E5ACF9E8() & 1) != 0 && *(a1 + *(v9 + 40)) == *(a2 + *(v9 + 40)) && *(a1 + *(v9 + 44)) == *(a2 + *(v9 + 44)))
    {

      JUMPOUT(0x1E69335A0);
    }
  }

  return 0;
}

uint64_t static TabBarItemDescriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for TabBarItemDescriptor(0, a3, a4, a4);
  return sub_1E5ACFB78() & 1;
}

uint64_t type metadata accessor for DynamicContentState(uint64_t a1)
{
  result = qword_1EE2FD290;
  if (!qword_1EE2FD290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5A7CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x1E69335A0]() & 1) == 0)
  {
    return 0;
  }

  sub_1E5A86814();

  return sub_1E5ACF9E8();
}

uint64_t sub_1E5A7CCF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5ACFBD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5A7CD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5ACEEE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E5A7CE7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5ACEEE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E5A7CF84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TabBarFeature(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

void *sub_1E5A7CFCC@<X0>(void *a2@<X8>)
{
  result = sub_1E5ACFA48();
  *a2 = v4;
  return result;
}

uint64_t sub_1E5A7D020(uint64_t *a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 1);
}

__n128 sub_1E5A7D07C(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_1E5A7D090()
{
  MEMORY[0x1E6935220](v0 + 16);

  return swift_deallocObject();
}

void *sub_1E5A7D0C8@<X0>(void *a2@<X8>)
{
  result = sub_1E5ACFA48();
  *a2 = v4;
  return result;
}

uint64_t sub_1E5A7D11C()
{

  return swift_deallocObject();
}

void *sub_1E5A7D154@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5ACFA48();
  *a2 = v4;
  return result;
}

uint64_t sub_1E5A7D210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5ACEEE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5A7D27C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5ACEEE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5A7D36C(uint64_t *a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 1);
}

__n128 sub_1E5A7D38C(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_1E5A7D3A0()
{
  MEMORY[0x1E6935220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5A7D3F0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7D454()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7D4C0()
{
  v1 = *(type metadata accessor for DynamicContentFeature(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_1E5ACEEC8();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E5A7D5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5ACEEC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5A7D66C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5ACEEC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5A7D73C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeadlessFeatureViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1E5ACF358();
  sub_1E5ACF1E8();
  sub_1E5ACF1E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5A7D838()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7D878()
{
  sub_1E5A9B68C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E5A7D8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026EF8, &qword_1E5AD3D78);
  sub_1E5A9B6C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5A7D934(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeadlessFeatureViewModifier(255, a1[1], a1[3], a4);
  sub_1E5ACF1E8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5A7D9C8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7DA18(uint64_t *a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 1);
}

__n128 sub_1E5A7DA38(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_1E5A7DA4C()
{
  MEMORY[0x1E6935220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5A7DA9C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7DB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1E5AA35A4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E5A7DB44()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7DB7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027310, &qword_1E5AD4F48);
  type metadata accessor for SidebarModality(255, v1, v2, v3);
  sub_1E5ACFD08();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027300, &qword_1E5AD4F40);
  sub_1E5ACFFD8();
  sub_1E5A8CEF0(&qword_1ED027308, &qword_1ED027300, &qword_1E5AD4F40, MEMORY[0x1E697D680]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_1E5ACF868();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5ACF888();
  sub_1E5ACF318();
  sub_1E5AAA3E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5A7DEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SidebarModalitiesView(0, v5, v6, a4);
  v21 = *(*(v7 - 8) + 80);
  v19 = *(*(v7 - 8) + 64);
  v22 = type metadata accessor for SidebarModality(0, v5, v6, v8);
  v9 = *(*(v22 - 8) + 80);
  v20 = (v21 + 32) & ~v21;
  sub_1E5A9A6F8(*(v4 + v20), *(v4 + v20 + 8));
  v10 = v4 + v20 + *(v7 + 36);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (!v12(v10, 1, v5))
  {
    (*(v11 + 8))(v10, v5);
  }

  sub_1E5ACFFD8();
  swift_getWitnessTable();
  v13 = sub_1E5ACF0D8();

  v14 = *(v13 + 40);
  if (!v12(v10 + v14, 1, v5))
  {
    (*(v11 + 8))(v10 + v14, v5);
  }

  v15 = (v20 + v19 + v9) & ~v9;

  (*(v11 + 8))(v4 + v15, v5);
  v16 = *(v22 + 40);
  v17 = sub_1E5ACEE48();
  (*(*(v17 - 8) + 8))(v4 + v15 + v16, v17);
  return swift_deallocObject();
}

__n128 sub_1E5A7E1BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E5A7E1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5ACFB98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5A7E32C()
{
  MEMORY[0x1E6935220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5A7E3E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7E430()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7E468(uint64_t *a1)
{
  sub_1E5ACFD08();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027808, ",=");
  sub_1E5ACFFD8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027810, "J=");
  sub_1E5A8CEF0(&qword_1ED027818, &qword_1ED027810, "J=", MEMORY[0x1E697D680]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5ACF1E8();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E5ACF868();
  swift_getTupleTypeMetadata2();
  sub_1E5ACF8E8();
  swift_getWitnessTable();
  sub_1E5ACF818();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5ACF138();
  sub_1E5ACFFD8();
  swift_getWitnessTable();
  sub_1E5ACF818();
  swift_getWitnessTable();
  sub_1E5ACF138();
  swift_getTupleTypeMetadata2();
  sub_1E5ACF2D8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5A7E9A0()
{
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v17[0] = *(v0 + 16);
  v1 = v17[0];
  v17[1] = v2;
  v17[2] = v4;
  v17[3] = v3;
  v5 = *(v0 + 64);
  v18 = *(v0 + 48);
  v19 = v5;
  v6 = type metadata accessor for SidebarView(0, v17);
  v15 = *(*(v6 - 1) + 64);
  v16 = *(*(v6 - 1) + 80);
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = (v0 + ((v16 + 80) & ~v16));
  sub_1E5A9A6F8(*v9, v9[1]);
  (*(*(v2 - 8) + 8))(v9 + v6[21], v2);
  (*(*(v4 - 8) + 8))(v9 + v6[22], v4);
  (*(*(v3 - 8) + 8))(v9 + v6[23], v3);
  v10 = v9 + v6[24];
  v11 = *(v7 + 48);
  if (!v11(v10, 1, v1))
  {
    (*(v7 + 8))(v10, v1);
  }

  sub_1E5ACFFD8();
  swift_getWitnessTable();
  v12 = sub_1E5ACF0D8();

  v13 = *(v12 + 40);
  if (!v11(&v10[v13], 1, v1))
  {
    (*(v7 + 8))(&v10[v13], v1);
  }

  (*(v7 + 8))(v0 + ((((v16 + 80) & ~v16) + v15 + v8) & ~v8), v1);
  return swift_deallocObject();
}

uint64_t sub_1E5A7ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccountState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1E5ACEEE8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E5A7EDDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccountState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_1E5ACEEE8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E5A7EEFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5ACF238();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5A7EF30()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7EF70()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5A7F05C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7F094()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for DynamicContentContainerView(0, &v7) - 8);
  v4 = (v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80)));
  sub_1E5A9A6F8(*v4, v4[1]);
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1);
  (*(*(v6 - 8) + 8))(v4 + v3[16]);
  return swift_deallocObject();
}

uint64_t sub_1E5A7F1D4(uint64_t *a1)
{
  sub_1E5ACF318();
  sub_1E5ACF318();
  sub_1E5ACF318();
  sub_1E5ACF718();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED027520, &qword_1E5AD24C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A8CEF0(&qword_1EE2FCA38, &unk_1ED027520, &qword_1E5AD24C0, MEMORY[0x1E6999B28]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5A7F374()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5A7F438()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7F478(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E5ACEEE8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E5A7F5A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E5ACEEE8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E5A7F6D8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7F710(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B28, &qword_1E5AD7890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  sub_1E5ACF318();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
  sub_1E5ACF318();
  sub_1E5A8CEF0(&qword_1ED027B40, &qword_1ED027B28, &qword_1E5AD7890, MEMORY[0x1E6981870]);
  sub_1E5AC5590();
  swift_getWitnessTable();
  sub_1E5AC5648();
  swift_getWitnessTable();
  sub_1E5ACF778();
  swift_getWitnessTable();
  sub_1E5ACF7D8();
  swift_getWitnessTable();
  sub_1E5AC57F4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5ACF1E8();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1E5A7FA4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B38, &qword_1E5AD78A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5A7FAB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5ACF218();
  *a1 = result;
  return result;
}

uint64_t sub_1E5A7FB1C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5A7FBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5ACEEE8();
  v8 = *(v6 - 8);
  if (*(v8 + 84) != a2)
  {
    type metadata accessor for SidebarModality(255, *(a3 + 16), *(a3 + 24), v7);
    sub_1E5ACFD08();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v11 = sub_1E5ACF958();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v12 = v11;
      v13 = *(v11 - 8);
      v14 = *(a3 + 36);
    }

    else
    {
      v15 = sub_1E5ACFFD8();
      if (*(*(v15 - 8) + 84) != a2)
      {
        v16 = *(a1 + *(a3 + 44));
        v17 = v16 >= 2;
        v18 = (v16 + 2147483646) & 0x7FFFFFFF;
        if (v17)
        {
          return (v18 + 1);
        }

        else
        {
          return 0;
        }
      }

      v12 = v15;
      v13 = *(v15 - 8);
      v14 = *(a3 + 40);
    }

    return (*(v13 + 48))(a1 + v14, a2, v12);
  }

  v9 = *(v8 + 48);

  return v9(a1, a2, v6);
}

uint64_t sub_1E5A7FDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5ACEEE8();
  v10 = *(v8 - 8);
  if (*(v10 + 84) != a3)
  {
    type metadata accessor for SidebarModality(255, *(a4 + 16), *(a4 + 24), v9);
    sub_1E5ACFD08();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v13 = sub_1E5ACF958();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v14 = v13;
      v15 = *(v13 - 8);
      v16 = *(a4 + 36);
    }

    else
    {
      result = sub_1E5ACFFD8();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + *(a4 + 44)) = a2 + 1;
        return result;
      }

      v14 = result;
      v15 = *(result - 8);
      v16 = *(a4 + 40);
    }

    return (*(v15 + 56))(a1 + v16, a2, a2, v14);
  }

  v11 = *(v10 + 56);

  return v11(a1, a2, a2, v8);
}

uint64_t sub_1E5A7FFC0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E5A8015C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5A8017C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1E5A801C0(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1E69344A0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1E5A80214(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1E69344B0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_1E5A80294(uint64_t a1, id *a2)
{
  result = sub_1E5ACFBB8();
  *a2 = 0;
  return result;
}

uint64_t sub_1E5A8030C(uint64_t a1, id *a2)
{
  v3 = sub_1E5ACFBC8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E5A8038C@<X0>(uint64_t *a2@<X8>)
{
  sub_1E5ACFBD8();
  v3 = sub_1E5ACFBA8();

  *a2 = v3;
  return result;
}

uint64_t sub_1E5A803D0()
{
  v0 = sub_1E5ACFBD8();
  v1 = MEMORY[0x1E69342F0](v0);

  return v1;
}

uint64_t sub_1E5A8040C(uint64_t a1)
{
  sub_1E5ACFBD8();
  sub_1E5ACFBF8();
}

uint64_t sub_1E5A80460(uint64_t a1)
{
  sub_1E5ACFBD8();
  sub_1E5AD0378();
  sub_1E5ACFBF8();
  v1 = sub_1E5AD03C8();

  return v1;
}

uint64_t sub_1E5A804D4(void *a1, uint64_t *a2)
{
  v2 = sub_1E5ACFBD8();
  v4 = v3;
  if (v2 == sub_1E5ACFBD8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E5AD0348();
  }

  return v7 & 1;
}

_DWORD *sub_1E5A8055C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_1E5A8056C@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1E5A80578(uint64_t a1)
{
  sub_1E5A8098C(&qword_1ED0265E8, type metadata accessor for UILayoutPriority, &unk_1E5AD17B0);
  sub_1E5A8098C(&qword_1ED0265F0, type metadata accessor for UILayoutPriority, &unk_1E5AD1750);
  return sub_1E5AD0208();
}

uint64_t sub_1E5A80634(uint64_t a1)
{
  sub_1E5A8098C(&qword_1ED0265F8, type metadata accessor for Key, &unk_1E5AD1840);
  sub_1E5A8098C(&unk_1ED026600, type metadata accessor for Key, &unk_1E5AD163C);

  return sub_1E5AD0208();
}

uint64_t sub_1E5A806F0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1E5ACFBA8();

  *a2 = v3;
  return result;
}

uint64_t sub_1E5A80738(uint64_t a1)
{
  sub_1E5A8098C(&qword_1EE2FC9B8, type metadata accessor for AttributeName, &unk_1E5AD1884);
  sub_1E5A8098C(&unk_1ED026610, type metadata accessor for AttributeName, &unk_1E5AD151C);

  return sub_1E5AD0208();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5A8089C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5A808BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1E5A8098C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5A80BF4()
{
  v1 = *v0;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A80C3C(uint64_t a1)
{
  v2 = *v1;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A80C80()
{
  v1 = 0x656E676953746F6ELL;
  if (*v0 == 1)
  {
    v1 = 0x6E4964656E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4964656E676973;
  }
}

uint64_t sub_1E5A80CE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A82358(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A80D20(uint64_t a1)
{
  v2 = sub_1E5A81618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A80D5C(uint64_t a1)
{
  v2 = sub_1E5A81618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A80DA4(uint64_t a1)
{
  v2 = sub_1E5A8166C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A80DE0(uint64_t a1)
{
  v2 = sub_1E5A8166C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A80E30(uint64_t a1)
{
  v2 = sub_1E5A816C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A80E6C(uint64_t a1)
{
  v2 = sub_1E5A816C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A80EA8()
{
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](0);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A80EEC(uint64_t a1)
{
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](0);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A80F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5AD0348();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5A80FAC(uint64_t a1)
{
  v2 = sub_1E5A81714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A80FE8(uint64_t a1)
{
  v2 = sub_1E5A81714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026680, &qword_1E5AD18D0);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026688, &qword_1E5AD18D8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v26 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026690, &qword_1E5AD18E0);
  v27 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v26 - v5;
  v7 = sub_1E5ACEE98();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccountState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026698, &qword_1E5AD18E8);
  v13 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v26 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A81618();
  sub_1E5AD03E8();
  sub_1E5A7B73C(v37, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = 1;
      sub_1E5A816C0();
      v17 = v28;
      v18 = v38;
      sub_1E5AD02B8();
      v19 = v32;
      sub_1E5AD02D8();

      (*(v30 + 8))(v17, v19);
      return (*(v13 + 8))(v15, v18);
    }

    else
    {
      v41 = 2;
      sub_1E5A8166C();
      v24 = v29;
      v25 = v38;
      sub_1E5AD02B8();
      (*(v33 + 8))(v24, v34);
      return (*(v13 + 8))(v15, v25);
    }
  }

  else
  {
    v21 = v27;
    (*(v35 + 32))(v9, v12, v36);
    v39 = 0;
    sub_1E5A81714();
    v22 = v38;
    sub_1E5AD02B8();
    sub_1E5A824C4(&qword_1ED0266C0, MEMORY[0x1E6968A70], MEMORY[0x1E6968A78]);
    v23 = v31;
    sub_1E5AD0308();
    (*(v21 + 8))(v6, v23);
    (*(v35 + 8))(v9, v36);
    return (*(v13 + 8))(v15, v22);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5A81618()
{
  result = qword_1ED0266A0;
  if (!qword_1ED0266A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0266A0);
  }

  return result;
}

unint64_t sub_1E5A8166C()
{
  result = qword_1ED0266A8;
  if (!qword_1ED0266A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0266A8);
  }

  return result;
}

unint64_t sub_1E5A816C0()
{
  result = qword_1ED0266B0;
  if (!qword_1ED0266B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0266B0);
  }

  return result;
}

unint64_t sub_1E5A81714()
{
  result = qword_1ED0266B8;
  if (!qword_1ED0266B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0266B8);
  }

  return result;
}

uint64_t AccountState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266C8, &qword_1E5AD18F0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v45 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266D0, &qword_1E5AD18F8);
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v55 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266D8, &qword_1E5AD1900);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E0, &qword_1E5AD1908);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for AccountState(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v20 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5A81618();
  v21 = v59;
  sub_1E5AD03D8();
  if (!v21)
  {
    v45 = v14;
    v46 = v17;
    v23 = v54;
    v22 = v55;
    v59 = v19;
    v47 = v11;
    v25 = v56;
    v24 = v57;
    v26 = sub_1E5AD0298();
    v27 = *(v26 + 16);
    if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 3) : (v29 = 1), v29))
    {
      v30 = sub_1E5AD00F8();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
      *v32 = v47;
      sub_1E5AD0238();
      sub_1E5AD00E8();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v58 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v26 + 32))
      {
        if (v28 == 1)
        {
          v62 = 1;
          sub_1E5A816C0();
          sub_1E5AD0228();
          v34 = v58;
          v35 = v48;
          v36 = sub_1E5AD0258();
          v41 = v40;
          (*(v53 + 8))(v22, v35);
          (*(v34 + 8))(v10, v8);
          swift_unknownObjectRelease();
          v42 = v45;
          *v45 = v36;
          v42[1] = v41;
          swift_storeEnumTagMultiPayload();
          v43 = v42;
          v44 = v59;
          sub_1E5A81F20(v43, v59);
        }

        else
        {
          v55 = v26;
          v63 = 2;
          sub_1E5A8166C();
          sub_1E5AD0228();
          v37 = v58;
          (*(v51 + 8))(v25, v52);
          (*(v37 + 8))(v10, v8);
          swift_unknownObjectRelease();
          v44 = v59;
          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v61 = 0;
        sub_1E5A81714();
        sub_1E5AD0228();
        sub_1E5ACEE98();
        sub_1E5A824C4(&qword_1ED0266F0, MEMORY[0x1E6968A70], MEMORY[0x1E6968A90]);
        v38 = v46;
        v39 = v50;
        sub_1E5AD0288();
        (*(v49 + 8))(v23, v39);
        (*(v58 + 8))(v10, v8);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v44 = v59;
        sub_1E5A81F20(v38, v59);
      }

      sub_1E5A81F20(v44, v24);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_1E5A81F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A81F84()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A81FB8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5A81FEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E5A82018()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A8204C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AccountState.hash(into:)(uint64_t a1)
{
  v2 = sub_1E5ACEE98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A7B73C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1E6934A50](1);
      sub_1E5ACFBF8();
    }

    else
    {
      return MEMORY[0x1E6934A50](2);
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1E6934A50](0);
    sub_1E5A824C4(&qword_1ED0266F8, MEMORY[0x1E6968A70], MEMORY[0x1E6968A80]);
    sub_1E5ACFB48();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t AccountState.hashValue.getter()
{
  sub_1E5AD0378();
  AccountState.hash(into:)(v1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A822D4()
{
  sub_1E5AD0378();
  AccountState.hash(into:)(v1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A82318(uint64_t a1)
{
  sub_1E5AD0378();
  AccountState.hash(into:)(v2);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A82358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E4964656E676973 && a2 == 0xE800000000000000;
  if (v3 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4964656E676973 && a2 == 0xEF74736575477341 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E676953746F6ELL && a2 == 0xEB000000006E4964)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5AD0348();

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

uint64_t sub_1E5A824C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AccountState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnotherNavigationSplitViewFeature(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AnotherNavigationSplitViewFeature(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E5A827BC()
{
  result = qword_1ED026708;
  if (!qword_1ED026708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026708);
  }

  return result;
}

unint64_t sub_1E5A82814()
{
  result = qword_1ED026710;
  if (!qword_1ED026710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026710);
  }

  return result;
}

unint64_t sub_1E5A8286C()
{
  result = qword_1ED026718;
  if (!qword_1ED026718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026718);
  }

  return result;
}

unint64_t sub_1E5A828C4()
{
  result = qword_1ED026720;
  if (!qword_1ED026720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026720);
  }

  return result;
}

unint64_t sub_1E5A8291C()
{
  result = qword_1ED026728;
  if (!qword_1ED026728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026728);
  }

  return result;
}

unint64_t sub_1E5A82974()
{
  result = qword_1ED026730;
  if (!qword_1ED026730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026730);
  }

  return result;
}

unint64_t sub_1E5A829CC()
{
  result = qword_1ED026738;
  if (!qword_1ED026738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026738);
  }

  return result;
}

unint64_t sub_1E5A82A24()
{
  result = qword_1ED026740;
  if (!qword_1ED026740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026740);
  }

  return result;
}

unint64_t sub_1E5A82A7C()
{
  result = qword_1ED026748;
  if (!qword_1ED026748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026748);
  }

  return result;
}

unint64_t sub_1E5A82AD4()
{
  result = qword_1ED026750;
  if (!qword_1ED026750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026750);
  }

  return result;
}

unint64_t sub_1E5A82B2C()
{
  result = qword_1ED026758;
  if (!qword_1ED026758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026758);
  }

  return result;
}

uint64_t sub_1E5A82B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026760, &qword_1E5AD1E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SidebarState.selectedItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1E5ACFFD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SidebarState.selectedItem.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1E5ACFFD8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SidebarState.init(items:locale:selectedItem:isSidebarVisible:rootItemShouldScrollToOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v10 = a4;
  v15 = type metadata accessor for SidebarState(0, a6, a7, a4);
  v16 = v15[10];
  (*(*(a6 - 8) + 56))(&a8[v16], 1, 1, a6);
  *a8 = a1;
  v17 = v15[9];
  v18 = sub_1E5ACEEE8();
  (*(*(v18 - 8) + 32))(&a8[v17], a2, v18);
  v19 = sub_1E5ACFFD8();
  result = (*(*(v19 - 8) + 40))(&a8[v16], a3, v19);
  a8[v15[11]] = v10;
  a8[v15[12]] = a5;
  return result;
}

uint64_t sub_1E5A82EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEC0000006D657449 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5ADFDE0 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E5ADFE00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E5A830DC(unsigned __int8 a1)
{
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A83124(unsigned __int8 a1)
{
  v1 = 0x736D657469;
  v2 = 0x64657463656C6573;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C61636F6CLL;
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

uint64_t sub_1E5A831F0(uint64_t a1)
{
  sub_1E5AD0378();
  sub_1E5A830B4(v3, *v1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5A83244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A82EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A83274@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5A8492C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5A832A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5A832F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a2;
  v5 = *(a2 + 16);
  v15 = *(a2 + 24);
  type metadata accessor for SidebarState.CodingKeys(255, v5, v15, a4);
  swift_getWitnessTable();
  v6 = sub_1E5AD0318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v6;
  v11 = v14[1];
  sub_1E5AD03E8();
  v19 = *v11;
  v18 = 0;
  sub_1E5ACFD08();
  v17 = *(v15 + 16);
  swift_getWitnessTable();
  v12 = v16;
  sub_1E5AD0308();
  if (v12)
  {
    return (*(v7 + 8))(v9, v10);
  }

  v15 = v5;
  v16 = v9;
  LOBYTE(v19) = 1;
  sub_1E5ACEEE8();
  sub_1E5A83C6C(&qword_1ED026768, MEMORY[0x1E6969778]);
  sub_1E5AD0308();
  LOBYTE(v19) = 2;
  sub_1E5AD02C8();
  LOBYTE(v19) = 3;
  sub_1E5AD02E8();
  LOBYTE(v19) = 4;
  sub_1E5AD02E8();
  return (*(v7 + 8))(v16, v10);
}

uint64_t SidebarState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_1E5ACFFD8();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v35 - v8;
  v39 = sub_1E5ACEEE8();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarState.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v43 = sub_1E5AD02A8();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v35 - v11;
  v40 = a3;
  v14 = type metadata accessor for SidebarState(0, a2, a3, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v19 = *(*(a2 - 8) + 56);
  v46 = *(v16 + 40);
  v47 = v18;
  v19(&v18[v46], 1, 1, a2);
  v20 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v44 = v12;
  v21 = v45;
  sub_1E5AD03D8();
  if (v21)
  {
    v25 = v50;
    __swift_destroy_boxed_opaque_existential_1(v48);
    return (*(v49 + 8))(v47 + v46, v25);
  }

  else
  {
    v23 = v38;
    v22 = v39;
    v35 = v15;
    v45 = v14;
    v24 = v42;
    sub_1E5ACFD08();
    v52 = 0;
    v51 = *(v40 + 8);
    swift_getWitnessTable();
    sub_1E5AD0288();
    v26 = v47;
    v40 = v53;
    *v47 = v53;
    LOBYTE(v53) = 1;
    sub_1E5A83C6C(qword_1ED026770, MEMORY[0x1E6969790]);
    sub_1E5AD0288();
    v27 = v50;
    (*(v24 + 32))(v26 + *(v45 + 36), v23, v22);
    LOBYTE(v53) = 2;
    v28 = v37;
    v38 = 0;
    sub_1E5AD0248();
    v29 = v26;
    (*(v49 + 40))(v26 + v46, v28, v27);
    LOBYTE(v53) = 3;
    v30 = sub_1E5AD0268();
    v31 = v45;
    *(v29 + *(v45 + 44)) = v30 & 1;
    LOBYTE(v53) = 4;
    v32 = sub_1E5AD0268();
    (*(v41 + 8))(v44, v43);
    *(v29 + *(v31 + 48)) = v32 & 1;
    v33 = v35;
    (*(v35 + 16))(v36, v29, v31);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return (*(v33 + 8))(v29, v31);
  }
}

uint64_t sub_1E5A83C6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5ACEEE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SidebarState.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5ACFFD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v33 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v33 - v14;
  if ((sub_1E5ACFD28() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for SidebarState(0, a3, a4, v16);
  if ((MEMORY[0x1E69335A0](a1 + *(v17 + 36), a2 + *(v17 + 36)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v18 = v17;
  v19 = v11;
  v33 = v18;
  v20 = *(v18 + 40);
  v36 = TupleTypeMetadata2;
  v37 = v19;
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = a1;
  v23 = *(v19 + 16);
  v34 = v22;
  v23(v15, v22 + v20, v10);
  v39 = v21;
  v35 = a2;
  v23(&v15[v21], a2 + v20, v10);
  v38 = v8;
  v24 = *(v8 + 48);
  if (v24(v15, 1, a3) != 1)
  {
    v25 = v42;
    v23(v42, v15, v10);
    v26 = v39;
    if (v24(&v15[v39], 1, a3) != 1)
    {
      v27 = v38;
      v28 = v40;
      (*(v38 + 32))(v40, &v15[v26], a3);
      v29 = sub_1E5ACFB78();
      v30 = *(v27 + 8);
      v30(v28, a3);
      v30(v25, a3);
      (*(v37 + 8))(v15, v10);
      if ((v29 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    (*(v38 + 8))(v25, a3);
LABEL_8:
    (*(v41 + 8))(v15, v36);
    goto LABEL_11;
  }

  if (v24(&v15[v39], 1, a3) != 1)
  {
    goto LABEL_8;
  }

  (*(v37 + 8))(v15, v10);
LABEL_10:
  if (*(v34 + *(v33 + 44)) == *(v35 + *(v33 + 44)))
  {
    v31 = *(v34 + *(v33 + 48)) ^ *(v35 + *(v33 + 48)) ^ 1;
    return v31 & 1;
  }

LABEL_11:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1E5A84118(uint64_t a1)
{
  result = sub_1E5ACFD08();
  if (v2 <= 0x3F)
  {
    result = sub_1E5ACEEE8();
    if (v3 <= 0x3F)
    {
      result = sub_1E5ACFFD8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E5A841D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1E5ACEEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v7 + 80);
  v13 = *(*(v6 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (v8 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = 2;
  if (!v10)
  {
    v18 = 3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v17)
  {
    goto LABEL_35;
  }

  v19 = v18 + v15 + ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14);
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_15;
  }

  v22 = ((a2 - v17 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v22))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_22;
    }

LABEL_35:
    if ((v16 & 0x80000000) == 0)
    {
      v26 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    if (v8 == v17)
    {
      v28 = *(v7 + 48);

      return v28((a1 + v12 + 8) & ~v12);
    }

    if (v10 >= 2)
    {
      v29 = (*(*(*(a3 + 16) - 8) + 48))((((a1 + v12 + 8) & ~v12) + v13 + v14) & ~v14, v10);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v22 > 0xFF)
  {
    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v22 < 2)
  {
    goto LABEL_35;
  }

LABEL_15:
  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v17 + (v25 | v23) + 1;
}

void sub_1E5A8446C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1E5ACEEE8() - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  v17 = v12 - 1;
  if (!v12)
  {
    v17 = 0;
  }

  if (v10 > v17)
  {
    v17 = *(v9 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!v12)
  {
    ++v16;
  }

  v19 = v16 + ((v14 + ((v13 + 8) & ~v13) + v15) & ~v15) + 2;
  if (a3 > v18)
  {
    v8 = 1;
    if (v19 <= 3)
    {
      v20 = ((a3 - v18 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      v21 = HIWORD(v20);
      if (v20 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v20 >= 2)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      if (v21)
      {
        v8 = 4;
      }

      else
      {
        v8 = v23;
      }
    }
  }

  if (v18 < a2)
  {
    v24 = ~v18 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v8 > 1)
            {
LABEL_57:
              if (v8 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v8 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v8 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v8 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v8)
    {
      a1[v19] = v25;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
  }

  else if (v8)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v17 & 0x80000000) != 0)
  {
    if (v10 == v18)
    {
      v28 = *(v9 + 56);

      v28(&a1[v13 + 8] & ~v13, a2);
    }

    else if (v12 >= 2)
    {
      v29 = *(v11 + 56);

      v29(((&a1[v13 + 8] & ~v13) + v14 + v15) & ~v15, (a2 + 1), v12);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = (a2 - 1);
    }

    *a1 = v27;
  }
}

uint64_t getEnumTagSinglePayload for SignOutAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignOutAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E5A8496C()
{
  v0 = sub_1E5ACF698();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8]);
  return sub_1E5ACF6F8();
}

uint64_t sub_1E5A84A74(uint64_t a1)
{
  v2 = sub_1E5A8513C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A84AB0(uint64_t a1)
{
  v2 = sub_1E5A8513C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A84AEC()
{
  v1 = 0x6C6E4F6567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6C6E4F656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1E5A84B44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A85B64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A84B6C(uint64_t a1)
{
  v2 = sub_1E5A85040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A84BA8(uint64_t a1)
{
  v2 = sub_1E5A85040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A84BE4(uint64_t a1)
{
  v2 = sub_1E5A850E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A84C20(uint64_t a1)
{
  v2 = sub_1E5A850E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A84C5C(uint64_t a1)
{
  v2 = sub_1E5A85094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A84C98(uint64_t a1)
{
  v2 = sub_1E5A85094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabBarItemStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026878, &qword_1E5AD2040);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026880, &qword_1E5AD2048);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026888, &qword_1E5AD2050);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026890, &qword_1E5AD2058);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A85040();
  sub_1E5AD03E8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E5A850E8();
      v9 = v21;
      sub_1E5AD02B8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E5A85094();
      v9 = v24;
      sub_1E5AD02B8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E5A8513C();
    sub_1E5AD02B8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E5A85040()
{
  result = qword_1ED026898;
  if (!qword_1ED026898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026898);
  }

  return result;
}

unint64_t sub_1E5A85094()
{
  result = qword_1ED0268A0;
  if (!qword_1ED0268A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0268A0);
  }

  return result;
}

unint64_t sub_1E5A850E8()
{
  result = qword_1ED0268A8;
  if (!qword_1ED0268A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0268A8);
  }

  return result;
}

unint64_t sub_1E5A8513C()
{
  result = qword_1ED0268B0;
  if (!qword_1ED0268B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0268B0);
  }

  return result;
}

uint64_t TabBarItemStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0268B8, &qword_1E5AD2060);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0268C0, &qword_1E5AD2068);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0268C8, &qword_1E5AD2070);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0268D0, &unk_1E5AD2078);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5A85040();
  v15 = v36;
  sub_1E5AD03D8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E5AD0298();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E5A82BF4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E5AD00F8();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
      *v24 = &type metadata for TabBarItemStyle;
      sub_1E5AD0238();
      sub_1E5AD00E8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E5A850E8();
          sub_1E5AD0228();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E5A85094();
          v26 = v17;
          sub_1E5AD0228();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E5A8513C();
        sub_1E5AD0228();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t TabBarItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v1);
  return sub_1E5AD03C8();
}

unint64_t sub_1E5A857A8()
{
  result = qword_1ED0268D8;
  if (!qword_1ED0268D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0268D8);
  }

  return result;
}

unint64_t sub_1E5A85850()
{
  result = qword_1ED0268E0;
  if (!qword_1ED0268E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0268E0);
  }

  return result;
}

unint64_t sub_1E5A858A8()
{
  result = qword_1ED0268E8;
  if (!qword_1ED0268E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0268E8);
  }

  return result;
}

unint64_t sub_1E5A85900()
{
  result = qword_1ED0268F0;
  if (!qword_1ED0268F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0268F0);
  }

  return result;
}

unint64_t sub_1E5A85958()
{
  result = qword_1ED0268F8;
  if (!qword_1ED0268F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0268F8);
  }

  return result;
}

unint64_t sub_1E5A859B0()
{
  result = qword_1ED026900;
  if (!qword_1ED026900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026900);
  }

  return result;
}

unint64_t sub_1E5A85A08()
{
  result = qword_1ED026908;
  if (!qword_1ED026908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026908);
  }

  return result;
}

unint64_t sub_1E5A85A60()
{
  result = qword_1ED026910;
  if (!qword_1ED026910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026910);
  }

  return result;
}

unint64_t sub_1E5A85AB8()
{
  result = qword_1ED026918;
  if (!qword_1ED026918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026918);
  }

  return result;
}

unint64_t sub_1E5A85B10()
{
  result = qword_1ED026920;
  if (!qword_1ED026920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026920);
  }

  return result;
}

uint64_t sub_1E5A85B64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6E4F6567616D69 && a2 == 0xE900000000000079 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6E4F656C746974 && a2 == 0xE900000000000079)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5AD0348();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t DynamicContentState.init(locale:networkConditions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5ACEEE8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for DynamicContentState(0) + 20);

  return sub_1E5A85D40(a2, v7);
}

uint64_t sub_1E5A85D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A85DB0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_1E5A85DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E5AD0348() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5ADFE20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5AD0348();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E5A85ED8(uint64_t a1)
{
  v2 = sub_1E5A86134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A85F14(uint64_t a1)
{
  v2 = sub_1E5A86134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicContentState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026928, &qword_1E5AD24C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A86134();
  sub_1E5AD03E8();
  v8[15] = 0;
  sub_1E5ACEEE8();
  sub_1E5A83C6C(&qword_1ED026768, MEMORY[0x1E6969778]);
  sub_1E5AD0308();
  if (!v1)
  {
    type metadata accessor for DynamicContentState(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
    sub_1E5A86630(&qword_1EE2FCA40, MEMORY[0x1E6999B20]);
    sub_1E5AD0308();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5A86134()
{
  result = qword_1ED026930;
  if (!qword_1ED026930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026930);
  }

  return result;
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

unint64_t sub_1E5A861D0()
{
  result = qword_1EE2FD2A8;
  if (!qword_1EE2FD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2A8);
  }

  return result;
}

unint64_t sub_1E5A86224()
{
  result = qword_1EE2FD2B8;
  if (!qword_1EE2FD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2B8);
  }

  return result;
}

uint64_t DynamicContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED027520, &qword_1E5AD24C0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v17 - v4;
  v25 = sub_1E5ACEEE8();
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026938, &qword_1E5AD24D0);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for DynamicContentState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A86134();
  sub_1E5AD03D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_1E5A83C6C(qword_1ED026770, MEMORY[0x1E6969790]);
  v13 = v23;
  v14 = v25;
  sub_1E5AD0288();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_1E5A86630(&qword_1ED026940, MEMORY[0x1E6999B30]);
  sub_1E5AD0288();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_1E5A85D40(v5, &v19[*(v18 + 20)]);
  sub_1E5A866A8(v15, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5A8670C(v15);
}

uint64_t sub_1E5A86630(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED027520, &qword_1E5AD24C0);
    sub_1E5A861D0();
    sub_1E5A86224();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5A866A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A8670C(uint64_t a1)
{
  v2 = type metadata accessor for DynamicContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DynamicContentState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E69335A0]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DynamicContentState(0);
  sub_1E5A86814();

  return sub_1E5ACF9E8();
}

unint64_t sub_1E5A86814()
{
  result = qword_1EE2FD2B0;
  if (!qword_1EE2FD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FD2B0);
  }

  return result;
}

void sub_1E5A86890(uint64_t a1)
{
  sub_1E5ACEEE8();
  if (v1 <= 0x3F)
  {
    sub_1E5A86914(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5A86914(uint64_t a1)
{
  if (!qword_1EE2FCA28)
  {
    sub_1E5A86814();
    v1 = sub_1E5ACFA08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2FCA28);
    }
  }
}

uint64_t getEnumTagSinglePayload for DynamicContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5A86AC4()
{
  result = qword_1ED026948;
  if (!qword_1ED026948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026948);
  }

  return result;
}

unint64_t sub_1E5A86B1C()
{
  result = qword_1ED026950;
  if (!qword_1ED026950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026950);
  }

  return result;
}

unint64_t sub_1E5A86B74()
{
  result = qword_1ED026958;
  if (!qword_1ED026958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026958);
  }

  return result;
}

unint64_t sub_1E5A86BC8()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0x5374754F6E676973;
  if (v1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 == 2)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1E5A86C80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5A88B40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A86CB4(uint64_t a1)
{
  v2 = sub_1E5A876B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A86CF0(uint64_t a1)
{
  v2 = sub_1E5A876B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A86D2C(uint64_t a1)
{
  v2 = sub_1E5A878C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A86D68(uint64_t a1)
{
  v2 = sub_1E5A878C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A86DA4(uint64_t a1)
{
  v2 = sub_1E5A87818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A86DE0(uint64_t a1)
{
  v2 = sub_1E5A87818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A86E1C(uint64_t a1)
{
  v2 = sub_1E5A8786C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A86E58(uint64_t a1)
{
  v2 = sub_1E5A8786C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A86E94(uint64_t a1)
{
  v2 = sub_1E5A87770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A86ED0(uint64_t a1)
{
  v2 = sub_1E5A87770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A86F0C(uint64_t a1)
{
  v2 = sub_1E5A87914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A86F48(uint64_t a1)
{
  v2 = sub_1E5A87914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignOutAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026960, &qword_1E5AD2680);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026968, &qword_1E5AD2688);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026970, &qword_1E5AD2690);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v36 - v7;
  v40 = type metadata accessor for AccountState(0);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026978, &qword_1E5AD2698);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026980, &qword_1E5AD26A0);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v36 - v13;
  v15 = type metadata accessor for SignOutAction(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026988, &qword_1E5AD26A8);
  v51 = *(v18 - 8);
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A876B8();
  sub_1E5AD03E8();
  sub_1E5A8770C(v50, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v23 = v9;
    v24 = v44;
    v25 = v45;
    v26 = v46;
    v27 = v47;
    v29 = v48;
    v28 = v49;
    if (EnumCaseMultiPayload)
    {
      v50 = *v17;
      v34 = *(v17 + 2);
      v35 = v17[24];
      LOBYTE(v53) = 4;
      sub_1E5A87770();
      v31 = v52;
      sub_1E5AD02B8();
      v53 = v50;
      v54 = v34;
      v55 = v35;
      sub_1E5A877C4();
      sub_1E5AD0308();
      (*(v29 + 8))(v27, v28);
    }

    else
    {
      v30 = v23;
      sub_1E5A88474(v17, v23, type metadata accessor for AccountState);
      LOBYTE(v53) = 2;
      sub_1E5A8786C();
      v31 = v52;
      sub_1E5AD02B8();
      sub_1E5A884DC(&qword_1ED0269B8, &protocol conformance descriptor for AccountState);
      sub_1E5AD0308();
      (*(v25 + 8))(v24, v26);
      sub_1E5A7B6E0(v30);
    }

    return (*(v51 + 8))(v20, v31);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v53) = 0;
      sub_1E5A87914();
      v22 = v52;
      sub_1E5AD02B8();
      (*(v36 + 8))(v14, v37);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v53) = 1;
      sub_1E5A878C0();
      v22 = v52;
      sub_1E5AD02B8();
      (*(v38 + 8))(v12, v39);
    }

    else
    {
      LOBYTE(v53) = 3;
      sub_1E5A87818();
      v32 = v41;
      v22 = v52;
      sub_1E5AD02B8();
      (*(v42 + 8))(v32, v43);
    }

    return (*(v51 + 8))(v20, v22);
  }
}

uint64_t type metadata accessor for SignOutAction(uint64_t a1)
{
  result = qword_1ED026A10;
  if (!qword_1ED026A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5A876B8()
{
  result = qword_1ED026990;
  if (!qword_1ED026990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026990);
  }

  return result;
}

uint64_t sub_1E5A8770C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignOutAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A87770()
{
  result = qword_1ED026998;
  if (!qword_1ED026998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026998);
  }

  return result;
}

unint64_t sub_1E5A877C4()
{
  result = qword_1ED0269A0;
  if (!qword_1ED0269A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0269A0);
  }

  return result;
}

unint64_t sub_1E5A87818()
{
  result = qword_1ED0269A8;
  if (!qword_1ED0269A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0269A8);
  }

  return result;
}

unint64_t sub_1E5A8786C()
{
  result = qword_1ED0269B0;
  if (!qword_1ED0269B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0269B0);
  }

  return result;
}

unint64_t sub_1E5A878C0()
{
  result = qword_1ED0269C0;
  if (!qword_1ED0269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0269C0);
  }

  return result;
}

unint64_t sub_1E5A87914()
{
  result = qword_1ED0269C8;
  if (!qword_1ED0269C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0269C8);
  }

  return result;
}

uint64_t SignOutAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0269D0, &qword_1E5AD26B0);
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v54 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0269D8, &qword_1E5AD26B8);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v70 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0269E0, &qword_1E5AD26C0);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v54 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0269E8, &qword_1E5AD26C8);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v69 = &v54 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0269F0, &qword_1E5AD26D0);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v68 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0269F8, &unk_1E5AD26D8);
  v73 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for SignOutAction(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  v22 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5A876B8();
  v23 = v83;
  sub_1E5AD03D8();
  if (v23)
  {
    v24 = v75;
  }

  else
  {
    v56 = v19;
    v55 = v16;
    v25 = v74;
    v83 = v13;
    v57 = v21;
    v26 = v10;
    v27 = v12;
    v28 = sub_1E5AD0298();
    v29 = (2 * *(v28 + 16)) | 1;
    v79 = v28;
    v80 = v28 + 32;
    v81 = 0;
    v82 = v29;
    v30 = sub_1E5A81F84();
    if (v30 == 5 || v81 != v82 >> 1)
    {
      v35 = sub_1E5AD00F8();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910);
      *v37 = v83;
      sub_1E5AD0238();
      sub_1E5AD00E8();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v73 + 8))(v12, v26);
      swift_unknownObjectRelease();
      v24 = v75;
    }

    else
    {
      if (v30 <= 1u)
      {
        if (v30)
        {
          LOBYTE(v76) = 1;
          sub_1E5A878C0();
          v45 = v69;
          sub_1E5AD0228();
          v33 = v75;
          v39 = v72;
          v40 = v73;
          (*(v60 + 8))(v45, v61);
        }

        else
        {
          LOBYTE(v76) = 0;
          sub_1E5A87914();
          v38 = v68;
          sub_1E5AD0228();
          v33 = v75;
          v39 = v72;
          v40 = v73;
          (*(v58 + 8))(v38, v59);
        }

        (*(v40 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v34 = v57;
        swift_storeEnumTagMultiPayload();
      }

      else if (v30 == 2)
      {
        LOBYTE(v76) = 2;
        sub_1E5A8786C();
        v41 = v25;
        v42 = v27;
        sub_1E5AD0228();
        v39 = v72;
        type metadata accessor for AccountState(0);
        sub_1E5A884DC(&qword_1ED026A08, &protocol conformance descriptor for AccountState);
        v46 = v56;
        v47 = v65;
        sub_1E5AD0288();
        v48 = v73;
        (*(v64 + 8))(v41, v47);
        (*(v48 + 8))(v42, v10);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v34 = v57;
        sub_1E5A88474(v46, v57, type metadata accessor for SignOutAction);
        v33 = v75;
      }

      else
      {
        v31 = v12;
        if (v30 == 3)
        {
          LOBYTE(v76) = 3;
          sub_1E5A87818();
          v32 = v70;
          sub_1E5AD0228();
          v33 = v75;
          (*(v62 + 8))(v32, v63);
          (*(v73 + 8))(v31, v10);
          swift_unknownObjectRelease();
          v34 = v57;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          LOBYTE(v76) = 4;
          sub_1E5A87770();
          v43 = v71;
          sub_1E5AD0228();
          v33 = v75;
          sub_1E5A88420();
          v44 = v67;
          sub_1E5AD0288();
          (*(v66 + 8))(v43, v44);
          (*(v73 + 8))(v31, v10);
          swift_unknownObjectRelease();
          v49 = v77;
          v50 = v78;
          v51 = v55;
          *v55 = v76;
          *(v51 + 2) = v49;
          *(v51 + 24) = v50;
          swift_storeEnumTagMultiPayload();
          v52 = v51;
          v34 = v57;
          sub_1E5A88474(v52, v57, type metadata accessor for SignOutAction);
        }

        v39 = v72;
      }

      sub_1E5A88474(v34, v39, type metadata accessor for SignOutAction);
      v24 = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_1E5A88420()
{
  result = qword_1ED026A00;
  if (!qword_1ED026A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A00);
  }

  return result;
}

uint64_t sub_1E5A88474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A884DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccountState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5A88550(uint64_t a1)
{
  result = type metadata accessor for AccountState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5A8861C()
{
  result = qword_1ED026A20;
  if (!qword_1ED026A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A20);
  }

  return result;
}

unint64_t sub_1E5A88674()
{
  result = qword_1ED026A28;
  if (!qword_1ED026A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A28);
  }

  return result;
}

unint64_t sub_1E5A886CC()
{
  result = qword_1ED026A30;
  if (!qword_1ED026A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A30);
  }

  return result;
}

unint64_t sub_1E5A88724()
{
  result = qword_1ED026A38;
  if (!qword_1ED026A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A38);
  }

  return result;
}

unint64_t sub_1E5A8877C()
{
  result = qword_1ED026A40;
  if (!qword_1ED026A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A40);
  }

  return result;
}

unint64_t sub_1E5A887D4()
{
  result = qword_1ED026A48;
  if (!qword_1ED026A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A48);
  }

  return result;
}

unint64_t sub_1E5A8882C()
{
  result = qword_1ED026A50;
  if (!qword_1ED026A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A50);
  }

  return result;
}

unint64_t sub_1E5A88884()
{
  result = qword_1ED026A58;
  if (!qword_1ED026A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A58);
  }

  return result;
}

unint64_t sub_1E5A888DC()
{
  result = qword_1ED026A60;
  if (!qword_1ED026A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A60);
  }

  return result;
}

unint64_t sub_1E5A88934()
{
  result = qword_1ED026A68;
  if (!qword_1ED026A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A68);
  }

  return result;
}

unint64_t sub_1E5A8898C()
{
  result = qword_1ED026A70;
  if (!qword_1ED026A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A70);
  }

  return result;
}

unint64_t sub_1E5A889E4()
{
  result = qword_1ED026A78;
  if (!qword_1ED026A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A78);
  }

  return result;
}

unint64_t sub_1E5A88A3C()
{
  result = qword_1ED026A80;
  if (!qword_1ED026A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A80);
  }

  return result;
}

unint64_t sub_1E5A88A94()
{
  result = qword_1ED026A88;
  if (!qword_1ED026A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026A88);
  }

  return result;
}

unint64_t sub_1E5A88AEC()
{
  result = qword_1ED026A90[0];
  if (!qword_1ED026A90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED026A90);
  }

  return result;
}

uint64_t sub_1E5A88B40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5ADFE40 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5ADFE60 == a2 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5374754F6E676973 && a2 == 0xEF64657463656C65 || (sub_1E5AD0348() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5ADFE80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t SidebarModalitiesEnvironment.init(resolveSidebarModalities:navigateToItem:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5A88D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5A88D4C(uint64_t *a1, int a2)
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

uint64_t sub_1E5A88D94(uint64_t result, int a2, int a3)
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

uint64_t SidebarTabView.init(store:viewBuilder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5A88E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E5A88ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1E5A88F68(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1E5ACF488();
  __break(1u);
}

uint64_t (*sub_1E5A88FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  type metadata accessor for SidebarTabController(0, *(a1 + 16), *(a1 + 24), a4);

  return SidebarTabController.__allocating_init(store:viewBuilder:)(v5, v6, v8, v7);
}

uint64_t TabBarViewController.selectedIndex.getter()
{
  v1 = v0 + qword_1ED026B28;
  swift_beginAccess();
  return *v1;
}

uint64_t (*TabBarViewController.init(store:viewBuilder:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4))(void)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = *v4;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = qword_1ED026B30;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for TabBarController()) init];
  v12 = qword_1ED026B20;
  v13 = *((v10 & v9) + 0x50);
  v14 = *((v10 & v9) + 0x58);
  type metadata accessor for TabBarItemDescriptor(0, v13, v14, v15);
  *&v5[v12] = sub_1E5ACFCA8();
  v16 = &v5[qword_1ED026B28];
  *v16 = 0;
  v16[8] = 1;
  v5[qword_1ED026B38] = 0;
  type metadata accessor for TabBarFeature(255, v13, v14, v17);
  swift_getWitnessTable();
  sub_1E5ACF9D8();
  a1();
  *&v5[qword_1ED026B40] = sub_1E5ACF9B8();
  v18 = &v5[qword_1ED026B48];
  *v18 = a3;
  v18[1] = a4;
  v30.receiver = v5;
  v30.super_class = ObjectType;

  v19 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  v20 = *(v19 + qword_1ED026B30);
  v21 = v19;
  [v20 setDelegate_];
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v22;

  sub_1E5ACF998();

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v24;
  sub_1E5ACFD08();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5ACF998();

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = swift_allocObject();
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v26;
  sub_1E5ACF998();

  return v21;
}

void *sub_1E5A895C8@<X0>(void *a2@<X8>)
{
  result = sub_1E5ACFA48();
  *a2 = v4;
  return result;
}

uint64_t sub_1E5A89608(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for TabBarItemDescriptor(255, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v6);
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  if (sub_1E5ACFEF8())
  {
    [*(v2 + qword_1ED026B30) setSelectedIndex_];
  }

  v7 = v2 + qword_1ED026B28;
  result = swift_beginAccess();
  *v7 = a1;
  v7[8] = 0;
  return result;
}

uint64_t sub_1E5A89768(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + a3 - 16);
  v5 = *(a1 + a3 - 8);
  type metadata accessor for TabBarState(255, v4, v5, a4);
  type metadata accessor for TabBarItemDescriptor(255, v4, v5, v6);
  sub_1E5ACFD08();
  sub_1E5AD03F8();
  return sub_1E5ACFB78() & 1;
}

uint64_t sub_1E5A89808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  type metadata accessor for TabBarState(255, v4, v5, a4);
  type metadata accessor for TabBarItemDescriptor(255, v4, v5, v6);
  sub_1E5ACFD08();
  sub_1E5AD03F8();
  return sub_1E5ACFB58();
}

void sub_1E5A89894(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v7 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a6(v7);
  }
}

id sub_1E5A89904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a1;
  v7 = *MEMORY[0x1E69E7D40] & *v5;
  v67 = *(v7 + 0x50);
  v65 = *(v7 + 88);
  v8 = type metadata accessor for TabBarItemDescriptor(255, v67, v65, a4);
  v9 = sub_1E5AD01E8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  v77 = a1;
  v16 = qword_1ED026B20;
  v66 = qword_1ED026B20;
  swift_beginAccess();
  v79 = *(v5 + v16);
  v17 = sub_1E5ACFD08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5ACFB68();
  WitnessTable = swift_getWitnessTable();
  sub_1E5AD01F8();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v19 = sub_1E5AD01C8();
  v18(v15, v9);
  v20 = v5;
  v21 = v67;
  v75 = v67;
  v22 = v65;
  v76 = v65;
  v77 = v19;
  sub_1E5AD01D8();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  v23 = sub_1E5ACFC38();

  v77 = v23;
  v63 = swift_getWitnessTable();
  v24 = WitnessTable;
  v25 = sub_1E5ACFE48();
  v77 = *(v20 + v66);
  v72 = v21;
  v73 = v22;
  v26 = v20;
  v74 = v25;

  swift_getWitnessTable();
  v27 = sub_1E5AD0118();

  v79 = v27;
  v28 = sub_1E5A7C10C(255, &unk_1EE2FC9D0, 0x1E69DD258);
  swift_getTupleTypeMetadata2();
  v29 = sub_1E5ACFCA8();
  v30 = sub_1E5AA2AC0(v29, v8, v28, v24);

  v78 = v30;
  v71 = v20;
  v31 = v64;
  sub_1E5ACFB08();
  sub_1E5ACFC48();

  v32 = v77;
  v77 = v31;
  v69 = v32;
  v70 = v26;
  v33 = swift_getWitnessTable();
  v35 = sub_1E5A9E49C(sub_1E5A8C7F0, v68, v17, v28, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);

  v65 = *(v26 + qword_1ED026B30);
  v36 = [v65 selectedViewController];
  v37 = &off_1E8788000;
  if (v36 && (v38 = v36, v39 = [v36 _uip_tabElement], v38, v39))
  {
    v40 = [v39 identifier];

    v67 = sub_1E5ACFBD8();
    v42 = v41;
  }

  else
  {
    v67 = 0;
    v42 = 0;
  }

  *(v26 + v66) = v31;

  v43 = sub_1E5ACFC68();
  [v65 setViewControllers_];

  if (v42)
  {
    v61 = v26;
    if (v35 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E5AD0178())
    {
      v45 = 0;
      v66 = v35 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1E69347A0](v45, v35);
        }

        else
        {
          if (v45 >= *(v66 + 16))
          {
            goto LABEL_32;
          }

          v46 = *(v35 + 8 * v45 + 32);
        }

        v47 = v46;
        v48 = [v46 v37[206]];
        if (v48)
        {
          break;
        }

        v57 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_31;
        }

LABEL_23:
        ++v45;
        if (v57 == i)
        {
          goto LABEL_24;
        }
      }

      v49 = v37;
      v50 = v48;
      v51 = [v48 identifier];

      v52 = sub_1E5ACFBD8();
      v54 = v53;

      if (v52 == v67 && v42 == v54)
      {

        return [v65 setSelectedIndex_];
      }

      v56 = sub_1E5AD0348();

      v37 = v49;
      if (v56)
      {

        return [v65 setSelectedIndex_];
      }

      v57 = v45 + 1;
      if (!__OFADD__(v45, 1))
      {
        goto LABEL_23;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_24:

    v26 = v61;
  }

  v58 = (v26 + qword_1ED026B28);
  result = swift_beginAccess();
  if ((v58[1] & 1) == 0)
  {
    v45 = *v58;
    return [v65 setSelectedIndex_];
  }

  return result;
}

uint64_t sub_1E5A8A0A0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TabBarState(255, *(a1 + a3 - 16), *(a1 + a3 - 8), a4);
  sub_1E5AD03F8();
  return sub_1E5ACFB78() & 1;
}

uint64_t sub_1E5A8A124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TabBarState(255, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  sub_1E5AD03F8();
  return sub_1E5ACFB58();
}

void *sub_1E5A8A184@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5ACFA48();
  *a2 = v4;
  return result;
}

void sub_1E5A8A1C4(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1E5A8A220(v3);
  }
}

uint64_t sub_1E5A8A220(char a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = sub_1E5ACFA88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5ACFAA8();
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = v11;
    v14 = [*(v2 + qword_1ED026B30) selectedViewController];
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v31 = v16;
        v32 = v6;
        v17 = [v16 viewControllers];
        sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
        v18 = sub_1E5ACFC78();

        if (v18 >> 62)
        {
          v19 = sub_1E5AD0178();
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v19 == 1)
        {
          sub_1E5AAAF98(1);
          sub_1E5A7C10C(0, &qword_1ED026C40, 0x1E69E9610);
          v20 = sub_1E5ACFF58();
          v21 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v22 = swift_allocObject();
          v22[2] = *(v4 + 80);
          v22[3] = *(v4 + 88);
          v22[4] = v21;
          v38 = sub_1E5A8C820;
          v39 = v22;
          aBlock = MEMORY[0x1E69E9820];
          v35 = 1107296256;
          v36 = sub_1E5AC4684;
          v37 = &block_descriptor_52;
          v23 = _Block_copy(&aBlock);

          sub_1E5ACFA98();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1E5A8C6C8(&qword_1ED026C48, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C50, &unk_1E5AD3460);
          sub_1E5A8C710();
          sub_1E5AD0008();
          MEMORY[0x1E6934630](0, v13, v8, v23);
          _Block_release(v23);
        }

        else
        {

          sub_1E5A7C10C(0, &qword_1ED026C40, 0x1E69E9610);
          v20 = sub_1E5ACFF58();
          v27 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v28 = swift_allocObject();
          v28[2] = *(v4 + 80);
          v28[3] = *(v4 + 88);
          v28[4] = v27;
          v38 = sub_1E5A8C774;
          v39 = v28;
          aBlock = MEMORY[0x1E69E9820];
          v35 = 1107296256;
          v36 = sub_1E5AC4684;
          v37 = &block_descriptor_45;
          v29 = _Block_copy(&aBlock);

          sub_1E5ACFA98();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1E5A8C6C8(&qword_1ED026C48, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C50, &unk_1E5AD3460);
          sub_1E5A8C710();
          sub_1E5AD0008();
          MEMORY[0x1E6934630](0, v13, v8, v29);

          _Block_release(v29);
        }

        v6 = v32;
        goto LABEL_12;
      }
    }

    sub_1E5A7C10C(0, &qword_1ED026C40, 0x1E69E9610);
    v20 = sub_1E5ACFF58();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = *(v4 + 80);
    v25[3] = *(v4 + 88);
    v25[4] = v24;
    v38 = sub_1E5A8C820;
    v39 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1E5AC4684;
    v37 = &block_descriptor;
    v26 = _Block_copy(&aBlock);

    sub_1E5ACFA98();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1E5A8C6C8(&qword_1ED026C48, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C50, &unk_1E5AD3460);
    sub_1E5A8C710();
    sub_1E5AD0008();
    MEMORY[0x1E6934630](0, v13, v8, v26);
    _Block_release(v26);
LABEL_12:

    (*(v6 + 8))(v8, v5);
    return (*(v33 + 8))(v13, v9);
  }

  return result;
}

Swift::Void __swiftcall TabBarViewController.viewDidLoad()()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v2 = *&v0[qword_1ED026B30];
  [v1 addChildViewController_];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v2 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v6 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026B50, &qword_1E5AD3470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E5AD2EC0;
  v10 = [v2 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v16;
  v17 = [v2 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v9 + 40) = v23;
  v24 = [v2 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v9 + 48) = v30;
  v31 = [v2 view];
  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v1 view];
  if (v34)
  {
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v35 trailingAnchor];

    v38 = [v33 constraintEqualToAnchor_];
    *(v9 + 56) = v38;
    sub_1E5A7C10C(0, &qword_1EE2FC9C0, 0x1E696ACD8);
    v39 = sub_1E5ACFC68();

    [v36 activateConstraints_];

    v40.receiver = v2;
    v40.super_class = type metadata accessor for TabBarController();
    objc_msgSendSuper2(&v40, sel_didMoveToParentViewController_, v1);
    sub_1E5AAB260();
    sub_1E5ACF988();
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1E5A8ADD0(void *a1)
{
  v1 = a1;
  TabBarViewController.viewDidLoad()();
}

uint64_t sub_1E5A8AE20(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1E5A8C4D4(v7);

  return v9 & 1;
}

Swift::Void __swiftcall TabBarViewController.tabBarController(_:didSelect:)(UITabBarController *_, UIViewController *didSelect)
{
  v6 = type metadata accessor for TabBarAction(0, *((*MEMORY[0x1E69E7D40] & *v3) + 0x50), *((*MEMORY[0x1E69E7D40] & *v3) + 0x58), v2);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v17 - v9);
  if (*(v3 + qword_1ED026B38))
  {
    *(v3 + qword_1ED026B38) = 0;
  }

  else if (*(v3 + qword_1ED026B30) == _)
  {
    v11 = v8;
    v12 = [(UITabBarController *)_ viewControllers];
    if (v12)
    {
      v13 = v12;
      sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
      v14 = sub_1E5ACFC78();

      v15 = sub_1E5A8B058(didSelect, v14);
      LOBYTE(v13) = v16;

      if ((v13 & 1) == 0)
      {
        sub_1E5ACF9A8();
        *v10 = v15;
        swift_storeEnumTagMultiPayload();
        sub_1E5ACFA58();

        (*(v7 + 8))(v10, v11);
      }
    }
  }
}

unint64_t sub_1E5A8B058(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1E5AD0178();
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
      v6 = MEMORY[0x1E69347A0](v5, a2);
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
    sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
    v8 = sub_1E5ACFFB8();

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

uint64_t sub_1E5A8B168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1E5ACEF78() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1E5A8C6C8(&qword_1EE2FDC60, MEMORY[0x1E699DBE8], MEMORY[0x1E699DBF8]);
  v7 = 0;
  while ((sub_1E5ACFB78() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1E5A8B288(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  TabBarViewController.tabBarController(_:didSelect:)(v6, v7);
}

void *sub_1E5A8B304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TabBarAction(0, a2, a3, a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    sub_1E5ACF9A8();

    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1E5A8B438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = type metadata accessor for TabBarItemDescriptor(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v12 = sub_1E5AD01D8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  (*(v15 + 16))(v21 - v13, a1, v12);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026C60, &unk_1E5AD3090);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(TupleTypeMetadata3 + 48);
  if (a1 == 1)
  {
    (*(v9 + 56))(a5, 1, 1, v8);
    return (*(v9 + 8))(&v14[v17], v8);
  }

  else
  {
    v21[1] = v5;
    v19 = v14[*(TupleTypeMetadata3 + 64) + 8];
    v20 = *(v9 + 32);
    v20(v11, &v14[v17], v8);
    if (v19 == 1)
    {
      v20(a5, v11, v8);
      return (*(v9 + 56))(a5, 0, 1, v8);
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      return (*(v9 + 56))(a5, 1, 1, v8);
    }
  }
}

BOOL sub_1E5A8B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TabBarItemDescriptor(255, a3, a4, a4);
  sub_1E5AD0328();
  v6 = *(v5 - 8);
  swift_allocObject();
  v7 = sub_1E5ACFC88();
  (*(v6 + 16))(v8, a1, v5);
  sub_1E5A9E470(v7, v5);
  swift_getWitnessTable();
  sub_1E5ACFE38();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  LOBYTE(v5) = sub_1E5ACFE78();

  return (v5 & 1) == 0;
}

void sub_1E5A8B898(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for TabBarItemDescriptor(0, *((*MEMORY[0x1E69E7D40] & *a3) + 0x50), *((*MEMORY[0x1E69E7D40] & *a3) + 0x58), a4);
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5ACFED8();
  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    sub_1E5ACFD38();
    swift_endAccess();
    v6 = [*(a3 + qword_1ED026B30) viewControllers];
    if (!v6)
    {
LABEL_8:
      sub_1E5A7C10C(255, &unk_1EE2FC9D0, 0x1E69DD258);
      swift_getWitnessTable();
      sub_1E5ACFB08();
      sub_1E5ACFB28();
      return;
    }

    v7 = v6;
    sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
    v8 = sub_1E5ACFC78();

    if ((v8 & 0xC000000000000001) == 0)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v8 + 8 * v10 + 32);
LABEL_7:

        goto LABEL_8;
      }

      __break(1u);
      return;
    }

    MEMORY[0x1E69347A0](v10, v8);
    goto LABEL_7;
  }
}

void sub_1E5A8BB44(uint64_t a1@<X0>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v53 = a4;
  v6 = *a3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1E5ACEEE8();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v7 & v6) + 0x50);
  v12 = *((v7 & v6) + 0x58);
  v14 = type metadata accessor for TabBarItemDescriptor(0, v11, v12, v13);
  sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
  swift_getWitnessTable();
  sub_1E5ACFB18();
  v15 = v54;
  if (v54)
  {
LABEL_19:
    *v53 = v15;
    return;
  }

  v52 = *(v14 + 36);
  v16 = sub_1E5ACF9A8();
  MEMORY[0x1EEE9AC00](v16);
  v48[-2] = v11;
  v48[-1] = v12;
  swift_getKeyPath();
  sub_1E5ACFA48();

  v17 = *(v12 + 88);
  v18 = v52;
  v50 = v12;
  v19 = v17(v10, v11, v12);
  v21 = v20;
  v51[1](v10, v8);
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1E5AD00A8();
  MEMORY[0x1E69342D0](0xD000000000000013, 0x80000001E5ADFFC0);
  sub_1E5AD0338();
  v22 = v55;
  v51 = v54;
  v15 = (*(a3 + qword_1ED026B48))(a1 + v18, 0, 0, 0, 0);
  v23 = [v15 tabBarItem];
  if (!v23)
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v48[0] = v19;
  if (v21)
  {

    v25 = sub_1E5ACFBA8();
  }

  else
  {
    v25 = 0;
  }

  v26 = v50;
  [v24 setTitle_];

  (*(v26 + 80))(v11, v26);
  if (!v27)
  {
LABEL_9:
    v50 = v21;
    v32 = [v15 tabBarItem];
    if (v32)
    {
      v33 = v32;
      v48[1] = v22;
      v34 = sub_1E5ACFBA8();
      [v33 setAccessibilityIdentifier_];

      v35 = *(v26 + 56);
      v35(v11, v26);
      v48[2] = a1;
      v49 = v11;
      if (!v50)
      {
        v35(v11, v26);
      }

      v36 = [v15 tabBarItem];
      if (v36)
      {
        v37 = v36;

        v38 = [v37 image];

        v39 = objc_allocWithZone(MEMORY[0x1E69DD7A0]);
        v40 = sub_1E5ACFBA8();

        v41 = sub_1E5ACFBA8();

        v42 = [v39 initWithIdentifier:v40 title:v41 image:v38];

        [v15 _uip_setTabElement_];
        v43 = [v15 _uip_tabElement];
        if (v43)
        {
          v44 = v43;
          v45 = sub_1E5ACFBA8();

          [v44 setAccessibilityIdentifier_];
        }

        else
        {
        }

        if ((*(v26 + 48))(v49, v26))
        {
          v46 = [v15 _uip_tabElement];
          if (v46)
          {
            v47 = v46;
            [v46 _setTabBarPlacement_];
          }
        }

        goto LABEL_19;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = [v15 tabBarItem];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1E5ACFBA8();

    v31 = [objc_opt_self() systemImageNamed_];

    [v29 setImage_];
    goto LABEL_9;
  }

LABEL_23:
  __break(1u);
}

id TabBarViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E5ACFBA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1E5A8C244(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1E5A8C5B8();
}

id TabBarViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E5A8C2EC(uint64_t a1)
{
}

void sub_1E5A8C3D0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = qword_1ED026B30;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for TabBarController()) init];
  v4 = qword_1ED026B20;
  type metadata accessor for TabBarItemDescriptor(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v5);
  *(v0 + v4) = sub_1E5ACFCA8();
  v6 = v0 + qword_1ED026B28;
  *v6 = 0;
  v6[8] = 1;
  *(v0 + qword_1ED026B38) = 0;
  sub_1E5AD0168();
  __break(1u);
}

uint64_t sub_1E5A8C4D4(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 viewControllers];
    sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
    v7 = sub_1E5ACFC78();

    if (v7 >> 62)
    {
      v8 = sub_1E5AD0178();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v1 + qword_1ED026B38) = v8 > 1;
  }

  return 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5A8C6C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5A8C710()
{
  result = qword_1ED026C58;
  if (!qword_1ED026C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026C50, &unk_1E5AD3460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED026C58);
  }

  return result;
}

uint64_t NetworkUnavailableView.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5ACEEE8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t NetworkUnavailableView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C68, &qword_1E5AD30B0);
  sub_1E5A8CEF0(&qword_1ED026C70, &qword_1ED026C68, &qword_1E5AD30B0, MEMORY[0x1E697D658]);
  return sub_1E5ACF368();
}

uint64_t sub_1E5A8CA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5ACEEE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5ACFB98();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5ACFB88();
  type metadata accessor for LocalizableBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  (*(v5 + 16))(v7, a1, v4);
  result = sub_1E5ACFBE8();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

id sub_1E5A8CBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5ACEEE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5ACFB98();
  MEMORY[0x1EEE9AC00](v8 - 8);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v10 = result;
    MobileGestalt_get_wapiCapability();

    sub_1E5ACFB88();
    type metadata accessor for LocalizableBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    (*(v5 + 16))(v7, a1, v4);
    result = sub_1E5ACFBE8();
    *a2 = result;
    *(a2 + 8) = v13;
    *(a2 + 16) = 0;
    *(a2 + 24) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5A8CDCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C68, &qword_1E5AD30B0);
  sub_1E5A8CEF0(&qword_1ED026C70, &qword_1ED026C68, &qword_1E5AD30B0, MEMORY[0x1E697D658]);
  return sub_1E5ACF368();
}

uint64_t sub_1E5A8CEF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

char *sub_1E5A8CF60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1E5ACEF48();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_floatingTabBar];
  v12 = MEMORY[0x1E699DBD0];
  *v11 = v10;
  *(v11 + 1) = v12;
  v36.receiver = v4;
  v36.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setClipsToBounds_];
  v14 = &v13[OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_floatingTabBar];
  v15 = *&v13[OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_floatingTabBar];
  swift_getObjectType();
  sub_1E5A8D944(qword_1EE2FCC90, v16, type metadata accessor for FloatingPaletteContentView, &unk_1E5AD314C);
  v17 = v15;
  sub_1E5ACEFF8();

  [*v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 addSubview_];
  v18 = *v14;
  [v13 directionalLayoutMargins];
  [v18 setDirectionalLayoutMargins_];

  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026B50, &qword_1E5AD3470);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E5AD2EC0;
  v21 = [*v14 leadingAnchor];
  v22 = [v13 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [*v14 trailingAnchor];
  v25 = [v13 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [*v14 topAnchor];
  v28 = [v13 topAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v30 = [*v14 bottomAnchor];
  v31 = [v13 bottomAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_1E5A8D944(&unk_1EE2FC9E8, 255, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
  sub_1E5ACF048();
  v33 = sub_1E5ACFF78();

  *(v20 + 56) = v33;
  sub_1E5A8D98C();
  v34 = sub_1E5ACFC68();

  [v19 activateConstraints_];

  return v13;
}

id sub_1E5A8D544()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E5A8D5F0(void *a1, char a2)
{
  v2 = [a1 navigationItem];
  v3 = [v2 searchController];

  if (v3)
  {
  }

  else
  {
    swift_getObjectType();
    sub_1E5ACEFA8();
  }
}

uint64_t sub_1E5A8D6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E5A8D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E5A8D7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E5A8D870()
{
  v1 = v0 + OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    swift_getObjectType();
    v4 = v0;
    v5 = sub_1E5ACEFE8();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    ObjectType = swift_getObjectType();
    (*(v3 + 32))(v4, v7, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E5A8D944(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1E5A8D98C()
{
  result = qword_1EE2FC9C0;
  if (!qword_1EE2FC9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2FC9C0);
  }

  return result;
}

uint64_t DynamicContentEnvironment.init(handleNetworkStatusChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E5A8D9E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E5A8DA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1E5A8DA74(void *a1)
{
  v1 = a1;
  v2 = FloatingTabBarController.supportedInterfaceOrientations.getter();

  return v2;
}

id FloatingTabBarController.supportedInterfaceOrientations.getter()
{
  ObjectType = swift_getObjectType();
  v2 = FloatingTabBarController.selectedViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_supportedInterfaceOrientations);
  }
}

id FloatingTabBarController.selectedViewController.getter()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = v1 + qword_1EE2FCEF0;
  swift_beginAccess();
  if (v3[8])
  {
    return 0;
  }

  v4 = *v3;
  swift_beginAccess();
  type metadata accessor for TabBarItemDescriptor(255, *(v2 + 80), *(v2 + 88), v5);
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  if ((sub_1E5ACFEF8() & 1) == 0)
  {
    return 0;
  }

  v6 = qword_1EE2FCED8;
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E69347A0](v4);
    goto LABEL_7;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 8 * v4 + 32);
LABEL_7:
    v10 = v9;
    swift_endAccess();
    return v10;
  }

  __break(1u);
  return result;
}

id sub_1E5A8DCC8(void *a1)
{
  v1 = a1;
  v2 = FloatingTabBarController.keyCommands.getter();

  if (v2)
  {
    sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
    v3 = sub_1E5ACFC68();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FloatingTabBarController.keyCommands.getter()
{
  ObjectType = swift_getObjectType();
  v2 = FloatingTabBarController.selectedViewController.getter();
  if (!v2)
  {
    v9.receiver = v0;
    v9.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v9, sel_keyCommands);
    if (v7)
    {
      v3 = v7;
      sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
      v6 = sub_1E5ACFC78();
      goto LABEL_6;
    }

    return 0;
  }

  v3 = v2;
  v4 = [v2 keyCommands];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  sub_1E5A7C10C(0, &qword_1ED026CB0, 0x1E69DCBA0);
  v6 = sub_1E5ACFC78();

LABEL_6:
  return v6;
}

id sub_1E5A8DE38(void *a1)
{
  v1 = a1;
  FloatingTabBarController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED026D30, &qword_1E5AD43E0);
  v2 = sub_1E5ACFC68();

  return v2;
}

uint64_t FloatingTabBarController.preferredFocusEnvironments.getter()
{
  v4 = FloatingTabBarController.selectedViewController.getter();
  v0 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v1 = swift_unknownObjectRetain();
    MEMORY[0x1E6934320](v1);
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E5ACFC98();
    }

    sub_1E5ACFCC8();
    v0 = v3;
  }

  sub_1E5A8DF58(&v4);
  return v0;
}

uint64_t sub_1E5A8DF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026CB8, &qword_1E5AD3240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E5A8DFC0(void *a1)
{
  v1 = a1;
  v2 = FloatingTabBarController.childForStatusBarStyle.getter();

  return v2;
}

id sub_1E5A8E010(void *a1)
{
  v1 = a1;
  v2 = FloatingTabBarController.childForStatusBarHidden.getter();

  return v2;
}

uint64_t sub_1E5A8E060(void *a1)
{
  v1 = a1;
  v2 = FloatingTabBarController.prefersHomeIndicatorAutoHidden.getter();

  return v2 & 1;
}

id FloatingTabBarController.prefersHomeIndicatorAutoHidden.getter()
{
  ObjectType = swift_getObjectType();
  v2 = FloatingTabBarController.selectedViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 prefersHomeIndicatorAutoHidden];

    return v4;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_prefersHomeIndicatorAutoHidden);
  }
}

id sub_1E5A8E100(void *a1)
{
  v1 = a1;
  v2 = FloatingTabBarController.childForHomeIndicatorAutoHidden.getter();

  return v2;
}

id sub_1E5A8E150(SEL *a1)
{
  ObjectType = swift_getObjectType();
  result = FloatingTabBarController.selectedViewController.getter();
  if (!result)
  {
    v5.receiver = v1;
    v5.super_class = ObjectType;
    return objc_msgSendSuper2(&v5, *a1);
  }

  return result;
}

uint64_t FloatingTabBarController.selectedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = v2 + qword_1EE2FCEF0;
  swift_beginAccess();
  if (v5[8] == 1)
  {
    v7 = *(v4 + 80);
    v8 = *(v4 + 88);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v4 + 80);
    v8 = *(v4 + 88);
    v10 = type metadata accessor for TabBarItemDescriptor(255, v7, v8, v9);
    sub_1E5ACFD08();
    swift_getWitnessTable();
    sub_1E5ACFE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
    if (sub_1E5ACFEF8())
    {
      swift_beginAccess();
      sub_1E5ACFD38();
      swift_endAccess();
      return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    }
  }

  v12 = type metadata accessor for TabBarItemDescriptor(0, v7, v8, v6);
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t FloatingTabBarController.selectedIndex.getter()
{
  v1 = v0 + qword_1EE2FCEF0;
  swift_beginAccess();
  return *v1;
}

id sub_1E5A8E470()
{
  v1 = qword_1EE2FCEA8;
  v2 = *(v0 + qword_1EE2FCEA8);
  if (v2)
  {
    v3 = *(v0 + qword_1EE2FCEA8);
  }

  else
  {
    v4 = sub_1E5A8E4D0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E5A8E4D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
  [v0 setMass_];
  [v0 setStiffness_];
  [v0 setDamping_];
  v1 = v0;
  [v1 durationForEpsilon_];
  [v1 setDuration_];
  v2 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v3) = 1045220557;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  v6 = [v2 initWithControlPoints__:0.0 :{v3, v4, v5}];
  [v1 setTimingFunction_];

  return v1;
}

uint64_t (*FloatingTabBarController.init(store:viewBuilder:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4))(void)
{
  v5 = v4;
  v49 = a4;
  v44 = a3;
  v46 = a2;
  v42 = a1;
  ObjectType = swift_getObjectType();
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1E5ACEEE8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5ACFB98();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1E5ACF068();
  MEMORY[0x1EEE9AC00](v45);
  swift_unknownObjectWeakInit();
  v12 = qword_1EE2FCEB8;
  type metadata accessor for FloatingPaletteContentView();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = qword_1EE2FCED0;
  type metadata accessor for FloatingTitleView();
  *&v5[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = &v5[qword_1EE2FCEF0];
  *v14 = 0;
  v14[8] = 1;
  v15 = qword_1EE2FCF08;
  v16 = *((v7 & v6) + 0x50);
  v17 = *((v7 & v6) + 0x58);
  type metadata accessor for TabBarItemDescriptor(0, v16, v17, v18);
  *&v5[v15] = sub_1E5ACFCA8();
  *&v5[qword_1EE2FCED8] = MEMORY[0x1E69E7CC0];
  *&v5[qword_1EE2FCEA8] = 0;
  type metadata accessor for TabBarFeature(255, v16, v17, v19);
  swift_getWitnessTable();
  sub_1E5ACF9D8();
  v42();
  *&v5[qword_1EE2FCEE0] = sub_1E5ACF9B8();
  v20 = &v5[qword_1EE2FCEF8];
  v21 = v49;
  *v20 = v44;
  v20[1] = v21;
  v68.receiver = v5;
  v68.super_class = ObjectType;

  v22 = objc_msgSendSuper2(&v68, sel_initWithNibName_bundle_, 0, 0);
  v23 = qword_1EE2FCED0;
  *(*(v22 + qword_1EE2FCED0) + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_delegate + 8) = &off_1F5F68FE0;
  swift_unknownObjectWeakAssign();
  v24 = *(v22 + v23);
  v25 = v22;
  v26 = v24;
  v27 = [v25 traitCollection];
  v28 = [v27 preferredContentSizeCategory];

  sub_1E5ACFF88();
  sub_1E5ACF058();
  sub_1E5ACFF98();

  v45 = qword_1EE2FCEB8;
  *(*(v25 + qword_1EE2FCEB8) + OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_delegate + 8) = &off_1F5F68FB8;
  swift_unknownObjectWeakAssign();
  v65 = v16;
  v66 = v17;
  KeyPath = swift_getKeyPath();
  v62 = v16;
  v63 = v17;
  v64 = KeyPath;
  swift_getKeyPath();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v31[2] = v16;
  v31[3] = v17;
  v31[4] = v30;
  sub_1E5ACFD08();

  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5ACF998();

  v60 = v16;
  v61 = v17;
  v32 = swift_getKeyPath();
  v57 = v16;
  v58 = v17;
  v59 = v32;
  swift_getKeyPath();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v33;

  sub_1E5ACF998();

  v55 = v16;
  v56 = v17;
  v35 = swift_getKeyPath();
  v52 = v16;
  v53 = v17;
  v54 = v35;
  swift_getKeyPath();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v37 = swift_allocObject();
  v37[2] = v16;
  v37[3] = v17;
  v37[4] = v36;
  sub_1E5ACF998();

  v38 = *(v25 + v45);
  sub_1E5ACFB88();
  type metadata accessor for LocalizableBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];

  sub_1E5ACF9A8();

  v50 = v16;
  v51 = v17;
  swift_getKeyPath();
  sub_1E5ACFA48();

  sub_1E5ACFBE8();
  swift_getObjectType();
  sub_1E5ACEF88();

  return v25;
}

uint64_t sub_1E5A8EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v79 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v80 = v7;
  v8 = type metadata accessor for TabBarItemDescriptor(255, v7, v79, a4);
  v9 = sub_1E5ACFFD8();
  v75 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v78 = v68 - v11;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v68 - v13;
  v15 = sub_1E5AD01E8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v68 - v20;
  result = [v5 isViewLoaded];
  if (result)
  {
    v69 = v9;
    v70 = v14;
    v74 = v12;
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v23 = sub_1E5ACF038();
    v24 = __swift_project_value_buffer(v23, qword_1EE300080);
    v68[1] = "SEARCHBAR_PLACEHOLDER";
    v68[2] = v24;
    sub_1E5ACF008();
    v82 = a1;
    v25 = qword_1EE2FCF08;
    v76 = qword_1EE2FCF08;
    swift_beginAccess();
    v81 = *&v5[v25];
    v26 = sub_1E5ACFD08();
    swift_getWitnessTable();
    v68[3] = swift_getWitnessTable();
    sub_1E5ACFB68();
    WitnessTable = swift_getWitnessTable();
    sub_1E5AD01F8();
    v77 = a1;
    v27 = *(v16 + 8);
    v27(v19, v15);
    v28 = sub_1E5AD01C8();
    v29 = (v27)(v21, v15);
    v73 = v68;
    v82 = v28;
    MEMORY[0x1EEE9AC00](v29);
    v31 = v79;
    v30 = v80;
    v68[-2] = v80;
    v68[-1] = v31;
    sub_1E5AD01D8();
    sub_1E5ACFD08();
    swift_getWitnessTable();
    v32 = sub_1E5ACFC38();

    v82 = v32;
    v73 = swift_getWitnessTable();
    v33 = WitnessTable;
    v34 = sub_1E5ACFE48();
    v71 = v68;
    v82 = *&v5[v76];
    MEMORY[0x1EEE9AC00](v82);
    v68[-4] = v30;
    v68[-3] = v31;
    v68[-2] = v34;

    swift_getWitnessTable();
    v35 = sub_1E5AD0118();

    v81 = v35;
    v36 = sub_1E5A7C10C(255, &unk_1EE2FC9D0, 0x1E69DD258);
    swift_getTupleTypeMetadata2();
    v37 = sub_1E5ACFCA8();
    v38 = sub_1E5AA2AC0(v37, v8, v36, v33);

    v84 = v38;
    MEMORY[0x1EEE9AC00](v39);
    v68[-2] = v5;
    sub_1E5ACFB08();
    sub_1E5ACFC48();

    v41 = v82;
    v82 = v77;
    MEMORY[0x1EEE9AC00](v40);
    v68[-2] = v41;
    v68[-1] = v5;
    v42 = swift_getWitnessTable();
    v44 = sub_1E5A9E49C(sub_1E5A94A38, &v68[-4], v26, v36, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);

    v45 = v78;
    FloatingTabBarController.selectedItem.getter(v78);
    v46 = v74;
    if ((*(v74 + 48))(v45, 1, v8) == 1)
    {
      (*(v75 + 8))(v45, v69);
      v47 = v77;
    }

    else
    {
      v48 = v70;
      (*(v46 + 32))(v70, v45, v8);
      v47 = v77;
      v81 = v77;
      sub_1E5ACFED8();
      if (v83 != 1)
      {
        sub_1E5A903D4(v82, v49, v50, v51);
        (*(v46 + 8))(v48, v8);
LABEL_21:
        v62 = v76;

        v63 = sub_1E5ACFCD8();

        v64 = v63 > 0;
        *&v5[v62] = v47;

        v65 = qword_1EE2FCED8;
        swift_beginAccess();
        *&v5[v65] = v44;

        return sub_1E5A92708(v47, v64, v66, v67);
      }

      (*(v46 + 8))(v48, v8);
    }

    v52 = FloatingTabBarController.selectedViewController.getter();
    if (v52)
    {
      v53 = v52;
      sub_1E5ACF008();
      [v53 willMoveToParentViewController_];
      result = [v53 view];
      if (!result)
      {
        goto LABEL_26;
      }

      v54 = result;
      [result removeFromSuperview];

      [v53 removeFromParentViewController];
    }

    v55 = &v5[qword_1EE2FCEF0];
    swift_beginAccess();
    if (v55[8])
    {
      goto LABEL_21;
    }

    v56 = *v55;
    result = sub_1E5A9421C(v56, v47, v80, v79);
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }

    if ((v44 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1E69347A0](v56, v44);
LABEL_17:
      v58 = v57;
      sub_1E5A9224C(v57, 0);
      v59 = [v58 contentScrollViewForEdge_];
      if (v59)
      {
        v60 = v59;
      }

      else
      {
        v61 = *&v5[qword_1EE2FCED0];
        sub_1E5AABFF0();
        [v61 setNeedsLayout];
      }

      goto LABEL_21;
    }

    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v56 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v57 = *(v44 + 8 * v56 + 32);
      goto LABEL_17;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_1E5A8F830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v7 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a6(v7);
  }
}

void *sub_1E5A8F8A0(uint64_t a1)
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v3 = sub_1E5ACF038();
  __swift_project_value_buffer(v3, qword_1EE300080);
  sub_1E5ACF008();
  if ([v1 isViewLoaded])
  {
    v7 = &v1[qword_1EE2FCEF0];
    swift_beginAccess();
    return sub_1E5A90934(a1, (v7[8] & 1) == 0, 0, 0);
  }

  else
  {

    return sub_1E5A903D4(a1, v4, v5, v6);
  }
}

void sub_1E5A8F9D0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1E5A8FA2C(v3);
  }
}

uint64_t sub_1E5A8FA2C(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return result;
  }

  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  v2 = v1;
  v3 = FloatingTabBarController.selectedViewController.getter();
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      if (qword_1EE2FCA80 != -1)
      {
        swift_once();
      }

      v7 = sub_1E5ACF038();
      __swift_project_value_buffer(v7, qword_1EE300080);
      sub_1E5ACF008();
      v8 = [v6 viewControllers];
      sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
      v9 = sub_1E5ACFC78();

      if (v9 >> 62)
      {
        v10 = sub_1E5AD0178();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10 != 1)
      {
        v15 = [v6 popToRootViewControllerAnimated_];
LABEL_16:

        goto LABEL_17;
      }

      v11 = [v6 topViewController];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 contentScrollViewForEdge_];
        if (v13)
        {
          v14 = v13;
          [v13 _scrollToTopIfPossible_];

          v4 = v14;
        }

        v15 = v12;
        goto LABEL_16;
      }
    }

LABEL_17:
  }

  return sub_1E5A915BC(v2);
}

Swift::Void __swiftcall FloatingTabBarController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5ACF038();
  __swift_project_value_buffer(v2, qword_1EE300080);
  sub_1E5ACF008();
  sub_1E5ACF988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CC0, &qword_1E5AD33A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E5AD3200;
  v4 = sub_1E5ACF078();
  v5 = MEMORY[0x1E69DC2B0];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1E5ACFF38();
  swift_unknownObjectRelease();
}

void sub_1E5A8FE04(void *a1)
{
  v1 = a1;
  FloatingTabBarController.viewDidLoad()();
}

Swift::Void __swiftcall FloatingTabBarController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TabBarAction(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), v4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - v7;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1);
  sub_1E5ACF9A8();
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  (*(v6 + 8))(v8, v5);
}

void sub_1E5A8FFA0(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  FloatingTabBarController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall FloatingTabBarController.viewLayoutMarginsDidChange()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewLayoutMarginsDidChange);
  v1 = *&v0[qword_1EE2FCEB8];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 directionalLayoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setDirectionalLayoutMargins_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E5A900B4(void *a1)
{
  v1 = a1;
  FloatingTabBarController.viewLayoutMarginsDidChange()();
}

void __swiftcall FloatingTabBarController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  ObjectType = swift_getObjectType();
  v5 = FloatingTabBarController.selectedViewController.getter();
  if (v5)
  {
    v6 = v5;
    [v5 contentScrollViewForEdge_];
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = ObjectType;
    v7 = [(UIScrollView_optional *)&v8 contentScrollViewForEdge:a2];
  }
}

id sub_1E5A9018C(void *a1, uint64_t a2, NSDirectionalRectEdge a3)
{
  v4 = a1;
  FloatingTabBarController.contentScrollView(for:)(v5, a3);
  v7 = v6;

  return v7;
}

Swift::Void __swiftcall FloatingTabBarController._observeScrollViewDidScroll(_:)(UIScrollView_optional *a1)
{
  v3 = FloatingTabBarController.selectedViewController.getter();
  if (v3)
  {
    v13 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 topViewController];
      if (v5)
      {

        if (!a1)
        {
          __break(1u);
          return;
        }

        v6 = [(UIScrollView_optional *)a1 delegate];
        if (!v6 || (v7 = *(v1 + qword_1EE2FCED0), v8 = v6, swift_unknownObjectRelease(), v8 != v7))
        {
          if (qword_1EE2FCA80 != -1)
          {
            swift_once();
          }

          v9 = sub_1E5ACF038();
          __swift_project_value_buffer(v9, qword_1EE300080);
          v10 = sub_1E5ACF018();
          v11 = sub_1E5ACFF08();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_1E5A79000, v10, v11, "[FloatingTabBarController] Delegate for scroll view doesn't match floating title view", v12, 2u);
            MEMORY[0x1E6935190](v12, -1, -1);
          }
        }
      }
    }
  }
}

void sub_1E5A90368(void *a1, uint64_t a2, UIScrollView_optional *a3)
{
  v5 = a3;
  v6 = a1;
  FloatingTabBarController._observeScrollViewDidScroll(_:)(a3);
}

uint64_t sub_1E5A903D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = type metadata accessor for TabBarItemDescriptor(0, v7, v8, a4);
  v36[0] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v12 = sub_1E5ACF038();
  __swift_project_value_buffer(v12, qword_1EE300080);
  sub_1E5ACF008();
  v13 = v4 + qword_1EE2FCEF0;
  swift_beginAccess();
  *v13 = a1;
  v13[8] = 0;
  v14 = qword_1EE2FCF08;
  swift_beginAccess();
  v40 = *(v5 + v14);
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  *v39 = v37;
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  result = sub_1E5ACFEF8();
  if (result)
  {
    swift_beginAccess();
    v16 = *(v5 + v14);
    sub_1E5ACFD38();
    v17 = swift_endAccess();
    *&v37 = v16;
    MEMORY[0x1EEE9AC00](v17);
    v36[-2] = v7;
    v36[-1] = v8;

    swift_getWitnessTable();
    v39[0] = sub_1E5AD0118();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E5ACFED8();

    if ((BYTE8(v37) & 1) == 0)
    {
      v18 = v37;
      v19 = (*(v5 + qword_1EE2FCED0) + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_floatingTabBar);
      v20 = *v19;
      swift_getObjectType();
      v21 = v20;
      v22 = sub_1E5ACEFB8();
      v24 = v23;

      if ((v24 & 1) != 0 || v18 != v22)
      {
        v32 = *v19;
        swift_getObjectType();
        v33 = v32;
        sub_1E5ACEF98();

        v34 = *(*(v5 + qword_1EE2FCEB8) + OBJC_IVAR____TtC14FitnessAppRoot26FloatingPaletteContentView_floatingTabBar);
        swift_getObjectType();
        v35 = v34;
        sub_1E5ACEF98();
      }

      else
      {
        v25 = sub_1E5ACF018();
        v26 = sub_1E5ACFF28();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v39[0] = v28;
          *v27 = 134218242;
          *(v27 + 4) = v18;
          *(v27 + 12) = 2080;
          *&v37 = v18;
          BYTE8(v37) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C60, &unk_1E5AD3090);
          v29 = sub_1E5ACFFC8();
          v31 = sub_1E5AA2334(v29, v30, v39);

          *(v27 + 14) = v31;
          _os_log_impl(&dword_1E5A79000, v25, v26, "[FloatingTabBarController] New visible index %ld matches displayed index %s", v27, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x1E6935190](v28, -1, -1);
          MEMORY[0x1E6935190](v27, -1, -1);
        }
      }
    }

    return (*(v36[0] + 8))(v11, v9);
  }

  return result;
}

void *sub_1E5A90934(uint64_t a1, char a2, uint64_t (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v111 = a4;
  v112 = a3;
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v109 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v110 = v8;
  v9 = type metadata accessor for TabBarItemDescriptor(0, v109, v8, a4);
  v107 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v104 - v10;
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v12 = sub_1E5ACF038();
  __swift_project_value_buffer(v12, qword_1EE300080);
  sub_1E5ACF008();
  swift_beginAccess();

  v13 = sub_1E5ACFCD8();

  v14 = v13 <= a1;
  v15 = a1;
  if (!v14)
  {
    v108 = a1;
    v16 = &v4[qword_1EE2FCEF0];
    result = swift_beginAccess();
    v18 = v16[8];
    if ((v18 & 1) == 0 && *v16 == v108)
    {
      if (v112)
      {
        return v112(result);
      }

      return result;
    }

    v106 = *v16;
    swift_unknownObjectWeakInit();
    if ((a2 & 1) == 0)
    {
      v33 = sub_1E5ACF018();
      v34 = sub_1E5ACFF28();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v125 = v36;
        *v35 = 136315394;
        v114 = v106;
        LOBYTE(v115) = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C60, &unk_1E5AD3090);
        v37 = sub_1E5ACFFC8();
        v39 = sub_1E5AA2334(v37, v38, &v125);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2048;
        v40 = v108;
        *(v35 + 14) = v108;
        _os_log_impl(&dword_1E5A79000, v33, v34, "[FloatingTabBarController] Non-animated transition between item %s and %ld", v35, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1E6935190](v36, -1, -1);
        MEMORY[0x1E6935190](v35, -1, -1);
      }

      else
      {

        v40 = v108;
      }

      sub_1E5A9328C(v120, v40, v112);
      return MEMORY[0x1E6935220](v120);
    }

    v24 = qword_1EE2FCED8;
    swift_beginAccess();
    v25 = *&v5[v24];
    if (v18)
    {

      LODWORD(v104) = 0;
      v105 = 0;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = v107;
    }

    else
    {
      swift_beginAccess();

      v41 = v106;
      sub_1E5ACFD38();
      swift_endAccess();
      sub_1E5A933C0(v11, v41, v25, &v121);
      v27 = *(&v121 + 1);
      v26 = *&v121;
      v28 = v122;
      LODWORD(v104) = v123;
      v105 = v124;
      v29 = v107;
      (*(v107 + 8))(v11, v9);
      type metadata accessor for FloatingTabBarController.FloatingTabBarTransitionElement(255, v109, v110, v42);
      v43 = sub_1E5ACFFD8();
      (*(*(v43 - 8) + 16))(&v114, &v121, v43);
    }

    swift_beginAccess();
    v44 = v108;
    sub_1E5ACFD38();
    swift_endAccess();
    sub_1E5A933C0(v11, v44, v25, &v125);
    v45 = v129;

    (*(v29 + 8))(v11, v9);
    v46 = v105;
    if (v105)
    {
      v47 = v129;
      if (v129)
      {
        v48 = v125;
        v49 = v126;
        v50 = v127;
        v130[0] = *v128;
        *(v130 + 3) = *&v128[3];
        v51 = v27 == *(&v125 + 1) && v26 == *&v125;
        if (!v51 && ((v104 ^ v127) & 1) != 0 && v28 != v126)
        {
          v52 = v45;
          [v47 contentSize];
          v54 = v53;
          [v47 bounds];
          if (CGRectGetHeight(v131) < v54)
          {
            v104 = v52;
            LODWORD(v107) = v50;
            v56 = sub_1E5ACF018();
            v57 = sub_1E5ACFF28();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v113[0] = v59;
              *v58 = 136315394;
              v114 = v106;
              LOBYTE(v115) = v18;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C60, &unk_1E5AD3090);
              v60 = sub_1E5ACFFC8();
              v62 = sub_1E5AA2334(v60, v61, v113);

              *(v58 + 4) = v62;
              *(v58 + 12) = 2048;
              v63 = v108;
              *(v58 + 14) = v108;
              _os_log_impl(&dword_1E5A79000, v56, v57, "[FloatingTabBarController] Animating transition between item %s and %ld", v58, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v59);
              MEMORY[0x1E6935190](v59, -1, -1);
              MEMORY[0x1E6935190](v58, -1, -1);
            }

            else
            {

              v63 = v108;
            }

            v81 = v112;
            v82 = objc_opt_self();
            [v82 begin];
            v83 = [v5 traitCollection];
            sub_1E5ACEEF8();
            v85 = v84;

            v86 = *&v5[qword_1EE2FCED0];
            if (v49 >= v28)
            {
              *(v86 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) = 0;
              *(v86 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) = 0;
              v89 = v86 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset;
              *v89 = 0;
              *(v89 + 8) = 1;
              v90 = v86 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint;
              *v90 = 0;
              *(v90 + 8) = 0;
              *(v90 + 16) = 1;
            }

            else
            {
              *(v86 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating) = 1;
              v87 = v86 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset;
              *v87 = v85;
              *(v87 + 8) = 0;
              v88 = v86 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint;
              *v88 = v48;
              *(v88 + 8) = *(&v48 + 1) + v85;
              *(v88 + 16) = 0;
              *(v86 + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) = 1;
            }

            v91 = v104;
            v92 = v63;
            v94 = v109;
            v93 = v110;
            sub_1E5A9328C(v120, v92, v81);
            [v47 setContentOffset:0 animated:{*&v48, *(&v48 + 1) + v85}];
            [v47 setContentOffset:0 animated:{*&v48, *(&v48 + 1) + v85}];
            v95 = swift_allocObject();
            *(v95 + 16) = v5;
            *(v95 + 24) = v47;
            *(v95 + 32) = v48;
            *(v95 + 48) = v49;
            *(v95 + 56) = v107;
            *(v95 + 57) = v130[0];
            *(v95 + 60) = *(v130 + 3);
            *(v95 + 64) = v47;
            v118 = sub_1E5A949E4;
            v119 = v95;
            v114 = MEMORY[0x1E69E9820];
            v115 = 1107296256;
            v116 = sub_1E5AC4684;
            v117 = &block_descriptor_48;
            v96 = _Block_copy(&v114);
            type metadata accessor for FloatingTabBarController.FloatingTabBarTransitionElement(255, v94, v93, v97);
            v98 = sub_1E5ACFFD8();
            v99 = *(v98 - 8);
            v100 = *(v99 + 16);
            v100(v113, &v125, v98);
            v100(v113, &v125, v98);
            v101 = v5;

            [v82 setCompletionBlock_];
            _Block_release(v96);
            [v82 commit];
            v102 = v105;

            v103 = *(v99 + 8);
            v103(&v125, v98);
            v103(&v125, v98);

            return MEMORY[0x1E6935220](v120);
          }

          type metadata accessor for FloatingTabBarController.FloatingTabBarTransitionElement(255, v109, v110, v55);
          v64 = sub_1E5ACFFD8();
          (*(*(v64 - 8) + 8))(&v125, v64);
        }
      }
    }

    v65 = sub_1E5ACF018();
    v66 = sub_1E5ACFF28();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v113[0] = v68;
      *v67 = 136315394;
      v114 = v106;
      LOBYTE(v115) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C60, &unk_1E5AD3090);
      v69 = sub_1E5ACFFC8();
      v71 = sub_1E5AA2334(v69, v70, v113);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2048;
      v72 = v108;
      *(v67 + 14) = v108;
      _os_log_impl(&dword_1E5A79000, v65, v66, "[FloatingTabBarController] Transitioning between item %s and %ld without custom animation", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1E6935190](v68, -1, -1);
      MEMORY[0x1E6935190](v67, -1, -1);
    }

    else
    {

      v72 = v108;
    }

    v73 = *&v5[qword_1EE2FCED0];
    v73[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isAnimating] = 0;
    v74 = &v73[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationOffset];
    *v74 = 0;
    v74[8] = 1;
    v75 = &v73[OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_animationStartingPoint];
    *v75 = 0;
    *(v75 + 1) = 0;
    v75[16] = 1;
    v76 = v72;
    v78 = v109;
    v77 = v110;
    sub_1E5A9328C(v120, v76, v112);
    sub_1E5AABFF0();
    [v73 setNeedsLayout];

    type metadata accessor for FloatingTabBarController.FloatingTabBarTransitionElement(255, v78, v77, v79);
    v80 = sub_1E5ACFFD8();
    (*(*(v80 - 8) + 8))(&v125, v80);
    return MEMORY[0x1E6935220](v120);
  }

  v19 = v4;
  v20 = sub_1E5ACF018();
  v21 = sub_1E5ACFF08();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = v15;
    *(v22 + 12) = 2048;

    v23 = sub_1E5ACFCD8();

    *(v22 + 14) = v23;

    _os_log_impl(&dword_1E5A79000, v20, v21, "[FloatingTabBarController] Failed to select item at index out of bounds: %ld. Descriptor count: %ld", v22, 0x16u);
    MEMORY[0x1E6935190](v22, -1, -1);
  }

  else
  {

    v20 = v19;
  }

  return sub_1E5A903D4(v15, v30, v31, v32);
}

uint64_t sub_1E5A915BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = sub_1E5ACFA88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5ACFAA8();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A7C10C(0, &qword_1ED026C40, 0x1E69E9610);
  v10 = sub_1E5ACFF58();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = *((v2 & v1) + 0x50);
  v12[3] = *((v2 & v1) + 0x58);
  v12[4] = v11;
  aBlock[4] = sub_1E5A94950;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5AC4684;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  sub_1E5ACFA98();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5A94974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C50, &unk_1E5AD3460);
  sub_1E5A8C710();
  sub_1E5AD0008();
  MEMORY[0x1E6934630](0, v9, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1E5A918A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = type metadata accessor for TabBarItemDescriptor(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v12 = sub_1E5AD01D8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  (*(v15 + 16))(v21 - v13, a1, v12);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED026C60, &unk_1E5AD3090);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(TupleTypeMetadata3 + 48);
  if (a1 == 1)
  {
    (*(v9 + 56))(a5, 1, 1, v8);
    return (*(v9 + 8))(&v14[v17], v8);
  }

  else
  {
    v21[1] = v5;
    v19 = v14[*(TupleTypeMetadata3 + 64) + 8];
    v20 = *(v9 + 32);
    v20(v11, &v14[v17], v8);
    if (v19 == 1)
    {
      v20(a5, v11, v8);
      return (*(v9 + 56))(a5, 0, 1, v8);
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      return (*(v9 + 56))(a5, 1, 1, v8);
    }
  }
}

void *sub_1E5A91B34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for TabBarItemDescriptor(0, *((*MEMORY[0x1E69E7D40] & *a3) + 0x50), *((*MEMORY[0x1E69E7D40] & *a3) + 0x58), a4);
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1E5ACFED8();
  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    sub_1E5ACFD38();
    swift_endAccess();
    v7 = qword_1EE2FCED8;
    result = swift_beginAccess();
    v8 = *(a3 + v7);
    if ((v8 & 0xC000000000000001) == 0)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v8 + 8 * v10 + 32);
LABEL_6:
        swift_endAccess();
        sub_1E5A7C10C(255, &unk_1EE2FC9D0, 0x1E69DD258);
        swift_getWitnessTable();
        sub_1E5ACFB08();
        return sub_1E5ACFB28();
      }

      __break(1u);
      return result;
    }

    MEMORY[0x1E69347A0]();
    goto LABEL_6;
  }

  return result;
}

void sub_1E5A91DA0(uint64_t a1@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  v45 = a4;
  v6 = *a3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1E5ACEEE8();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v7 & v6) + 0x50);
  v12 = *((v7 & v6) + 0x58);
  v14 = type metadata accessor for TabBarItemDescriptor(0, v11, v12, v13);
  sub_1E5A7C10C(0, &unk_1EE2FC9D0, 0x1E69DD258);
  swift_getWitnessTable();
  sub_1E5ACFB18();
  if (v46)
  {
    v15 = v46;
LABEL_16:
    *v45 = v15;
    return;
  }

  v40 = v8;
  v41 = v12;
  v42 = v11;
  v44 = a1;
  v16 = _UISolariumEnabled();
  v17 = *(v14 + 36);
  if (v16)
  {
    v18 = *(a3 + qword_1EE2FCEB8);
    v19 = v44 + v17;
    v20 = a3;
    v21 = 0;
  }

  else
  {
    v21 = *(a3 + qword_1EE2FCED0);
    v19 = v44 + v17;
    v20 = a3;
    v18 = 0;
  }

  v15 = (*(a3 + qword_1EE2FCEF8))(v19, v20, &protocol witness table for FloatingTabBarController<A>, v21, v18);
  v22 = v10;
  v23 = v41;
  v24 = [v15 tabBarItem];
  if (!v24)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  v26 = sub_1E5ACF9A8();
  MEMORY[0x1EEE9AC00](v26);
  v27 = v42;
  *(&v40 - 2) = v42;
  *(&v40 - 1) = v23;
  swift_getKeyPath();
  sub_1E5ACFA48();

  (*(v23 + 88))(v22, v27, v23);
  v29 = v28;
  (*(v43 + 8))(v22, v40);
  if (v29)
  {
    v30 = sub_1E5ACFBA8();
  }

  else
  {
    v30 = 0;
  }

  [v25 setTitle_];

  v31 = v42;
  if (((*(v23 + 48))(v42, v23) & 1) == 0 || ((*(v23 + 80))(v31, v23), !v32))
  {
LABEL_14:
    v37 = [v15 tabBarItem];
    if (v37)
    {
      v38 = v37;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1E5AD00A8();
      MEMORY[0x1E69342D0](0xD000000000000013, 0x80000001E5ADFFC0);
      sub_1E5AD0338();
      v39 = sub_1E5ACFBA8();

      [v38 setAccessibilityIdentifier_];

      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v33 = [v15 tabBarItem];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1E5ACFBA8();

    v36 = [objc_opt_self() systemImageNamed_];

    [v34 setImage_];
    goto LABEL_14;
  }

LABEL_19:
  __break(1u);
}

id sub_1E5A9224C(void *a1, uint64_t (*a2)(id))
{
  v3 = v2;
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v6 = sub_1E5ACF038();
  __swift_project_value_buffer(v6, qword_1EE300080);
  sub_1E5ACF008();
  [v2 addChildViewController_];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [v8 addSubview_];

  result = [a1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026B50, &qword_1E5AD3470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E5AD2EC0;
  result = [a1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = result;
  v13 = [result topAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  v15 = [result topAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  result = [a1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = result;
  v18 = [result bottomAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = result;
  v20 = [result bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v11 + 40) = v21;
  result = [a1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = result;
  v23 = [result leadingAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = result;
  v25 = [result leadingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v11 + 48) = v26;
  result = [a1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = result;
  v28 = [result trailingAnchor];

  result = [v3 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = objc_opt_self();
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v11 + 56) = v32;
  sub_1E5A7C10C(0, &qword_1EE2FC9C0, 0x1E696ACD8);
  v33 = sub_1E5ACFC68();

  [v30 activateConstraints_];

  [a1 didMoveToParentViewController_];
  result = [a1 setNeedsFocusUpdate];
  if (a2)
  {
    return a2(result);
  }

  return result;
}

id sub_1E5A92708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v13[4] = a1;
  type metadata accessor for TabBarItemDescriptor(255, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v7 = sub_1E5ACFD08();
  v8 = sub_1E5ACEF78();
  WitnessTable = swift_getWitnessTable();
  sub_1E5A9E49C(sub_1E5A94A58, v13, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
  swift_beginAccess();
  swift_getObjectType();
  sub_1E5ACEFD8();
  v11 = *(v4 + qword_1EE2FCEB8);
  swift_getObjectType();
  sub_1E5ACEFD8();

  return [v11 setNeedsLayout];
}

uint64_t sub_1E5A928E8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1E5ACEEE8();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5ACEF08();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v25 = &v23 - v14;
  v23 = a2;
  v16 = *((v6 & v5) + 0x50);
  v17 = *((v6 & v5) + 0x58);
  type metadata accessor for TabBarItemDescriptor(0, v16, v17, v18);
  v19 = (*(v17 + 56))(v16, v17);
  v26 = v20;
  v27 = v19;
  v34 = *a1;
  (*(v17 + 64))(&v35, v16, v17);
  (*(v10 + 104))(v13, **(&unk_1E87884B8 + v35), v9);
  (*(v10 + 32))(v15, v13, v9);
  (*(v17 + 72))(&v35, v16, v17);
  v24 = v35;
  (*(v17 + 80))(v16, v17);
  sub_1E5ACF9A8();
  v32 = v16;
  v33 = v17;
  swift_getKeyPath();
  v21 = v28;
  sub_1E5ACFA48();

  (*(v17 + 88))(v21, v16, v17);
  (*(v29 + 8))(v21, v30);
  return sub_1E5ACEF58();
}

void *sub_1E5A92C88(void *a1)
{
  v2 = v1;
  v4 = [a1 _isScrollViewScrollObserver_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v4)
    {

      return sub_1E5AAB57C(a1);
    }

    v7 = Strong;
    [Strong setDelegate_];

    swift_unknownObjectRelease();
    sub_1E5AAB57C(a1);
  }

  else
  {
    result = sub_1E5AAB57C(a1);
    if (v4)
    {
      return result;
    }
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 _removeScrollViewScrollObserver_];
  }

  [a1 _addScrollViewScrollObserver_];
  swift_unknownObjectWeakAssign();
  return sub_1E5AAB620(a1);
}

void sub_1E5A92DC0(uint64_t (*a1)(id), uint64_t a2)
{
  v3 = FloatingTabBarController.selectedViewController.getter();
  if (v3)
  {
    v4 = v3;
    sub_1E5A94104(v3, a1);
  }

  else if (a1)
  {
    (a1)();
  }
}

void sub_1E5A92E44(uint64_t (*a1)(id))
{
  v2 = FloatingTabBarController.selectedViewController.getter();
  if (v2)
  {
    v3 = v2;
    sub_1E5A9224C(v2, a1);
  }

  else if (a1)
  {
    (a1)();
  }
}

id FloatingTabBarController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E5ACFBA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1E5A92F7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1E5A947C4();
}

id FloatingTabBarController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E5A93024(uint64_t a1)
{
  MEMORY[0x1E6935220](a1 + qword_1EE2FCEC0);

  v2 = *(a1 + qword_1EE2FCEA8);
}

uint64_t sub_1E5A930D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TabBarAction(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v12 - v8);
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v10 = sub_1E5ACF038();
  __swift_project_value_buffer(v10, qword_1EE300080);
  sub_1E5ACF008();
  sub_1E5ACF9A8();
  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return (*(v7 + 8))(v9, v6);
}

void sub_1E5A9328C(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E5A92DC0(0, 0);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v11 = v7;
    sub_1E5A903D4(a2, v8, v9, v10);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_1E5A92E44(a3);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 view];

    if (v16)
    {
      [v16 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E5A933C0(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  *&v85 = a1;
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = sub_1E5ACEEE8();
  v83 = *(v10 - 8);
  *&v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5ACEF08();
  v82 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v72 - v17;
  v19 = sub_1E5ACEF78();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v23 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a4;
  if (!(a3 >> 62))
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v67 = sub_1E5ACF038();
    __swift_project_value_buffer(v67, qword_1EE300080);

    v53 = sub_1E5ACF018();
    v68 = sub_1E5ACFF08();
    if (!os_log_type_enabled(v53, v68))
    {

LABEL_37:
      v57 = 0;
      v60 = 0;
      v40 = 0;
      v63 = 0uLL;
      goto LABEL_38;
    }

    v69 = swift_slowAlloc();
    *v69 = 134218240;
    *(v69 + 4) = a2;
    *(v69 + 12) = 2048;
    if (a3 >> 62)
    {
      v70 = sub_1E5AD0178();
    }

    else
    {
      v70 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v69 + 14) = v70;

    _os_log_impl(&dword_1E5A79000, v53, v68, "[FloatingTabBarController] Failed to make transition element for item at index: %ld. View controller count: %ld", v69, 0x16u);
    v56 = v69;
    goto LABEL_35;
  }

  v80 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v22;
  v64 = v20;
  v65 = sub_1E5AD0178();
  if (v65 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v66 = v65;
  v20 = v64;
  v23 = v80;
  v22 = v81;
  if (v66 <= a2)
  {
    goto LABEL_27;
  }

LABEL_3:
  v79 = v20;
  v80 = v23;
  v81 = v22;
  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v24 = MEMORY[0x1E69347A0](a2, a3);
    goto LABEL_6;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
    __break(1u);
    goto LABEL_25;
  }

  v24 = *(a3 + 8 * a2 + 32);
LABEL_6:
  v25 = v24;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26 || (v27 = [v26 topViewController]) == 0)
  {
    v28 = v25;
    goto LABEL_16;
  }

  v28 = v27;
  v29 = [v27 contentScrollViewForEdge_];
  if (!v29)
  {

LABEL_16:
    if (qword_1EE2FCA80 == -1)
    {
LABEL_17:
      v52 = sub_1E5ACF038();
      __swift_project_value_buffer(v52, qword_1EE300080);
      v53 = sub_1E5ACF018();
      v54 = sub_1E5ACFF08();
      if (!os_log_type_enabled(v53, v54))
      {
LABEL_36:

        goto LABEL_37;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1E5A79000, v53, v54, "[FloatingTabBarController] Failed to make transition element for non-scrollable controller", v55, 2u);
      v56 = v55;
LABEL_35:
      MEMORY[0x1E6935190](v56, -1, -1);
      goto LABEL_36;
    }

LABEL_25:
    swift_once();
    goto LABEL_17;
  }

  v31 = v29;
  v77 = v28;
  v78 = v25;
  v33 = *(v9 + 80);
  v32 = *(v9 + 88);
  type metadata accessor for TabBarItemDescriptor(0, v33, v32, v30);
  v73 = v31;
  v34 = v85;
  v35 = (*(v32 + 56))(v33, v32);
  v75 = v36;
  v76 = v35;
  v74 = *v34;
  (*(v32 + 64))(&v87 + 1, v33, v32);
  v37 = v82;
  (*(v82 + 104))(v16, **(&unk_1E87884B8 + SBYTE1(v87)), v13);
  (*(v37 + 32))(v18, v16, v13);
  (*(v32 + 72))(&v87, v33, v32);
  LODWORD(v82) = v87;
  v72[2] = (*(v32 + 80))(v33, v32);
  v72[1] = v38;
  v39 = sub_1E5ACF9A8();
  MEMORY[0x1EEE9AC00](v39);
  swift_getKeyPath();
  sub_1E5ACFA48();

  v40 = v73;
  (*(v32 + 88))(v12, v33, v32);
  (*(v83 + 8))(v12, v84);
  v41 = v80;
  sub_1E5ACEF58();
  v42 = *(v5 + qword_1EE2FCED0);
  [v40 contentOffset];
  v45 = sub_1E5AAB70C(v41, v43, v44);
  if (v46)
  {
    v47 = v77;
    if (qword_1EE2FCA80 != -1)
    {
      swift_once();
    }

    v48 = sub_1E5ACF038();
    __swift_project_value_buffer(v48, qword_1EE300080);
    v49 = sub_1E5ACF018();
    v50 = sub_1E5ACFF08();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1E5A79000, v49, v50, "[FloatingTabBarController] Failed to make transition element for item with invalid height", v51, 2u);
      MEMORY[0x1E6935190](v51, -1, -1);
    }

    (*(v81 + 8))(v41, v79);
    goto LABEL_37;
  }

  v57 = v45;
  v58 = *&v45;
  [v42 heightExtension];
  v60 = (v59 + v58) * 0.5 < v58;
  [v40 contentOffset];
  v84 = v61;
  v85 = v62;

  (*(v81 + 8))(v41, v79);
  *&v63 = v84;
  *(&v63 + 1) = v85;
LABEL_38:
  v71 = v86;
  *v86 = v63;
  v71[2] = v57;
  v71[3] = v60;
  v71[4] = v40;
}

void sub_1E5A93C60(uint64_t a1, void *a2, double *a3)
{
  *(*(a1 + qword_1EE2FCED0) + OBJC_IVAR____TtC14FitnessAppRoot17FloatingTitleView_isFrozen) = 0;
  v4 = *a3;
  v5 = a3[1];
  v6 = sub_1E5A8E470();
  [a2 _setContentOffset_animated_animationCurve_animationAdjustsForContentOffsetDelta_animation_];
}

Swift::Void __swiftcall FloatingTabBarController.contentScrollViewsDidChange()()
{
  ObjectType = swift_getObjectType();
  v2 = FloatingTabBarController.selectedViewController.getter();
  if (!v2)
  {
    goto LABEL_18;
  }

  v14 = v2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 topViewController]) == 0)
  {

LABEL_18:
    v15.receiver = v0;
    v15.super_class = ObjectType;
    objc_msgSendSuper2(&v15, sel_viewWillLayoutSubviews);
    return;
  }

  v5 = v4;
  v6 = [v4 contentScrollViewForEdge_];
  v7 = [v5 contentScrollViewForEdge_];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      sub_1E5A7C10C(0, &qword_1EE2FC9F8, 0x1E69DCEF8);
      v9 = v8;
      if ((sub_1E5ACFFB8() & 1) == 0)
      {
        if (qword_1EE2FCA80 != -1)
        {
          swift_once();
        }

        v10 = sub_1E5ACF038();
        __swift_project_value_buffer(v10, qword_1EE300080);
        v11 = sub_1E5ACF018();
        v12 = sub_1E5ACFF28();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_1E5A79000, v11, v12, "[TabBarController] Different scroll views found for top and bottom edge. Picking tallest.", v13, 2u);
          MEMORY[0x1E6935190](v13, -1, -1);
        }
      }
    }

    sub_1E5A92C88(v6);
  }
}

void *sub_1E5A93F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TabBarAction(0, a2, a3, a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    sub_1E5ACF9A8();

    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1E5A94104(void *a1, uint64_t (*a2)(id))
{
  if (qword_1EE2FCA80 != -1)
  {
    swift_once();
  }

  v4 = sub_1E5ACF038();
  __swift_project_value_buffer(v4, qword_1EE300080);
  sub_1E5ACF008();
  [a1 willMoveToParentViewController_];
  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result removeFromSuperview];

    result = [a1 removeFromParentViewController];
    if (a2)
    {
      return a2(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5A9421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TabBarItemDescriptor(0, a3, a4, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v19 = a2;
  sub_1E5ACFD08();
  swift_getWitnessTable();
  sub_1E5ACFE58();
  v17 = v18;
  v16[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED026CA0, &unk_1E5AD3230);
  if ((sub_1E5ACFEF8() & 1) != 0 && (sub_1E5ACFD38(), v12 = *v11, (*(v9 + 8))(v11, v8), (v12 & 1) == 0))
  {
    sub_1E5ACFD38();
    v14 = *(v8 + 36);
    v13 = TabBarItemProtocol.isSelectable.getter(a3, a4);
    (*(*(a3 - 8) + 8))(&v11[v14], a3);
  }

  else
  {
    return 0;
  }

  return v13;
}

void sub_1E5A94408()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  v3 = qword_1EE2FCEB8;
  type metadata accessor for FloatingPaletteContentView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = qword_1EE2FCED0;
  type metadata accessor for FloatingTitleView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v0 + qword_1EE2FCEF0;
  *v5 = 0;
  v5[8] = 1;
  v6 = qword_1EE2FCF08;
  type metadata accessor for TabBarItemDescriptor(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v7);
  *(v0 + v6) = sub_1E5ACFCA8();
  *(v0 + qword_1EE2FCED8) = MEMORY[0x1E69E7CC0];
  *(v0 + qword_1EE2FCEA8) = 0;
  sub_1E5AD0168();
  __break(1u);
}

uint64_t sub_1E5A94560(void *a1)
{
  v2 = sub_1E5ACF068();
  MEMORY[0x1EEE9AC00](v2);
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_1E5ACFF88();
  sub_1E5ACF058();
  return sub_1E5ACFF98();
}

uint64_t sub_1E5A94654(unint64_t a1)
{
  v3 = qword_1EE2FCED8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1E5AD0178();
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_17:
      v8 = MEMORY[0x1E69347A0](a1);
LABEL_7:
      v9 = v8;
      swift_endAccess();
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10 || (v11 = [v10 topViewController]) == 0)
      {
        v15 = 1;
        goto LABEL_13;
      }

      v12 = v11;
      v13 = [v11 navigationItem];
      v14 = [v13 searchController];

      if (v14)
      {
        v15 = 0;
        v9 = v14;
LABEL_13:

        return v15;
      }

      return 1;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 <= a1)
  {
    return 1;
  }

  result = swift_beginAccess();
  v7 = *(v1 + v3);
  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v8 = *(v7 + 8 * a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}