uint64_t sub_512B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19E960, &qword_13FD30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for BundleOption.ArtworkSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x51458);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_51498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_514D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5155C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_4948(&qword_19A480, &unk_13F440);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[7];
LABEL_8:

    return sub_52E0(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = a3[16];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[14] + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_5165C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_4948(&qword_19A480, &unk_13F440);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[7];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[14] + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_4948(&qword_19A350, &unk_13F2C0);
    v10 = a4[16];
  }

  return sub_53A8(a1 + v10, a2, a2, v9);
}

unint64_t sub_51744(uint64_t a1)
{
  sub_189DC(319, &qword_19AE28, &type metadata for String);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_189DC(319, &qword_19C3F8, &type metadata for BundleOption.ArtworkSize);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_47DD4(319, &qword_19C0A0, type metadata accessor for Badge);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_189DC(319, &unk_19C400, &type metadata for BundleOption.Button);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_248F4(319, &qword_19C0A8, &unk_19C0B0, &qword_142DF0);
          if (v12 > 0x3F)
          {
            return v10;
          }

          else
          {
            v2 = sub_18A28();
            if (v13 <= 0x3F)
            {
              sub_47DD4(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

unint64_t sub_51970()
{
  result = qword_19C468;
  if (!qword_19C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C468);
  }

  return result;
}

__n128 sub_519FC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 304);
  v3 = *(v1 - 288);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 - 272);
  return result;
}

double sub_51A20()
{
  *(v0 - 272) = 0;
  result = 0.0;
  *(v0 - 288) = 0u;
  *(v0 - 304) = 0u;
  return result;
}

double sub_51A78()
{
  *(v0 + 144) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  return result;
}

uint64_t sub_51AB0()
{

  return sub_9414((v0 - 160), v0 - 304);
}

void sub_51ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v6 = sub_4948(&qword_19A480, &unk_13F440);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v37 = type metadata accessor for Badge(0);
  __chkstk_darwin(v37);
  v36 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_139A34();
  v34 = *(v10 - 8);
  v35 = v10;
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_4948(&qword_19C4C0, &qword_143470);
  sub_524B8();

  if (*v41)
  {
    sub_53D30(*v41, a3);
  }

  KeyPath = swift_getKeyPath();
  sub_5249C(KeyPath);

  if (v40)
  {
    sub_9414(&v39, v41);
    sub_486B0();
    (*(v14 + 384))(v41, a3);
    sub_3C04(v41);
  }

  else
  {
    sub_CC68(&v39, &qword_19E960, &qword_13FD30);
  }

  v15 = swift_getKeyPath();
  sub_5249C(v15);

  if (v40)
  {
    sub_9414(&v39, v41);
    sub_486B0();
    (*(v16 + 384))(v41, a3);
    sub_3C04(v41);
  }

  else
  {
    sub_CC68(&v39, &qword_19E960, &qword_13FD30);
  }

  v17 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel];
  swift_getKeyPath();
  sub_524B8();

  (*(&stru_158.size + (swift_isaMask & *v17)))(v41, a3);
  sub_3C04(v41);
  v18 = a3;
  if (_UISolariumEnabled() && (v20 = v34, v19 = v35, (*(v34 + 104))(v12, enum case for FlagKeys.Solarium(_:), v35), v21 = sub_139A24(), (*(v20 + 8))(v12, v19), (v21 & 1) != 0))
  {
    v22 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_524B8();

    v22 = v41[0];
  }

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_showSeparator] = v22;
  swift_getKeyPath();
  sub_524B8();

  if (sub_52E0(v8, 1, v37) == 1)
  {
    sub_CC68(v8, &qword_19A480, &unk_13F440);
    v23 = swift_getKeyPath();
    sub_5249C(v23);

    if (v40)
    {
      sub_9414(&v39, v41);
      (*(&stru_158.size + (swift_isaMask & **&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel])))(v41, v18);
      sub_3C04(v41);
    }

    else
    {
      sub_CC68(&v39, &qword_19E960, &qword_13FD30);
    }
  }

  else
  {
    v24 = v36;
    sub_48630(v8, v36);
    sub_31DEC(v24);
    sub_30B74(v24);
  }

  swift_getKeyPath();
  sub_524B8();

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isCollapsible] = v41[0];
  sub_52D60();
  swift_getKeyPath();
  sub_4948(&qword_19C4C8, &qword_143578);
  sub_314E0();
  sub_13BAD4();

  v25 = v41[0];
  v26 = swift_getKeyPath();
  sub_5249C(v26);

  if (v25)
  {
    if (v25 == 1)
    {
      v27 = v39;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 1;
  }

  v28 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  v29 = swift_beginAccess();
  v4[v28] = v27;
  sub_52D7C(v29);
  v30 = [v4 contentView];
  v31 = swift_getKeyPath();
  sub_5249C(v31);

  if (*(&v39 + 1))
  {
    v32 = sub_13BB54();
  }

  else
  {
    v32 = 0;
  }

  [v30 setAccessibilityLabel:v32];
}

uint64_t sub_521A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleOptionComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_52210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleOptionComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_52278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_522CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_52348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_523C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_52444()
{
  result = qword_19C470;
  if (!qword_19C470)
  {
    type metadata accessor for BundleOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C470);
  }

  return result;
}

void *sub_5249C(uint64_t a1)
{

  return sub_13B5E4();
}

void *sub_524B8()
{

  return sub_13B5E4();
}

id sub_524D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_badgeView;
  *&v5[v10] = [objc_allocWithZone(type metadata accessor for BadgeView()) init];
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel;
  sub_139BB4();
  v12 = objc_opt_self();
  v13 = [v12 ams_secondaryText];
  v14 = sub_13A2A4();
  *(&__src[1] + 1) = v14;
  *&__src[2] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleCaption1;
  v15 = *(*(v14 - 8) + 104);
  v15();
  v16 = UIFontTextStyleCaption1;
  *&v5[v11] = sub_57324(v16, v17, v18, v19, v20, v21);
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isCollapsible] = 0;
  v49 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel;
  v22 = [v12 ams_secondaryText];
  *(&__src[1] + 1) = v14;
  *&__src[2] = &protocol witness table for FontSource;
  v23 = sub_CC08(__src);
  *v23 = UIFontTextStyleCaption2;
  v23[1] = *&UIFontWeightBold;
  v24 = enum case for FontUseCase.preferredFontDerivative(_:);
  v25 = sub_13A3E4();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  (v15)(v23, enum case for FontSource.useCase(_:), v14);
  v26 = UIFontTextStyleCaption2;
  *&v5[v49] = sub_57324(v26, v27, v28, v29, v30, v31);
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_showSeparator] = 0;
  v32 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_subtitleLabel;
  v33 = [v12 ams_primaryText];
  *(&__src[1] + 1) = v14;
  *&__src[2] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleSubheadline;
  v15();
  v34 = UIFontTextStyleSubheadline;
  *&v5[v32] = sub_57324(v34, v35, v36, v37, v38, v39);
  v40 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel;
  v41 = [v12 ams_primaryText];
  *(&__src[1] + 1) = v14;
  *&__src[2] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleHeadline;
  v15();
  v42 = UIFontTextStyleHeadline;
  *&v5[v40] = sub_139BA4();
  v43 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_containerView;
  *&v5[v43] = [objc_allocWithZone(AMSUICommonView) init];
  v44 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView;
  *&v5[v44] = [objc_allocWithZone(AMSUICommonImageView) init];
  v45 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView;
  *&v5[v45] = [objc_allocWithZone(AMSUICommonView) init];
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_services] = &_swiftEmptyArrayStorage;
  v46 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid;
  type metadata accessor for ServicesGridView();
  memset(__src, 0, 40);
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  *&v5[v46] = sub_117788(0, 1, __src, 0, 0, 1, 0, 1, v52);
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled] = 0;
  sub_5292C(__src);
  memcpy(&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics], __src, 0x190uLL);
  v50.receiver = v5;
  v50.super_class = type metadata accessor for BundleOptionComponent();
  v47 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  sub_53D80();

  return v47;
}

uint64_t sub_5292C@<X0>(double *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  *&v46 = 0;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v6 = sub_139A24(), (*(v3 + 8))(v5, v2), v7 = 10.0, (v6 & 1) == 0))
  {
    v7 = 8.0;
  }

  v44 = &type metadata for Double;
  v45 = &protocol witness table for Double;
  *&v43 = v7;
  v41 = &type metadata for CGFloat;
  v42 = &protocol witness table for CGFloat;
  *&v40 = 0x4036000000000000;
  v38 = &type metadata for Double;
  v39 = &protocol witness table for Double;
  *&v37 = 0;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v8 = sub_139A24(), (*(v3 + 8))(v5, v2), v9 = 4.0, (v8 & 1) == 0))
  {
    v9 = 5.0;
  }

  v35 = &type metadata for Double;
  v36 = &protocol witness table for Double;
  *&v34 = v9;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v10 = sub_139A24(), (*(v3 + 8))(v5, v2), v11 = 10.0, (v10 & 1) == 0))
  {
    v11 = 5.0;
  }

  v32 = &type metadata for Double;
  v33 = &protocol witness table for Double;
  *&v31 = v11;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v12 = sub_139A24(), (*(v3 + 8))(v5, v2), v13 = 6.0, (v12 & 1) == 0))
  {
    v13 = 8.0;
  }

  v29 = &type metadata for Double;
  v30 = &protocol witness table for Double;
  *&v28 = v13;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v14 = sub_139A24(), (*(v3 + 8))(v5, v2), v15 = 0.0, (v14 & 1) == 0))
  {
    v15 = 8.0;
  }

  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = v15;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v16 = sub_139A24(), (*(v3 + 8))(v5, v2), v17 = 10.0, (v16 & 1) == 0))
  {
    v17 = 14.0;
  }

  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = v17;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v18 = sub_139A24(), (*(v3 + 8))(v5, v2), v19 = 10.0, (v18 & 1) == 0))
  {
    v19 = 8.0;
  }

  *(a1 + 48) = &type metadata for Double;
  *(a1 + 49) = &protocol witness table for Double;
  a1[45] = v19;
  sub_21520(&v46, a1);
  sub_21520(&v43, (a1 + 5));
  sub_21520(&v40, (a1 + 10));
  sub_21520(&v37, (a1 + 15));
  sub_21520(&v34, (a1 + 20));
  sub_21520(&v28, (a1 + 25));
  sub_21520(&v31, (a1 + 30));
  sub_21520(&v25, (a1 + 35));
  return sub_21520(&v22, (a1 + 40));
}

uint64_t sub_52D60()
{
  if (*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isCollapsible) == 1)
  {
    return sub_54218();
  }

  else
  {
    return sub_54370();
  }
}

void sub_52D7C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  sub_57304(a1);
  if (v1[v2] != 1)
  {
    sub_54888();
    if (v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isCollapsible] == 1)
    {
      sub_54218();
    }

    v14 = [v1 contentView];
    v15 = [v14 layer];

    if (qword_199F20 != -1)
    {
      sub_572E4(&qword_199F20);
    }

    [v15 setBorderWidth:*&qword_1B29D8];

    v16 = [v1 contentView];
    v17 = [v16 layer];

    if (qword_199F18 != -1)
    {
      swift_once();
    }

    [v17 setBorderColor:qword_1B29D0];

    v12 = [v1 contentView];
    [v12 setAccessibilityTraits:UIAccessibilityTraitButton];
    goto LABEL_17;
  }

  sub_549CC();
  sub_54370();
  v3 = sub_57388();
  v4 = [v3 layer];

  [v4 setBorderWidth:2.0];
  v5 = sub_57388();
  v6 = [v5 layer];

  v7 = [v1 tintColor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 CGColor];

    [v6 setBorderColor:v9];
    v10 = sub_57388();
    [v10 invalidateIntrinsicContentSize];

    v11 = sub_57388();
    v12 = v11;
    v13 = UIAccessibilityTraitButton;
    if (UIAccessibilityTraitButton)
    {
      if ((UIAccessibilityTraitSelected & ~UIAccessibilityTraitButton) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (!UIAccessibilityTraitSelected)
    {
      v13 = 0;
      goto LABEL_16;
    }

    v13 = UIAccessibilityTraitSelected | UIAccessibilityTraitButton;
LABEL_16:
    [v11 setAccessibilityTraits:v13];
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t sub_53054(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  sub_57304(a1);
  return *(v1 + v2);
}

void sub_53088(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  v5 = sub_5736C(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled, a2);
  *(v2 + v4) = a1;
  sub_52D7C(v5);
}

uint64_t sub_530D0(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for BundleOptionComponent();
  v3 = objc_msgSendSuper2(&v12, "prepareForReuse");
  (*(&stru_158.offset + (swift_isaMask & **&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel])))(v3);
  sub_2D730();
  (*(v4 + 392))();
  sub_2D730();
  (*(v5 + 392))();
  sub_2D730();
  (*(v6 + 392))();
  v7 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  v9 = sub_5736C(&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled], v8);
  v2[v7] = 0;
  sub_52D7C(v9);
  sub_117FB4();
  sub_2D730();
  return (*(v10 + 392))();
}

uint64_t sub_532EC()
{
  sub_13A314();
  sub_9E94();
  v39 = v2;
  v40 = v1;
  __chkstk_darwin(v1);
  sub_9EC0();
  v38 = v4 - v3;
  v66.receiver = v0;
  v66.super_class = type metadata accessor for BundleOptionComponent();
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v5 = [v0 contentView];
  [v5 bounds];
  sub_1D3D0();

  v6 = sub_35BE8();
  [v7 v8];
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics;
  swift_beginAccess();
  sub_55D98(&v0[v9], v65);
  v10 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel];
  v37 = v10;
  v42 = sub_139BB4();
  sub_1D3B8();
  v43 = sub_9A68(v11, v12, &protocol conformance descriptor for DynamicLabel);
  v41 = v10;
  v13 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView];
  v45 = sub_CACC(0, &qword_19C568, AMSUICommonImageView_ptr);
  v46 = protocol witness table for UIView;
  v44 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_subtitleLabel];
  v48 = v42;
  v49 = v43;
  v47 = v14;
  v15 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel];
  v51 = v42;
  v52 = v43;
  v50 = v15;
  v16 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel];
  v54 = v42;
  v55 = v43;
  v53 = v16;
  v17 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_badgeView];
  v63 = type metadata accessor for BadgeView();
  v64 = protocol witness table for UIView;
  v62 = v17;
  v18 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView];
  v60 = sub_CACC(0, &qword_19E9B0, AMSUICommonView_ptr);
  v61 = protocol witness table for UIView;
  v59 = v18;
  v19 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid];
  v57 = type metadata accessor for ServicesGridView();
  v58 = protocol witness table for UIView;
  v56 = v19;
  v65[400] = v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_showSeparator];
  v20 = v37;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = [v0 contentView];
  [v28 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v29 = [v0 contentView];
  v30 = sub_35BE8();
  BundleOptionComponentLayout.placeChildren(relativeTo:in:)(v31, v32, v30, v33, v34, v35);

  (*(v39 + 8))(v38, v40);
  return sub_57220(&v41);
}

id sub_536AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleOptionComponent();
  return objc_msgSendSuper2(&v3, "isHighlighted");
}

void sub_53734(uint64_t a1)
{
  v2 = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleOptionComponent();
  objc_msgSendSuper2(&v3, "setHighlighted:", v2 & 1);
  sub_5377C();
}

void sub_5377C()
{
  v1 = v0;
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    v6 = sub_139A24();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      sub_53894([v1 isHighlighted]);
    }
  }
}

void sub_53894(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_55D74;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_E2448;
  v6[3] = &unk_187BB0;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

void sub_539A0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong contentView];

    if (a2)
    {
      if (qword_199F08 != -1)
      {
        swift_once();
      }

      v6 = &qword_1B29C0;
    }

    else
    {
      if (qword_199EF8 != -1)
      {
        swift_once();
      }

      v6 = &qword_1B29B0;
    }

    [v5 setBackgroundColor:*v6];
  }
}

void sub_53AA4(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BundleOptionComponent();
  objc_msgSendSuper2(&v5, "tintColorDidChange");
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled;
  v4 = sub_5736C(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_isToggled, v3);
  *(v1 + v2) = *(v1 + v2);
  sub_52D7C(v4);
}

void sub_53B44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for BundleOptionComponent();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  if (!_UISolariumEnabled() || ((*(v6 + 104))(v10, enum case for FlagKeys.Solarium(_:), v4), v11 = sub_139A24(), (*(v6 + 8))(v10, v4), (v11 & 1) == 0))
  {
    v12 = [v2 contentView];
    v13 = [objc_opt_self() ams_shadow];
    v14 = [v13 CGColor];

    v15 = sub_4AD60();
    sub_12BE00(v14, v15, v16, v17, v18);
  }
}

void sub_53D30(uint64_t a1, uint64_t a2)
{
  v3 = sub_4C488(a1);
  sub_1180F8(v3, a2);

  sub_117FF4(v4);
}

id sub_53D80()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  if (qword_199EF8 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_1B29B0];

  v10 = sub_57354();
  if (qword_199F00 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1B29B8);

  v11 = sub_57354();
  v12 = [v11 layer];

  if (qword_199F20 != -1)
  {
    sub_572E4(&qword_199F20);
  }

  [v12 setBorderWidth:*&qword_1B29D8];

  if (!_UISolariumEnabled() || (v13 = sub_57344(), v14(v13), v15 = sub_139A24(), (*(v4 + 8))(v8, v2), (v15 & 1) == 0))
  {
    v16 = sub_57354();
    v17 = [objc_opt_self() ams_shadow];
    v18 = [v17 CGColor];

    v19 = sub_4AD60();
    sub_12BE00(v18, v19, v20, v21, v22);
  }

  v23 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_containerView];
  v24 = [objc_opt_self() ams_clear];
  [v23 setBackgroundColor:v24];

  v25 = sub_57354();
  [v25 addSubview:v23];

  v26 = [v23 layer];
  [v26 setMasksToBounds:1];

  v27 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView];
  [v27 setContentMode:2];
  [v23 addSubview:v27];
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_subtitleLabel);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_badgeView);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel);
  sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid);
  if (!_UISolariumEnabled() || (v28 = sub_57344(), v29(v28), v30 = sub_139A24(), (*(v4 + 8))(v8, v2), (v30 & 1) == 0))
  {
    sub_572C8(OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView);
    sub_54B20();
  }

  v31 = sub_57354();
  [v31 setIsAccessibilityElement:1];

  v32 = sub_57354();
  v33 = UIAccessibilityTraitButton;
  [v32 setAccessibilityTraits:UIAccessibilityTraitButton];

  v34 = sub_57354();
  sub_55CA0(0xD000000000000011, 0x800000000014F720, v34);

  [v27 setIsAccessibilityElement:1];
  return [v27 setAccessibilityTraits:v33];
}

uint64_t sub_54218()
{
  v1 = v0;
  swift_getObjectType();
  [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView) setHidden:1];
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid);
  if (qword_199EF0 != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize) = xmmword_1B29A0;
  sub_118970();
  sub_118068(0, 1, 0);
  v7 = &type metadata for Double;
  v8 = &protocol witness table for Double;
  *&v6 = 0x4018000000000000;
  v3 = v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics;
  swift_beginAccess();
  sub_3C04((v3 + 128));
  sub_21520(&v6, v3 + 128);
  swift_endAccess();
  sub_5292C(&v6);
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics;
  swift_beginAccess();
  sub_55C44(&v6, v1 + v4);
  return swift_endAccess();
}

uint64_t sub_54370()
{
  v1 = v0;
  swift_getObjectType();
  [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView) setHidden:0];
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid);
  if (qword_199EE8 != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize) = xmmword_1B2990;
  sub_118970();
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns) = 1;
  v4 = sub_117A18(v3);
  sub_117FF4(v4);
  sub_54478(v7);
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics;
  swift_beginAccess();
  sub_55C44(v7, v1 + v5);
  return swift_endAccess();
}

uint64_t sub_54478@<X0>(double *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  *&v46 = 0;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v6 = sub_139A24(), (*(v3 + 8))(v5, v2), v7 = 10.0, (v6 & 1) == 0))
  {
    v7 = 8.0;
  }

  v44 = &type metadata for Double;
  v45 = &protocol witness table for Double;
  *&v43 = v7;
  v41 = &type metadata for CGFloat;
  v42 = &protocol witness table for CGFloat;
  *&v40 = 0x4036000000000000;
  v38 = &type metadata for Double;
  v39 = &protocol witness table for Double;
  *&v37 = 0;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v8 = sub_139A24(), (*(v3 + 8))(v5, v2), v9 = 4.0, (v8 & 1) == 0))
  {
    v9 = 5.0;
  }

  v35 = &type metadata for Double;
  v36 = &protocol witness table for Double;
  *&v34 = v9;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v10 = sub_139A24(), (*(v3 + 8))(v5, v2), v11 = 10.0, (v10 & 1) == 0))
  {
    v11 = 5.0;
  }

  v32 = &type metadata for Double;
  v33 = &protocol witness table for Double;
  *&v31 = v11;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v12 = sub_139A24(), (*(v3 + 8))(v5, v2), v13 = 6.0, (v12 & 1) == 0))
  {
    v13 = 8.0;
  }

  v29 = &type metadata for Double;
  v30 = &protocol witness table for Double;
  *&v28 = v13;
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v14 = sub_139A24(), (*(v3 + 8))(v5, v2), v15 = 0.0, (v14 & 1) == 0))
  {
    v15 = 8.0;
  }

  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = v15;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v16 = sub_139A24(), (*(v3 + 8))(v5, v2), v17 = 16.0, (v16 & 1) == 0))
  {
    v17 = 8.0;
  }

  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = v17;
  if ((_UISolariumEnabled() & 1) == 0 || ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v18 = sub_139A24(), (*(v3 + 8))(v5, v2), v19 = 10.0, (v18 & 1) == 0))
  {
    v19 = 8.0;
  }

  *(a1 + 48) = &type metadata for Double;
  *(a1 + 49) = &protocol witness table for Double;
  a1[45] = v19;
  sub_21520(&v46, a1);
  sub_21520(&v43, (a1 + 5));
  sub_21520(&v40, (a1 + 10));
  sub_21520(&v37, (a1 + 15));
  sub_21520(&v34, (a1 + 20));
  sub_21520(&v28, (a1 + 25));
  sub_21520(&v31, (a1 + 30));
  sub_21520(&v25, (a1 + 35));
  return sub_21520(&v22, (a1 + 40));
}

void sub_54888()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:22.0];
  sub_CACC(0, &unk_1A0710, UIImage_ptr);
  v3 = v2;
  v4 = sub_EE960(0x656C63726963, 0xE600000000000000, v2);
  v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView);
  if (v4)
  {
    if (qword_199F10 != -1)
    {
      swift_once();
    }

    v6 = [v4 imageWithTintColor:qword_1B29C8 renderingMode:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setImage:?];
}

void sub_549CC()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:22.0];
  sub_CACC(0, &unk_1A0710, UIImage_ptr);
  v3 = v2;
  v4 = sub_EE960(0xD000000000000015, 0x800000000014EC50, v2);
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView];
  if (v4)
  {
    v7 = v4;
    v8 = [v1 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v7 imageWithTintColor:v8 renderingMode:1];
  }

  else
  {
    v10 = 0;
  }

  [v6 setImage:v10];
}

void sub_54B20()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView);
  v2 = [objc_opt_self() ams_mediaBorder];
  [v1 setBackgroundColor:v2];
}

double sub_54B9C(double a1, double a2, float a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_metrics;
  sub_57304(a4);
  sub_55D98(&v4[v7], v58);
  v8 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_titleLabel];
  v35 = sub_139BB4();
  sub_1D3B8();
  v36 = sub_9A68(v9, v10, &protocol conformance descriptor for DynamicLabel);
  v34[0] = v8;
  v11 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_selectedStatusView];
  v38 = sub_CACC(0, &qword_19C568, AMSUICommonImageView_ptr);
  v39 = protocol witness table for UIView;
  v37 = v11;
  v12 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_subtitleLabel];
  v41 = v35;
  v42 = v36;
  v40 = v12;
  v13 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_disclaimerLabel];
  v44 = v35;
  v45 = v36;
  v43 = v13;
  v14 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_propositionLabel];
  v47 = v35;
  v48 = v36;
  v46 = v14;
  v15 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_badgeView];
  v56 = type metadata accessor for BadgeView();
  v57 = protocol witness table for UIView;
  v55 = v15;
  v16 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_separatorView];
  v53 = sub_CACC(0, &qword_19E9B0, AMSUICommonView_ptr);
  v54 = protocol witness table for UIView;
  v52 = v16;
  v17 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleOptionComponent_servicesGrid];
  v50 = type metadata accessor for ServicesGridView();
  v51 = protocol witness table for UIView;
  v49 = v17;
  v58[400] = 1;
  v18 = v8;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  sub_27C54();
  sub_13BE64();
  v27 = v26;
  v29 = v28;
  v30 = [v4 contentView];
  sub_55DF4(v30, v34, v27, v29);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v32 = a1;
  }

  else
  {
    v32 = v31;
  }

  sub_57220(v34);
  return v32;
}

id sub_54EC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleOptionComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void (*sub_55040(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_550A8;
}

void sub_550A8(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_52D7C(v3);
  }
}

id sub_550DC()
{
  v0 = objc_opt_self();
  v1 = [v0 absoluteDimension:150.0];
  v2 = [v0 absoluteDimension:260.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  return v3;
}

id sub_55188()
{
  v0 = sub_139A34();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_1D4CC();
  swift_getObjectType();
  v8 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = 200.0;
  }

  else
  {
    v9 = 32.0;
  }

  if (_UISolariumEnabled() && (v10 = sub_57344(), v11(v10), v12 = sub_139A24(), (*(v2 + 8))(v6, v0), (v12 & 1) != 0))
  {
    [sub_1D4CC() contentSize];
    v14 = v13;
    swift_unknownObjectRelease();
    v15 = sub_1D4CC();
    swift_getObjectType();
    sub_BBC90();
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = v14 - (v17 + v17);
  }

  else
  {
    [sub_1D4CC() contentSize];
    v20 = v19;
    swift_unknownObjectRelease();
    v18 = v20 - v9;
  }

  if (v18 <= 360.0)
  {
    v21 = v18;
  }

  else
  {
    v21 = 360.0;
  }

  v22 = objc_opt_self();
  v23 = [v22 absoluteDimension:v21];
  v24 = [v22 estimatedDimension:200.0];
  v25 = [objc_opt_self() sizeWithWidthDimension:v23 heightDimension:v24];

  return v25;
}

uint64_t sub_5540C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 28.0, (v5 & 1) == 0))
  {
    v6 = 24.0;
  }

  *&xmmword_1B2990 = v6;
  *(&xmmword_1B2990 + 1) = v6;
  return result;
}

uint64_t sub_55514()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 28.0, (v5 & 1) == 0))
  {
    v6 = 32.0;
  }

  *&xmmword_1B29A0 = v6;
  *(&xmmword_1B29A0 + 1) = v6;
  return result;
}

id sub_55620()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_1B29B0 = result;
  return result;
}

uint64_t sub_5574C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_1B29B8 = *&v6;
  return result;
}

id sub_55850()
{
  result = [objc_opt_self() ams_primarySystemFillColor];
  qword_1B29C0 = result;
  return result;
}

id sub_5588C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_tertiaryText;
  }

  else
  {
    v5 = &selRef_ams_secondaryText;
  }

  result = [objc_opt_self() *v5];
  qword_1B29C8 = result;
  return result;
}

void sub_559B8()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_1B29D0 = v7;
}

uint64_t sub_55B40()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_1B29D8 = *&v6;
  return result;
}

void sub_55CA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_13BB54();

  [a3 setAccessibilityIdentifier:v4];
}

uint64_t sub_55D04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_55D3C()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_55D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_55DF4(uint64_t a1, void *a2, double a3, double a4)
{
  v106 = sub_13A514();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_13A4F4();
  *&v134 = *(v103 - 8);
  v113 = v134;
  __chkstk_darwin(v103);
  v102 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = v99 - v9;
  __chkstk_darwin(v10);
  v99[0] = v99 - v11;
  v117 = sub_13A4C4();
  v137 = *(v117 - 8);
  __chkstk_darwin(v117);
  v133 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_13A4B4();
  v127 = *(v115 - 8);
  v128 = v115 - 8;
  v136 = v127;
  __chkstk_darwin(v115 - 8);
  v114 = v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_13A454();
  v138 = *(v135 - 8);
  __chkstk_darwin(v135);
  v111 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_13C114();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[53];
  v20 = a2[54];
  sub_162F0(a2 + 50, v19);
  sub_20038(v19, v20);
  sub_13A404();
  v21 = *(v16 + 8);
  v21(v18, v15);
  v22 = a2[48];
  v23 = a2[49];
  sub_162F0(a2 + 45, v22);
  sub_20038(v22, v23);
  sub_13A404();
  v21(v18, v15);
  v24 = a2[43];
  v25 = a2[44];
  sub_162F0(a2 + 40, v24);
  sub_20038(v24, v25);
  sub_13A404();
  v21(v18, v15);
  sub_162F0(a2, a2[3]);
  v108 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v112 = *(v134 + 72);
  v26 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v27 = swift_allocObject();
  v134 = xmmword_13E660;
  *(v27 + 16) = xmmword_13E660;
  v109 = v26;
  v100 = v27;
  v110 = v27 + v26;
  v29 = a2[13];
  v28 = a2[14];
  v30 = sub_162F0(a2 + 10, v29);
  *(&v144 + 1) = v29;
  v145 = *(v28 + 8);
  v31 = sub_CC08(&v143);
  (*(*(v29 - 8) + 16))(v31, v30, v29);
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v132 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v32 = *(v138 + 104);
  v131 = v138 + 104;
  v130 = v32;
  v32(v111);
  v129 = sub_4948(&qword_19AFE8, &unk_140260);
  v33 = *(v127 + 72);
  v34 = v117;
  v35 = v136;
  v127 = *(v136 + 80);
  v116 = ((v127 + 32) & ~v127) + 3 * v33;
  v128 = (v127 + 32) & ~v127;
  v36 = swift_allocObject();
  *(v36 + 16) = v134;
  sub_13A484();
  sub_13A494();
  v107 = 2 * v33;
  sub_13A4A4();
  v139 = v36;
  v126 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v125 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v124 = sub_1D268();
  v37 = v114;
  v38 = v115;
  sub_13BF64();
  v123 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v39 = v137;
  v40 = *(v137 + 104);
  v122 = v137 + 104;
  v121 = v40;
  v41 = v133;
  v40(v133);
  v42 = v111;
  sub_13A4E4();
  v43 = *(v39 + 8);
  v137 = v39 + 8;
  v120 = v43;
  v43(v41, v34);
  v44 = *(v35 + 8);
  v136 = v35 + 8;
  v119 = v44;
  v45 = v38;
  v44(v37, v38);
  v46 = *(v138 + 8);
  v138 += 8;
  v118 = v46;
  v47 = v42;
  v48 = v135;
  v46(v42, v135);
  sub_1D2CC(&v140);
  sub_3C04(&v143);
  v50 = a2[18];
  v49 = a2[19];
  v51 = sub_162F0(a2 + 15, v50);
  *(&v144 + 1) = v50;
  v145 = *(v49 + 8);
  v52 = sub_CC08(&v143);
  (*(*(v50 - 8) + 16))(v52, v51, v50);
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v130(v47, v132, v48);
  v53 = swift_allocObject();
  *(v53 + 16) = v134;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v139 = v53;
  v54 = v45;
  sub_13BF64();
  v55 = v133;
  v56 = v117;
  v121(v133, v123, v117);
  v57 = v112;
  v58 = v110;
  sub_13A4E4();
  v120(v55, v56);
  v119(v37, v54);
  v59 = v135;
  v118(v47, v135);
  sub_1D2CC(&v140);
  sub_3C04(&v143);
  v145 = 0;
  v99[1] = v58 + 2 * v57;
  v143 = 0u;
  v144 = 0u;
  v60 = v59;
  v130(v47, v132, v59);
  v61 = swift_allocObject();
  *(v61 + 16) = v134;
  sub_13A484();
  sub_13A494();
  v110 = v33;
  sub_13A4A4();
  *&v140 = v61;
  sub_13BF64();
  v121(v55, v123, v56);
  sub_13A4E4();
  v120(v55, v56);
  v119(v37, v54);
  v62 = v47;
  v118(v47, v60);
  sub_1D2CC(&v143);
  sub_162F0(a2 + 20, a2[23]);
  if ((sub_13A324() & 1) == 0)
  {
    v64 = v103;
    goto LABEL_7;
  }

  sub_162F0(a2 + 20, a2[23]);
  v63 = sub_13A364();
  v64 = v103;
  if (v63)
  {
LABEL_7:
    v71 = v100;
    goto LABEL_8;
  }

  sub_162F0(a2 + 20, a2[23]);
  sub_13A384();
  sub_162F0(a2 + 20, a2[23]);
  sub_13A374();
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v65 = v135;
  v130(v47, v132, v135);
  v66 = swift_allocObject();
  *(v66 + 16) = v134;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v139 = v66;
  v67 = v114;
  v68 = v115;
  sub_13BF64();
  v69 = v133;
  v70 = v117;
  v121(v133, v123, v117);
  sub_13A4E4();
  v120(v69, v70);
  v119(v67, v68);
  v118(v62, v65);
  sub_1D2CC(&v140);
  sub_3C04(&v143);
  v71 = v100;
  v73 = *(v100 + 16);
  v72 = *(v100 + 24);
  if (v73 >= v72 >> 1)
  {
    sub_58ABC(v72 > 1, v73 + 1, 1, v100);
    v71 = v98;
  }

  *(v71 + 16) = v73 + 1;
  (*(v113 + 32))(v71 + v109 + v73 * v112, v99[0], v64);
LABEL_8:
  if (sub_58A4C())
  {
    sub_162F0(a2 + 30, a2[33]);
    sub_13A374();
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    v74 = v135;
    v130(v62, v132, v135);
    v75 = v133;
    v76 = v117;
    v121(v133, v123, v117);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_140280;
    sub_13A484();
    v139 = v77;
    v78 = v114;
    v79 = v115;
    sub_13BF64();
    sub_13A4E4();
    v119(v78, v79);
    v120(v75, v76);
    v118(v62, v74);
    sub_1D2CC(&v140);
    sub_3C04(&v143);
    v81 = *(v71 + 16);
    v80 = *(v71 + 24);
    if (v81 >= v80 >> 1)
    {
      sub_58ABC(v80 > 1, v81 + 1, 1, v71);
      v71 = v97;
    }

    *(v71 + 16) = v81 + 1;
    (*(v113 + 32))(v71 + v109 + v81 * v112, v101, v64);
  }

  v145 = 0;
  v143 = 0u;
  v144 = 0u;
  v82 = v62;
  v83 = v135;
  v130(v62, v132, v135);
  v84 = swift_allocObject();
  *(v84 + 16) = v134;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v140 = v84;
  v85 = v114;
  v86 = v115;
  sub_13BF64();
  v87 = v133;
  v88 = v117;
  v121(v133, v123, v117);
  v89 = v102;
  sub_13A4E4();
  v120(v87, v88);
  v119(v85, v86);
  v118(v82, v83);
  sub_1D2CC(&v143);
  v91 = *(v71 + 16);
  v90 = *(v71 + 24);
  if (v91 >= v90 >> 1)
  {
    sub_58ABC(v90 > 1, v91 + 1, 1, v71);
    v71 = v96;
  }

  *(v71 + 16) = v91 + 1;
  (*(v113 + 32))(v71 + v109 + v91 * v112, v89, v64);
  v92 = v104;
  sub_13A4D4();
  sub_13A464();
  v94 = v93;
  (*(v105 + 8))(v92, v106);
  return v94;
}

id sub_572C8@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + a1);
  v6 = *(v3 + 3576);

  return [v2 v6];
}

uint64_t sub_572E4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_57304(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_57324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_139BA4();
}

id sub_57354()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

uint64_t sub_5736C(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

id sub_57388()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

uint64_t BundleOptionComponentLayout.init(metrics:titleView:selectionStatusView:subtitleView:disclaimerView:propositionLabel:badgeView:separatorView:gridView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  sub_5AA24();
  v17 = v16;
  *(v16 + 720) = 1;
  memcpy((v16 + 320), v18, 0x190uLL);
  sub_9414(v15, v17);
  sub_9414(v14, v17 + 40);
  sub_9414(v13, v17 + 80);
  sub_9414(v12, v17 + 120);
  sub_9414(v11, v17 + 160);
  sub_9414(v10, v17 + 280);
  sub_9414(v9, v17 + 240);

  return sub_9414(a9, v17 + 200);
}

uint64_t BundleOptionComponentLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v177 = a2;
  v184 = sub_13A4F4();
  v207 = *(v184 - 8);
  *&v209 = v184 - 8;
  v190 = v207;
  __chkstk_darwin(v184 - 8);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_2159C(&v163 - v14);
  v15 = sub_13A314();
  v16 = sub_5A838(v15, &v208);
  v175 = v17;
  __chkstk_darwin(v16);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v18);
  sub_2159C(&v163 - v19);
  v20 = sub_13A514();
  v21 = sub_5A838(v20, &v206);
  v172 = v22;
  __chkstk_darwin(v21);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v23);
  sub_2159C(&v163 - v24);
  v25 = sub_13A4C4();
  v26 = sub_5A838(v25, &v220);
  v212 = v27;
  __chkstk_darwin(v26);
  sub_9EC0();
  sub_2159C(v29 - v28);
  v191 = sub_13A4B4();
  v202 = *(v191 - 8);
  v203 = v191 - 8;
  v214 = v202;
  __chkstk_darwin(v191 - 8);
  sub_9EC0();
  sub_2159C(v31 - v30);
  v32 = sub_13A454();
  v33 = sub_5A838(v32, &v217 + 8);
  v213 = v34;
  __chkstk_darwin(v33);
  sub_9EC0();
  sub_2159C(v36 - v35);
  v37 = sub_13C114();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  sub_9EC0();
  *&v41 = v40 - v39;
  sub_5A924(v6 + 50);
  v205 = sub_5A8DC();
  v42 = *(v38 + 8);
  v43 = sub_9FA4();
  v42(v43);
  sub_5A924(v6 + 55);
  v206 = sub_5A8DC();
  v44 = sub_9FA4();
  v42(v44);
  sub_5A924(v6 + 45);
  sub_5A8DC();
  v45 = sub_9FA4();
  v42(v45);
  sub_5A924(v6 + 40);
  v46 = sub_5A8DC();
  v164 = v41;
  v166 = v37;
  v165 = v38 + 8;
  v163 = v42;
  (v42)(*&v41, v37);
  sub_5A9E0(v6);
  sub_13A384();
  v48 = v47;
  sub_5A9E0(v6);
  v221.origin.x = a3;
  v221.origin.y = a4;
  v221.size.width = a5;
  v221.size.height = a6;
  CGRectGetMinX(v221);
  v222.origin.x = sub_5A850();
  CGRectGetMinY(v222);
  sub_5A850();
  sub_13BE44();
  sub_13A354();
  sub_5A9E0(v6 + 5);
  v223.origin.x = sub_5A850();
  CGRectGetMinX(v223);
  v224.origin.x = sub_5A850();
  CGRectGetMinY(v224);
  v187 = a1;
  sub_5A850();
  sub_13BE44();
  sub_13A354();
  sub_13BE34();
  sub_5AA10();
  v178 = a3;
  v180 = a4;
  v179 = a6;
  sub_13BE44();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v188 = *(v207 + 72);
  v49 = (*(v190 + 80) + 32) & ~*(v190 + 80);
  *&v50 = COERCE_DOUBLE(swift_allocObject());
  v209 = xmmword_13E660;
  v168 = *&v50;
  *(v50 + 16) = xmmword_13E660;
  v182 = v49;
  v183 = v50 + v49;
  v52 = v6[13];
  v51 = v7[14];
  v53 = sub_162F0(v7 + 10, v7[13]);
  *(&v218 + 1) = v52;
  v219 = *(v51 + 8);
  v54 = sub_CC08(&v217);
  (*(*(v52 - 8) + 16))(v54, v53, v52);
  v55 = sub_5AA8C();
  LODWORD(v206) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v56 = *(v213 + 104);
  v207 = v213 + 104;
  v205 = *&v56;
  v56(v210, v55);
  v204 = sub_4948(&qword_19AFE8, &unk_140260);
  v57 = *(v202 + 72);
  v203 = *(v214 + 80);
  v58 = (v203 + 32) & ~v203;
  v193 = 3 * v57;
  v59 = swift_allocObject();
  sub_5A8C8(v59);
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v215 = v52;
  v202 = sub_20068();
  v201 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v200 = sub_1D268();
  v60 = v189;
  v61 = v191;
  sub_13BF64();
  v199 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v62 = v212;
  v63 = v212 + 104;
  v198 = *(v212 + 104);
  v64 = v208;
  v65 = v211;
  (v198)(v208);
  v66 = v210;
  sub_13A4E4();
  v67 = *(v62 + 8);
  v212 = v62 + 8;
  v197 = v67;
  v67(v64, v65);
  v68 = *(v214 + 8);
  v214 += 8;
  v196 = v68;
  v69 = v60;
  v68(v60, v61);
  v70 = *(v213 + 8);
  v213 += 8;
  v195 = v70;
  v70(v66, v192);
  sub_1D2CC(&v216);
  sub_3C04(&v217);
  v71 = v7[18];
  v72 = v7[19];
  v73 = sub_162F0(v7 + 15, v71);
  *(&v218 + 1) = v71;
  v219 = *(v72 + 8);
  v74 = sub_CC08(&v217);
  (*(*(v71 - 8) + 16))(v74, v73, v71);
  sub_5AA8C();
  sub_5AAE4();
  v76 = v75();
  v77 = sub_5A900(v76, v58 + v193);
  sub_5A8C8(v77);
  sub_13A484();
  v194 = v57;
  sub_13A494();
  sub_13A4A4();
  v215 = v71;
  v78 = v69;
  sub_5A8B4();
  v79 = v191;
  sub_13BF64();
  v80 = v208;
  sub_5A9D0();
  v82 = *(v81 - 256);
  v198();
  v83 = v188;
  v84 = v183;
  sub_13A4E4();
  v197(v80, v82);
  v196(v78, v79);
  v85 = v192;
  sub_217E8();
  v86();
  sub_1D2CC(&v216);
  sub_3C04(&v217);
  v219 = 0;
  v167 = v84 + 2 * v83;
  v217 = 0u;
  v218 = 0u;
  sub_5AAE4();
  v88 = v87();
  v89 = sub_5A900(v88, v58 + v193);
  sub_5A8C8(v89);
  v183 = v58;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v216 = v85;
  sub_5A8B4();
  v90 = v191;
  sub_5AA50(v91, v92, v93);
  sub_5A9D0();
  v181 = v63;
  v198();
  sub_13A4E4();
  v94 = sub_9FA4();
  (v197)(v94);
  v196(v78, v90);
  sub_217E8();
  v95();
  sub_1D2CC(&v217);
  sub_13A4D4();
  sub_13A474();
  sub_13A2D4();
  v97 = v46 + v48 + 0.0 + v96;
  sub_5AB34();
  if (sub_13A324())
  {
    sub_5AB34();
    if ((sub_13A364() & 1) == 0)
    {
      v98 = v7[73];
      v99 = v7[74];
      sub_162F0(v7 + 70, v98);
      v100 = v164;
      sub_20038(v98, v99);
      sub_13A404();
      v167 = v101;
      (v163)(*&v100, v166);
      sub_5A9E0(v7 + 20);
      sub_13A384();
      v166 = v102;
      v165 = v103;
      sub_5A95C();
      sub_13BE34();
      sub_5AA10();
      sub_5AA7C();
      sub_13BE44();
      v168 = a5;
      v105 = v104;
      v164 = v97;
      v107 = v106;
      v109 = v108;
      v111 = v110;
      sub_5A9E0(v7 + 20);
      v225.origin.x = v105;
      v225.origin.y = v107;
      v225.size.width = v109;
      v225.size.height = v111;
      CGRectGetMinX(v225);
      v226.origin.x = v105;
      v226.origin.y = v107;
      v226.size.width = v109;
      v226.size.height = v111;
      CGRectGetMinY(v226);
      sub_5AA7C();
      sub_13BE44();
      sub_13A354();
    }
  }

  v112 = v184;
  v113 = v7;
  if (sub_58A4C())
  {
    sub_162F0(v7 + 30, v7[33]);
    sub_13A374();
    sub_5AA8C();
    v114 = sub_5A9A4();
    v115(v114);
    sub_5A9D0();
    sub_5AB0C();
    v117 = v116();
    v118 = sub_5A900(v117, v183 + v194);
    *(v118 + 16) = xmmword_140280;
    sub_13A484();
    v215 = v118;
    sub_5A8B4();
    sub_5AA50(v119, v120, v121);
    sub_13A4E4();
    sub_5AAF8();
    v122();
    sub_5AAD0();
    v123();
    sub_217E8();
    v124();
    sub_1D2CC(&v216);
    sub_3C04(&v217);
    sub_5A98C();
    sub_58FE8(0, 1, 1, v125, v126, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v128 = v127;
    v130 = *(v127 + 16);
    v129 = *(v127 + 24);
    v113 = (v130 + 1);
    if (v130 >= v129 >> 1)
    {
      sub_58FE8(v129 > 1, v130 + 1, 1, v127, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
      v128 = v162;
    }

    v128[2] = v113;
    sub_5AA9C();
    (*(v190 + 32))(v131 + v130 * v132, v169, v112);
  }

  else
  {
    v128 = &_swiftEmptyArrayStorage;
  }

  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v133 = sub_5A9A4();
  v135 = v134(v133);
  v136 = sub_5A900(v135, v183 + v193);
  sub_5A8C8(v136);
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  v216 = v113;
  sub_5A8B4();
  sub_5AA50(v137, v138, v139);
  sub_5A9D0();
  sub_5AB0C();
  v140();
  v141 = v170;
  sub_13A4E4();
  sub_5AAD0();
  v142();
  sub_5AAF8();
  v143();
  sub_217E8();
  v144();
  sub_1D2CC(&v217);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_5A98C();
    sub_58FE8(0, v158 + 1, 1, v128, v159, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v128 = v160;
  }

  v146 = v128[2];
  v145 = v128[3];
  if (v146 >= v145 >> 1)
  {
    sub_58FE8(v145 > 1, v146 + 1, 1, v128, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v128 = v161;
  }

  v128[2] = v146 + 1;
  sub_5AA9C();
  (*(v190 + 32))(v147 + v146 * v148, v141, v184);
  v149 = v171;
  sub_13A4D4();
  sub_5A95C();
  sub_13BE34();
  sub_5AA10();
  sub_5AA7C();
  sub_13BE44();
  v150 = v173;
  sub_13A474();
  sub_13A2D4();
  v227.origin.x = sub_5AB20();
  CGRectGetMinX(v227);
  v228.origin.x = sub_5AB20();
  CGRectGetMinY(v228);
  sub_13A2C4();
  v151 = *(v175 + 8);
  v152 = v150;
  v153 = v176;
  v151(v152, v176);
  v154 = *(v172 + 8);
  v155 = v149;
  v156 = v174;
  v154(v155, v174);
  v151(v186, v153);
  return (v154)(v185, v156);
}

uint64_t BundleOptionComponentLayout.Metrics.init(titleTopSpace:titleTrailingSpace:selectionStatusDimension:selectionStatusTopSpace:subtitleTopSpace:propositionRowTopSpace:disclaimerTopSpace:separatorTopSpace:gridTopSpace:badgeTopSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, __int128 *a10)
{
  sub_5AA24();
  v18 = v17;
  sub_9414(v19, v17);
  sub_9414(v16, v18 + 40);
  sub_9414(v15, v18 + 80);
  sub_9414(v14, v18 + 120);
  sub_9414(v13, v18 + 160);
  sub_9414(v11, v18 + 200);
  sub_9414(v12, v18 + 240);
  sub_9414(v10, v18 + 280);
  sub_9414(a9, v18 + 320);

  return sub_9414(a10, v18 + 360);
}

uint64_t ServiceOptionComponentLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 240));

  return sub_9414(a1, v1 + 240);
}

uint64_t BundleOptionComponentLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 360));

  return sub_9414(a1, v1 + 360);
}

double BundleOptionComponentLayout.measurements(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();
  v1 = sub_2171C();

  return sub_590DC(v1, v2, v3, v4);
}

uint64_t sub_58A4C()
{
  sub_5A9E0((v0 + 240));
  if (sub_13A364())
  {
    return 0;
  }

  sub_5A9E0((v0 + 200));
  if ((sub_13A324() & 1) == 0)
  {
    return 0;
  }

  else
  {
    return *(v0 + 720);
  }
}

void sub_58AFC()
{
  sub_5AA70();
  if ((v3 & 1) == 0 || (sub_5A874(), v4 == v5))
  {
LABEL_6:
    sub_5A8A4();
    if (v2)
    {
      v6 = sub_4948(&qword_19C598, &unk_143810);
      v7 = sub_5AAB4(v6);
      v8 = j__malloc_size(v7);
      sub_5A9FC(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CDA4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_4948(&qword_19C5A0, &unk_147720);
    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v4)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58BCC()
{
  sub_5AA70();
  if ((v4 & 1) == 0 || (sub_5A874(), v5 == v6))
  {
LABEL_6:
    sub_5A8A4();
    if (v3)
    {
      sub_4948(&qword_19C578, &unk_1437F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CDCC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_5A884();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v5)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58C88()
{
  sub_5AA70();
  if ((v4 & 1) == 0 || (sub_5A874(), v5 == v6))
  {
LABEL_6:
    sub_5A8A4();
    if (v3)
    {
      sub_4948(&qword_19C590, &qword_143808);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 16);
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CDF4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v5)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58D58()
{
  sub_5AA70();
  if ((v3 & 1) == 0 || (sub_5A874(), v4 == v5))
  {
LABEL_6:
    sub_5A8A4();
    if (v2)
    {
      v6 = sub_4948(&qword_19C580, &unk_148610);
      v7 = sub_5AAB4(v6);
      v8 = j__malloc_size(v7);
      sub_5A9FC(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CDA4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v4)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58E18()
{
  sub_5AA70();
  if ((v3 & 1) == 0 || (sub_5A874(), v4 == v5))
  {
LABEL_6:
    sub_5A8A4();
    if (v2)
    {
      v6 = sub_4948(&qword_19C588, &qword_143800);
      v7 = sub_5AAB4(v6);
      v8 = j__malloc_size(v7);
      sub_5A9FC(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CE14(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v4)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58ED8()
{
  sub_5AA70();
  if ((v4 & 1) == 0 || (sub_5A874(), v5 == v6))
  {
LABEL_6:
    sub_5A8A4();
    if (v3)
    {
      sub_4948(&qword_19C318, &unk_143820);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 32);
      if (v1)
      {
LABEL_8:
        v9 = sub_5A894();
        sub_4CE5C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_5A884();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_5AA44();
  if (!v5)
  {
    sub_5A864();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_58FE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  v10 = a1;
  if (a3)
  {
    sub_5A874();
    if (v12 != v13)
    {
      sub_5AA44();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_5A864();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

double sub_590DC(uint64_t a1, void *a2, double a3, double a4)
{
  v104 = sub_13A514();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_13A4F4();
  *&v133 = *(v107 - 8);
  v112 = v133;
  __chkstk_darwin(v107);
  v101 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = v98 - v9;
  __chkstk_darwin(v10);
  v98[0] = v98 - v11;
  v129 = sub_13A4C4();
  v135 = *(v129 - 8);
  __chkstk_darwin(v129);
  v132 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_13A4B4();
  v126 = *(v114 - 8);
  v127 = v114 - 8;
  v137 = v126;
  __chkstk_darwin(v114 - 8);
  v113 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_13A454();
  v136 = *(v134 - 8);
  __chkstk_darwin(v134);
  v110 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_13C114();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[53];
  v20 = a2[54];
  sub_162F0(a2 + 50, v19);
  sub_20038(v19, v20);
  sub_13A404();
  v21 = *(v16 + 8);
  v21(v18, v15);
  v22 = a2[48];
  v23 = a2[49];
  sub_162F0(a2 + 45, v22);
  sub_20038(v22, v23);
  sub_13A404();
  v21(v18, v15);
  v24 = a2[43];
  v25 = a2[44];
  sub_162F0(a2 + 40, v24);
  sub_20038(v24, v25);
  sub_13A404();
  v21(v18, v15);
  sub_162F0(a2, a2[3]);
  v106 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v111 = *(v133 + 72);
  v26 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v27 = swift_allocObject();
  v133 = xmmword_13E660;
  *(v27 + 16) = xmmword_13E660;
  v108 = v26;
  v99 = v27;
  v109 = v27 + v26;
  v29 = a2[13];
  v28 = a2[14];
  v30 = sub_162F0(a2 + 10, v29);
  *(&v143 + 1) = v29;
  v144 = *(v28 + 8);
  v31 = sub_CC08(&v142);
  (*(*(v29 - 8) + 16))(v31, v30, v29);
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v131 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v32 = *(v136 + 104);
  v130 = v136 + 104;
  v115 = v32;
  v32(v110);
  v128 = sub_4948(&qword_19AFE8, &unk_140260);
  v33 = *(v126 + 72);
  v34 = v129;
  v126 = *(v137 + 80);
  v116 = ((v126 + 32) & ~v126) + 3 * v33;
  v127 = (v126 + 32) & ~v126;
  v35 = swift_allocObject();
  *(v35 + 16) = v133;
  sub_13A484();
  sub_13A494();
  v105 = 2 * v33;
  sub_13A4A4();
  v138 = v35;
  v125 = sub_20068();
  v124 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v123 = sub_1D268();
  v36 = v113;
  v37 = v114;
  sub_13BF64();
  v122 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v38 = v135;
  v39 = *(v135 + 104);
  v121 = v135 + 104;
  v120 = v39;
  v40 = v132;
  v39(v132);
  v41 = v110;
  sub_13A4E4();
  v42 = *(v38 + 8);
  v135 = v38 + 8;
  v119 = v42;
  v42(v40, v34);
  v43 = *(v137 + 8);
  v137 += 8;
  v118 = v43;
  v43(v36, v37);
  v44 = *(v136 + 8);
  v136 += 8;
  v117 = v44;
  v45 = v41;
  v46 = v134;
  v44(v41, v134);
  sub_1D2CC(&v139);
  sub_3C04(&v142);
  v48 = a2[18];
  v47 = a2[19];
  v49 = sub_162F0(a2 + 15, v48);
  *(&v143 + 1) = v48;
  v144 = *(v47 + 8);
  v50 = sub_CC08(&v142);
  (*(*(v48 - 8) + 16))(v50, v49, v48);
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v115(v45, v131, v46);
  v51 = swift_allocObject();
  *(v51 + 16) = v133;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v138 = v51;
  v52 = v36;
  sub_13BF64();
  v53 = v132;
  v54 = v129;
  v120(v132, v122, v129);
  v55 = v111;
  v56 = v109;
  sub_13A4E4();
  v119(v53, v54);
  v118(v52, v37);
  v57 = v134;
  v117(v45, v134);
  sub_1D2CC(&v139);
  sub_3C04(&v142);
  v144 = 0;
  v98[1] = v56 + 2 * v55;
  v142 = 0u;
  v143 = 0u;
  v58 = v57;
  v115(v45, v131, v57);
  v59 = swift_allocObject();
  *(v59 + 16) = v133;
  sub_13A484();
  sub_13A494();
  v109 = v33;
  sub_13A4A4();
  *&v139 = v59;
  sub_13BF64();
  v120(v53, v122, v54);
  sub_13A4E4();
  v119(v53, v54);
  v118(v52, v37);
  v60 = v45;
  v117(v45, v58);
  sub_1D2CC(&v142);
  sub_162F0(a2 + 20, a2[23]);
  if ((sub_13A324() & 1) == 0)
  {
    v62 = v107;
    goto LABEL_7;
  }

  sub_162F0(a2 + 20, a2[23]);
  v61 = sub_13A364();
  v62 = v107;
  if (v61)
  {
LABEL_7:
    v70 = v99;
    v64 = v115;
    goto LABEL_8;
  }

  sub_162F0(a2 + 20, a2[23]);
  sub_13A384();
  sub_162F0(a2 + 20, a2[23]);
  sub_13A374();
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v63 = v134;
  v64 = v115;
  v115(v45, v131, v134);
  v65 = swift_allocObject();
  *(v65 + 16) = v133;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v138 = v65;
  v66 = v113;
  v67 = v114;
  sub_13BF64();
  v68 = v132;
  v69 = v129;
  v120(v132, v122, v129);
  sub_13A4E4();
  v119(v68, v69);
  v118(v66, v67);
  v117(v60, v63);
  sub_1D2CC(&v139);
  sub_3C04(&v142);
  v70 = v99;
  v72 = *(v99 + 16);
  v71 = *(v99 + 24);
  if (v72 >= v71 >> 1)
  {
    sub_58FE8(v71 > 1, v72 + 1, 1, v99, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v70 = v97;
  }

  *(v70 + 16) = v72 + 1;
  (*(v112 + 32))(v70 + v108 + v72 * v111, v98[0], v62);
LABEL_8:
  if (sub_58A4C())
  {
    sub_162F0(a2 + 30, a2[33]);
    sub_13A374();
    v141 = 0;
    v139 = 0u;
    v140 = 0u;
    v73 = v134;
    v64(v60, v131, v134);
    v74 = v132;
    v75 = v129;
    v120(v132, v122, v129);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_140280;
    sub_13A484();
    v138 = v76;
    v77 = v113;
    v78 = v114;
    sub_13BF64();
    sub_13A4E4();
    v118(v77, v78);
    v119(v74, v75);
    v117(v60, v73);
    sub_1D2CC(&v139);
    sub_3C04(&v142);
    v80 = *(v70 + 16);
    v79 = *(v70 + 24);
    if (v80 >= v79 >> 1)
    {
      sub_58FE8(v79 > 1, v80 + 1, 1, v70, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
      v70 = v96;
    }

    v62 = v107;
    *(v70 + 16) = v80 + 1;
    (*(v112 + 32))(v70 + v108 + v80 * v111, v100, v62);
  }

  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  v81 = v60;
  v82 = v134;
  v64(v60, v131, v134);
  v83 = swift_allocObject();
  *(v83 + 16) = v133;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v139 = v83;
  v84 = v113;
  v85 = v114;
  sub_13BF64();
  v86 = v132;
  v87 = v129;
  v120(v132, v122, v129);
  v88 = v101;
  sub_13A4E4();
  v119(v86, v87);
  v118(v84, v85);
  v117(v81, v82);
  sub_1D2CC(&v142);
  v90 = *(v70 + 16);
  v89 = *(v70 + 24);
  if (v90 >= v89 >> 1)
  {
    sub_58FE8(v89 > 1, v90 + 1, 1, v70, sub_12AFDC, &type metadata accessor for VerticalFlowLayout.Child, sub_4CD8C);
    v70 = v95;
  }

  *(v70 + 16) = v90 + 1;
  (*(v112 + 32))(v70 + v108 + v90 * v111, v88, v62);
  v91 = v102;
  sub_13A4D4();
  sub_13A464();
  v93 = v92;
  (*(v103 + 8))(v91, v104);
  return v93;
}

unint64_t sub_5A58C()
{
  result = qword_19C570;
  if (!qword_19C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C570);
  }

  return result;
}

uint64_t sub_5A5E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 721))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5A628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 712) = 0;
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
    *(result + 720) = 0;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 721) = 1;
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

    *(result + 721) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5A740(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 400))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5A780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_5A8C8(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

double sub_5A8DC()
{

  sub_13A404();
  return result;
}

uint64_t sub_5A900(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

uint64_t sub_5A924(void *a1)
{
  sub_162F0(a1, v1);

  return sub_20038(v1, v2);
}

uint64_t sub_5A9FC(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_5AA50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_13BF64();
}

double sub_5AA8C()
{
  *(v0 - 208) = 0;
  result = 0.0;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

uint64_t sub_5AAB4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_5AB34()
{
  v1 = *(v0 + 184);
  sub_162F0((v0 + 160), v1);
  return v1;
}

uint64_t type metadata accessor for BundlePreview(uint64_t a1)
{
  result = qword_19C608;
  if (!qword_19C608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5AC68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v79 = a3;
  v5 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v5 - 8);
  v7 = &v78 - v6;
  v8 = sub_13B584();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  sub_18B60();
  __chkstk_darwin(v9);
  sub_18B60();
  __chkstk_darwin(v10);
  sub_18B60();
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  v14 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v15);
  v17 = &v78 - v16;
  v18 = type metadata accessor for BundlePreview(0);
  sub_9F94();
  __chkstk_darwin(v19);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v86 = swift_initStackObject();
  sub_2B570();
  v22 = sub_BB310();
  if (v3)
  {

    v22 = 0;
    v23 = 0;
  }

  *v21 = v22;
  *(v21 + 1) = v23;
  v84 = v23;
  __chkstk_darwin(v22);
  sub_5BD04();
  sub_2B570();
  v83 = sub_9DB8(v24, v25, v26, v27, v28);
  *(v21 + 2) = v83;
  sub_2B570();
  v29 = sub_BB310();
  v78 = 0;
  *&v90 = v29;
  *(&v90 + 1) = v30;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7738(v13, v93, v31);
  if (sub_52E0(v7, 1, v14) == 1)
  {
    sub_928C(v7, &qword_19A420, &unk_13F430);
LABEL_6:
    sub_13BAB4();
    sub_5BC9C();
    v34 = sub_5B8C8(v32, v33, &protocol conformance descriptor for JSONError);
    sub_9F18(v34);
    *v35 = 0xD000000000000011;
    v35[1] = 0x800000000014E730;
    v35[2] = v18;
    sub_2B538();
    (*(v36 + 104))();
    swift_willThrow();
    v37 = sub_5BCD4();
    v38(v37);

    v39 = sub_13B7A4();
    sub_53A8(v17, 1, 1, v39);
    v40 = 0;
    goto LABEL_8;
  }

  v41 = sub_5BCD4();
  v42(v41);
  sub_92E4(v7, v17);
  v40 = v78;
LABEL_8:
  sub_92E4(v17, &v21[*(v18 + 40)]);
  v43 = v80;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_11:
    sub_13BAB4();
    sub_5BC9C();
    sub_5B8C8(v44, v45, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v46 = 0x6575676573;
    v46[1] = 0xE500000000000000;
    v46[2] = v18;
    sub_2B538();
    (*(v47 + 104))();
    swift_willThrow();
    v82(v43, v88);

    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    goto LABEL_12;
  }

  sub_139BC4();
  if (v40)
  {

    sub_18BAC();
    sub_928C(v89, &unk_19E320, &unk_140950);
    goto LABEL_11;
  }

  v82(v43, v88);
  v48 = sub_9414(v89, &v90);
LABEL_12:
  v49 = &v21[*(v18 + 44)];
  v50 = v91;
  *v49 = v90;
  *(v49 + 1) = v50;
  *(v49 + 4) = v92;
  __chkstk_darwin(v48);
  sub_5BD04();
  sub_2B570();
  *(v21 + 3) = sub_9DB8(v51, v52, v53, v54, v55);
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_5BC9C();
    v58 = sub_5B8C8(v56, v57, &protocol conformance descriptor for JSONError);
    sub_9F18(v58);
    *v59 = 0x656C746974627573;
    v59[1] = 0xE800000000000000;
    v59[2] = v18;
    sub_2B538();
    (*(v60 + 104))();
    swift_willThrow();
    v61 = sub_5BCEC();
    v62(v61);

    v92 = 0;
    v90 = 0u;
    v91 = 0u;
  }

  else
  {
    sub_139DB4();
    v74 = sub_5BCEC();
    v75(v74);
    sub_9414(v89, &v90);
  }

  v63 = v91;
  *(v21 + 2) = v90;
  *(v21 + 3) = v63;
  *(v21 + 8) = v92;
  v64 = v81;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_5BC9C();
    v68 = sub_5B8C8(v66, v67, &protocol conformance descriptor for JSONError);
    sub_9F18(v68);
    *v69 = 0x656C746974;
    v69[1] = 0xE500000000000000;
    v69[2] = v18;
    sub_2B538();
    (*(v70 + 104))();
    swift_willThrow();

    v71 = sub_5BCB4();
    MEMORY[0x656C746974](v71);
    MEMORY[0x656C746974](v64, a1);
    v72 = v78;
    sub_13B5A4();
    sub_9F94();
    (*(v73 + 8))(v93);

    if (!v72)
    {

      sub_928C((v21 + 32), &qword_19E960, &qword_13FD30);
      sub_9238((v21 + 112));
      sub_928C(&v21[*(v18 + 40)], &qword_19A350, &unk_13F2C0);
      sub_928C(&v21[*(v18 + 44)], &unk_19E320, &unk_140950);
    }
  }

  else
  {
    v65 = v93;
    sub_139DB4();
    v76 = sub_5BCB4();
    MEMORY[0x656C746974](v76);
    MEMORY[0x656C746974](v64, a1);
    sub_9414(v89, &v90);
    sub_9414(&v90, (v21 + 72));
    sub_5B910(v21, v79);
    sub_13B5A4();
    sub_9F94();
    (*(v77 + 8))(v65);
    sub_5B974(v21);
  }
}

uint64_t sub_5B6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_139F94();
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_139F84();
  *a3 = result;
  return result;
}

uint64_t sub_5B8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5B910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundlePreview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B974(uint64_t a1)
{
  v2 = type metadata accessor for BundlePreview(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5B9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_5BA8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_5BB18(uint64_t a1)
{
  sub_24850();
  if (v1 <= 0x3F)
  {
    sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
    if (v2 <= 0x3F)
    {
      sub_248F4(319, &qword_19C0A8, &unk_19C0B0, &qword_142DF0);
      if (v3 <= 0x3F)
      {
        sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
        if (v4 <= 0x3F)
        {
          sub_18A28();
          if (v5 <= 0x3F)
          {
            sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
            if (v6 <= 0x3F)
            {
              sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
              if (v7 <= 0x3F)
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

uint64_t sub_5BCD4()
{
  result = v0;
  *(v1 - 264) = *(*(v1 - 224) + 8);
  return result;
}

void sub_5BD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19C6A8, &qword_143938);
  sub_13B5E4();

  if (v30[0])
  {
    sub_5CAD8(v30[0], a3);
  }

  KeyPath = swift_getKeyPath();
  sub_5C2E0(KeyPath, v6, v7, v8, v9, v10);

  if (v30[0])
  {
    sub_19330();
    (*(v11 + 296))(v30[0], a3);
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView] setHidden:1];
  }

  swift_getKeyPath();
  sub_13B5E4();

  if (v29)
  {
    sub_9414(&v28, v30);
    sub_19330();
    (*(v12 + 384))(v30, a3);
    sub_3C04(v30);
  }

  else
  {
    sub_2519C(&v28);
  }

  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_titleLabel];
  v14 = swift_getKeyPath();
  sub_5C2E0(v14, v15, v16, v17, v18, v19);

  (*(&stru_158.size + (swift_isaMask & *v13)))(v30, a3);
  sub_3C04(v30);
  v20 = [v3 contentView];
  v21 = swift_getKeyPath();
  sub_5C2E0(v21, v22, v23, v24, v25, v26);

  if (v30[1])
  {
    v27 = sub_13BB54();
  }

  else
  {
    v27 = 0;
  }

  [v20 setAccessibilityLabel:v27];
}

uint64_t sub_5BFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundlePreviewComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_5C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundlePreviewComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_5C0BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_5C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_5C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_5C208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_5C288()
{
  result = qword_19C658;
  if (!qword_19C658)
  {
    type metadata accessor for BundlePreview(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C658);
  }

  return result;
}

void *sub_5C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_13B5E4();
}

id sub_5C2FC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView;
  v11 = objc_allocWithZone(sub_139CF4());
  *&v4[v10] = sub_139CE4();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_subtitleLabel;
  sub_139BB4();
  v13 = objc_opt_self();
  v14 = [v13 ams_secondaryText];
  v15 = sub_13A2A4();
  *(&v31 + 1) = v15;
  v32 = &protocol witness table for FontSource;
  *sub_CC08(&v30) = UIFontTextStyleSubheadline;
  v16 = *(*(v15 - 8) + 104);
  v16();
  v17 = UIFontTextStyleSubheadline;
  *&v4[v12] = sub_139BA4();
  v18 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_titleLabel;
  v19 = [v13 ams_primaryText];
  *(&v31 + 1) = v15;
  v32 = &protocol witness table for FontSource;
  *sub_CC08(&v30) = UIFontTextStyleHeadline;
  v16();
  v20 = UIFontTextStyleHeadline;
  *&v4[v18] = sub_139BA4();
  v21 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_containerView;
  *&v5[v21] = [objc_allocWithZone(AMSUICommonView) init];
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView;
  *&v5[v22] = [objc_allocWithZone(AMSUICommonView) init];
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_services] = &_swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_servicesGrid;
  type metadata accessor for ServicesGridView();
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  *&v5[v23] = sub_117788(0, 1, &v30, 0, 0, 1, 0, 1, v28);
  v24 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_metrics];
  *v24 = vdupq_n_s64(0x4044000000000000uLL);
  v24[1].i64[0] = 0x4020000000000000;
  v24[2].i64[1] = &type metadata for Double;
  v24[3].i64[0] = &protocol witness table for Double;
  v24[3].i64[1] = 0;
  v24[5].i64[0] = &type metadata for Double;
  v24[5].i64[1] = &protocol witness table for Double;
  v24[6].i64[0] = 0x4020000000000000;
  v24[7].i64[1] = &type metadata for Double;
  v24[8].i64[0] = &protocol witness table for Double;
  v24[8].i64[1] = 0x4014000000000000;
  v24[10].i64[0] = &type metadata for Double;
  v24[10].i64[1] = &protocol witness table for Double;
  v24[11].i64[0] = 0x4020000000000000;
  v24[12].i64[1] = &type metadata for Double;
  v24[13].i64[0] = &protocol witness table for Double;
  v24[13].i64[1] = 0x4020000000000000;
  v24[15].i64[0] = &type metadata for Double;
  v24[15].i64[1] = &protocol witness table for Double;
  v27.receiver = v5;
  v27.super_class = type metadata accessor for BundlePreviewComponent();
  v25 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  sub_5CB28();

  return v25;
}

double sub_5C650(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BundlePreviewComponent();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v2 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView];
  v3 = [v2 setHidden:0];
  (*(&stru_108.reloff + (swift_isaMask & *v2)))(v3);
  sub_1D38C();
  (*(v4 + 392))();
  sub_1D38C();
  (*(v5 + 392))();
  return sub_117FB4();
}

uint64_t sub_5C7D0()
{
  v29 = sub_13A314();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BundlePreviewComponent();
  v32.receiver = v0;
  v32.super_class = v4;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v5 = [v0 contentView];
  [v5 bounds];
  sub_1D3D0();

  v6 = sub_35BE8();
  [v7 v8];
  sub_5D428(&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_metrics], &v31);
  v9 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView];
  v30[3] = sub_139CF4();
  v30[4] = protocol witness table for UIView;
  v30[0] = v9;
  v10 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_titleLabel];
  v11 = sub_139BB4();
  v30[8] = v11;
  sub_1D3B8();
  v14 = sub_9A68(v12, v13, &protocol conformance descriptor for DynamicLabel);
  v30[5] = v10;
  v15 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_subtitleLabel];
  v30[13] = v11;
  v30[14] = v14;
  v30[9] = v14;
  v30[10] = v15;
  v16 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView];
  v30[23] = sub_CACC(0, &qword_19E9B0, AMSUICommonView_ptr);
  v30[24] = protocol witness table for UIView;
  v30[20] = v16;
  v17 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_servicesGrid];
  v30[18] = type metadata accessor for ServicesGridView();
  v30[19] = protocol witness table for UIView;
  v30[15] = v17;
  v18 = v9;
  v19 = v10;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = [v0 contentView];
  [v23 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v24 = [v0 contentView];
  sub_35BE8();
  sub_5E4D4(v25, v26);

  (*(v1 + 8))(v3, v29);
  return sub_5E22C(v30);
}

void sub_5CAD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_4C488(a1);
  sub_1180F8(v3, a2);

  sub_117FF4(v4);
}

void sub_5CB28()
{
  v1 = v0;
  v2 = [v0 contentView];
  sub_CACC(0, &qword_19B3D0, UIColor_ptr);
  v3 = objc_opt_self();
  v4 = [v3 ams_primaryGroupedBackground];
  v5 = [v3 ams_primaryGroupedBackground];
  v6 = [v3 ams_componentBackground];
  v7.super.isa = [v3 ams_componentBackground];
  v8.super.isa = v4;
  v9.super.isa = v5;
  v10.super.isa = v6;
  isa = sub_13BED4(v8, v9, v10, v7).super.isa;
  [v2 setBackgroundColor:isa];

  v12 = sub_5E2E0();
  sub_127EDC(18.0);

  v13 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_containerView];
  v14 = [v3 ams_clear];
  [v13 setBackgroundColor:v14];

  v15 = sub_5E2E0();
  [v15 addSubview:v13];

  v16 = [v13 layer];
  [v16 setMasksToBounds:1];

  v17 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView];
  v18 = [v17 layer];
  v19 = [v3 ams_mediaBorder];
  v20 = [v19 CGColor];

  [v18 setBorderColor:v20];
  v21 = [v17 layer];
  [v21 setBorderWidth:1.0];

  v22 = sub_5E2D4();
  [v22 v23];
  v24 = sub_5E2D4();
  [v24 v25];
  v26 = sub_5E2D4();
  [v26 v27];
  v28 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView];
  v29 = sub_5E2D4();
  [v29 v30];
  v31 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_servicesGrid];
  v32 = sub_5E2D4();
  [v32 v33];
  sub_5CEB4();
  [v28 setHidden:0];
  __asm { FMOV            V0.2D, #24.0 }

  *(v31 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize) = _Q0;
  sub_118970();
  *(v31 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns) = 1;
  v40 = sub_117A18(v39);
  sub_117FF4(v40);
  v41 = sub_5E2E0();
  [v41 setIsAccessibilityElement:1];

  v42 = sub_5E2E0();
  [v42 setAccessibilityTraits:UIAccessibilityTraitButton];
}

void sub_5CEB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView);
  v2 = [objc_opt_self() ams_mediaBorder];
  [v1 setBackgroundColor:v2];
}

double sub_5CF30(double a1, double a2, float a3)
{
  sub_5D428(&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_metrics], &v39);
  v6 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_artworkImageView];
  v27[3] = sub_139CF4();
  v27[4] = protocol witness table for UIView;
  v27[0] = v6;
  v7 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_titleLabel];
  v28 = sub_139BB4();
  sub_1D3B8();
  v10 = sub_9A68(v8, v9, &protocol conformance descriptor for DynamicLabel);
  v27[5] = v7;
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_subtitleLabel];
  v31 = v28;
  v32 = v10;
  v29 = v10;
  v30 = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_separatorView];
  v37 = sub_CACC(0, &qword_19E9B0, AMSUICommonView_ptr);
  v38 = protocol witness table for UIView;
  v36 = v12;
  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundlePreviewComponent_servicesGrid];
  v34 = type metadata accessor for ServicesGridView();
  v35 = protocol witness table for UIView;
  v33 = v13;
  v14 = v6;
  v15 = v7;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  sub_27C54();
  sub_13BE64();
  v20 = v19;
  v22 = v21;
  v23 = [v3 contentView];
  sub_5D484(v23, v27, v20, v22);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v25 = a1;
  }

  else
  {
    v25 = v24;
  }

  sub_5E22C(v27);
  return v25;
}

id sub_5D1D8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundlePreviewComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_5D2DC(void *a1)
{
  v2 = [a1 container];
  swift_getObjectType();
  v3 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = 200.0;
  }

  else
  {
    v4 = 32.0;
  }

  v5 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = [v5 absoluteDimension:v7 - v4];
  v9 = [v5 estimatedDimension:200.0];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  return v10;
}

double sub_5D484(uint64_t a1, void *a2, double a3, double a4)
{
  v93 = sub_13A514();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_13A4F4();
  v105 = *(v108 - 8);
  v107 = v108 - 8;
  v113 = v105;
  __chkstk_darwin(v108 - 8);
  v80 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v79 - v9;
  v114 = sub_13A4C4();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_13A4B4();
  v11 = *(v111 - 8);
  v104 = v111 - 8;
  v106 = v11;
  v115 = v11;
  __chkstk_darwin(v111 - 8);
  v110 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13A454();
  v14 = *(v13 - 8);
  v117 = v13;
  v118 = v14;
  __chkstk_darwin(v13);
  v109 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_13C114();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2[40];
  v21 = a2[41];
  sub_162F0(a2 + 37, v20);
  sub_20038(v20, v21);
  sub_13A404();
  v22 = *(v17 + 8);
  v22(v19, v16);
  v23 = a2[35];
  v24 = a2[36];
  sub_162F0(a2 + 32, v23);
  sub_20038(v23, v24);
  sub_13A404();
  v22(v19, v16);
  sub_162F0(a2 + 5, a2[8]);
  v92 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v25 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v107 = *(v105 + 9);
  v26 = swift_allocObject();
  v79 = xmmword_140280;
  *(v26 + 16) = xmmword_140280;
  v27 = a2[13];
  v28 = a2[14];
  v29 = sub_162F0(a2 + 10, v27);
  *(&v124 + 1) = v27;
  v125 = *(v28 + 8);
  v30 = sub_CC08(&v123);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v122 = 0;
  v120 = 0u;
  v121 = 0u;
  v31 = *(v118 + 104);
  v32 = v109;
  v88 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v87 = v118 + 104;
  v105 = v31;
  v31(v109);
  v33 = sub_4948(&qword_19AFE8, &unk_140260);
  v34 = *(v106 + 72);
  v35 = v115;
  v36 = *(v115 + 80);
  v37 = (v36 + 32) & ~v36;
  v83 = 3 * v34;
  v103 = v36;
  v85 = v33;
  v38 = swift_allocObject();
  v82 = xmmword_13E660;
  *(v38 + 16) = xmmword_13E660;
  v104 = v37;
  sub_13A484();
  sub_13A494();
  v81 = 2 * v34;
  v86 = v34;
  sub_13A4A4();
  v119 = v38;
  v39 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v40 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v41 = sub_1D268();
  v42 = v110;
  v101 = v40;
  v100 = v41;
  v43 = v111;
  v102 = v39;
  sub_13BF64();
  v44 = v116;
  v45 = *(v116 + 104);
  v46 = v112;
  v99 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v47 = v114;
  v98 = v116 + 104;
  v97 = v45;
  v45(v112);
  v106 = v25;
  v84 = v26;
  sub_13A4E4();
  v48 = *(v44 + 8);
  v116 = v44 + 8;
  v96 = v48;
  v48(v46, v47);
  v49 = *(v35 + 8);
  v115 = v35 + 8;
  v95 = v49;
  v49(v42, v43);
  v50 = *(v118 + 8);
  v118 += 8;
  v94 = v50;
  v50(v32, v117);
  sub_1D2CC(&v120);
  sub_3C04(&v123);
  sub_162F0(a2 + 20, a2[23]);
  if ((sub_13A364() & 1) != 0 || (sub_162F0(a2 + 15, a2[18]), (sub_13A324() & 1) == 0))
  {
    v52 = v88;
    v57 = v84;
  }

  else
  {
    sub_162F0(a2 + 20, a2[23]);
    sub_13A374();
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    v51 = v109;
    v52 = v88;
    (v105)(v109, v88, v117);
    v53 = v112;
    v97(v112, v99, v114);
    v54 = swift_allocObject();
    *(v54 + 16) = v79;
    sub_13A484();
    v119 = v54;
    v55 = v110;
    v56 = v111;
    sub_13BF64();
    sub_13A4E4();
    v95(v55, v56);
    v96(v53, v114);
    v94(v51, v117);
    sub_1D2CC(&v120);
    sub_3C04(&v123);
    v57 = v84;
    v59 = *(v84 + 16);
    v58 = *(v84 + 24);
    v60 = v59 + 1;
    v61 = v108;
    if (v59 >= v58 >> 1)
    {
      *&v79 = v59 + 1;
      sub_58ABC(v58 > 1, v59 + 1, 1, v84);
      v60 = v79;
      v57 = v78;
    }

    *(v57 + 16) = v60;
    v113[4](v57 + v106 + v59 * v107, v80, v61);
  }

  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v62 = v109;
  v63 = v117;
  (v105)(v109, v52, v117);
  v64 = swift_allocObject();
  *(v64 + 16) = v82;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v120 = v64;
  v65 = v110;
  v66 = v111;
  sub_13BF64();
  v67 = v112;
  v68 = v114;
  v97(v112, v99, v114);
  v69 = v89;
  sub_13A4E4();
  v96(v67, v68);
  v95(v65, v66);
  v94(v62, v63);
  sub_1D2CC(&v123);
  v71 = *(v57 + 16);
  v70 = *(v57 + 24);
  if (v71 >= v70 >> 1)
  {
    sub_58ABC(v70 > 1, v71 + 1, 1, v57);
    v57 = v77;
  }

  v72 = v108;
  *(v57 + 16) = v71 + 1;
  v113[4](v57 + v106 + v71 * v107, v69, v72);
  v73 = v90;
  sub_13A4D4();
  sub_13A464();
  v75 = v74;
  (*(v91 + 8))(v73, v93);
  return v75;
}

id sub_5E2E0()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

uint64_t sub_5E300(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 456))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5E340(uint64_t result, int a2, int a3)
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5E404(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5E444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5E4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v157 = a1;
  v128 = a2;
  v5 = sub_13A4F4();
  v6 = sub_5A838(v5, &v151);
  v149 = v7;
  __chkstk_darwin(v6);
  sub_21548();
  sub_2159C(v8);
  v9 = sub_13A314();
  v10 = sub_5A838(v9, &v157);
  v126 = v11;
  __chkstk_darwin(v10);
  sub_2162C();
  v124 = v12;
  __chkstk_darwin(v13);
  sub_2159C(&v110 - v14);
  v15 = sub_13A514();
  v16 = sub_5A838(v15, &v155);
  v123 = v17;
  __chkstk_darwin(v16);
  sub_2162C();
  v122 = v18;
  __chkstk_darwin(v19);
  sub_2159C(&v110 - v20);
  v21 = sub_13A4C4();
  v22 = sub_5A838(v21, &v167);
  v158 = v23;
  __chkstk_darwin(v22);
  sub_21548();
  sub_2159C(v24);
  v25 = sub_13A4B4();
  v26 = sub_5A838(v25, &v166);
  v156 = v27;
  __chkstk_darwin(v26);
  sub_21548();
  sub_2159C(v28);
  v29 = sub_13A454();
  v30 = sub_5A838(v29, &v168);
  v154 = v31;
  __chkstk_darwin(v30);
  sub_21548();
  sub_2159C(v32);
  v33 = sub_13C114();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(v3, v3[3]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(v3, v3[3]);
    sub_13A324();
  }

  sub_162F0(v3 + 47, v3[50]);
  v37 = v157;
  sub_13A3F4();
  v111 = v38;
  sub_162F0(v3 + 27, v3[30]);
  sub_601E8();
  sub_601C8(v37);
  v39 = *(v34 + 8);
  v39(v36, v33);
  sub_162F0(v3 + 32, v3[35]);
  sub_601E8();
  sub_601C8(v157);
  v39(v36, v33);
  sub_5A9E0(v3);
  v169.origin.x = sub_40710();
  CGRectGetMinX(v169);
  v170.origin.x = sub_40710();
  CGRectGetMinY(v170);
  v119 = v3[25];
  sub_13A354();
  v40.n128_u64[0] = 0;
  v41.n128_u64[0] = 0;
  v42.n128_u64[0] = 0;
  v43.n128_u64[0] = 0;
  sub_601A8(v40, v41, v42, v43, v44, v45, v46, v47);
  sub_5AA10();
  sub_40710();
  sub_13BE44();
  v115 = v48;
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v145 = *(v149 + 72);
  v49 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v50 = swift_allocObject();
  v113 = v50;
  *(v50 + 16) = xmmword_13E650;
  v118 = v49;
  v112 = v50 + v49;
  v52 = v3[8];
  v51 = v4[9];
  v53 = sub_162F0(v4 + 5, v4[8]);
  *(&v164 + 1) = v52;
  v165 = *(v51 + 8);
  v54 = sub_CC08(&v163);
  (*(*(v52 - 8) + 16))(v54, v53, v52);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v144 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v55 = v154;
  v56 = *(v154 + 104);
  v143 = v154 + 104;
  v142 = v56;
  v56(v153);
  v141 = sub_4948(&qword_19AFE8, &unk_140260);
  v57 = *(v156 + 72);
  v139 = *(v156 + 80);
  v140 = (v139 + 32) & ~v139;
  v138 = 3 * v57;
  v58 = swift_allocObject();
  v136 = xmmword_13E660;
  *(v58 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  v116 = 2 * v57;
  sub_13A4A4();
  v159 = v58;
  v137 = sub_20068();
  v135 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v134 = sub_1D268();
  v59 = v146;
  v60 = v147;
  sub_13BF64();
  v133 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v61 = v158 + 104;
  v132 = *(v158 + 104);
  v62 = v148;
  v63 = v152;
  v132(v148);
  v64 = v153;
  sub_13A4E4();
  v131 = *(v158 + 8);
  v158 += 8;
  v131(v62, v63);
  v65 = *(v156 + 8);
  v156 += 8;
  v130 = v65;
  v65(v59, v60);
  v66 = *(v55 + 8);
  v154 = v55 + 8;
  v129 = v66;
  v67 = v155;
  v66(v64, v155);
  sub_1D2CC(&v160);
  sub_3C04(&v163);
  v68 = v4[13];
  v69 = v4[14];
  v70 = sub_162F0(v4 + 10, v68);
  *(&v164 + 1) = v68;
  v165 = *(v69 + 8);
  v71 = sub_CC08(&v163);
  (*(*(v68 - 8) + 16))(v71, v70, v68);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v72 = v153;
  v73 = v142(v153, v144, v67);
  v74 = sub_60170(v73, v140 + v138);
  sub_60194(v74);
  sub_13A484();
  sub_13A494();
  v117 = v57;
  sub_13A4A4();
  v159 = v68;
  sub_60158();
  sub_13BF64();
  v75 = v152;
  v114 = v61;
  (v132)(v62, v133, v152);
  sub_13A4E4();
  v131(v62, v75);
  v130(v59, v60);
  v129(v72, v155);
  sub_1D2CC(&v160);
  sub_3C04(&v163);
  sub_13A4D4();
  v76 = v151;
  sub_13A474();
  sub_13A2D4();
  v78 = v77 + 0.0;
  sub_5A9E0(v4 + 20);
  if ((sub_13A364() & 1) == 0)
  {
    sub_5A9E0(v4 + 15);
    if (sub_13A324())
    {
      v78 = v111 + v78;
      sub_5A9E0(v4 + 20);
      v171.origin.x = sub_40710();
      CGRectGetMinX(v171);
      v172.origin.x = sub_40710();
      CGRectGetMinY(v172);
      sub_13A354();
    }
  }

  v165 = 0;
  v163 = 0u;
  v164 = 0u;
  v79 = v153;
  v80 = v155;
  v81 = v142(v153, v144, v155);
  v82 = sub_60170(v81, v140 + v138);
  sub_60194(v82);
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v160 = v76;
  v83 = v146;
  sub_60158();
  v84 = v147;
  sub_13BF64();
  v85 = v148;
  v86 = v152;
  (v132)(v148, v133, v152);
  v87 = v120;
  sub_13A4E4();
  v131(v85, v86);
  v130(v83, v84);
  v129(v79, v80);
  sub_1D2CC(&v163);
  sub_58ABC(0, 1, 1, &_swiftEmptyArrayStorage);
  v89 = v88;
  v91 = *(v88 + 16);
  v90 = *(v88 + 24);
  if (v91 >= v90 >> 1)
  {
    sub_58ABC(v90 > 1, v91 + 1, 1, v88);
    v89 = v109;
  }

  *(v89 + 16) = v91 + 1;
  (*(v149 + 32))(v89 + v118 + v91 * v145, v87, v121);
  v92 = v122;
  sub_13A4D4();
  v93.n128_u64[0] = 0;
  v94.n128_u64[0] = 0;
  v95.n128_u64[0] = 0;
  v96.n128_f64[0] = v78;
  sub_601A8(v96, v93, v94, v95, v97, v98, v99, v100);
  sub_5AA10();
  sub_40710();
  sub_13BE44();
  v101 = v124;
  sub_13A474();
  sub_13A2D4();
  v173.origin.x = sub_40710();
  CGRectGetMinX(v173);
  v174.origin.x = sub_40710();
  CGRectGetMinY(v174);
  sub_13A2C4();
  v102 = *(v126 + 8);
  v103 = v101;
  v104 = v127;
  v102(v103, v127);
  v105 = *(v123 + 8);
  v106 = v92;
  v107 = v125;
  v105(v106, v125);
  v102(v151, v104);
  return (v105)(v150, v107);
}

double sub_5F324(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_5F3E0(a1, v3, a2, a3);
}

unint64_t sub_5F38C()
{
  result = qword_19C718;
  if (!qword_19C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C718);
  }

  return result;
}

double sub_5F3E0(uint64_t a1, void *a2, double a3, double a4)
{
  v93 = sub_13A514();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_13A4F4();
  v105 = *(v108 - 8);
  v107 = v108 - 8;
  v113 = v105;
  __chkstk_darwin(v108 - 8);
  v80 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v79 - v9;
  v114 = sub_13A4C4();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_13A4B4();
  v11 = *(v111 - 8);
  v104 = v111 - 8;
  v106 = v11;
  v115 = v11;
  __chkstk_darwin(v111 - 8);
  v110 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13A454();
  v14 = *(v13 - 8);
  v117 = v13;
  v118 = v14;
  __chkstk_darwin(v13);
  v109 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_13C114();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2[40];
  v21 = a2[41];
  sub_162F0(a2 + 37, v20);
  sub_20038(v20, v21);
  sub_13A404();
  v22 = *(v17 + 8);
  v22(v19, v16);
  v23 = a2[35];
  v24 = a2[36];
  sub_162F0(a2 + 32, v23);
  sub_20038(v23, v24);
  sub_13A404();
  v22(v19, v16);
  sub_162F0(a2 + 5, a2[8]);
  v92 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v25 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v107 = *(v105 + 9);
  v26 = swift_allocObject();
  v79 = xmmword_140280;
  *(v26 + 16) = xmmword_140280;
  v27 = a2[13];
  v28 = a2[14];
  v29 = sub_162F0(a2 + 10, v27);
  *(&v124 + 1) = v27;
  v125 = *(v28 + 8);
  v30 = sub_CC08(&v123);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v122 = 0;
  v120 = 0u;
  v121 = 0u;
  v31 = *(v118 + 104);
  v32 = v109;
  v88 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v87 = v118 + 104;
  v105 = v31;
  v31(v109);
  v33 = sub_4948(&qword_19AFE8, &unk_140260);
  v34 = *(v106 + 72);
  v35 = v115;
  v36 = *(v115 + 80);
  v37 = (v36 + 32) & ~v36;
  v83 = 3 * v34;
  v103 = v36;
  v85 = v33;
  v38 = swift_allocObject();
  v82 = xmmword_13E660;
  *(v38 + 16) = xmmword_13E660;
  v104 = v37;
  sub_13A484();
  sub_13A494();
  v81 = 2 * v34;
  v86 = v34;
  sub_13A4A4();
  v119 = v38;
  v39 = sub_20068();
  v40 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v41 = sub_1D268();
  v42 = v110;
  v101 = v40;
  v100 = v41;
  v43 = v111;
  v102 = v39;
  sub_13BF64();
  v44 = v116;
  v45 = *(v116 + 104);
  v46 = v112;
  v99 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v47 = v114;
  v98 = v116 + 104;
  v97 = v45;
  v45(v112);
  v106 = v25;
  v84 = v26;
  sub_13A4E4();
  v48 = *(v44 + 8);
  v116 = v44 + 8;
  v96 = v48;
  v48(v46, v47);
  v49 = *(v35 + 8);
  v115 = v35 + 8;
  v95 = v49;
  v49(v42, v43);
  v50 = *(v118 + 8);
  v118 += 8;
  v94 = v50;
  v50(v32, v117);
  sub_1D2CC(&v120);
  sub_3C04(&v123);
  sub_162F0(a2 + 20, a2[23]);
  if ((sub_13A364() & 1) != 0 || (sub_162F0(a2 + 15, a2[18]), (sub_13A324() & 1) == 0))
  {
    v52 = v88;
    v57 = v84;
  }

  else
  {
    sub_162F0(a2 + 20, a2[23]);
    sub_13A374();
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    v51 = v109;
    v52 = v88;
    (v105)(v109, v88, v117);
    v53 = v112;
    v97(v112, v99, v114);
    v54 = swift_allocObject();
    *(v54 + 16) = v79;
    sub_13A484();
    v119 = v54;
    v55 = v110;
    v56 = v111;
    sub_13BF64();
    sub_13A4E4();
    v95(v55, v56);
    v96(v53, v114);
    v94(v51, v117);
    sub_1D2CC(&v120);
    sub_3C04(&v123);
    v57 = v84;
    v59 = *(v84 + 16);
    v58 = *(v84 + 24);
    v60 = v59 + 1;
    v61 = v108;
    if (v59 >= v58 >> 1)
    {
      *&v79 = v59 + 1;
      sub_58ABC(v58 > 1, v59 + 1, 1, v84);
      v60 = v79;
      v57 = v78;
    }

    *(v57 + 16) = v60;
    v113[4](v57 + v106 + v59 * v107, v80, v61);
  }

  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v62 = v109;
  v63 = v117;
  (v105)(v109, v52, v117);
  v64 = swift_allocObject();
  *(v64 + 16) = v82;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v120 = v64;
  v65 = v110;
  v66 = v111;
  sub_13BF64();
  v67 = v112;
  v68 = v114;
  v97(v112, v99, v114);
  v69 = v89;
  sub_13A4E4();
  v96(v67, v68);
  v95(v65, v66);
  v94(v62, v63);
  sub_1D2CC(&v123);
  v71 = *(v57 + 16);
  v70 = *(v57 + 24);
  if (v71 >= v70 >> 1)
  {
    sub_58ABC(v70 > 1, v71 + 1, 1, v57);
    v57 = v77;
  }

  v72 = v108;
  *(v57 + 16) = v71 + 1;
  v113[4](v57 + v106 + v71 * v107, v69, v72);
  v73 = v90;
  sub_13A4D4();
  sub_13A464();
  v75 = v74;
  (*(v91 + 8))(v73, v93);
  return v75;
}

uint64_t sub_60170(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

__n128 sub_60194(__n128 *a1)
{
  result = *(v1 - 448);
  a1[1] = result;
  return result;
}

double sub_601A8(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{

  sub_13BE34();
  return result;
}

double sub_601C8(uint64_t a1)
{

  sub_13A404();
  return result;
}

uint64_t sub_601E8()
{

  return sub_20038(v0, v1);
}

uint64_t type metadata accessor for BundleTile(uint64_t a1)
{
  result = qword_19C780;
  if (!qword_19C780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_602A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a2;
  v133 = a3;
  v128 = sub_139A34();
  sub_9E94();
  v127 = v5;
  __chkstk_darwin(v6);
  v126 = (&v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v8 - 8);
  v125 = &v123 - v9;
  v124 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v10);
  v131 = &v123 - v11;
  sub_13B584();
  sub_9E94();
  v139 = v13;
  v140 = v12;
  __chkstk_darwin(v12);
  v135 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v132 = &v123 - v16;
  __chkstk_darwin(v17);
  v19 = &v123 - v18;
  __chkstk_darwin(v20);
  v22 = &v123 - v21;
  __chkstk_darwin(v23);
  v130 = &v123 - v24;
  __chkstk_darwin(v25);
  v27 = &v123 - v26;
  __chkstk_darwin(v28);
  v30 = &v123 - v29;
  v138 = type metadata accessor for BundleTile(0);
  sub_9F94();
  __chkstk_darwin(v31);
  v33 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v137 = swift_initStackObject();
  v34 = sub_BB310();
  v36 = v3;
  v129 = v19;
  v123 = v22;
  if (v3)
  {

    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  *v33 = v34;
  *(v33 + 1) = v35;
  v136 = v35;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_139DB4();
  if (v36)
  {

    sub_18BAC();
    sub_928C(v141, &qword_19E960, &qword_13FD30);
LABEL_6:
    sub_13BAB4();
    sub_61720();
    v39 = sub_61304(v37, v38, &protocol conformance descriptor for JSONError);
    v40 = sub_9F18(v39);
    sub_61760(v40, v41);
    sub_9EF8();
    (*(v42 + 104))();
    swift_willThrow();
    v43 = *(v139 + 8);
    v43(v30, v140);

    sub_18B90();
    goto LABEL_7;
  }

  v43 = *(v139 + 8);
  v43(v30, v140);
  v44 = sub_249B4();
LABEL_7:
  v45 = v143;
  *(v33 + 1) = v142;
  *(v33 + 2) = v45;
  *(v33 + 6) = v144;
  __chkstk_darwin(v44);
  sub_5BD04();
  v46 = 0x6C6961746564;
  *(v33 + 7) = sub_9DD0();
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_61720();
    v49 = sub_61304(v47, v48, &protocol conformance descriptor for JSONError);
    v50 = sub_9F18(v49);
    sub_61760(v50, v51);
    sub_9EF8();
    (*(v52 + 104))();
    swift_willThrow();
    sub_47E58();
    (v43)(v27);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_47E58();
    (v43)(v27);
    sub_249B4();
    v46 = v138;
  }

  v53 = v143;
  *(v33 + 4) = v142;
  *(v33 + 5) = v53;
  *(v33 + 12) = v144;
  v54 = sub_BB310();
  v136 = v43;
  *&v142 = v54;
  *(&v142 + 1) = v55;
  sub_13BFB4();
  v56 = v130;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v58 = v125;
    sub_7738(v56, v145, v57);
    if (sub_52E0(v58, 1, v124) != 1)
    {
      sub_47E58();
      v136(v56);
      v67 = v131;
      sub_92E4(v58, v131);
      goto LABEL_16;
    }

    sub_928C(v58, &qword_19A420, &unk_13F430);
  }

  v59 = sub_13BAB4();
  sub_61720();
  sub_61304(v60, v61, &protocol conformance descriptor for JSONError);
  v62 = swift_allocError();
  v64 = sub_61784(v62, v63);
  *v65 = 0xD000000000000011;
  v65[1] = 0x800000000014E730;
  sub_61778(v64, v65);
  (*(*(v59 - 8) + 104))();
  swift_willThrow();
  sub_47E58();
  v136(v56);
  v46 = v138;

  v66 = sub_13B7A4();
  v67 = v131;
  sub_53A8(v131, 1, 1, v66);
LABEL_16:
  sub_92E4(v67, &v33[*(v46 + 52)]);
  sub_BB458();
  v68 = v135;
  sub_61738();
  v33[112] = v69 & 1;
  if (_UISolariumEnabled() && (a1 = v126, (*(v127 + 104))(v126, enum case for FlagKeys.Solarium(_:), v128), v70 = sub_139A24(), sub_61738(), v71(), (v70 & 1) != 0) && (a1 = &qword_19E960, sub_9D58((v33 + 16), &v142, &qword_19E960, &qword_13FD30), v72 = *(&v143 + 1), sub_61738(), v46 = v138, sub_928C(v73, v74, &qword_13FD30), v72))
  {
    v75 = v123;
    sub_13B594();
    v76 = sub_13B564();
    v77 = v132;
    if (v76)
    {
      sub_13BAB4();
      sub_61720();
      v80 = sub_61304(v78, v79, &protocol conformance descriptor for JSONError);
      v81 = sub_9F18(v80);
      v83 = sub_61784(v81, v82);
      *v84 = &qword_19E960;
      v84[1] = 0xE500000000000000;
      sub_61778(v83, v84);
      sub_9EF8();
      (*(v85 + 104))();
      swift_willThrow();
      sub_47E58();
      v136(v75);
      v46 = v138;

      sub_18B90();
    }

    else
    {
      sub_617BC();
      sub_47E58();
      v136(v75);
      sub_249B4();
    }

    sub_61748(*(v46 + 60));
    sub_617A8(*(v46 + 56));
  }

  else
  {
    sub_617A8(*(v46 + 60));
    v87 = v129;
    sub_13B594();
    v88 = sub_13B564();
    v77 = v132;
    if (v88)
    {
      sub_13BAB4();
      sub_61720();
      v91 = sub_61304(v89, v90, &protocol conformance descriptor for JSONError);
      v92 = sub_9F18(v91);
      v94 = sub_61784(v92, v93);
      *v95 = a1;
      v95[1] = 0xE500000000000000;
      sub_61778(v94, v95);
      sub_9EF8();
      (*(v96 + 104))();
      swift_willThrow();
      sub_47E58();
      v136(v87);
      v46 = v138;

      sub_18B90();
    }

    else
    {
      sub_617BC();
      sub_47E58();
      v136(v87);
      sub_249B4();
    }

    sub_61748(*(v46 + 56));
    v68 = v135;
  }

  __chkstk_darwin(v86);
  sub_5BD04();
  v98 = sub_9DB8(0x4965636976726573, 0xEC000000736E6F63, v46, sub_6134C, v97);
  v99 = v137;
  *(v33 + 13) = v98;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_61720();
    v102 = sub_61304(v100, v101, &protocol conformance descriptor for JSONError);
    v103 = sub_9F18(v102);
    v105 = sub_61784(v103, v104);
    *v106 = 0x656C746974627573;
    v106[1] = 0xE800000000000000;
    sub_61778(v105, v106);
    sub_9EF8();
    (*(v107 + 104))();
    swift_willThrow();
    sub_47E58();
    v136(v77);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_47E58();
    v136(v77);
    sub_249B4();
  }

  v108 = v143;
  *(v33 + 120) = v142;
  *(v33 + 136) = v108;
  *(v33 + 19) = v144;
  sub_13B594();
  if (sub_13B564())
  {
    v109 = sub_13BAB4();
    sub_61720();
    v112 = sub_61304(v110, v111, &protocol conformance descriptor for JSONError);
    v113 = sub_9F18(v112);
    v115 = sub_61784(v113, v114);
    *v116 = 0x656C746974;
    v116[1] = 0xE500000000000000;
    sub_61778(v115, v116);
    sub_9EF8();
    (*(v117 + 104))();
    swift_willThrow();

    v118 = sub_61790();
    MEMORY[0xE500000000000000](v118);
    MEMORY[0xE500000000000000](v68, v109);

    sub_18B90();
  }

  else
  {
    sub_139DB4();

    v122 = sub_61790();
    MEMORY[0xE500000000000000](v122);
    MEMORY[0xE500000000000000](v68, v99);
    sub_249B4();
  }

  v119 = v143;
  *(v33 + 10) = v142;
  *(v33 + 11) = v119;
  *(v33 + 24) = v144;
  sub_61378(v33, v133);
  sub_13B5A4();
  sub_9F94();
  (*(v120 + 8))(v145);
  return sub_613DC(v33);
}

uint64_t sub_61304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6134C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_39AFC(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_61378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleTile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_613DC(uint64_t a1)
{
  v2 = type metadata accessor for BundleTile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6144C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 224);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_614F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 224) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_61580(uint64_t a1)
{
  sub_24850();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_248F4(319, &qword_19C790, &unk_19C798, &qword_143C38);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

__n128 sub_61748@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 160);
  v5 = *(v2 - 144);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 128);
  return result;
}

void *sub_61760(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  a2[2] = *(v4 - 232);
  return result;
}

double sub_617A8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

void *sub_617BC()
{

  return sub_139BC4();
}

uint64_t sub_617E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_13C0C4();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

void sub_61804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_139A34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = sub_4948(&qword_19C840, &qword_143C90);
  sub_6250C();

  if (v57)
  {
    sub_9414(&v56, v58);
    if (_UISolariumEnabled() && ((*(v8 + 104))(v10, enum case for FlagKeys.Solarium(_:), v7), v12 = sub_139A24(), (*(v8 + 8))(v10, v7), (v12 & 1) != 0))
    {
      v13 = *(*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton] + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView);
      v14 = v59;
      v15 = v60;
      v16 = sub_162F0(v58, v59);
      sub_91BF0(v16, a3, v13, v14, v15);
      KeyPath = swift_getKeyPath();
      sub_624EC(KeyPath);

      sub_3C04(v58);
      v18 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButtonSegue;
      swift_beginAccess();
      sub_4BEA8(&v56, &v4[v18]);
      swift_endAccess();
    }

    else
    {
      sub_624D4();
      v19 = sub_62524();
      v20(v19);
      sub_3C04(v58);
    }
  }

  else
  {
    sub_2519C(&v56);
  }

  swift_getKeyPath();
  sub_6250C();

  v21 = v58[0];
  if (v58[0])
  {
    v22 = sub_617E0(v58[0]);
    if (v22)
    {
      v23 = v22;
      *&v56 = &_swiftEmptyArrayStorage;
      sub_4CF5C(0, v22 & ~(v22 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return;
      }

      v52 = a3;
      v53 = v11;
      v54 = v4;
      v55 = a1;
      v24 = 0;
      v25 = v56;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = sub_13C004();
        }

        else
        {
          v26 = *(v21 + 8 * v24 + 32);
        }

        v59 = &_s4ItemVN;
        v60 = &off_187F88;
        sub_62530();
        v27 = swift_allocObject();
        v58[0] = v27;
        *(v27 + 16) = 0u;
        *(v27 + 32) = 0u;
        *(v27 + 48) = 0u;
        *(v27 + 64) = v26;
        *(v27 + 96) = &type metadata for DynamicPlainText;
        *(v27 + 104) = &protocol witness table for DynamicPlainText;
        sub_62530();
        *(v27 + 72) = swift_allocObject();
        sub_139D54();
        *(v27 + 144) = 0;
        *(v27 + 112) = 0u;
        *(v27 + 128) = 0u;
        *&v56 = v25;
        v29 = v25[2];
        v28 = v25[3];
        if (v29 >= v28 >> 1)
        {
          sub_4CF5C((v28 > 1), v29 + 1, 1);
        }

        ++v24;
        v30 = v59;
        v31 = v60;
        v32 = sub_4D884(v58, v59);
        v33 = __chkstk_darwin(v32);
        v35 = &v51 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v36 + 16))(v35, v33);
        sub_4D7EC(v29, v35, &v56, v30, v31);
        sub_3C04(v58);
        v25 = v56;
      }

      while (v23 != v24);

      v4 = v54;
      a3 = v52;
    }

    else
    {

      v25 = &_swiftEmptyArrayStorage;
    }

    sub_1180F8(v25, a3);
  }

  swift_getKeyPath();
  sub_6250C();

  v37 = v58[0];
  if (v58[0])
  {
    sub_624D4();
    (*(v38 + 296))(v37, a3);
  }

  v39 = swift_getKeyPath();
  sub_624EC(v39);

  if (v57)
  {
    sub_9414(&v56, v58);
    sub_624D4();
    v40 = sub_62524();
    v41(v40);
    sub_3C04(v58);
  }

  else
  {
    sub_2519C(&v56);
  }

  v42 = swift_getKeyPath();
  sub_624EC(v42);

  if (v57)
  {
    sub_9414(&v56, v58);
    sub_624D4();
    v43 = sub_62524();
    v44(v43);
    sub_3C04(v58);
  }

  else
  {
    sub_2519C(&v56);
  }

  v45 = swift_getKeyPath();
  sub_624EC(v45);

  if (v57)
  {
    sub_9414(&v56, v58);
    sub_624D4();
    v46 = sub_62524();
    v47(v46);
    sub_3C04(v58);
  }

  else
  {
    sub_2519C(&v56);
  }

  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_objectGraph] = a3;

  v48 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator];
  swift_getKeyPath();
  sub_6250C();

  [v48 setHidden:(v58[0] & 1) == 0];
  v49 = [v4 contentView];
  swift_getKeyPath();
  sub_13B5E4();

  if (v58[1])
  {
    v50 = sub_13BB54();
  }

  else
  {
    v50 = 0;
  }

  [v49 setAccessibilityLabel:v50];
}

uint64_t sub_61FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleTileComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_62028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleTileComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_62090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_6210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_62188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_62208()
{
  result = qword_19C7F0;
  if (!qword_19C7F0)
  {
    type metadata accessor for BundleTile(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C7F0);
  }

  return result;
}

void *sub_62260()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_62300()
{
  if (*(v0 + 40))
  {
    sub_3C04((v0 + 16));
  }

  sub_3C04((v0 + 72));
  if (*(v0 + 136))
  {
    sub_3C04((v0 + 112));
  }

  sub_62530();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_62364()
{

  if (*(v0 + 80))
  {
    sub_3C04((v0 + 56));
  }

  sub_62530();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_623B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_623F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_62468(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4948(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_624EC(uint64_t a1)
{

  return sub_13B5E4();
}

void *sub_6250C()
{

  return sub_13B5E4();
}

id sub_6253C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton;
  *&v5[v10] = [objc_allocWithZone(type metadata accessor for DynamicButton(0)) init];
  v11 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButtonSegue];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionLabel;
  sub_139BB4();
  v13 = objc_opt_self();
  v14 = [v13 ams_appTint];
  v15 = sub_13A2A4();
  *(&v51 + 1) = v15;
  v52 = &protocol witness table for FontSource;
  *sub_CC08(&v50) = UIFontTextStyleSubheadline;
  v16 = *(*(v15 - 8) + 104);
  sub_27C88();
  v16();
  v42 = UIFontTextStyleSubheadline;
  sub_64E08();
  *&v5[v12] = sub_139BA4();
  v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView;
  v18 = objc_allocWithZone(sub_139CF4());
  *&v5[v17] = sub_139CE4();
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_detailLabel;
  v20 = [v13 ams_primaryText];
  *(&v51 + 1) = v15;
  v52 = &protocol witness table for FontSource;
  *sub_CC08(&v50) = v42;
  sub_27C88();
  v16();
  sub_64E08();
  *&v5[v19] = sub_139BA4();
  v21 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator;
  v43 = type metadata accessor for BundleTileComponent();
  *&v5[v21] = sub_62A90();
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_objectGraph] = 0;
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_servicesGridView;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v23 = type metadata accessor for ServicesGridView();
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v24 = objc_allocWithZone(v23);
  v47[3] = &type metadata for CGFloat;
  v47[4] = &protocol witness table for CGFloat;
  v46[4] = &protocol witness table for CGFloat;
  v47[0] = 0x4018000000000000;
  v46[3] = &type metadata for CGFloat;
  v46[0] = 0;
  *&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns] = 1;
  v25 = &v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView];
  *v25 = 0;
  v25[1] = 0;
  *&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews] = &_swiftEmptyArrayStorage;
  v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState] = 0;
  sub_4B14(v46, &v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_rowSpacing]);
  __asm { FMOV            V0.2D, #28.0 }

  *&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize] = _Q0;
  v31 = &v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics];
  sub_4B14(v47, &v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics]);
  sub_4F14C(&v50, (v31 + 48));
  sub_4F1A8(v48, (v31 + 88));
  sub_4B14(v46, (v31 + 128));
  v31[40] = 1;
  v31[168] = 0;
  *(v31 + 22) = 1;
  v31[184] = 0;
  v45.receiver = v24;
  v45.super_class = v23;
  v32 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_4F204(v48);
  sub_4F258(&v50);
  sub_3C04(v46);
  sub_3C04(v47);
  *&v5[v22] = v32;
  v33 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_subtitleLabel;
  v34 = [v13 ams_primaryText];
  *(&v51 + 1) = v15;
  v52 = &protocol witness table for FontSource;
  *sub_CC08(&v50) = v42;
  sub_27C88();
  v16();
  sub_64E08();
  *&v5[v33] = sub_139BA4();
  v35 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_titleLabel;
  v36 = [v13 ams_primaryText];
  *(&v51 + 1) = v15;
  v52 = &protocol witness table for FontSource;
  *sub_CC08(&v50) = UIFontTextStyleHeadline;
  sub_27C88();
  v16();
  v37 = UIFontTextStyleHeadline;
  *&v5[v35] = sub_139BA4();
  v38 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_metrics];
  *(v38 + 5) = &type metadata for CGFloat;
  *(v38 + 6) = &protocol witness table for CGFloat;
  *(v38 + 2) = 0x4024000000000000;
  *(v38 + 12) = &type metadata for CGFloat;
  *(v38 + 13) = &protocol witness table for CGFloat;
  *(v38 + 9) = 0x4024000000000000;
  *(v38 + 17) = &type metadata for Double;
  *(v38 + 18) = &protocol witness table for Double;
  *(v38 + 14) = 0x4024000000000000;
  *(v38 + 22) = &type metadata for Double;
  *(v38 + 23) = &protocol witness table for Double;
  *(v38 + 19) = 0x4020000000000000;
  *(v38 + 27) = &type metadata for Double;
  *(v38 + 28) = &protocol witness table for Double;
  *(v38 + 24) = 0x4020000000000000;
  *(v38 + 32) = &type metadata for Double;
  *(v38 + 33) = &protocol witness table for Double;
  *(v38 + 29) = 0x4020000000000000;
  *(v38 + 37) = &type metadata for Double;
  *(v38 + 38) = &protocol witness table for Double;
  *(v38 + 34) = 0;
  *v38 = vdupq_n_s64(0x4048000000000000uLL);
  __asm { FMOV            V0.2D, #22.0 }

  *(v38 + 56) = _Q0;
  v44.receiver = v5;
  v44.super_class = v43;
  v40 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_63640();

  return v40;
}

id sub_62A90()
{
  v0 = [objc_allocWithZone(AMSUICommonImageView) init];
  sub_CACC(0, &unk_1A0710, UIImage_ptr);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = sub_EE960(0x2E6E6F7276656863, 0xED00007468676972, [v1 configurationWithPointSize:4 weight:1 scale:16.0]);
  [v2 setImage:v3];

  [v2 setContentMode:1];
  if (qword_199F50 != -1)
  {
    swift_once();
  }

  [v2 setTintColor:qword_1B2A08];

  return v2;
}

id sub_62C04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleTileComponent();
  return objc_msgSendSuper2(&v3, "isHighlighted");
}

id sub_62C8C(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BundleTileComponent();
  objc_msgSendSuper2(&v4, "setHighlighted:", v2 & 1);
  return sub_128260([v1 isHighlighted], 1);
}

uint64_t sub_62CE8(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BundleTileComponent();
  v2 = objc_msgSendSuper2(&v7, "prepareForReuse");
  (*(&stru_108.reloff + (swift_isaMask & **&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView])))(v2);
  sub_1D38C();
  (*(v3 + 392))();
  sub_117FB4();
  sub_1D38C();
  (*(v4 + 392))();
  sub_1D38C();
  return (*(v5 + 392))();
}

uint64_t sub_62E90()
{
  sub_13A314();
  sub_9E94();
  v33 = v5;
  v34 = v4;
  __chkstk_darwin(v4);
  sub_9EC0();
  v32 = v7 - v6;
  v36.receiver = v0;
  v36.super_class = type metadata accessor for BundleTileComponent();
  objc_msgSendSuper2(&v36, "layoutSubviews");
  sub_64838(&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_metrics], v35);
  v8 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton];
  v31 = v8;
  v35[42] = type metadata accessor for DynamicButton(0);
  v35[43] = protocol witness table for UIView;
  v35[39] = v8;
  v9 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionLabel];
  v30 = v9;
  v10 = sub_139BB4();
  v35[47] = v10;
  v11 = sub_270D8();
  v35[48] = v11;
  v35[44] = v9;
  v12 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView];
  v35[52] = sub_139CF4();
  v35[53] = protocol witness table for UIView;
  v35[49] = v12;
  v13 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_detailLabel];
  v35[57] = v10;
  v35[58] = v11;
  v35[54] = v13;
  v14 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator];
  v15 = sub_CACC(0, &qword_19C568, AMSUICommonImageView_ptr);
  v35[63] = protocol witness table for UIView;
  v35[62] = v15;
  v35[59] = v14;
  v16 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_servicesGridView];
  v35[67] = type metadata accessor for ServicesGridView();
  v35[68] = protocol witness table for UIView;
  v35[64] = v16;
  v17 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_subtitleLabel];
  v35[72] = v10;
  v35[73] = v11;
  v35[69] = v17;
  v18 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_titleLabel];
  v35[77] = v10;
  v35[78] = v11;
  v35[74] = v18;
  v19 = v31;
  v20 = v30;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = [v0 contentView];
  [v27 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v28 = [v0 contentView];
  sub_65070(v28, v1, v2, v3);

  (*(v33 + 8))(v32, v34);
  return sub_64AA8(v35);
}

double sub_63198(double a1, double a2, float a3)
{
  sub_64838(&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_metrics], v34);
  v6 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton];
  v33 = v6;
  v34[42] = type metadata accessor for DynamicButton(0);
  v34[43] = protocol witness table for UIView;
  v34[39] = v6;
  v7 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionLabel];
  v8 = sub_139BB4();
  v34[47] = v8;
  v9 = sub_270D8();
  v34[48] = v9;
  v34[44] = v7;
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView];
  v34[52] = sub_139CF4();
  v34[53] = protocol witness table for UIView;
  v34[49] = v10;
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_detailLabel];
  v34[57] = v8;
  v34[58] = v9;
  v34[54] = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator];
  v13 = sub_CACC(0, &qword_19C568, AMSUICommonImageView_ptr);
  v34[63] = protocol witness table for UIView;
  v34[62] = v13;
  v34[59] = v12;
  v14 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_servicesGridView];
  v34[67] = type metadata accessor for ServicesGridView();
  v34[68] = protocol witness table for UIView;
  v34[64] = v14;
  v15 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_subtitleLabel];
  v34[72] = v8;
  v34[73] = v9;
  v16 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_titleLabel];
  v34[69] = v15;
  v34[77] = v8;
  v34[78] = v9;
  v34[74] = v16;
  v17 = v33;
  v18 = v7;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  sub_27C54();
  sub_13BE64();
  v26 = v25;
  v28 = v27;
  v29 = [v3 contentView];
  sub_64894(v29, v34, v26, v28);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v31 = a1;
  }

  else
  {
    v31 = v30;
  }

  sub_64AA8(v34);
  return v31;
}

void sub_63454(uint64_t a1)
{
  v2 = v1;
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for BundleTileComponent();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  if (!_UISolariumEnabled() || ((*(v6 + 104))(v10, enum case for FlagKeys.Solarium(_:), v4), v11 = sub_139A24(), (*(v6 + 8))(v10, v4), (v11 & 1) == 0))
  {
    v12 = [v2 contentView];
    v13 = [objc_opt_self() ams_shadow];
    v14 = [v13 CGColor];

    v15 = sub_4AD60();
    sub_12BE00(v14, v15, v16, v17, v18);
  }
}

void sub_63640()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  if (qword_199F48 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_1B2A00];

  v10 = sub_57354();
  if (qword_199F30 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1B29E8);

  v11 = sub_57354();
  v12 = [v11 layer];

  if (qword_199F38 != -1)
  {
    swift_once();
  }

  [v12 setBorderWidth:*&qword_1B29F0];

  v13 = sub_57354();
  v14 = [v13 layer];

  if (qword_199F40 != -1)
  {
    swift_once();
  }

  [v14 setBorderColor:qword_1B29F8];

  if (!_UISolariumEnabled() || (v15 = sub_64E34(), v16(v15), v17 = sub_139A24(), (*(v4 + 8))(v8, v2), (v17 & 1) == 0))
  {
    v18 = sub_57354();
    v19 = [objc_opt_self() ams_shadow];
    v20 = [v19 CGColor];

    v21 = sub_4AD60();
    sub_12BE00(v20, v21, v22, v23, v24);
  }

  if (_UISolariumEnabled() && (v25 = sub_64E34(), v26(v25), v27 = sub_139A24(), (*(v4 + 8))(v8, v2), (v27 & 1) != 0))
  {
    v28 = sub_57354();
    v29 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButton];
    [v28 addSubview:v29];

    v30 = sub_57354();
    [v30 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_servicesGridView]];

    sub_118068(0, 1, 0);
    if (qword_199F28 != -1)
    {
      swift_once();
    }

    v31 = qword_1B29E0;
    v32 = qword_1B29E0;
    sub_8E8AC(v31);
    [v29 addTarget:v1 action:"runActionButtonSegue" forControlEvents:64];
  }

  else
  {
    v33 = sub_57354();
    sub_1D474(v33, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionLabel);
  }

  v34 = sub_57354();
  sub_1D474(v34, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_artworkImageView);

  v35 = sub_57354();
  v36 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_disclosureIndicator];
  [v35 addSubview:v36];

  v37 = sub_57354();
  sub_1D474(v37, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_detailLabel);

  v38 = sub_57354();
  sub_1D474(v38, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_titleLabel);

  v39 = sub_57354();
  sub_1D474(v39, OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_subtitleLabel);

  [v36 setHidden:1];
  v40 = sub_57354();
  [v40 setIsAccessibilityElement:1];

  v41 = sub_57354();
  [v41 setAccessibilityTraits:UIAccessibilityTraitButton];
}

uint64_t sub_63B88()
{
  v1 = sub_139E74();
  __chkstk_darwin(v1 - 8);
  sub_9EC0();
  v4 = v3 - v2;
  v5 = sub_13B834();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_actionButtonSegue;
  swift_beginAccess();
  sub_64264(v0 + v12, &v17);
  if (!*(&v18 + 1))
  {
    return sub_CC68(&v17, &unk_19E320, &unk_140950);
  }

  sub_9414(&v17, v20);
  v13 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleTileComponent_objectGraph);
  if (v13)
  {
    sub_139E84();
    sub_13B6B4();

    sub_13B9A4();
    v14 = v17;
    sub_13B9A4();
    (*(v7 + 16))(v4, v11, v5);
    v15 = sub_4948(&unk_19B7E0, &unk_141F10);
    sub_53A8(v4, 0, 1, v15);
    v17 = 0u;
    v18 = 0u;
    v19 = -1;
    (*(*v14 + 216))(v20, v4, v13, &v17);

    sub_CC68(&v17, &unk_19E330, &qword_144CD0);
    sub_3BDFC(v4);
    (*(v7 + 8))(v11, v5);
  }

  return sub_3C04(v20);
}

id sub_63E90(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleTileComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_63FD4(void *a1)
{
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  if (_UISolariumEnabled() && (v9 = sub_64E1C(), v10(v9), v11 = sub_139A24(), (*(v4 + 8))(v8, v2), (v11 & 1) != 0))
  {
    v12 = [a1 container];
    swift_getObjectType();
    sub_BBC90();
    v14 = v13;
    swift_unknownObjectRelease();
    v15 = v14 + v14;
  }

  else
  {
    v16 = [a1 container];
    swift_getObjectType();
    v17 = sub_BBC00();
    swift_unknownObjectRelease();
    if (v17)
    {
      v15 = 200.0;
    }

    else
    {
      v15 = 32.0;
    }
  }

  [objc_msgSend(a1 "container")];
  v19 = v18;
  swift_unknownObjectRelease();
  v20 = v19 - v15;
  if (_UISolariumEnabled())
  {
    v21 = sub_64E1C();
    v22(v21);
    v23 = sub_139A24();
    (*(v4 + 8))(v8, v2);
    if (v23)
    {
      v20 = fmin(v20, 360.0);
    }
  }

  v24 = [objc_opt_self() absoluteDimension:v20];
  v25 = [objc_opt_self() estimatedDimension:200.0];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  return v26;
}

uint64_t sub_64264(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&unk_19E320, &unk_140950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_642D4()
{
  v0 = [objc_opt_self() ams_appTint];
  v1 = [v0 colorWithAlphaComponent:0.15];

  qword_1B29E0 = v1;
}

uint64_t sub_64340()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_1B29E8 = *&v6;
  return result;
}

uint64_t sub_64444()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_1B29F0 = *&v6;
  return result;
}

void sub_64548()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_1B29F8 = v7;
}

id sub_646D0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_1B2A00 = result;
  return result;
}

id sub_647FC()
{
  result = [objc_opt_self() ams_tertiaryText];
  qword_1B2A08 = result;
  return result;
}

double sub_64894(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = sub_13C114();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_64AFC(a1, a2);
  sub_64C6C(a1, a2);
  sub_6544C(v14);
  sub_162F0(v14, v14[3]);
  sub_13A384();
  sub_3C04(v14);
  sub_162F0(a2 + 39, a2[42]);
  if (sub_13A324())
  {
    v11 = a2[17];
    v12 = a2[18];
    sub_162F0(a2 + 14, v11);
    sub_20038(v11, v12);
    sub_13A404();
    (*(v8 + 8))(v10, v7);
    sub_162F0(a2 + 39, a2[42]);
    sub_13A384();
  }

  return a3;
}

double sub_64AFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a2 + 392), *(a2 + 416));
  v7 = 0.0;
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0((a2 + 392), *(a2 + 416));
    if (sub_13A324())
    {
      v8 = *a2;
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      sub_162F0((a2 + 16), v9);
      sub_20038(v9, v10);
      sub_13A404();
      v12 = v11;
      (*(v4 + 8))(v6, v3);
      return v8 + v12;
    }
  }

  return v7;
}

uint64_t sub_64C6C(uint64_t a1, void *a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a2 + 59, a2[62]);
  result = sub_13A364();
  if ((result & 1) == 0)
  {
    v8 = a2[12];
    v9 = a2[13];
    sub_162F0(a2 + 9, v8);
    sub_20038(v8, v9);
    sub_13A404();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_64E54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 632))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_64E94(uint64_t result, int a2, int a3)
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 632) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_64F90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_64FD0(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_65070(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v7 = sub_13C114();
  sub_9E94();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_9EC0();
  v13 = v12 - v11;
  v23 = sub_13A314();
  sub_9E94();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_9EC0();
  v19 = v18 - v17;
  sub_162F0(v4 + 49, v4[52]);
  sub_13A354();
  swift_getObjectType();
  sub_65FA8(a1, v4);
  sub_66118(a1, v4);
  v25.origin.x = sub_3001C();
  CGRectGetMinX(v25);
  v26.origin.x = sub_3001C();
  CGRectGetMinY(v26);
  v27.origin.x = sub_3001C();
  CGRectGetHeight(v27);
  sub_6544C(v24);
  sub_6627C(v24, v24[3]);
  sub_13A544();
  sub_3C04(v24);
  sub_6627C(v5 + 39, v5[42]);
  if (sub_13A324())
  {
    v20 = v4[17];
    v21 = v5[18];
    sub_162F0(v5 + 14, v5[17]);
    sub_20038(v20, v21);
    sub_13A404();
    (*(v9 + 8))(v13, v7);
    sub_6627C(v5 + 49, v5[52]);
    sub_13A344();
    CGRectGetMaxY(v28);
    sub_13A304();
    sub_13A2D4();
    v29.origin.x = sub_3001C();
    CGRectGetWidth(v29);
    v30.origin.x = sub_3001C();
    CGRectGetHeight(v30);
    sub_6627C(v5 + 39, v5[42]);
    sub_66270();
    sub_13A384();
    sub_6627C(v5 + 39, v5[42]);
    v31.origin.x = sub_3001C();
    CGRectGetMinX(v31);
    sub_66270();
    sub_13A354();
  }

  sub_6627C(v5 + 59, v5[62]);
  sub_66270();
  if ((sub_13A364() & 1) == 0)
  {
    sub_6627C(v5 + 59, v5[62]);
    v32.origin.x = sub_3001C();
    CGRectGetMinX(v32);
    v33.origin.x = sub_3001C();
    CGRectGetWidth(v33);
    v34.origin.x = sub_3001C();
    CGRectGetMidY(v34);
    sub_66270();
    sub_13A354();
  }

  sub_3001C();
  sub_13A2B4();
  return (*(v15 + 8))(v19, v23);
}

uint64_t sub_6544C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v47 = sub_13A4C4();
  sub_9E94();
  v53 = v3;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v46 = sub_13A454();
  sub_9E94();
  v52 = v8;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  v13 = sub_13A4B4();
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_9EC0();
  v51 = v15 - v14;
  sub_4948(&qword_19AFE8, &unk_140260);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  *&v55 = v16;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  v40 = v13;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_13F4C0;
  v17 = v1[77];
  v18 = v1[78];
  sub_6627C(v2 + 74, v2[77]);
  *(&v56 + 1) = v17;
  sub_2A360(*(v18 + 8));
  sub_2B538();
  (*(v19 + 16))();
  v20 = sub_66260();
  v45 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v50 = *(v52 + 104);
  v50(v12, v20);
  v49 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v48 = *(v53 + 104);
  v48(v7);
  sub_13A4E4();
  v44 = *(v53 + 8);
  v44(v7, v47);
  v43 = *(v52 + 8);
  v43(v12, v46);
  sub_1D2CC(v54);
  sub_3C04(&v55);
  v21 = v1[72];
  v22 = v1[73];
  sub_162F0(v1 + 69, v21);
  *(&v56 + 1) = v21;
  sub_2A360(*(v22 + 8));
  sub_2B538();
  (*(v23 + 16))();
  v24 = sub_66260();
  (v50)(v12, v45, v46, v24);
  (v48)(v7, v49, v47);
  sub_13A4E4();
  v44(v7, v47);
  v43(v12, v46);
  sub_1D2CC(v54);
  sub_3C04(&v55);
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  (v50)(v12, v45, v46);
  v25 = v7;
  (v48)(v7, v49, v47);
  v26 = v2;
  sub_13A4E4();
  v44(v25, v47);
  v43(v12, v46);
  sub_1D2CC(&v55);
  v28 = v2[57];
  v27 = v2[58];
  sub_162F0(v26 + 54, v26[57]);
  *(&v56 + 1) = v28;
  sub_2A360(*(v27 + 8));
  sub_2B538();
  (*(v29 + 16))();
  v30 = sub_66260();
  (v50)(v12, v45, v46, v30);
  (v48)(v25, v49, v47);
  sub_13A4E4();
  v31 = sub_66294();
  v32(v31);
  v43(v12, v46);
  sub_1D2CC(v54);
  sub_3C04(&v55);
  v34 = v2[47];
  v33 = v2[48];
  sub_162F0(v26 + 44, v26[47]);
  *(&v56 + 1) = v34;
  sub_2A360(*(v33 + 8));
  sub_2B538();
  (*(v35 + 16))();
  v36 = sub_66260();
  (v50)(v12, v45, v46, v36);
  (v48)(v25, v49, v47);
  sub_13A4E4();
  v37 = sub_66294();
  v38(v37);
  v43(v12, v46);
  sub_1D2CC(v54);
  sub_3C04(&v55);
  a1[3] = sub_13A514();
  a1[4] = &protocol witness table for VerticalFlowLayout;
  a1[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(a1);
  sub_13A4D4();
  return (*(v41 + 8))(v51, v40);
}

double sub_65D30(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_65D88(a1, v3, ObjectType, a2, a3);
}

double sub_65D88(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v8 = sub_13C114();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_65FA8(a1, a2);
  sub_66118(a1, a2);
  sub_6544C(v15);
  sub_162F0(v15, v15[3]);
  sub_13A384();
  sub_3C04(v15);
  sub_162F0(a2 + 39, a2[42]);
  if (sub_13A324())
  {
    v12 = a2[17];
    v13 = a2[18];
    sub_162F0(a2 + 14, v12);
    sub_20038(v12, v13);
    sub_13A404();
    (*(v9 + 8))(v11, v8);
    sub_162F0(a2 + 39, a2[42]);
    sub_13A384();
  }

  return a4;
}

double sub_65FA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a2 + 392), *(a2 + 416));
  v7 = 0.0;
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0((a2 + 392), *(a2 + 416));
    if (sub_13A324())
    {
      v8 = *a2;
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      sub_162F0((a2 + 16), v9);
      sub_20038(v9, v10);
      sub_13A404();
      v12 = v11;
      (*(v4 + 8))(v6, v3);
      return v8 + v12;
    }
  }

  return v7;
}

uint64_t sub_66118(uint64_t a1, void *a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a2 + 59, a2[62]);
  result = sub_13A364();
  if ((result & 1) == 0)
  {
    v8 = a2[12];
    v9 = a2[13];
    sub_162F0(a2 + 9, v8);
    sub_20038(v8, v9);
    sub_13A404();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

double sub_66260()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t sub_662A8(char a1)
{
  if (a1)
  {
    return 1668184435;
  }

  else
  {
    return 0x636E797361;
  }
}

uint64_t sub_662D4(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_13C104(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_66324(char a1)
{
  if (a1)
  {
    return 0x7468676972;
  }

  else
  {
    return 1952867692;
  }
}

BOOL sub_66350(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1841D0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  return v4 != 0;
}

uint64_t sub_663BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_184130;
  result = sub_662D4(*a1, a1[1], v3);
  *a2 = result;
  return result;
}

uint64_t sub_663F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_662A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_66444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_184180;
  result = sub_662D4(*a1, a1[1], v3);
  *a2 = result;
  return result;
}

uint64_t sub_6647C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_66324(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_664B4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_66350(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_66500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_13B5D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_66574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a2;
  v96 = a3;
  v5 = sub_4948(&qword_19C8C8, &unk_144030);
  __chkstk_darwin(v5 - 8);
  v99 = &v94 - v6;
  v98 = sub_4948(&qword_19A498, &unk_147A80);
  sub_2B538();
  __chkstk_darwin(v7);
  v100 = &v94 - v8;
  sub_13B5D4();
  sub_9E94();
  v104 = v9;
  v105 = v10;
  __chkstk_darwin(v9);
  sub_9EC0();
  v101 = v12 - v11;
  v13 = sub_13B584();
  sub_9E94();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_18B60();
  __chkstk_darwin(v17);
  v103 = &v94 - v18;
  __chkstk_darwin(v19);
  sub_18B60();
  __chkstk_darwin(v20);
  sub_18B60();
  __chkstk_darwin(v21);
  v22 = type metadata accessor for BundleTwoPanelPageDestination(0);
  sub_2B538();
  __chkstk_darwin(v23);
  sub_9EC0();
  v106 = (v25 - v24);
  sub_139DC4();
  inited = swift_initStackObject();
  v109 = a1;
  v110 = inited;
  sub_13B594();
  v27 = sub_13B564();
  v108 = v15;
  if ((v27 & 1) == 0)
  {
    sub_139DB4();
    if (!v3)
    {
      v31 = *(v108 + 8);
      v44 = sub_681DC();
      v31(v44);
      sub_681E8();
      goto LABEL_5;
    }

    sub_6819C();
    sub_184DC(v111, &qword_19E960, &qword_13FD30);
    v15 = v108;
  }

  sub_13BAB4();
  v28 = sub_677B8();
  sub_9F18(v28);
  *v29 = 0x6567646162;
  v29[1] = 0xE500000000000000;
  v29[2] = v22;
  sub_2B538();
  (*(v30 + 104))();
  swift_willThrow();
  v31 = *(v15 + 8);
  v32 = sub_681DC();
  v31(v32);

  v114 = 0;
  v112 = 0u;
  v113 = 0u;
LABEL_5:
  v38 = v113;
  v39 = v106;
  *v106 = v112;
  *(v39 + 16) = v38;
  *(v39 + 32) = v114;
  sub_6EB8(0x6F506E6F74747562, 0xEE006E6F69746973, v22, v33, v34, v35, v36, v37);
  v40 = v115;
  *(v39 + 40) = v41 & 1;
  __chkstk_darwin(v41);
  *(&v94 - 2) = v40;
  v42 = sub_9DB8(0x736E6F74747562, 0xE700000000000000, v22, sub_67810, (&v94 - 4));
  v107 = v22;
  v95 = v31;
  v94 = v13;
  *(v39 + 48) = v42;
  result = sub_BB598(0x6F436E6D756C6F63, 0xEB00000000746E75, v22);
  v45 = v103;
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v103 = 0;
  *(v39 + 56) = result;
  *(v39 + 64) = 0;
  v46 = v102;
  v47 = v109;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v48 = sub_677B8();
    sub_9F18(v48);
    *v49 = 0x7470697263736564;
    v49[1] = 0xEB000000006E6F69;
    sub_681D0(v49, v49);
    sub_2B538();
    (*(v50 + 104))();
    swift_willThrow();

    v51 = v47;
    v52 = v94;
    v53 = v95;
    (v95)(v51, v94);
    v53(v46, v52);
    v54 = 0;
    v55 = 0;
    goto LABEL_11;
  }

  sub_139DB4();
  v59 = v108 + 8;
  v60 = v46;
  v61 = v95;
  (v95)(v60, v94);
  sub_681E8();
  sub_9414(&v112, v39 + 72);
  sub_13B594();
  v62 = sub_13B564();
  v108 = v59;
  if (v62)
  {
    sub_13BAB4();
    v63 = sub_677B8();
    sub_18B70(v63);
    *v64 = 0x6D69616C63736964;
    v64[1] = 0xEA00000000007265;
    sub_681D0(v64, v64);
    sub_2B538();
    (*(v65 + 104))();
    swift_willThrow();
    v66 = sub_681DC();
    v61(v66);

    v114 = 0;
    v112 = 0u;
    v113 = 0u;
  }

  else
  {
    sub_139DB4();
    sub_681AC();
    v76();
    sub_681E8();
  }

  v67 = v113;
  *(v39 + 112) = v112;
  *(v39 + 128) = v67;
  *(v39 + 144) = v114;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_27;
  }

  v68 = v99;
  sub_80C0(v45, v115);
  if (sub_52E0(v68, 1, v98) == 1)
  {
    sub_184DC(v68, &qword_19C8C8, &unk_144030);
LABEL_27:
    sub_13BAB4();
    v69 = sub_677B8();
    sub_18B70(v69);
    *v70 = 0x7274654D65676170;
    v70[1] = 0xEB00000000736369;
    sub_681D0(v70, v70);
    sub_2B538();
    (*(v71 + 104))();
    swift_willThrow();
    sub_681AC();
    v72();

    v73 = v100;
    v74 = v104;
    sub_53A8(v100, 1, 1, v104);
    goto LABEL_28;
  }

  sub_681AC();
  v75();
  v73 = v100;
  sub_678FC(v68, v100);
  v74 = v104;
  if (sub_52E0(v73, 1, v104) == 1)
  {
LABEL_28:
    sub_13B5C4();
    if (sub_52E0(v73, 1, v74) != 1)
    {
      sub_184DC(v73, &qword_19A498, &unk_147A80);
    }

    goto LABEL_32;
  }

  (*(v105 + 32))(v101, v73, v74);
LABEL_32:
  v77 = v107;
  v78 = (*(v105 + 32))(v39 + *(v107 + 52), v101, v74);
  __chkstk_darwin(v78);
  *(&v94 - 2) = v115;
  *(v39 + 152) = sub_9DB8(0x7365636976726573, 0xE800000000000000, v77, sub_511D0, (&v94 - 4));
  sub_7048(0x4D676E6963617073, 0xEC0000006C65646FLL, v77, v79, v80, v81, v82, v83);
  *(v39 + 160) = 0;
  v84 = v97;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v85 = v115;
    sub_139DB4();
    sub_681BC();
    v92 = *(v91 - 256);
    v92();
    (v92)(v84, 0xE500000000000000);
    sub_681E8();
    sub_9414(&v112, v39 + 168);
    sub_6783C(v39, v96);
    sub_13B5A4();
    sub_5224();
    (*(v93 + 8))(v85);
    return sub_678A0(v39);
  }

  sub_13BAB4();
  v86 = sub_677B8();
  sub_9F18(v86);
  *v87 = 0x656C746974;
  v87[1] = 0xE500000000000000;
  sub_681D0(v87, v87);
  sub_2B538();
  (*(v88 + 104))();
  swift_willThrow();

  sub_681BC();
  v90 = *(v89 - 256);
  v90();
  (v90)(v84, 0xE500000000000000);
  v54 = 1;
  v55 = 1;
LABEL_11:
  v56 = v115;
  v57 = v103;
  sub_13B5A4();
  sub_5224();
  (*(v58 + 8))(v56);
  result = sub_184DC(v39, &qword_19E960, &qword_13FD30);
  if (v57)
  {
    if (!v54)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!v54)
    {
LABEL_13:
      if (!v55)
      {
        goto LABEL_14;
      }

LABEL_18:

      if (!v54)
      {
        return result;
      }

      return (*(v105 + 8))(v39 + *(v107 + 52), v104);
    }
  }

  sub_3C04((v39 + 72));
  result = sub_184DC(v39 + 112, &qword_19E960, &qword_13FD30);
  if (v55)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!v54)
  {
    return result;
  }

  return (*(v105 + 8))(v39 + *(v107 + 52), v104);
}

uint64_t sub_6734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_13B584();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  sub_139BD4();
  swift_initStackObject();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v27 = a2;
  sub_139BC4();
  if (v35[7])
  {

    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_184DC(v29, &unk_19E320, &unk_140950);
LABEL_4:
    sub_13BAB4();
    v12 = sub_677B8();
    sub_9F18(v12);
    *v13 = 0x6E6F69746361;
    v13[1] = 0xE600000000000000;
    v13[2] = &type metadata for BundleTwoPanelPageDestination.Button;
    sub_2B538();
    (*(v14 + 104))();
    swift_willThrow();
    v15 = *(v7 + 8);
    v16 = sub_681DC();
    v15(v16);
    (v15)(v11, v5);
    sub_13B5A4();
    sub_5224();
    return (*(v17 + 8))(a2);
  }

  v19 = *(v7 + 8);
  v19(v11, v5);
  sub_9414(v29, &v31);
  sub_9414(&v31, v34);
  sub_707C(1684957547, 0xE400000000000000, &type metadata for BundleTwoPanelPageDestination.Button, v20, v21, v22, v23, v24);
  v34[40] = v25 & 1;
  sub_BB310();
  v32 = &type metadata for DynamicMarkdownText;
  v33 = &protocol witness table for DynamicMarkdownText;
  *&v31 = swift_allocObject();
  sub_139DF4();
  v19(a1, v5);
  sub_9414(&v31, v35);
  sub_679DC(v34, a3);
  sub_13B5A4();
  sub_5224();
  (*(v26 + 8))(v27);
  return sub_67A14(v34);
}

uint64_t type metadata accessor for BundleTwoPanelPageDestination(uint64_t a1)
{
  result = qword_19C928;
  if (!qword_19C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_677B8()
{
  result = qword_19A428;
  if (!qword_19A428)
  {
    sub_13BAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A428);
  }

  return result;
}

uint64_t sub_67810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39B28();
  *a1 = result;
  return result;
}

uint64_t sub_6783C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleTwoPanelPageDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_678A0(uint64_t a1)
{
  v2 = type metadata accessor for BundleTwoPanelPageDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_678FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19A498, &unk_147A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6796C()
{

  if (*(v0 + 112))
  {
    sub_3C04((v0 + 88));
  }

  return _swift_deallocObject(v0, 208, 7);
}

_BYTE *sub_67A5C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x67B28);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleTwoPanelPageDestination.SpacingModel(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x67BFCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_67C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B5D4();
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_67CE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B5D4();
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_67D64(uint64_t a1)
{
  sub_67F30(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_67F94(319, &qword_19C938, &type metadata for BundleTwoPanelPageDestination.Button, &type metadata accessor for Array);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_67F94(319, &qword_19C940, &type metadata for UInt, &type metadata accessor for Optional);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      v7 = sub_18A28();
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        sub_67F94(319, &qword_19C948, &type metadata for MarketingItemService, &type metadata accessor for Array);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_67F94(319, &unk_19C950, &type metadata for BundleTwoPanelPageDestination.SpacingModel, &type metadata accessor for Optional);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            v2 = sub_13B5D4();
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_67F30(uint64_t a1)
{
  if (!qword_19AE40)
  {
    sub_558C(&qword_19AE48, &qword_140110);
    v1 = sub_13BF44();
    if (!v2)
    {
      atomic_store(v1, &qword_19AE40);
    }
  }
}

void sub_67F94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_67FE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_68024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_6808C()
{
  result = qword_19C9A0;
  if (!qword_19C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C9A0);
  }

  return result;
}

unint64_t sub_680E4()
{
  result = qword_19C9A8;
  if (!qword_19C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C9A8);
  }

  return result;
}

unint64_t sub_6813C()
{
  result = qword_19C9B0;
  if (!qword_19C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C9B0);
  }

  return result;
}

double sub_6819C()
{
  *(v0 - 160) = 0;
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

uint64_t sub_681E8()
{

  return sub_9414((v0 - 192), v0 - 144);
}

_BYTE *storeEnumTagSinglePayload for CarouselDisplayMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x682CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_68318(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 56);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    if (*(*(sub_4948(&qword_19A350, &unk_13F2C0) - 8) + 84) == a2)
    {
      v6 = *(a3 + 36);
    }

    else
    {
      sub_4948(&qword_19C9B8, &qword_144300);
      v6 = *(a3 + 48);
    }

    v7 = sub_69D70(v6);

    return sub_52E0(v7, v8, v9);
  }
}

uint64_t sub_6840C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    if (*(*(sub_4948(&qword_19A350, &unk_13F2C0) - 8) + 84) == a3)
    {
      v6 = *(a4 + 36);
    }

    else
    {
      sub_4948(&qword_19C9B8, &qword_144300);
      v6 = *(a4 + 48);
    }

    v7 = sub_69D70(v6);

    return sub_53A8(v7, v8, a2, v9);
  }

  return result;
}

void sub_68508(uint64_t a1)
{
  sub_189DC(319, &qword_19CA28, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    sub_18AD4(319, &qword_19CA30, &qword_19CA38, &unk_144318);
    if (v2 <= 0x3F)
    {
      sub_189DC(319, &qword_19CA40, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_686AC(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
        if (v4 <= 0x3F)
        {
          sub_18AD4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
          if (v5 <= 0x3F)
          {
            sub_189DC(319, &qword_19AE28, &type metadata for String);
            if (v6 <= 0x3F)
            {
              sub_686AC(319, &qword_19CA48, type metadata accessor for Carousel.Button);
              if (v7 <= 0x3F)
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

void sub_686AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_18BF0();
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_68730(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_4948(&qword_19A350, &unk_13F2C0);
    v7 = sub_69D70(*(a3 + 20));

    return sub_52E0(v7, v8, v9);
  }
}

uint64_t sub_687E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_4948(&qword_19A350, &unk_13F2C0);
    v6 = sub_69D70(*(a4 + 20));

    return sub_53A8(v6, v7, a2, v8);
  }

  return result;
}

void sub_68868(uint64_t a1)
{
  sub_189DC(319, &qword_19AE28, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_686AC(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_68918(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184208;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6896C(char a1)
{
  if (a1)
  {
    return 0x6C6C41776F6873;
  }

  else
  {
    return 0x73726946776F6873;
  }
}

uint64_t sub_689CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_68918(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_689FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6896C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_68AE8()
{
  result = qword_19CB30;
  if (!qword_19CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CB30);
  }

  return result;
}

uint64_t sub_68B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v6 = sub_4948(&qword_19C9B8, &qword_144300);
  __chkstk_darwin(v6 - 8);
  sub_69D60();
  sub_18B60();
  __chkstk_darwin(v7);
  v95 = &v87 - v8;
  v9 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v9 - 8);
  v90 = &v87 - v10;
  v97 = sub_13B584();
  sub_9E94();
  v104 = v11;
  __chkstk_darwin(v12);
  sub_69D60();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18B60();
  __chkstk_darwin(v14);
  v16 = &v87 - v15;
  v17 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v18);
  v20 = &v87 - v19;
  v21 = type metadata accessor for Carousel(0);
  sub_9F94();
  __chkstk_darwin(v22);
  sub_9EC0();
  v25 = v24 - v23;
  sub_139BD4();
  inited = swift_initStackObject();
  v98 = a2;
  v99 = a2;
  sub_69D38();
  v31 = sub_9DB8(v26, v27, v28, v29, v30);
  if (v3)
  {

    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  *(v25 + 16) = v32;
  sub_69D38();
  *v25 = sub_BB598(v33, v34, v35);
  *(v25 + 8) = 0;
  sub_69D38();
  sub_70B0(v36, v37, v38, v39, v40, v41, v42, v43);
  *(v25 + 9) = v44 & 1;
  sub_69D38();
  *(v25 + 24) = sub_BB458() & 1;
  sub_69D38();
  v45 = sub_BB310();
  v88 = v20;
  *&v101 = v45;
  *(&v101 + 1) = v46;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  v48 = v90;
  sub_7738(v16, v98, v47);
  if (sub_52E0(v48, 1, v17) == 1)
  {
    sub_928C(v48, &qword_19A420, &unk_13F430);
LABEL_7:
    sub_13BAB4();
    sub_69D00();
    sub_69B94(v49, v50);
    sub_18BF0();
    swift_allocError();
    *v51 = 0xD000000000000011;
    v51[1] = 0x800000000014E730;
    v51[2] = v21;
    sub_2B538();
    (*(v52 + 104))();
    swift_willThrow();
    v53 = sub_69D44();
    v54(v53);

    v55 = sub_13B7A4();
    v56 = v88;
    sub_53A8(v88, 1, 1, v55);
    goto LABEL_9;
  }

  v57 = sub_69D44();
  v58(v57);
  v56 = v88;
  sub_47868(v48, v88, &qword_19A350, &unk_13F2C0);
LABEL_9:
  sub_47868(v56, v25 + v21[9], &qword_19A350, &unk_13F2C0);
  v59 = v93;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_69D00();
    v62 = sub_69B94(v60, v61);
    sub_18B70(v62);
    *v63 = 0x6575676573;
    v63[1] = 0xE500000000000000;
    v63[2] = v21;
    sub_2B538();
    (*(v64 + 104))();
    swift_willThrow();
    v65 = sub_69D18();
    v59(v65);

    v103 = 0;
    v101 = 0u;
    v102 = 0u;
  }

  else
  {
    sub_139BC4();
    v86 = sub_69D18();
    v59(v86);
    sub_9414(&v100, &v101);
  }

  v66 = v25 + v21[10];
  v67 = v102;
  *v66 = v101;
  *(v66 + 16) = v67;
  *(v66 + 32) = v103;
  v68 = v94;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v69 = v92;
    sub_69980(v68, v98, sub_69544, type metadata accessor for Carousel.Button, v92);
    v70 = type metadata accessor for Carousel.Button(0);
    if (sub_52E0(v69, 1, v70) != 1)
    {
      sub_24988();
      v78 = v89;
      (v89)(v68, 0xE500000000000000);
      v79 = v69;
      v59 = v78;
      v77 = v95;
      sub_69C98(v79, v95);
      sub_53A8(v77, 0, 1, v70);
      goto LABEL_17;
    }

    sub_928C(v69, &qword_19C9B8, &qword_144300);
    v59 = v89;
  }

  sub_13BAB4();
  sub_69D00();
  v73 = sub_69B94(v71, v72);
  sub_18B70(v73);
  *v74 = 0xD000000000000010;
  v74[1] = 0x800000000014F920;
  v74[2] = v21;
  sub_2B538();
  (*(v75 + 104))();
  swift_willThrow();
  sub_24988();
  (v59)(v68, 0xE500000000000000);

  v76 = type metadata accessor for Carousel.Button(0);
  v77 = v95;
  sub_53A8(v95, 1, 1, v76);
LABEL_17:
  sub_47868(v77, v25 + v21[12], &qword_19C9B8, &qword_144300);
  sub_69D38();
  v80 = sub_BB310();
  v82 = v81;
  sub_24988();
  (v59)(a1, 0xE500000000000000);
  v83 = (v25 + v21[11]);
  *v83 = v80;
  v83[1] = v82;
  sub_69BD8(v25, v96);
  sub_13B5A4();
  sub_9F94();
  (*(v84 + 8))(v98);
  return sub_69C3C(v25);
}

uint64_t sub_69544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v45 = a3;
  v43 = sub_13B584();
  sub_9E94();
  v41 = v5;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = sub_4948(&qword_19A350, &unk_13F2C0);
  __chkstk_darwin(v10 - 8);
  sub_69D60();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v44 = &v40 - v15;
  v16 = type metadata accessor for Carousel.Button(0);
  sub_9F94();
  __chkstk_darwin(v17);
  sub_9EC0();
  v20 = (v19 - v18);
  v21 = sub_BB310();
  v42 = v16;
  if (v3)
  {

    v21 = 0;
    v22 = 0;
  }

  *v20 = v21;
  v20[1] = v22;
  v23 = a1;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_69980(v9, v46, &ImpressionMetrics.init(deserializing:using:), &type metadata accessor for ImpressionMetrics, v13);
    v24 = sub_13B7A4();
    if (sub_52E0(v13, 1, v24) != 1)
    {
      v35 = *(v41 + 8);
      v36 = v43;
      v35(a1, v43);
      v35(v9, v36);
      sub_2B538();
      v34 = v44;
      (*(v37 + 32))(v44, v13, v24);
      sub_53A8(v34, 0, 1, v24);
      v29 = v42;
      goto LABEL_8;
    }

    sub_928C(v13, &qword_19A350, &unk_13F2C0);
    v23 = a1;
  }

  sub_13BAB4();
  sub_69D00();
  v27 = sub_69B94(v25, v26);
  sub_18B70(v27);
  *v28 = 0xD000000000000011;
  v28[1] = 0x800000000014E730;
  v29 = v42;
  v28[2] = v42;
  sub_2B538();
  (*(v30 + 104))();
  swift_willThrow();
  v31 = *(v41 + 8);
  v32 = v43;
  v31(v23, v43);
  v31(v9, v32);

  v33 = sub_13B7A4();
  v34 = v44;
  sub_53A8(v44, 1, 1, v33);
LABEL_8:
  sub_47868(v34, v20 + *(v29 + 20), &qword_19A350, &unk_13F2C0);
  sub_69C98(v20, v45);
  sub_13B5A4();
  sub_9F94();
  return (*(v38 + 8))(v46);
}

uint64_t sub_69980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_13B5A4();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  sub_13B584();
  sub_9E94();
  __chkstk_darwin(v17);
  sub_9EC0();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18, a1);
  (*(v12 + 16))(v16, a2, v10);
  a3(v20, v16);
  v22 = a4(0);
  return sub_53A8(a5, 0, 1, v22);
}

uint64_t sub_69B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_39B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_69B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_39B48(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_69B94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_18BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_69BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Carousel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_69C3C(uint64_t a1)
{
  v2 = type metadata accessor for Carousel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_69C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Carousel.Button(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_69D44()
{
  result = v0;
  *(v1 - 304) = *(*(v1 - 72) + 8);
  return result;
}

StoreDynamicUIPlugin::CarouselCellBadge_optional __swiftcall CarouselCellBadge.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_184258;
  v6._object = object;
  v3 = sub_13C104(v2, v6);

  if (v3 == 1)
  {
    v4.value = StoreDynamicUIPlugin_CarouselCellBadge_share;
  }

  else
  {
    v4.value = StoreDynamicUIPlugin_CarouselCellBadge_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CarouselCellBadge.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6572616873;
  }

  else
  {
    return 0x6E656D6D6F636572;
  }
}

unint64_t sub_69E1C()
{
  result = qword_19CB38;
  if (!qword_19CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CB38);
  }

  return result;
}

StoreDynamicUIPlugin::CarouselCellBadge_optional sub_69E88@<W0>(Swift::String *a1@<X0>, StoreDynamicUIPlugin::CarouselCellBadge_optional *a2@<X8>)
{
  result.value = CarouselCellBadge.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_69EB8@<X0>(uint64_t *a1@<X8>)
{
  result = CarouselCellBadge.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarouselCellBadge(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x69FB0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_69FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 68);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_6A0A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 68);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CarouselCell(uint64_t a1)
{
  result = qword_19CB98;
  if (!qword_19CB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_6A17C(uint64_t a1)
{
  sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_248F4(319, &qword_19CBA8, &qword_19CBB0, &qword_144588);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_6A378(319, &qword_19CBB8, &type metadata for PluginComponent, &type metadata accessor for Array);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_248F4(319, &qword_19C0A8, &unk_19C0B0, &qword_142DF0);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_18A28();
      if (v8 <= 0x3F)
      {
        sub_6A378(319, &unk_19CBC0, &type metadata for MarketingItemValueProposition, &type metadata accessor for Optional);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_54D0(319);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
            v2 = v13;
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_6A378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_6A484(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v211 = a2;
  v184 = a3;
  v4 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v4 - 8);
  v186 = &v183 - v5;
  v185 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_2B538();
  __chkstk_darwin(v6);
  sub_2159C(&v183 - v7);
  v204 = sub_13B5A4();
  sub_9E94();
  v203 = v8;
  __chkstk_darwin(v9);
  v196 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19B778, &qword_141E00);
  __chkstk_darwin(v11 - 8);
  sub_2159C(&v183 - v12);
  v201 = sub_13BAA4();
  sub_9E94();
  v195 = v13;
  __chkstk_darwin(v14);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v15);
  sub_2159C(&v183 - v16);
  v17 = sub_13B584();
  sub_9E94();
  v205 = v18;
  __chkstk_darwin(v19);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v20);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v21);
  sub_18C34();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v25);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v26);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v27);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v28);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v29);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v30);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v31);
  v32 = type metadata accessor for CarouselCell(0);
  sub_2B538();
  __chkstk_darwin(v33);
  v35 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = objc_opt_self();
  v36 = [v197 ams_componentBackground];
  v209 = sub_13B1E4();
  v208 = v35;
  *(v35 + 7) = &_swiftEmptyArrayStorage;
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v207 = swift_initStackObject();
  v218 = a1;
  sub_13B594();
  v37 = sub_13B564();
  v212 = v17;
  v38 = v32;
  v210 = v32;
  if (v37)
  {
    goto LABEL_4;
  }

  sub_6BEF0();
  v39 = v206;
  sub_139DB4();
  if (v39)
  {

    sub_18B90();
    sub_6BDB4(&v217, &qword_19E960, &qword_13FD30);
    v38 = v210;
LABEL_4:
    sub_13BAB4();
    sub_6BEC8();
    v42 = sub_6BD6C(v40, v41, &protocol conformance descriptor for JSONError);
    sub_18B70(v42);
    strcpy(v43, "accessoryText");
    *(v43 + 7) = -4864;
    *(v43 + 2) = v38;
    sub_2B538();
    (*(v44 + 104))();
    swift_willThrow();
    v45 = sub_6BF68();
    v206 = v46;
    v46(v45);

    sub_6BEE0();
    goto LABEL_5;
  }

  v99 = sub_6BF68();
  v206 = v100;
  v100(v99);
  v47 = sub_6BF2C();
  v38 = v210;
LABEL_5:
  v48 = v214;
  v49 = v208;
  *v208 = v213;
  *(v49 + 1) = v48;
  *(v49 + 4) = v215;
  __chkstk_darwin(v47);
  *(&v183 - 2) = v211;
  sub_9DB8(0x756F72676B636162, 0xEF726F6C6F43646ELL, v38, sub_30AC0, (&v183 - 4));
  v50 = v23;
  v51 = sub_13B1E4();

  v197 = v51;
  *(v208 + 5) = v51;
  v52 = sub_BB5C4(0x736567646162, 0xE600000000000000, v210);
  v192 = 0;
  v53 = 0;
  v54 = *(v52 + 16);
  v209 = &_swiftEmptyArrayStorage;
LABEL_6:
  v55 = (v52 + 40 + 16 * v53);
  while (v54 != v53)
  {
    if (v53 >= *(v52 + 16))
    {
      __break(1u);
      return;
    }

    ++v53;
    v56 = *(v55 - 1);
    v57 = *v55;

    v58._rawValue = &off_1842A8;
    v219._countAndFlagsBits = v56;
    v219._object = v57;
    v59 = sub_13C104(v58, v219);

    if (!v59)
    {
      v60 = 0;
LABEL_13:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_58BCC();
        v209 = v63;
      }

      v61 = v209[2];
      if (v61 >= v209[3] >> 1)
      {
        sub_58BCC();
        v209 = v64;
      }

      v62 = v209;
      v209[2] = v61 + 1;
      *(v62 + v61 + 32) = v60;
      v50 = v23;
      goto LABEL_6;
    }

    v55 += 2;
    v50 = v23;
    if (v59 == 1)
    {
      v60 = 1;
      goto LABEL_13;
    }
  }

  v65 = v206;
  v66 = v208;
  *(v208 + 6) = v209;
  v67 = v199;
  sub_13B594();
  v68 = v200;
  sub_13B544();
  v69 = v205 + 8;
  v65(v67, v212);
  v70 = v201;
  if (sub_52E0(v68, 1, v201) == 1)
  {
    sub_6BDB4(v68, &qword_19B778, &qword_141E00);
    v205 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v71 = v195;
    v72 = v194;
    (*(v195 + 32))(v194, v68, v70);
    (*(v71 + 16))(v193, v72, v70);
    (*(v203 + 16))(v196, v211, v204);
    sub_6BE10();
    v73 = sub_13BC64();
    (*(v71 + 8))(v72, v70);
    v205 = v73;
    *(v66 + 56) = v73;
  }

  v74 = v198;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_24;
  }

  sub_6BEF0();
  v75 = v192;
  sub_139DB4();
  if (v75)
  {

    sub_18B90();
    sub_6BDB4(&v217, &qword_19E960, &qword_13FD30);
LABEL_24:
    sub_13BAB4();
    sub_6BEC8();
    v78 = sub_6BD6C(v76, v77, &protocol conformance descriptor for JSONError);
    v79 = sub_9F18(v78);
    sub_47E64(v79, v80);
    *v81 = 0x656E696C64616568;
    v81[1] = 0xE800000000000000;
    v82 = v74;
    v83 = v210;
    v81[2] = v210;
    sub_9EF8();
    (*(v84 + 104))();
    swift_willThrow();
    v65(v82, v212);

    sub_6BEE0();
    goto LABEL_25;
  }

  v65(v74, v212);
  sub_6BF2C();
  v83 = v210;
LABEL_25:
  v85 = v214;
  *(v66 + 64) = v213;
  *(v66 + 80) = v85;
  *(v66 + 96) = v215;
  v86 = sub_BB310();
  v201 = v69;
  *&v213 = v86;
  *(&v213 + 1) = v87;
  sub_13BFB4();
  v88 = v189;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_28:
    sub_13BAB4();
    sub_6BEC8();
    v93 = sub_6BD6C(v91, v92, &protocol conformance descriptor for JSONError);
    sub_9F18(v93);
    *v94 = 0xD000000000000011;
    v94[1] = 0x800000000014E730;
    sub_6BF44(v94, v94);
    sub_9EF8();
    (*(v95 + 104))();
    swift_willThrow();
    v96 = sub_6BF68();
    (v65)(v96);
    v83 = v210;

    v97 = sub_13B7A4();
    v98 = v187;
    sub_53A8(v187, 1, 1, v97);
    goto LABEL_32;
  }

  v90 = v186;
  sub_7738(v88, v211, v89);
  if (sub_52E0(v90, 1, v185) == 1)
  {
    sub_6BDB4(v90, &qword_19A420, &unk_13F430);
    goto LABEL_28;
  }

  v101 = sub_6BF68();
  (v65)(v101);
  v102 = v90;
  v98 = v187;
  sub_92E4(v102, v187);
LABEL_32:
  sub_92E4(v98, v66 + *(v83 + 68));
  sub_13B594();
  v103 = sub_13B564();
  v200 = 0;
  if (v103)
  {
    sub_13BAB4();
    sub_6BEC8();
    v106 = sub_6BD6C(v104, v105, &protocol conformance descriptor for JSONError);
    sub_18B70(v106);
    *v107 = 1868983913;
    v107[1] = 0xE400000000000000;
    v107[2] = v83;
    sub_2B538();
    (*(v108 + 104))();
    swift_willThrow();
    sub_6BF00();
    MEMORY[0xE400000000000000]();

    sub_6BEE0();
  }

  else
  {
    sub_6BEF0();
    sub_139DB4();
    sub_6BF00();
    MEMORY[0xE400000000000000]();
    sub_6BF2C();
  }

  v109 = v214;
  *(v66 + 104) = v213;
  *(v66 + 120) = v109;
  *(v66 + 136) = v215;
  v110 = v190;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_6BEC8();
    v113 = sub_6BD6C(v111, v112, &protocol conformance descriptor for JSONError);
    sub_9F18(v113);
    *v114 = 0x7469736F706F7270;
    v114[1] = 0xEB000000006E6F69;
    sub_6BF44(v114, v114);
    sub_9EF8();
    (*(v115 + 104))();
    swift_willThrow();
    MEMORY[0xE400000000000000](v110, v212);

    sub_6BEE0();
  }

  else
  {
    sub_139DB4();
    MEMORY[0xE400000000000000](v110, v212);
    sub_6BF2C();
  }

  v116 = v214;
  *(v66 + 144) = v213;
  *(v66 + 160) = v116;
  *(v66 + 176) = v215;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_6BEC8();
    v119 = sub_6BD6C(v117, v118, &protocol conformance descriptor for JSONError);
    v120 = sub_9F18(v119);
    sub_47E64(v120, v121);
    *v122 = 0x6575676573;
    v122[1] = 0xE500000000000000;
    v161 = v210;
    v122[2] = v210;
    sub_9EF8();
    (*(v123 + 104))();
    swift_willThrow();
    sub_6BF00();
    MEMORY[0xE500000000000000]();

    sub_6BEE0();
  }

  else
  {
    sub_139BC4();
    sub_6BF00();
    MEMORY[0xE500000000000000]();
    v160 = sub_6BF2C();
    v161 = v210;
  }

  v124 = v66 + *(v161 + 72);
  v125 = v214;
  *v124 = v213;
  *(v124 + 16) = v125;
  *(v124 + 32) = v215;
  __chkstk_darwin(v160);
  *(&v183 - 2) = v211;
  v126 = sub_9DB8(0x7365636976726573, 0xE800000000000000, v161, sub_511D0, (&v183 - 4));
  v127 = v188;
  *(v66 + 184) = v126;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_6BEC8();
    v130 = sub_6BD6C(v128, v129, &protocol conformance descriptor for JSONError);
    v131 = sub_9F18(v130);
    v133 = sub_47E64(v131, v132);
    *v134 = 0xD000000000000010;
    v134[1] = 0x800000000014F960;
    sub_6BF44(v133, v134);
    sub_9EF8();
    (*(v135 + 104))();
    swift_willThrow();
    v162 = v212;
    MEMORY[0xE500000000000000](v127, v212);

    sub_6BEE0();
  }

  else
  {
    sub_139DB4();
    v162 = v212;
    MEMORY[0xE500000000000000](v127, v212);
    sub_6BF2C();
  }

  v136 = v214;
  *(v66 + 192) = v213;
  *(v66 + 208) = v136;
  *(v66 + 224) = v215;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_6BEC8();
    v139 = sub_6BD6C(v137, v138, &protocol conformance descriptor for JSONError);
    v140 = sub_9F18(v139);
    v142 = sub_47E64(v140, v141);
    *v143 = 0x656C746974627573;
    v143[1] = 0xE800000000000000;
    sub_6BF44(v142, v143);
    sub_9EF8();
    (*(v144 + 104))();
    swift_willThrow();
    v206(v50, v162);

    sub_6BEE0();
  }

  else
  {
    sub_6BEF0();
    sub_139DB4();
    v206(v50, v212);
    sub_6BF2C();
  }

  v145 = v214;
  *(v66 + 232) = v213;
  *(v66 + 248) = v145;
  *(v66 + 264) = v215;
  v146 = v191;
  v147 = v218;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_6BEF0();
    sub_139DB4();
    v209 = (v66 + 312);
    v163 = v206;
    v206(v146, v212);
    sub_6BF2C();
    sub_9414(&v213, v66 + 272);
    v164 = v183;
    v165 = v218;
    sub_13B594();
    if ((sub_13B564() & 1) == 0)
    {
      sub_8290(v164, v211);
      if (*(&v214 + 1) != 1)
      {
        sub_6BF74();
        v177 = sub_6BF8C();
        v178 = v212;
        v179 = v206;
        (v206)(v218, v212, v177);
        v179(v164, v178);
        v174 = v213;
        v175 = v214;
        v176 = v215;
        v173 = v216;
        goto LABEL_57;
      }

      sub_6BDB4(&v213, &qword_19CC30, &qword_144628);
      v165 = v218;
      v163 = v206;
    }

    sub_13BAB4();
    sub_6BEC8();
    v168 = sub_6BD6C(v166, v167, &protocol conformance descriptor for JSONError);
    sub_18B70(v168);
    *v169 = 0xD000000000000010;
    v169[1] = 0x800000000014F980;
    sub_6BF44(v169, v169);
    sub_2B538();
    (*(v170 + 104))();
    swift_willThrow();
    sub_6BF74();
    v171 = sub_6BF8C();
    v172 = v212;
    v163(v165, v212, v171);
    (v163)(v164, v172);

    v173 = 0;
    v174 = 0uLL;
    v175 = 0uLL;
    v176 = 0uLL;
LABEL_57:
    v180 = v209;
    *v209 = v174;
    *(v180 + 1) = v175;
    *(v180 + 2) = v176;
    *(v66 + 360) = v173;
    sub_F680(v66, v184);
    v181 = sub_6BF10();
    v182(v181);
    sub_F6E4(v66);
    return;
  }

  sub_13BAB4();
  sub_6BEC8();
  v150 = sub_6BD6C(v148, v149, &protocol conformance descriptor for JSONError);
  sub_9F18(v150);
  *v151 = 0x656C746974;
  v151[1] = 0xE500000000000000;
  v152 = v210;
  v151[2] = v210;
  sub_9EF8();
  (*(v153 + 104))();
  swift_willThrow();
  sub_6BF74();
  v154 = sub_6BF8C();
  v155 = v212;
  v156 = v206;
  (v206)(v147, v212, v154);
  v156(v146, v155);
  v157 = v200;
  v158 = sub_6BF10();
  v159(v158);
  sub_6BF50(v66);

  sub_6BF50(v66 + 64);
  if (!v157)
  {
    sub_6BF50(v66 + 104);
    sub_6BF50(v66 + 144);

    sub_6BF50(v66 + 192);
    sub_6BF50(v66 + 232);
    sub_9238(v66 + 368);
    sub_6BDB4(v66 + *(v152 + 68), &qword_19A350, &unk_13F2C0);
    sub_6BDB4(v66 + *(v152 + 72), &unk_19E320, &unk_140950);
  }
}

uint64_t sub_6BD6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6BDB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_4948(a2, a3);
  sub_2B538();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_6BE10()
{
  result = qword_19CC38;
  if (!qword_19CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19CC38);
  }

  return result;
}

uint64_t sub_6BE64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_4948(a3, a4);
  sub_2B538();
  (*(v6 + 16))(a2, a1);
  return a2;
}

double sub_6BEE0()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

uint64_t sub_6BF2C()
{

  return sub_9414((v0 - 160), v0 - 224);
}

uint64_t sub_6BF50(uint64_t a1)
{

  return sub_6BDB4(a1, v1, v2);
}

double sub_6BF74()
{

  return result;
}

double sub_6BF8C()
{

  return result;
}

uint64_t sub_6BFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4948(&qword_19A968, &unk_13FAF0);
  sub_17250();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_52E0(v9, a2, v8);
  }

  sub_4948(&qword_19A970, &unk_142620);
  sub_17250();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_6C0D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_4948(&qword_19A968, &unk_13FAF0);
  sub_17250();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_4948(&qword_19A970, &unk_142620);
    sub_17250();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_53A8(v11, a2, a2, v10);
}