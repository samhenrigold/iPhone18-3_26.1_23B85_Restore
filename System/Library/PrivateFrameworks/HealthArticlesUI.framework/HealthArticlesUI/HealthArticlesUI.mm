uint64_t sub_251319EBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25133F754();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_251319EE8(uint64_t a1, int a2)
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

uint64_t sub_251319F08(uint64_t result, int a2, int a3)
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

uint64_t sub_251319F34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25131A008()
{
  v1 = sub_25133EFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_25131A114()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25131A14C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25131A194()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25131A1D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251324914();
  *a1 = result;
  return result;
}

uint64_t sub_25131A1FC(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews) = *a1;
}

id sub_25131A248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_25131A2B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_25132AC74();
  a1[1] = v2;

  return swift_unknownObjectRetain();
}

uint64_t sub_25131A2F4(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_251328998(v2, v1);
}

__n128 sub_25131A33C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25131A378@<X0>(uint64_t *a1@<X8>)
{
  sub_25133EED4();
  result = sub_25133EEC4();
  *a1 = result;
  return result;
}

uint64_t sub_25131A498(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2513326D8(0, &qword_27F42B3C0, sub_25132B81C, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2513326D8(0, &qword_27F42B3C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2513326D8(0, &qword_27F42B3D0, MEMORY[0x277D10E70], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_25131A680(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2513326D8(0, &qword_27F42B3C0, sub_25132B81C, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2513326D8(0, &qword_27F42B3C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_2513326D8(0, &qword_27F42B3D0, MEMORY[0x277D10E70], MEMORY[0x277CDF468]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_25131A864()
{
  sub_2513332EC(255);
  sub_2513328F8(255);
  sub_25133327C(&qword_280DE6E40, sub_2513328F8, MEMORY[0x277CE1198]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25131A970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25133F3A4();
  *a1 = result;
  return result;
}

uint64_t sub_25131A9C8()
{
  v1 = sub_25133EFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_25131AADC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_25131AB38()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25131AB84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25131ABBC()
{
  v1 = sub_25133EFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_25131ACF0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_25131AD00()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setNumberOfLines_];
    [v4 setText_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_25131ADD4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label] = 0;
  v9 = &v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes] = 7;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for DynamicHeightLabelView();
  v10 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 setPreservesSuperviewLayoutMargins_];
  (*((*MEMORY[0x277D85000] & *v10) + 0xC8))(v11);
  [v10 setLayoutMargins_];
  v12 = sub_25131AD00();
  [v10 addSubview_];

  v13 = objc_opt_self();
  v14 = *(v10 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label);
  sub_25132BDC8(v14, v10, 0, 1);

  sub_25131C1BC();
  v15 = sub_25133F844();

  [v13 activateConstraints_];

  sub_25131C208(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_251340BD0;
  v17 = sub_25133F2B4();
  v18 = MEMORY[0x277D74DB8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  MEMORY[0x2530722E0](v16, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_25131B180()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes);
    if (v2 != 7)
    {
      v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text);
      v5 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes);

      sub_25131C1AC(v2);
      sub_25131B2C8(v3, v1, 0, &v5);

      return sub_25131BE80(v2);
    }
  }

  return result;
}

void sub_25131B2C8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  v7 = *a4;
  v8 = &v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text];
  *v8 = a1;
  *(v8 + 1) = a2;

  v9 = *&v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes];
  *&v5[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes] = v7;
  sub_25131BE70(v7);
  sub_25131BE80(v9);
  v42 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  if (*(HealthArticleTextAttributes.textAttributes.getter() + 16) && (sub_251328050(), (v10 & 1) != 0))
  {
    swift_unknownObjectRetain();

    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v11 = sub_25131AD00();
  v12 = [v11 font];

  v41 = v12;
  if (!v12)
  {
    __break(1u);
    return;
  }

LABEL_7:
  v13 = [v5 effectiveUserInterfaceLayoutDirection];
  if (v13 != 1)
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    v18 = a3;
LABEL_12:
    v21 = [objc_opt_self() textAttachmentWithImage_];
    [v21 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v22 = [v21 image];
    if (v22)
    {
      v23 = v22;
      [v41 capHeight];
      v25 = v24;
      [v23 size];
      v27 = round(v25 - v26) * 0.5;
      [v23 size];
      v29 = v28;
      [v23 size];
      [v21 setBounds_];
    }

    v31 = [objc_opt_self() attributedStringWithAttachment_];
    [v42 appendAttributedString_];

    if (v13 == 1)
    {

LABEL_18:
      goto LABEL_19;
    }

    v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v33 = sub_25133F724();
    v34 = [v32 initWithString_];

    [v42 appendAttributedString_];
LABEL_17:
    v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v36 = sub_25133F724();
    v18 = [v35 initWithString_];

    [v42 appendAttributedString_];
    goto LABEL_18;
  }

  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v15 = sub_25133F724();
  v16 = [v14 initWithString_];

  [v42 appendAttributedString_];
  if (a3)
  {
    v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v18 = a3;
    v19 = sub_25133F724();
    v20 = [v17 initWithString_];

    [v42 appendAttributedString_];
    goto LABEL_12;
  }

LABEL_19:

  v37 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v37);

  type metadata accessor for Key(0);
  sub_25131BDE0(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
  v38 = sub_25133F6E4();

  [v42 addAttributes:v38 range:{0, objc_msgSend(v42, sel_length)}];

  v39 = sub_25131AD00();
  [v39 setAttributedText_];

  [v5 setNeedsLayout];
}

id sub_25131B7C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicHeightLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25131B8CC(uint64_t a1, id *a2)
{
  result = sub_25133F734();
  *a2 = 0;
  return result;
}

uint64_t sub_25131B944(uint64_t a1, id *a2)
{
  v3 = sub_25133F744();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25131B9C4@<X0>(uint64_t *a2@<X8>)
{
  sub_25133F754();
  v3 = sub_25133F724();

  *a2 = v3;
  return result;
}

uint64_t sub_25131BA08()
{
  v0 = sub_25133F754();
  v1 = MEMORY[0x253072090](v0);

  return v1;
}

uint64_t sub_25131BA44(uint64_t a1)
{
  sub_25133F754();
  sub_25133F7B4();
}

uint64_t sub_25131BA98(uint64_t a1)
{
  sub_25133F754();
  sub_25133FCF4();
  sub_25133F7B4();
  v1 = sub_25133FD24();

  return v1;
}

uint64_t sub_25131BB14(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x2530721B0](a1, &v6);
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

uint64_t sub_25131BB68(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x2530721C0](a1, &v7);
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

void *sub_25131BBFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25131BC0C(void *a1, uint64_t *a2)
{
  v2 = sub_25133F754();
  v4 = v3;
  if (v2 == sub_25133F754() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25133FCB4();
  }

  return v7 & 1;
}

uint64_t sub_25131BC94(uint64_t a1)
{
  sub_25131BDE0(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
  sub_25131BDE0(&qword_27F42AE38, type metadata accessor for Key, &unk_251340D34);

  return sub_25133FC74();
}

uint64_t sub_25131BDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25131BE70(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

uint64_t sub_25131BE80(uint64_t result)
{
  if (result != 7)
  {
    return sub_25131BE90(result);
  }

  return result;
}

unint64_t sub_25131BE90(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

uint64_t sub_25131BEA0(uint64_t a1)
{
  sub_25131BDE0(&qword_27F42AEC8, type metadata accessor for FeatureKey, &unk_251341364);
  sub_25131BDE0(&qword_27F42AED0, type metadata accessor for FeatureKey, &unk_251341160);

  return sub_25133FC74();
}

uint64_t sub_25131BF5C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25133F724();

  *a2 = v3;
  return result;
}

uint64_t sub_25131BFA4(uint64_t a1)
{
  sub_25131BDE0(&qword_27F42AEB8, type metadata accessor for AttributeName, &unk_251341320);
  sub_25131BDE0(&qword_27F42AEC0, type metadata accessor for AttributeName, &unk_251341274);

  return sub_25133FC74();
}

_DWORD *sub_25131C060@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_25131C070@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_25131C07C(uint64_t a1)
{
  sub_25131BDE0(&qword_27F42AED8, type metadata accessor for UILayoutPriority, &unk_251341068);
  sub_25131BDE0(&unk_27F42AEE0, type metadata accessor for UILayoutPriority, &unk_251341008);
  return sub_25133FC74();
}

unint64_t sub_25131C1AC(unint64_t result)
{
  if (result != 7)
  {
    return sub_25131BE70(result);
  }

  return result;
}

unint64_t sub_25131C1BC()
{
  result = qword_280DE7280;
  if (!qword_280DE7280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE7280);
  }

  return result;
}

void sub_25131C208(uint64_t a1)
{
  if (!qword_27F42AE40)
  {
    sub_25131C260();
    v1 = sub_25133FCA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42AE40);
    }
  }
}

unint64_t sub_25131C260()
{
  result = qword_27F42B1F0;
  if (!qword_27F42B1F0)
  {
    sub_25131C2A8();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F42B1F0);
  }

  return result;
}

unint64_t sub_25131C2A8()
{
  result = qword_27F42AE48;
  if (!qword_27F42AE48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42AE48);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25131C348(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25131C368(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

void sub_25131C3DC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

char *sub_25131C6E4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  v10 = OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;
  v11 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_rangeOfLink];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for LinkedTextView(0);
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = sub_25132D310();
  [v14 setDelegate_];

  v15 = *&v13[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView];
  [v15 setUserInteractionEnabled_];

  return v13;
}

void sub_25131CA44(__int128 *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v65 = a4;
  v66 = a5;
  v60 = a3;
  LODWORD(v63) = *(a1 + 32);
  v9 = sub_25133EFC4();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - v15;
  v61 = *a2;
  v62 = a1;
  v17 = &v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat];
  v19 = *&v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat];
  v18 = *&v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 8];
  v20 = *&v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 16];
  v21 = *&v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 24];
  v22 = a1[1];
  v56 = *a1;
  *v17 = v56;
  *(v17 + 1) = v22;
  v23 = v17[32];
  v17[32] = v63;
  sub_25131DDC4(a1, &v67);
  sub_25131DD4C(v19, v18, v20, v21, v23);
  sub_25131DC8C(v66, v16);
  v24 = *(v12 + 56);
  v63 = v11;
  v24(v16, 0, 1, v11);
  v25 = OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;
  swift_beginAccess();
  sub_25131DDFC(v16, &v6[v25]);
  swift_endAccess();
  if (v65)
  {
    v26 = sub_25133F724();
  }

  else
  {
    v26 = 0;
  }

  [v6 setAccessibilityIdentifier_];

  v27 = v62;
  v29 = *v62;
  v28 = *(v62 + 1);
  if (*(v62 + 32))
  {
    if (*(v62 + 32) == 1)
    {
      sub_25131D498(*v62, *(v62 + 1), &v67);
      v31 = v69;
      v30 = v70;
      v32 = v71;
    }

    else
    {
      v33 = *(v62 + 3);
      v67 = *(v62 + 2);
      v68 = v33;

      MEMORY[0x253072050](10, 0xE100000000000000);
      v34 = v67;
      v35 = v68;

      MEMORY[0x253072050](v29, v28);
      v31 = MEMORY[0x253072070](v34, v35);

      v30 = MEMORY[0x253072070](v29, v28);
      v32 = 0;
    }
  }

  else
  {

    v30 = MEMORY[0x253072070](v29, v28);
    v31 = 0;
    v32 = 0;
  }

  v36 = &v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_rangeOfLink];
  *v36 = v31;
  *(v36 + 1) = v30;
  v36[16] = v32;
  v37 = sub_25133F724();
  v65 = v6;
  [v6 setAccessibilityLabel_];

  v67 = v61;
  v38 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v38);

  v39 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v40 = sub_25133F724();

  type metadata accessor for Key(0);
  sub_25131DE90();
  v41 = sub_25133F6E4();

  v42 = [v39 initWithString:v40 attributes:v41];

  v43 = v64;
  sub_25131DC8C(v66, v64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25131DCF0(v43);
  }

  else
  {
    v44 = v57;
    v45 = v58;
    v46 = v43;
    v47 = v59;
    (*(v58 + 32))(v57, v46, v59);
    sub_25133EF94();
    (*(v45 + 8))(v44, v47);
  }

  if (v36[16] == 1)
  {
  }

  else
  {
    v49 = *v36;
    v48 = *(v36 + 1);
    v50 = *MEMORY[0x277D740E8];
    v51 = sub_25133F724();

    [v42 addAttribute:v50 value:v51 range:{v49, v48}];

    if (*(v27 + 32) != 1)
    {
      v52 = *MEMORY[0x277D74078];
      v53 = sub_25133F984();
      [v42 addAttribute:v52 value:v53 range:{v49, v48}];
    }
  }

  v54 = v65;
  v55 = sub_25132D310();
  [v55 setAttributedText_];

  [v54 setNeedsLayout];
}

double sub_25131D00C()
{
  [v0 layoutMargins];
  [v0 layoutMargins];
  return 6.0;
}

uint64_t sub_25131D054()
{
  sub_25131DD4C(*(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat), *(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 8), *(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 16), *(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 24), *(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 32));
  v1 = v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;

  return sub_25131DB9C(v1);
}

id sub_25131D0A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkedTextView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LinkedTextView(uint64_t a1)
{
  result = qword_280DE7090;
  if (!qword_280DE7090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25131D184(uint64_t a1)
{
  sub_25131DEE8(319, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25131D3EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_25131D434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_25131D498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25131DEE8(0, &qword_27F42AF60, sub_25131DF4C, MEMORY[0x277D85AB8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  sub_25131DF4C();
  sub_25133F0B4();
  v37 = a1;
  v38 = a2;
  sub_25131DFAC();
  sub_25131E000();
  v11 = sub_25133F704();
  if (v13)
  {
    (*(v8 + 8))(v10, v7);

    v15 = 0;
    v16 = 0;
    v17 = 1;
LABEL_12:
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    return result;
  }

  v32 = v8;
  v33 = v7;
  v35 = a2;
  v36 = a3;
  v31[1] = v11;
  v31[2] = v12;
  v34 = a1;
  v18 = sub_25133F824();
  v20 = v19 >> 14;
  v21 = v18 >> 14;
  if (v18 >> 14 == v19 >> 14)
  {
LABEL_8:

    (*(v32 + 8))(v10, v33);
    a2 = v35;

    v15 = 0;
    v16 = 0;
    v17 = 1;
    a3 = v36;
    a1 = v34;
    goto LABEL_12;
  }

  while (sub_25133FAE4() != 93 || v22 != 0xE100000000000000)
  {
    v23 = sub_25133FCB4();

    if (v23)
    {
      goto LABEL_10;
    }

    v21 = sub_25133FAC4() >> 14;
    if (v21 == v20)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  result = sub_25133FAD4();
  if (v21 >= result >> 14)
  {
    v24 = sub_25133FAF4();
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v41 = v34;
    v42 = v35;
    v37 = v24;
    v38 = v26;
    v39 = v28;
    v40 = v30;
    sub_25131E088();

    sub_25133F7A4();
    sub_25133F824();
    v15 = sub_25133F804();

    v16 = sub_25133F804();
    (*(v32 + 8))(v10, v33);

    v17 = 0;
    a1 = v41;
    a2 = v42;
    a3 = v36;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_25131D838()
{
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;
  swift_beginAccess();
  sub_25131DB08(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25131DB9C(v3);
  }

  else
  {
    sub_25131DC28(v3, v10);
    sub_25131DC8C(v10, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = *v8;
      v13 = [v0 viewController];
      if (v13)
      {
        v14 = v13;
        v12();

        sub_25131DCF0(v10);
      }

      else
      {
        sub_25131DCF0(v10);
      }
    }

    else
    {
      v15 = [objc_opt_self() defaultWorkspace];
      if (v15)
      {
        v16 = v15;
        v17 = sub_25133EFA4();
        sub_25132FB60(MEMORY[0x277D84F90]);
        v18 = sub_25133F6E4();

        [v16 openSensitiveURL:v17 withOptions:v18];
      }

      sub_25131DCF0(v10);
      sub_25131DCF0(v8);
    }
  }

  return 0;
}

uint64_t sub_25131DB08(uint64_t a1, uint64_t a2)
{
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25131DB9C(uint64_t a1)
{
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25131DC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25131DC8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25131DCF0(uint64_t a1)
{
  v2 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25131DD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_25131DD60(a1, a2, a3, a4, a5);
  }
}

void sub_25131DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }
}

uint64_t sub_25131DDFC(uint64_t a1, uint64_t a2)
{
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25131DE90()
{
  result = qword_27F42B2B0;
  if (!qword_27F42B2B0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B2B0);
  }

  return result;
}

void sub_25131DEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25131DF4C()
{
  if (!qword_27F42AF68)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F42AF68);
    }
  }
}

unint64_t sub_25131DFAC()
{
  result = qword_27F42AF70;
  if (!qword_27F42AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42AF70);
  }

  return result;
}

unint64_t sub_25131E000()
{
  result = qword_27F42AF78;
  if (!qword_27F42AF78)
  {
    sub_25131DEE8(255, &qword_27F42AF60, sub_25131DF4C, MEMORY[0x277D85AB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42AF78);
  }

  return result;
}

unint64_t sub_25131E088()
{
  result = qword_27F42AF80;
  if (!qword_27F42AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42AF80);
  }

  return result;
}

id sub_25131E2C4(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TitleView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall HealthArticleHighlightProviding.setHighlighted(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v4 = v3;
  v38 = v3;
  v5 = v2;
  v41 = _;
  v42 = animated;
  v6 = *(v2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](_);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v38 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = *(v6 + 16);
  v16(&v38 - v14, v17);
  v43 = v13;
  (v16)(v13, v15, v5);
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = v18 + v7;
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v4;
  v44 = v6;
  v39 = *(v6 + 32);
  v39(v20 + v18, v15, v5);
  v21 = v41;
  *(v20 + v19) = v41;
  v22 = v40;
  (v16)(v40, v45, v5);
  (v16)(v46, v22, v5);
  v23 = v38;
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v23;
  v39(v24 + v18, v22, v5);
  *(v24 + v19) = v21;
  if (v42)
  {
    v25 = v46;
    v26 = v20;
    v27 = *(v44 + 8);
    v27(v43, v5);
    if (v21)
    {
      sub_25131E9EC(v25, 1, v5, v23);
      v27(v25, v5);
      v28 = objc_opt_self();
      v29 = (*(v23 + 24))(v5, v23);
      v51 = sub_25131E9D4;
      v52 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_25131EBB0;
      v50 = &block_descriptor_12;
      v30 = _Block_copy(&aBlock);

      [v28 animateWithDuration:v30 animations:v29];
    }

    else
    {
      v27(v25, v5);
      v34 = objc_opt_self();
      v35 = (*(v23 + 24))(v5, v23);
      v51 = sub_25131E9D4;
      v52 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_25131EBB0;
      v50 = &block_descriptor;
      v30 = _Block_copy(&aBlock);

      v36 = swift_allocObject();
      *(v36 + 16) = sub_25131EB34;
      *(v36 + 24) = v24;
      v51 = sub_25131ECBC;
      v52 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_25131ECC4;
      v50 = &block_descriptor_9;
      v37 = _Block_copy(&aBlock);

      [v34 animateWithDuration:v30 animations:v37 completion:v35];

      _Block_release(v37);
    }

    _Block_release(v30);
  }

  else
  {
    v31 = v46;
    sub_25131E9EC(v46, v21, v5, v23);
    v32 = *(v44 + 8);
    v32(v31, v5);
    v33 = v43;
    sub_25131E8C4(v43, v21, v5, v23);

    v32(v33, v5);
  }
}

void sub_25131E8C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8))(a3, a4);
  v8 = 0.0;
  v9 = 0.0;
  if (a2)
  {
    (*(a4 + 32))(a3, a4, 0.0);
  }

  [v7 setAlpha_];

  v10 = (*(a4 + 16))(a3, a4);
  if (a2)
  {
    v8 = (*(a4 + 40))(a3, a4);
  }

  [v10 setAlpha_];
}

void sub_25131E9EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8))(a3, a4);
  [v7 setHidden_];

  v8 = (*(a4 + 16))(a3, a4);
  [v8 setHidden_];
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_25131EB4C(uint64_t (*a1)(uint64_t, void))
{
  v3 = *(*(v1 + 16) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  return a1(v4, *(v4 + *(v3 + 64)));
}

uint64_t sub_25131EBB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25131EC0C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_25131ECC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void __swiftcall HealthArticleHighlightProviding.makeHighlightedImageOverlay()(UIView *__return_ptr retstr)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_25131EE18();
  v2 = objc_opt_self();
  v3 = [v2 systemBlackColor];
  v4 = [v2 systemWhiteColor];
  v5 = sub_25133FA74();

  [v1 setBackgroundColor_];
  [v1 setHidden_];
}

unint64_t sub_25131EE18()
{
  result = qword_280DE7270;
  if (!qword_280DE7270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE7270);
  }

  return result;
}

void __swiftcall HealthArticleHighlightProviding.makeHighlightedSashUnderlay(highlightColor:)(UIView *__return_ptr retstr, UIColor highlightColor)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setBackgroundColor_];
  [v3 setHidden_];
}

void sub_25131EF94(uint64_t a1)
{
  sub_25131F694(319, &qword_27F42B060, sub_25131F160, " accessoryImage ");
  if (v1 <= 0x3F)
  {
    sub_25131F1C8();
    if (v2 <= 0x3F)
    {
      sub_25131F984(319, &qword_27F42B080, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_25131F22C(319);
        if (v4 <= 0x3F)
        {
          sub_25131F2B8(319);
          if (v5 <= 0x3F)
          {
            sub_25131F334(319);
            if (v6 <= 0x3F)
            {
              sub_25131F3EC(319);
              if (v7 <= 0x3F)
              {
                sub_25131F39C();
                if (v8 <= 0x3F)
                {
                  sub_25131F458(319);
                  if (v9 <= 0x3F)
                  {
                    sub_25131F558(319);
                    if (v10 <= 0x3F)
                    {
                      sub_25131F694(319, &qword_27F42B0C0, type metadata accessor for HealthArticleComponent.LinkContent, "paragraph linkContent ");
                      if (v11 <= 0x3F)
                      {
                        sub_25131F704(319);
                        if (v12 <= 0x3F)
                        {
                          sub_25131F804(319);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_25131F160(uint64_t a1)
{
  if (!qword_27F42B068)
  {
    sub_251322098(255, &qword_27F42B070, 0x277D755B8);
    v1 = sub_25133FAB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B068);
    }
  }
}

void sub_25131F1C8()
{
  if (!qword_27F42B078)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B078);
    }
  }
}

void sub_25131F22C(uint64_t a1)
{
  if (!qword_27F42B088)
  {
    sub_25131F984(255, &qword_27F42B080, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B088);
    }
  }
}

void sub_25131F2B8(uint64_t a1)
{
  if (!qword_27F42B090)
  {
    sub_251322098(255, &qword_27F42B070, 0x277D755B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B090);
    }
  }
}

void sub_25131F334(uint64_t a1)
{
  if (!qword_27F42B098)
  {
    sub_25131F39C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B098);
    }
  }
}

unint64_t sub_25131F39C()
{
  result = qword_280DE6DD0;
  if (!qword_280DE6DD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DE6DD0);
  }

  return result;
}

void sub_25131F3EC(uint64_t a1)
{
  if (!qword_27F42B0A0)
  {
    sub_25131F39C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B0A0);
    }
  }
}

void sub_25131F458(uint64_t a1)
{
  if (!qword_27F42B0A8)
  {
    sub_25131F984(255, &qword_27F42B0B0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    type metadata accessor for HealthArticleComponent.LinkContent(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F42B0A8);
    }
  }
}

uint64_t sub_25131F520(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25131F558(uint64_t a1)
{
  if (!qword_27F42B0B8)
  {
    MEMORY[0x28223BE20](a1);
    sub_25131F984(255, &qword_27F42B0B0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    type metadata accessor for HealthArticleComponent.LinkContent(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F42B0B8);
    }
  }
}

void sub_25131F694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25131F704(uint64_t a1)
{
  if (!qword_27F42B0C8)
  {
    sub_25131F7A0(255, &qword_27F42B0D0, MEMORY[0x277CC8BB8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B0C8);
    }
  }
}

void sub_25131F7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25131F804(uint64_t a1)
{
  if (!qword_27F42B0D8)
  {
    MEMORY[0x28223BE20](a1);
    sub_25131F7A0(255, &qword_27F42B0E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v1 = MEMORY[0x277D83D88];
    sub_25131F984(255, &qword_27F42B0B0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25131F984(255, &qword_27F42B0E8, MEMORY[0x277D839F8], v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27F42B0D8);
    }
  }
}

void sub_25131F984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25131FA24(uint64_t a1)
{
  result = sub_25133EFC4();
  if (v2 <= 0x3F)
  {
    result = sub_25131F39C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_25131FA98()
{
  v1 = type metadata accessor for HealthArticleComponent(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251321D18(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for TitleView();
      goto LABEL_19;
    case 2u:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for SectionHeaderView();
      goto LABEL_19;
    case 3u:
      v7 = v3[16];

      if (v7 != 1)
      {
        goto LABEL_3;
      }

      type metadata accessor for LastParagraphInSectionView();
      goto LABEL_19;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 0xCu:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      goto LABEL_3;
    case 8u:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for ImageView();
      goto LABEL_19;
    case 9u:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for ButtonView();
      goto LABEL_19;
    case 0xAu:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for CustomContentView();
      goto LABEL_19;
    case 0xBu:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for CustomContentViewControllerView();
      goto LABEL_19;
    case 0xDu:

      sub_25131F458(0);
      v6 = 64;
      goto LABEL_18;
    case 0xEu:

      sub_25131F558(0);
      v6 = 80;
      goto LABEL_18;
    case 0xFu:

      sub_25131F694(0, &qword_27F42B0C0, type metadata accessor for HealthArticleComponent.LinkContent, "paragraph linkContent ");
      v6 = 48;
LABEL_18:
      sub_251322128(&v3[*(v5 + v6)], type metadata accessor for HealthArticleComponent.LinkContent);
      type metadata accessor for LinkedTextView(0);
      goto LABEL_19;
    case 0x10u:

      sub_25131F704(0);
      sub_251322028(&v3[*(v4 + 48)], &qword_27F42B0D0, MEMORY[0x277CC8BB8]);
LABEL_3:
      type metadata accessor for ParagraphView();
LABEL_19:
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
      [v9 setTranslatesAutoresizingMaskIntoConstraints_];
      break;
    case 0x11u:
      sub_25131F804(0);

      type metadata accessor for VideoView();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
      [v9 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_251322028(v3, &qword_27F42B0E0, MEMORY[0x277CC9260]);
      break;
    default:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for TitleView();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
      [v8 setTranslatesAutoresizingMaskIntoConstraints_];
      v15 = 0;
      v16 = 0xE000000000000000;
      v9 = v8;
      sub_25133FB94();
      v10 = sub_25133F754();
      v12 = v11;

      v15 = v10;
      v16 = v12;
      MEMORY[0x253072050](0xD000000000000012, 0x8000000251342A60);
      v13 = sub_25133F724();

      [v9 setAccessibilityIdentifier_];

      break;
  }

  return v9;
}

void sub_25131FF30(void *a1)
{
  v222 = a1;
  v212 = sub_25133F274();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v216 = &v178 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_25133F674();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = &v178 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_25133F694();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_25133F6B4();
  v213 = *(v208 - 8);
  v4 = MEMORY[0x28223BE20](v208);
  v184 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v207 = &v178 - v6;
  v7 = sub_25133EFC4();
  v8 = *(v7 - 8);
  v218 = v7;
  v219 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v185 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v10;
  MEMORY[0x28223BE20](v9);
  v206 = &v178 - v11;
  v181 = sub_25133EEF4();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_25131F7A0(0, &qword_27F42B0F0, MEMORY[0x277CC8CC0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v192 = &v178 - v15;
  v194 = sub_25133EF74();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v178 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_25133EF04();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v201 = &v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_25133EF14();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v200 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25131F7A0(0, &qword_27F42B0E0, MEMORY[0x277CC9260], v13);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v205 = &v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v217 = &v178 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v197 = &v178 - v25;
  MEMORY[0x28223BE20](v24);
  v196 = &v178 - v26;
  v27 = sub_25133EF34();
  v214 = *(v27 - 8);
  v215 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v195 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v178 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v178 - v33;
  v204 = sub_25133EF54();
  v210 = *(v204 - 8);
  v35 = MEMORY[0x28223BE20](v204);
  v182 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v178 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v178 - v41;
  MEMORY[0x28223BE20](v40);
  v209 = &v178 - v43;
  sub_25131F7A0(0, &qword_27F42B0D0, MEMORY[0x277CC8BB8], v13);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v47 = &v178 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v220 = &v178 - v48;
  v49 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v52 = &v178 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v178 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v178 - v56;
  v58 = type metadata accessor for HealthArticleComponent(0);
  MEMORY[0x28223BE20](v58);
  v60 = &v178 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251321D18(v221, v60);
  v221 = v58;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v61 = *(v60 + 1);
      type metadata accessor for TitleView();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_62;
      }

      v62 = *v60;
      *&aBlock = 1;
      goto LABEL_28;
    case 2u:
      v91 = *(v60 + 1);
      v90 = *(v60 + 2);
      type metadata accessor for SectionHeaderView();
      if (swift_dynamicCastClass())
      {
        v92 = *v60;
        *&aBlock = 2;
        sub_25131B2C8(v92, v91, v90, &aBlock);
      }

      return;
    case 3u:
      v83 = *(v60 + 1);
      type metadata accessor for ParagraphView();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_62;
      }

      v84 = *v60;
      v85 = 3;
      goto LABEL_23;
    case 4u:
      v79 = *v60;
      type metadata accessor for ParagraphView();
      v80 = swift_dynamicCastClass();
      if (!v80)
      {
        goto LABEL_62;
      }

      v81 = v80;
      sub_251322098(0, &qword_27F42B120, 0x277CCA898);
      v82 = sub_251322524(0, 0, v79);
      goto LABEL_39;
    case 5u:
      v118 = *v60;
      type metadata accessor for ParagraphView();
      v119 = swift_dynamicCastClass();
      if (!v119)
      {
        goto LABEL_62;
      }

      v120 = v119;
      v121 = sub_251323CA8(0, 0, v118);

      v122 = sub_25132D310();
      [v122 setAttributedText_];

      [v120 setNeedsLayout];
      return;
    case 6u:
      v128 = *(v60 + 1);
      v129 = *(v60 + 2);
      type metadata accessor for ParagraphView();
      v130 = swift_dynamicCastClass();
      if (!v130)
      {
        goto LABEL_54;
      }

      v81 = v130;
      v131 = *v60;
      sub_251322098(0, &qword_27F42B120, 0x277CCA898);
      v82 = sub_251322524(v131, v128, v129);

LABEL_39:

      v132 = sub_25132D310();
      [v132 setAttributedText_];

      [v81 setNeedsLayout];
      goto LABEL_40;
    case 7u:
      v96 = *(v60 + 1);
      v97 = *(v60 + 2);
      type metadata accessor for ParagraphView();
      v98 = swift_dynamicCastClass();
      if (!v98)
      {
        goto LABEL_48;
      }

      v99 = v98;
      v82 = sub_251323CA8(*v60, v96, v97);

      v100 = sub_25132D310();
      [v100 setAttributedText_];

      [v99 setNeedsLayout];
LABEL_40:

      return;
    case 8u:
      v135 = *v60;
      type metadata accessor for ImageView();
      if (swift_dynamicCastClass())
      {
        sub_25132CFC4(v135, v60[8]);
      }

      return;
    case 9u:
      v86 = *(v60 + 1);
      v87 = *(v60 + 3);
      type metadata accessor for ButtonView();
      if (swift_dynamicCastClass())
      {
        v88 = *(v60 + 2);
        v89 = *v60;
        *&aBlock = 4;

        sub_251334514(v89, v86, &aBlock, v88, v87);
      }

      else
      {

LABEL_50:
      }

      return;
    case 0xAu:
      type metadata accessor for CustomContentView();
      if (swift_dynamicCastClass())
      {
        v133 = v60[16];
        v134 = (*v60)();
        sub_25133551C(v134, v133);
      }

      goto LABEL_50;
    case 0xBu:
      type metadata accessor for CustomContentViewControllerView();
      if (swift_dynamicCastClass())
      {
        v78 = (*v60)();
        sub_2513358F0(v78);
      }

      goto LABEL_50;
    case 0xCu:
      v83 = *(v60 + 1);
      type metadata accessor for ParagraphView();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_62;
      }

      v84 = *v60;
      v85 = 5;
LABEL_23:
      *&aBlock = v85;
      sub_25132D400(v84, v83, &aBlock);
      goto LABEL_62;
    case 0xDu:
      v124 = *v60;
      v123 = *(v60 + 1);
      v125 = *(v60 + 2);
      v126 = *(v60 + 3);
      sub_25131F458(0);
      sub_25131DC28(&v60[*(v127 + 64)], v57);
      type metadata accessor for LinkedTextView(0);
      if (swift_dynamicCastClass())
      {
        *&aBlock = v124;
        *(&aBlock + 1) = v123;
        v225 = 0;
        v226 = 0;
        LOBYTE(v227) = 0;
        v223 = 3;
        sub_25131CA44(&aBlock, &v223, v125, v126, v57);

        sub_251322128(v57, type metadata accessor for HealthArticleComponent.LinkContent);
        return;
      }

      sub_251322128(v57, type metadata accessor for HealthArticleComponent.LinkContent);
LABEL_54:

      goto LABEL_62;
    case 0xEu:
      v72 = *v60;
      v71 = *(v60 + 1);
      v74 = *(v60 + 2);
      v73 = *(v60 + 3);
      v76 = *(v60 + 4);
      v75 = *(v60 + 5);
      sub_25131F558(0);
      sub_25131DC28(&v60[*(v77 + 80)], v55);
      type metadata accessor for LinkedTextView(0);
      if (swift_dynamicCastClass())
      {
        *&aBlock = v74;
        *(&aBlock + 1) = v73;
        v225 = v72;
        v226 = v71;
        LOBYTE(v227) = 2;
        v223 = 3;
        sub_25131CA44(&aBlock, &v223, v76, v75, v55);

        sub_251322128(v55, type metadata accessor for HealthArticleComponent.LinkContent);
        return;
      }

      sub_251322128(v55, type metadata accessor for HealthArticleComponent.LinkContent);

LABEL_48:

      goto LABEL_62;
    case 0xFu:
      v94 = *v60;
      v93 = *(v60 + 1);
      sub_25131F694(0, &qword_27F42B0C0, type metadata accessor for HealthArticleComponent.LinkContent, "paragraph linkContent ");
      sub_25131DC28(&v60[*(v95 + 48)], v52);
      type metadata accessor for LinkedTextView(0);
      if (swift_dynamicCastClass())
      {
        *&aBlock = v94;
        *(&aBlock + 1) = v93;
        v225 = 0;
        v226 = 0;
        LOBYTE(v227) = 1;
        v223 = 3;
        sub_25131CA44(&aBlock, &v223, 0, 0, v52);

        sub_251322128(v52, type metadata accessor for HealthArticleComponent.LinkContent);
        return;
      }

      sub_251322128(v52, type metadata accessor for HealthArticleComponent.LinkContent);
      goto LABEL_62;
    case 0x10u:
      v63 = *v60;
      sub_25131F704(0);
      v65 = MEMORY[0x277CC8BB8];
      v66 = &v60[*(v64 + 48)];
      v67 = v220;
      sub_251321EE0(v66, v220, &qword_27F42B0D0, MEMORY[0x277CC8BB8]);
      sub_251321F60(v67, v47, &qword_27F42B0D0, v65);
      v69 = v214;
      v68 = v215;
      v70 = (*(v214 + 48))(v47, 1, v215);
      v217 = v63;
      if (v70 == 1)
      {
        sub_251322028(v47, &qword_27F42B0D0, MEMORY[0x277CC8BB8]);
        (*(v219 + 56))(v197, 1, 1, v218);
        (*(v198 + 104))(v200, *MEMORY[0x277CC8BB0], v199);
        (*(v202 + 104))(v201, *MEMORY[0x277CC8B98], v203);

        sub_25133EF24();
        sub_25133EF44();
        v42 = v39;
      }

      else
      {
        (*(v69 + 32))(v34, v47, v68);
        (*(v69 + 16))(v32, v34, v68);
        (*(v219 + 56))(v196, 1, 1, v218);

        sub_25133EF44();
        (*(v69 + 8))(v34, v68);
      }

      v162 = v42;
      v163 = v204;
      (*(v210 + 32))(v209, v162, v204);
      *&aBlock = 3;
      v164 = v192;
      HealthArticleTextAttributes.attributeContainer.getter(v192);
      v165 = v193;
      v166 = v194;
      if ((*(v193 + 48))(v164, 1, v194) == 1)
      {
        sub_251322028(v164, &qword_27F42B0F0, MEMORY[0x277CC8CC0]);
      }

      else
      {
        v167 = v178;
        (*(v165 + 32))(v178, v164, v166);
        v168 = v180;
        v169 = v179;
        v170 = v181;
        (*(v180 + 104))(v179, *MEMORY[0x277CC8B80], v181);
        sub_25133EEE4();
        (*(v168 + 8))(v169, v170);
        v171 = v167;
        v163 = v204;
        (*(v165 + 8))(v171, v166);
      }

      type metadata accessor for ParagraphView();
      v172 = swift_dynamicCastClass();
      v173 = v210;
      if (v172)
      {
        v174 = v172;
        sub_251322098(0, &qword_27F42B120, 0x277CCA898);
        v175 = v209;
        (*(v173 + 16))(v182, v209, v163);
        swift_getKeyPath();
        sub_25133EEC4();
        sub_2513220E0(&qword_27F42B128, MEMORY[0x277D74A38], MEMORY[0x277D74A30]);
        v176 = sub_25133FA24();

        v177 = sub_25132D310();
        [v177 setAttributedText_];

        [v174 setNeedsLayout];
      }

      else
      {

        v175 = v209;
      }

      (*(v173 + 8))(v175, v163);
      sub_251322028(v220, &qword_27F42B0D0, MEMORY[0x277CC8BB8]);
      return;
    case 0x11u:
      sub_25131F804(0);
      v102 = *&v60[v101[12]];
      v103 = &v60[v101[16]];
      v104 = v103[1];
      v221 = *v103;
      v105 = &v60[v101[20]];
      v107 = *v105;
      v106 = v105[1];
      v108 = &v60[v101[24]];
      v109 = *v108;
      v110 = v108[8];
      v111 = v217;
      sub_251321EE0(v60, v217, &qword_27F42B0E0, MEMORY[0x277CC9260]);
      type metadata accessor for VideoView();
      v112 = swift_dynamicCastClass();
      if (v112)
      {
        v113 = v112;
        LODWORD(v216) = v110;
        v220 = v109;
        v114 = v205;
        sub_251321F60(v111, v205, &qword_27F42B0E0, MEMORY[0x277CC9260]);
        v115 = v218;
        v116 = v219;
        if ((*(v219 + 48))(v114, 1, v218) == 1)
        {
          v117 = MEMORY[0x277CC9260];
          sub_251322028(v111, &qword_27F42B0E0, MEMORY[0x277CC9260]);

          sub_251322028(v114, &qword_27F42B0E0, v117);
        }

        else
        {
          v212 = v104;
          v210 = *(v116 + 32);
          v211 = v102;
          v136 = v206;
          (v210)();
          sub_251322098(0, &qword_27F42B0F8, 0x277D85C78);
          v214 = sub_25133F9F4();
          v137 = v184;
          sub_25133F6A4();
          sub_25133F6C4();
          v138 = *(v213 + 8);
          v213 += 8;
          v215 = v138;
          v138(v137, v208);
          v139 = *(v116 + 16);
          v140 = v185;
          v209 = v106;
          v141 = v115;
          v139(v185, v136, v115);
          v142 = *(v116 + 80);
          v205 = v107;
          v143 = (v142 + 24) & ~v142;
          v144 = (v183 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
          v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
          v146 = (v145 + 23) & 0xFFFFFFFFFFFFFFF8;
          v147 = swift_allocObject();
          *(v147 + 16) = v113;
          v148 = v147 + v143;
          v149 = v141;
          (v210)(v148, v140, v141);
          *(v147 + v144) = v211;
          v150 = (v147 + v145);
          v151 = v212;
          *v150 = v221;
          v150[1] = v151;
          v152 = (v147 + v146);
          v153 = v209;
          *v152 = v205;
          v152[1] = v153;
          v154 = v147 + ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v154 = v220;
          *(v154 + 8) = v216;
          v227 = sub_251321D7C;
          v228 = v147;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v225 = sub_25131EBB0;
          v226 = &block_descriptor_0;
          v155 = _Block_copy(&aBlock);
          v156 = v222;
          v157 = v186;
          sub_25133F684();
          v223 = MEMORY[0x277D84F90];
          sub_2513220E0(&qword_27F42B100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          sub_25131F7A0(0, &qword_27F42B108, MEMORY[0x277D85198], MEMORY[0x277D83940]);
          sub_251321E58();
          v158 = v189;
          v159 = v191;
          sub_25133FB34();
          v160 = v207;
          v161 = v214;
          MEMORY[0x253072260](v207, v157, v158, v155);
          _Block_release(v155);

          (*(v190 + 8))(v158, v159);
          (*(v187 + 8))(v157, v188);
          v215(v160, v208);
          (*(v219 + 8))(v206, v149);
          sub_251322028(v217, &qword_27F42B0E0, MEMORY[0x277CC9260]);
        }
      }

      else
      {
        sub_251322028(v111, &qword_27F42B0E0, MEMORY[0x277CC9260]);

LABEL_62:
      }

      return;
    default:
      v61 = *(v60 + 1);
      type metadata accessor for TitleView();
      if (swift_dynamicCastClass())
      {
        v62 = *v60;
        *&aBlock = 0;
LABEL_28:
        sub_25131B2C8(v62, v61, 0, &aBlock);
      }

      goto LABEL_62;
  }
}

uint64_t sub_251321D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthArticleComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251321D7C()
{
  v1 = *(sub_25133EFC4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_251336D64(*(v0 + 16), (v0 + v2), *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251321E58()
{
  result = qword_27F42B110;
  if (!qword_27F42B110)
  {
    sub_25131F7A0(255, &qword_27F42B108, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B110);
  }

  return result;
}

uint64_t sub_251321EE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25131F7A0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_251321F60(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25131F7A0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_251321FE0()
{
  result = qword_27F42B118;
  if (!qword_27F42B118)
  {
    type metadata accessor for HealthArticleComponent(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F42B118);
  }

  return result;
}

uint64_t sub_251322028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25131F7A0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251322098(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2513220E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251322128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_251322190()
{
  [v0 layoutMargins];
  [v0 layoutMargins];
  return 6.0;
}

double sub_25132224C()
{
  [v0 layoutMargins];
  [v0 layoutMargins];
  return 6.0;
}

id sub_2513222B0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), double a5, double a6, double a7, double a8)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v17.receiver = a1;
  v17.super_class = a4(isCurrentExecutor);
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a5, a6, a7, a8);

  return v15;
}

id sub_2513223C0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v12.receiver = a1;
  v12.super_class = a5(isCurrentExecutor);
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, v9);

  if (v10)
  {
  }

  return v10;
}

id sub_2513224C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_251322524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  sub_2513244B4(0, &qword_27F42B130, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v8 = v7;
  v46 = *(a3 + 16);
  if (v46)
  {
    v9 = 0;
    v45 = v46 - 1;
    v10 = *MEMORY[0x277D740A8];
    v43 = v50;
    v44 = v10;
    v11 = (a3 + 40);
    v42 = v7;
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      v14 = sub_2513234D8(v9, v12, v13);
      v16 = v15;
      v50[6] = v14;
      v50[7] = v15;
      aBlock = v14;
      v49 = v15;
      v50[4] = v12;
      v50[5] = v13;
      v17 = sub_25133EFF4();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      sub_2513236B4();

      sub_25133FB14();
      v19 = v18;
      sub_251323708(v6);
      if (v19)
      {

        v20 = 0;
        v21 = 0xE000000000000000;
      }

      else
      {
        aBlock = v14;
        v49 = v16;
        sub_25133F794();
        v20 = aBlock;
        v21 = v49;
      }

      v22 = swift_allocObject();
      v22[2] = v47;
      v22[3] = v20;
      v22[4] = v21;

      v23 = sub_2513237A0(sub_251323794, v22);

      if (v9 < v45)
      {
        MEMORY[0x253072050](10, 0xE100000000000000);
      }

      sub_25132E788(v23);

      v24 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v25 = sub_25133F724();

      type metadata accessor for Key(0);
      sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
      v26 = sub_25133F6E4();

      v27 = [v24 initWithString:v25 attributes:v26];

      v28 = sub_25133F7C4();

      v29 = swift_allocObject();
      *(v29 + 16) = v47;
      *(v29 + 24) = v27;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_2513239AC;
      *(v30 + 24) = v29;
      v50[2] = sub_2513239B4;
      v50[3] = v30;
      aBlock = MEMORY[0x277D85DD0];
      v49 = 1107296256;
      v50[0] = sub_251322D50;
      v50[1] = &block_descriptor_1;
      v31 = _Block_copy(&aBlock);
      v32 = v27;

      [v32 enumerateAttribute:v44 inRange:0 options:v28 usingBlock:{0, v31}];
      _Block_release(v31);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        break;
      }

      ++v9;
      v8 = v42;
      [v42 appendAttributedString_];

      v11 += 2;
      if (v46 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    if (v41)
    {
      aBlock = v40;
      v49 = v41;

      MEMORY[0x253072050](10, 0xE100000000000000);
      v34 = sub_2513237A0(0, 0);
      sub_25132E788(v34);

      v35 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v36 = sub_25133F724();

      type metadata accessor for Key(0);
      sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
      v37 = sub_25133F6E4();

      v38 = [v35 initWithString:v36 attributes:v37];

      [v38 appendAttributedString_];
      return v38;
    }

    return v8;
  }

  return result;
}

void sub_251322B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_251323A64(a1, v18);
  if (v19)
  {
    v9 = sub_251322098(0, &qword_280DE7278, 0x277D74300);
    v10 = MEMORY[0x277D84F70];
    if (swift_dynamicCast())
    {
      v11 = sub_25132416C(v17);
      sub_251324458(0, &qword_27F42B140, &qword_27F42B148, type metadata accessor for Key, v10 + 8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_251340BD0;
      v13 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      *(inited + 64) = v9;
      *(inited + 40) = v11;
      v14 = v13;
      v15 = v11;
      sub_25132FE54(inited);
      swift_setDeallocating();
      sub_2513239F4(inited + 32, &qword_27F42B148, type metadata accessor for Key, v10 + 8, sub_2513246F8);
      type metadata accessor for Key(0);
      sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
      v16 = sub_25133F6E4();

      [a6 addAttributes:v16 range:{a2, a3}];
    }
  }

  else
  {
    sub_2513239F4(v18, &qword_27F42B138, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2513248B0);
  }
}

uint64_t sub_251322D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_251323A54(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_2513239F4(v13, &unk_27F42B138, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2513248B0);
}

double sub_251322E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);

  if (v5)
  {
    v6 = *MEMORY[0x277D740A8];
    sub_251328050();
    if (v7)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = v6;
        v11 = sub_25132416C(v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_25132309C(v11, v10, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v13 = sub_25133F724();
  sub_25132E788(a1);

  type metadata accessor for Key(0);
  sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
  v14 = sub_25133F6E4();

  [v13 sizeWithAttributes_];
  v16 = v15;

  return v16;
}

double sub_251322FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25133F724();
  sub_25132E788(a1);
  type metadata accessor for Key(0);
  sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
  v5 = sub_25133F6E4();

  [v4 sizeWithAttributes_];
  v7 = v6;

  return v7;
}

uint64_t sub_25132309C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_251328050();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_251327200(v13, a3 & 1);
      v8 = sub_251328050();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for Key(0);
        sub_25133FCC4();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v16 = v8;
      sub_251327714();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;

  return swift_unknownObjectRelease();
}

char *sub_251323208(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251323228(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251323228(char *result, int64_t a2, char a3, char *a4)
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
    sub_2513248B0(0, &qword_27F42B1B8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

void sub_25132334C(uint64_t a1)
{
  v2 = sub_25133EFF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_25133EFE4();
  v7 = sub_25133EFD4();
  (*(v3 + 8))(v5, v2);
  [v6 setLocale_];

  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v9 = [v6 stringFromNumber_];

    if (v9)
    {
      sub_25133F754();
    }

    else
    {
    }
  }
}

uint64_t sub_2513234D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HealthArticleViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_25133EF64();

  sub_25132334C(a1);
  v9 = v8;
  v11 = v10;
  sub_251322098(0, &qword_27F42B198, 0x277CCACA8);
  v12 = sub_25133F724();

  sub_2513244B4(0, &qword_27F42B1A0, sub_251324774, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_251341600;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2513247D8();
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = a2;
  *(v13 + 80) = a3;

  v16 = sub_25133FAA4();

  v17 = sub_25133F754();
  return v17;
}

unint64_t sub_2513236B4()
{
  result = qword_280DE6DF0;
  if (!qword_280DE6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6DF0);
  }

  return result;
}

uint64_t sub_251323708(uint64_t a1)
{
  sub_2513244B4(0, &qword_27F42B130, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2513237A0(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = MEMORY[0x277D84F68];
  sub_251324458(0, &qword_27F42B188, &qword_27F42B190, type metadata accessor for Key, MEMORY[0x277D84F68] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251341600;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277D76918];
  v9 = v6;
  v10 = [v7 preferredFontForTextStyle_];
  v11 = *MEMORY[0x277D740C0];
  *(inited + 40) = v10;
  *(inited + 48) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  *(inited + 56) = [v12 labelColor];
  v14 = sub_25132F924(inited);
  swift_setDeallocating();
  sub_2513246F8(0, &qword_27F42B190, type metadata accessor for Key, v4 + 8);
  swift_arrayDestroy();
  v15 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if (a1)
  {

    a1(v14);
    [v15 setHeadIndent_];
    sub_251324764(a1, a2);
  }

  [v15 setParagraphSpacing_];
  v16 = *MEMORY[0x277D74118];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25132309C(v15, v16, isUniquelyReferenced_nonNull_native);

  return v14;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2513239F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

_OWORD *sub_251323A54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_251323A64(uint64_t a1, uint64_t a2)
{
  sub_2513248B0(0, &qword_27F42B138, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251323AF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthArticleViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_25133EF64();

  sub_251322098(0, &qword_27F42B198, 0x277CCACA8);
  v6 = sub_25133F724();

  sub_2513244B4(0, &qword_27F42B1A0, sub_251324774, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_251340BD0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2513247D8();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_25133FAA4();

  v9 = sub_25133F754();
  return v9;
}

id sub_251323CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (v4)
  {
    v37 = MEMORY[0x277D84F90];
    sub_251323208(0, v4, 0);
    type metadata accessor for HealthArticleViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = objc_opt_self();
    sub_251322098(0, &qword_27F42B198, 0x277CCACA8);
    v6 = (a3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = [v35 bundleForClass_];
      sub_25133EF64();

      v10 = sub_25133F724();

      sub_2513244B4(0, &qword_27F42B1A0, sub_251324774, MEMORY[0x277D84560]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_251340BD0;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_2513247D8();
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;

      v12 = sub_25133FAA4();

      v13 = sub_25133F754();
      v15 = v14;

      v17 = *(v37 + 16);
      v16 = *(v37 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_251323208((v16 > 1), v17 + 1, 1);
      }

      *(v37 + 16) = v17 + 1;
      v18 = v37 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v6 += 2;
      --v4;
    }

    while (v4);
    v3 = a2;
  }

  sub_2513248B0(0, &qword_27F42B080, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_25132482C();
  sub_25133F714();

  v19 = sub_251323AF0(0, 0xE000000000000000);
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  v23 = sub_2513237A0(sub_2513248A8, v22);

  sub_25132E788(v23);

  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_25133F724();

  type metadata accessor for Key(0);
  sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
  v26 = sub_25133F6E4();

  v27 = [v24 initWithString:v25 attributes:v26];

  if (v3)
  {

    MEMORY[0x253072050](10, 0xE100000000000000);
    v28 = sub_2513237A0(0, 0);
    sub_25132E788(v28);

    v29 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v30 = sub_25133F724();

    v31 = sub_25133F6E4();

    v32 = [v29 initWithString:v30 attributes:v31];

    [v32 appendAttributedString_];
    return v32;
  }

  return v27;
}

id sub_25132416C(void *a1)
{
  v2 = [a1 fontDescriptor];
  v3 = MEMORY[0x277D84560];
  sub_2513244B4(0, &qword_27F42B150, sub_251324518, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251340BD0;
  v5 = MEMORY[0x277D83B88];
  sub_251324458(0, &qword_27F42B160, &qword_27F42B168, type metadata accessor for FeatureKey, MEMORY[0x277D83B88]);
  inited = swift_initStackObject();
  v7 = MEMORY[0x277D76908];
  *(inited + 16) = xmmword_251341600;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = *MEMORY[0x277D76900];
  *(inited + 40) = 6;
  *(inited + 48) = v9;
  *(inited + 56) = 0;
  v10 = v8;
  v11 = v9;
  v12 = sub_25132FC88(inited);
  swift_setDeallocating();
  sub_2513246F8(0, &qword_27F42B168, type metadata accessor for FeatureKey, v5);
  swift_arrayDestroy();
  *(v4 + 32) = v12;
  sub_2513244B4(0, &qword_27F42B170, sub_2513245FC, v3);
  v13 = swift_initStackObject();
  v14 = MEMORY[0x277D74338];
  *(v13 + 16) = xmmword_251340BD0;
  v15 = *v14;
  *(v13 + 32) = v15;
  *(v13 + 40) = v4;
  v16 = v15;
  v17 = sub_25132FD68(v13);
  swift_setDeallocating();
  sub_25132469C(v13 + 32);
  sub_25132EA44(v17);

  type metadata accessor for AttributeName(0);
  sub_2513245B4(&qword_27F42AEB8, type metadata accessor for AttributeName, &unk_251341320);
  v18 = sub_25133F6E4();

  v19 = [v2 fontDescriptorByAddingAttributes_];

  [a1 pointSize];
  v21 = [objc_opt_self() fontWithDescriptor:v19 size:v20];

  return v21;
}

void sub_251324458(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_2513246F8(255, a3, a4, a5);
    v6 = sub_25133FCA4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2513244B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251324518(uint64_t a1)
{
  if (!qword_27F42B158)
  {
    type metadata accessor for FeatureKey(255);
    sub_2513245B4(&qword_27F42AEC8, type metadata accessor for FeatureKey, &unk_251341364);
    v1 = sub_25133F6F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B158);
    }
  }
}

uint64_t sub_2513245B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2513245FC(uint64_t a1)
{
  if (!qword_27F42B178)
  {
    type metadata accessor for AttributeName(255);
    sub_2513244B4(255, &qword_27F42B180, sub_251324518, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B178);
    }
  }
}

uint64_t sub_25132469C(uint64_t a1)
{
  sub_2513245FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2513246F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251324764(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_251324774()
{
  result = qword_27F42B1A8;
  if (!qword_27F42B1A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42B1A8);
  }

  return result;
}

unint64_t sub_2513247D8()
{
  result = qword_280DE6DE8;
  if (!qword_280DE6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6DE8);
  }

  return result;
}

unint64_t sub_25132482C()
{
  result = qword_27F42B1B0;
  if (!qword_27F42B1B0)
  {
    sub_2513248B0(255, &qword_27F42B080, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B1B0);
  }

  return result;
}

void sub_2513248B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251324914()
{
  v1 = type metadata accessor for HealthArticleComponent(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews;
  v6 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews);
  if (v6)
  {
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_components);
    v8 = *(v7 + 16);
    v6 = MEMORY[0x277D84F90];
    if (v8)
    {
      v14 = MEMORY[0x277D84F90];
      sub_25133FBE4();
      v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v10 = *(v2 + 72);
      do
      {
        sub_251321D18(v9, v4);
        v11 = sub_25131FA98();
        sub_25131FF30(v11);
        sub_251327CBC(v4, type metadata accessor for HealthArticleComponent);
        sub_25133FBC4();
        sub_25133FBF4();
        sub_25133FC04();
        sub_25133FBD4();
        v9 += v10;
        --v8;
      }

      while (v8);
      v6 = v14;
    }

    *(v0 + v5) = v6;
  }

  return v6;
}

id sub_251324AC0()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView);
  }

  else
  {
    v4 = sub_251324B24(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_251324B24(uint64_t a1)
{
  sub_251324914();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_251322098(0, &qword_27F42B270, 0x277D75D18);
  v3 = sub_25133F844();

  v16 = [v2 initWithArrangedSubviews_];

  v4 = *(a1 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews);
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25133FB54())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x253072420](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_14;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = v5;
      v12 = [v8 widthAnchor];
      v13 = [v16 widthAnchor];
      v14 = [v12 constraintEqualToAnchor_];

      v5 = v11;
      [v14 setActive_];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAxis_];
  [v16 setAlignment_];
  [v16 setDistribution_];
  [v16 setSpacing_];
  return v16;
}

void *sub_251324D60()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState;
  if (*(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState);
  }

  else
  {
    v2 = sub_251324DC8();
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_251324DC8()
{
  v0 = sub_25132FF64(MEMORY[0x277D84F90]);
  v1 = sub_251324914();
  isUniquelyReferenced_nonNull_native = v1;
  if (v1 >> 62)
  {
LABEL_28:
    v3 = sub_25133FB54();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_29:

    return v0;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_3:
  v4 = 0;
  v5 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v22 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v23 = v3;
  v24 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v5)
    {
      v6 = MEMORY[0x253072420](v4, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v4 >= *(v22 + 16))
      {
        goto LABEL_26;
      }

      v6 = *(isUniquelyReferenced_nonNull_native + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v27 = v6;
    sub_251322098(0, &qword_27F42B270, 0x277D75D18);
    sub_251327C60(0, &qword_27F42B278, &protocol descriptor for MovementVisibilityTracking);
    v9 = v7;
    if (swift_dynamicCast())
    {
      break;
    }

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_251327CBC(v25, sub_251327D1C);
LABEL_5:
    ++v4;
    if (v8 == v3)
    {
      goto LABEL_29;
    }
  }

  sub_251327CBC(v25, sub_251327D1C);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[0] = v0;
  v11 = sub_251326F2C(v9);
  v12 = v0[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_25;
  }

  v15 = v10;
  if (v0[3] >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v0 = *&v25[0];
      if (v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_25132786C();
      v0 = *&v25[0];
      if (v15)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    v0[(v11 >> 6) + 8] |= 1 << v11;
    *(v0[6] + 8 * v11) = v9;
    *(v0[7] + 8 * v11) = 0;
    v18 = v0[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_27;
    }

    v0[2] = v20;
    goto LABEL_23;
  }

  sub_2513274BC(v14, isUniquelyReferenced_nonNull_native);
  v16 = sub_251326F2C(v9);
  if ((v15 & 1) == (v17 & 1))
  {
    v11 = v16;
    v0 = *&v25[0];
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    *(v0[7] + 8 * v11) = 0;

LABEL_23:
    v3 = v23;
    isUniquelyReferenced_nonNull_native = v24;
    goto LABEL_5;
  }

  result = sub_25133FCC4();
  __break(1u);
  return result;
}

void sub_251325070(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2513250D0()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id HealthArticleViewController.init(title:components:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews] = 0;
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView] = 0;
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState] = 0;
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView] = 0;
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_components] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for HealthArticleViewController();

  v4 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  v5 = sub_25133F724();
  [v4 setTitle_];

  result = [v4 view];
  if (result)
  {
    v7 = result;

    v8 = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor_];

    [v4 setModalPresentationStyle_];
    sub_251325938();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HealthArticleViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HealthArticleViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView) = 0;
  sub_25133FC14();
  __break(1u);
}

uint64_t sub_251325938()
{
  v1 = type metadata accessor for HealthArticleComponent(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = &v26 - v7;
  v27 = v0;
  v9 = *&v0[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_components];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_25133F8F4();
    v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v29 = *(v2 + 72);
    v13 = v10 - 1;
    v14 = MEMORY[0x277D85700];
    while (1)
    {
      sub_251321D18(v12, v8);
      v15 = sub_25133F8E4();
      sub_25133F894();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_251321D18(v8, v5);
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v16 = (*v5)();
        v28 = v15;
        v17 = v5;
        v18 = v13;
        v19 = v12;
        v20 = v8;
        v21 = v11;
        v22 = v14;
        v23 = v1;
        v24 = v27;
        [v27 addChildViewController_];
        v25 = v24;
        v1 = v23;
        v14 = v22;
        v11 = v21;
        v8 = v20;
        v12 = v19;
        v13 = v18;
        v5 = v17;
        [v16 didMoveToParentViewController_];

        sub_251327CBC(v8, type metadata accessor for HealthArticleComponent);

        if (!v13)
        {
          return result;
        }
      }

      else
      {
        sub_251327CBC(v8, type metadata accessor for HealthArticleComponent);
        sub_251327CBC(v5, type metadata accessor for HealthArticleComponent);

        if (!v13)
        {
          return result;
        }
      }

      --v13;
      v12 += v29;
    }
  }

  return result;
}

void sub_251325BCC()
{
  v1 = v0;
  sub_251322098(0, &qword_27F42B298, 0x277D759D8);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = v2;
  [v3 setPreservesSuperviewLayoutMargins_];
  v4 = [v1 title];
  if (v4)
  {
    v5 = v4;
    sub_25133F754();

    v69 = sub_2513236B4();
    v68 = MEMORY[0x277D837D0];
    v6 = sub_25133FB04();
    v8 = v7;

    sub_25133FB94();
    sub_25133F754();

    MEMORY[0x253072050](0x656C63697472412ELL, 0xED00002E77656956);
    MEMORY[0x253072050](v6, v8);

    v9 = sub_25133F724();

    [v3 setAccessibilityIdentifier_];
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v11 = *&v1[v10];
  *&v1[v10] = v3;
  v12 = v3;

  v13 = [v1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  [v13 addSubview_];

  v15 = sub_251324AC0();
  [v12 addSubview_];

  sub_251327F10();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_251341610;
  v17 = [v12 frameLayoutGuide];
  v18 = [v17 topAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v16 + 32) = v22;
  v23 = [v12 frameLayoutGuide];
  v24 = [v23 leadingAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  v27 = [v25 leadingAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v16 + 40) = v28;
  v29 = [v12 frameLayoutGuide];
  v30 = [v29 trailingAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v71 = v10;
  v33 = [v31 trailingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v16 + 48) = v34;
  v35 = [v12 frameLayoutGuide];
  v36 = [v35 bottomAnchor];

  v37 = [v1 view];
  if (!v37)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v38 = v37;
  v70 = objc_opt_self();
  v39 = [v38 bottomAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v16 + 56) = v40;
  v41 = [v12 contentLayoutGuide];
  v42 = [v41 topAnchor];

  v43 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView;
  v44 = [*&v1[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView] topAnchor];
  v45 = [v42 constraintEqualToAnchor_];

  *(v16 + 64) = v45;
  v46 = [v12 contentLayoutGuide];
  v47 = [v46 leadingAnchor];

  v48 = [*&v1[v43] leadingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v16 + 72) = v49;
  v50 = [v12 contentLayoutGuide];
  v51 = [v50 trailingAnchor];

  v52 = [*&v1[v43] trailingAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v16 + 80) = v53;
  v54 = [v12 contentLayoutGuide];
  v55 = [v54 bottomAnchor];

  v56 = [*&v1[v43] bottomAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v16 + 88) = v57;
  v58 = [v12 frameLayoutGuide];
  v59 = [v58 widthAnchor];

  v60 = [*&v1[v43] widthAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v16 + 96) = v61;
  sub_251322098(0, &qword_280DE7280, 0x277CCAAD0);
  v62 = sub_25133F844();

  [v70 activateConstraints_];

  if (_UISolariumEnabled())
  {
    v63 = [v1 navigationController];
    if (v63)
    {
      v64 = v63;
      v65 = [v63 navigationBar];

      v66 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v12 edge:1 style:0];
      [v65 addInteraction_];
    }
  }

  v67 = *&v1[v71];
  if (v67)
  {
    [v67 setDelegate_];
  }

  sub_2513264D8(0);
}

uint64_t sub_2513264D8(char a1)
{
  v2 = v1;
  v4 = sub_251324D60();
  v5 = v4 + 8;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4[8];
  v75 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState;
  v78 = v4;
  v79 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v9 = 0;
  v10 = (v6 + 63) >> 6;
  v74 = a1;
  v76 = a1 & 1 | 2;
  v77 = a1 & 1;
  v11 = &_swift_FORCE_LOAD___swift_Builtin_float___HealthArticlesUI;
  v71 = v2;
  if (v8)
  {
    while (1)
    {
LABEL_10:
      v13 = (v9 << 9) | (8 * __clz(__rbit64(v8)));
      v14 = *(v78[6] + v13);
      v15 = *(v78[7] + v13);
      v16 = *(v2 + v79);
      if (v16)
      {
        v17 = v14;
        [v16 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [v17 v11[147]];
        v89.origin.x = v26;
        v89.origin.y = v27;
        v89.size.width = v28;
        v89.size.height = v29;
        v86.origin.x = v19;
        v86.origin.y = v21;
        v86.size.width = v23;
        v86.size.height = v25;
        v30 = CGRectContainsRect(v86, v89);
        v32 = v76;
        v31 = v77;
        if (v30)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v33 = v14;
        if ((v74 & 1) == 0)
        {
          v32 = 0;
          goto LABEL_17;
        }

        v31 = 1;
      }

      v32 = v31;
LABEL_17:
      v8 &= v8 - 1;
      v82 = v14;
      sub_251322098(0, &qword_27F42B270, 0x277D75D18);
      sub_251327C60(0, &qword_27F42B278, &protocol descriptor for MovementVisibilityTracking);
      v34 = v14;
      if (swift_dynamicCast())
      {
        sub_251327E68(v80, v83);
        if (v15 != v32)
        {
          v35 = v2;
          v37 = v84;
          v36 = v85;
          __swift_project_boxed_opaque_existential_1(v83, v84);
          v73 = v32;
          *&v80[0] = v32;
          (*(v36 + 8))(v80, v37, v36);
          v38 = *(v35 + v75);
          v72 = v34;
          v32 = v34;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v80[0] = v38;
          v41 = sub_251326F2C(v32);
          v42 = *(v38 + 16);
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_39;
          }

          v45 = v40;
          if (*(v38 + 24) >= v44)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_25132786C();
            }
          }

          else
          {
            sub_2513274BC(v44, isUniquelyReferenced_nonNull_native);
            v46 = sub_251326F2C(v32);
            if ((v45 & 1) != (v47 & 1))
            {
              goto LABEL_41;
            }

            v41 = v46;
          }

          v2 = v71;
          v48 = *&v80[0];
          if (v45)
          {
            *(*(*&v80[0] + 56) + 8 * v41) = v73;

            LOBYTE(v32) = v73;
          }

          else
          {
            *(*&v80[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
            *(v48[6] + 8 * v41) = v32;
            LOBYTE(v32) = v73;
            *(v48[7] + 8 * v41) = v73;
            v49 = v48[2];
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              goto LABEL_40;
            }

            v48[2] = v51;
          }

          *(v71 + v75) = v48;

          v34 = v72;
        }

        v11 = &_swift_FORCE_LOAD___swift_Builtin_float___HealthArticlesUI;
        if ((v32 & 1) == 0)
        {
          v52 = *(v2 + v79);
          if (v52)
          {
            [v52 bounds];
            v54 = v53;
            v56 = v55;
            v58 = v57;
            v60 = v59;
            [v34 frame];
            v90.origin.x = v61;
            v90.origin.y = v62;
            v90.size.width = v63;
            v90.size.height = v64;
            v87.origin.x = v54;
            v87.origin.y = v56;
            v87.size.width = v58;
            v87.size.height = v60;
            v88 = CGRectIntersection(v87, v90);
          }

          else
          {
            v88.origin.x = 0.0;
            v88.origin.y = 0.0;
            v88.size.width = 0.0;
            v88.size.height = 0.0;
          }

          Height = CGRectGetHeight(v88);
          [v34 frame];
          v66 = v84;
          v67 = v85;
          v69 = Height / v68;
          __swift_project_boxed_opaque_existential_1(v83, v84);
          (*(v67 + 16))(v66, v67, v69);
        }

        __swift_destroy_boxed_opaque_existential_1(v83);
        if (!v8)
        {
          break;
        }
      }

      else
      {

        v81 = 0;
        memset(v80, 0, sizeof(v80));
        sub_251327CBC(v80, sub_251327D1C);
        v11 = &_swift_FORCE_LOAD___swift_Builtin_float___HealthArticlesUI;
        if (!v8)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v8 = v5[v12];
    ++v9;
    if (v8)
    {
      v9 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_25133FCC4();
  __break(1u);
  return result;
}

void sub_2513269B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  sub_2513264D8(a5 & 1);
}

uint64_t sub_251326A84(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_2513264D8(0);
  }

  return result;
}

id HealthArticleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25133F724();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HealthArticleViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthArticleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_251326E24(uint64_t a1, uint64_t a2)
{
  sub_25133FCF4();
  sub_25133F7B4();
  v4 = sub_25133FD24();

  return sub_251326F70(a1, a2, v4);
}

unint64_t sub_251326E9C(uint64_t a1)
{
  sub_25133F754();
  sub_25133FCF4();
  sub_25133F7B4();
  v2 = sub_25133FD24();

  return sub_251327028(a1, v2);
}

unint64_t sub_251326F2C(uint64_t a1)
{
  v2 = sub_25133FA84();

  return sub_25132712C(a1, v2);
}

unint64_t sub_251326F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25133FCB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_251327028(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25133F754();
      v8 = v7;
      if (v6 == sub_25133F754() && v8 == v9)
      {
        break;
      }

      v11 = sub_25133FCB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25132712C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_251322098(0, &qword_27F42B270, 0x277D75D18);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25133FA94();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_251327200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251327F64(0);
  v35 = v4;
  result = sub_25133FC44();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      sub_25133F754();
      sub_25133FCF4();
      sub_25133F7B4();
      v24 = sub_25133FD24();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2513274BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251327D84(0);
  result = sub_25133FC44();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_25133FA84();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_251327714()
{
  v1 = v0;
  sub_251327F64(0);
  v2 = *v0;
  v3 = sub_25133FC34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_25132786C()
{
  v1 = v0;
  sub_251327D84(0);
  v2 = *v0;
  v3 = sub_25133FC34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2513279BC(void *a1, uint64_t a2)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [a1 traitCollection];
  sub_25133FA14();

  sub_25133FA34();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_251324AC0();
  [v12 setDirectionalLayoutMargins_];
}

uint64_t sub_251327C60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251327CBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251327D1C(uint64_t a1)
{
  if (!qword_27F42B280)
  {
    sub_251327C60(255, &qword_27F42B278, &protocol descriptor for MovementVisibilityTracking);
    v1 = sub_25133FAB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B280);
    }
  }
}

void sub_251327D84(uint64_t a1)
{
  if (!qword_27F42B288)
  {
    sub_251322098(255, &qword_27F42B270, 0x277D75D18);
    sub_251327E00();
    v1 = sub_25133FC64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B288);
    }
  }
}

unint64_t sub_251327E00()
{
  result = qword_27F42B290;
  if (!qword_27F42B290)
  {
    sub_251322098(255, &qword_27F42B270, 0x277D75D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B290);
  }

  return result;
}

uint64_t sub_251327E68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

void sub_251327F10()
{
  if (!qword_27F42B2A0)
  {
    v0 = sub_25133FCA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B2A0);
    }
  }
}

void sub_251327F64(uint64_t a1)
{
  if (!qword_27F42B2A8)
  {
    type metadata accessor for Key(255);
    sub_251328004(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
    v1 = sub_25133FC64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B2A8);
    }
  }
}

uint64_t sub_251328004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251328054()
{
  result = sub_25133F724();
  qword_280DE7358 = result;
  return result;
}

id static NSNotificationName.articleWasReadByUser.getter()
{
  if (qword_280DE7350 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE7358;

  return v1;
}

uint64_t _s11UserInfoKeyOwet(unsigned int *a1, int a2)
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

_WORD *_s11UserInfoKeyOwst(_WORD *result, int a2, int a3)
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

uint64_t sub_2513281FC()
{
  sub_25133FCF4();
  MEMORY[0x253072580](0);
  return sub_25133FD24();
}

uint64_t sub_251328268(uint64_t a1)
{
  sub_25133FCF4();
  MEMORY[0x253072580](0);
  return sub_25133FD24();
}

uint64_t sub_2513282C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000251342E60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25133FCB4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_251328370(uint64_t a1)
{
  v2 = sub_251328534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2513283AC(uint64_t a1)
{
  v2 = sub_251328534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleContentConfigurationProviderViewModel.encode(to:)(void *a1)
{
  sub_25132870C(0, &qword_280DE6DD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251328534();
  sub_25133FD44();
  sub_25133FC94();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_251328534()
{
  result = qword_280DE72C8[0];
  if (!qword_280DE72C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DE72C8);
  }

  return result;
}

uint64_t ArticleContentConfigurationProviderViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25132870C(0, &qword_280DE6DE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251328534();
  sub_25133FD34();
  if (!v2)
  {
    v10 = sub_25133FC84();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_25132870C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251328534();
    v7 = a3(a1, &type metadata for ArticleContentConfigurationProviderViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251328788(void *a1)
{
  sub_25132870C(0, &qword_280DE6DD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251328534();
  sub_25133FD44();
  sub_25133FC94();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_251328998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t ArticleContentConfigurationProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t ArticleContentConfigurationProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_251328A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a3;
  v72 = a2;
  v73 = a4;
  v63 = *v4;
  v6 = v63;
  sub_25132ACA8();
  v8 = v7;
  v70 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v69 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25133F274();
  v62 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v71 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25132ACF8(0);
  v67 = v12;
  v66 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v61 - v16;
  v17 = *(v6 + 80);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v61 - v19;
  v21 = *(v6 + 88);
  (*(v21 + 8))(v17, v21);
  sub_25133F0D4();
  (*(v21 + 16))(&v74, v79, v80, v72, v17, v21);

  (*(v18 + 8))(v20, v17);
  if (v75)
  {
    sub_25132AF18(&v74, &v76);
    v22 = v77;
    v23 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    v24 = (*(v23 + 24))(v22, v23);
    v26 = v25;
    v27 = v77;
    v28 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    v29 = (*(v28 + 32))(v27, v28);
    v31 = v30;
    v32 = v77;
    v33 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    v34 = (*(v33 + 40))(v32, v33);
    v35 = v77;
    v36 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    v37 = (*(v36 + 72))(v35, v36);
    v79 = v24;
    v80 = v26;
    v81 = v29;
    v82 = v31;
    v38 = v68;
    v83 = v34;
    v84 = v68;
    v85 = v37;
    v86 = v39;
    MEMORY[0x28223BE20](v37);
    *(&v61 - 2) = &v79;
    *(&v61 - 1) = v38;
    type metadata accessor for ArticleTileView(0);
    sub_25132B8AC(&qword_280DE7088, type metadata accessor for ArticleTileView, &protocol conformance descriptor for ArticleTileView);

    v40 = v64;
    sub_25133F404();
    sub_25133F4F4();
    v41 = v65;
    v42 = v67;
    sub_25133F3F4();
    v43 = *(v66 + 8);
    v43(v40, v42);
    sub_25132AF40(0);
    v44 = v73;
    *(v73 + 24) = v45;
    v44[4] = sub_25132B8AC(&qword_280DE6EA0, sub_25132AF40, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v44);
    sub_25133F164();
    sub_25132B8AC(&qword_280DE6F50, MEMORY[0x277D11038], MEMORY[0x277D11030]);
    sub_25133F3E4();
    sub_25132B02C(&v79);
    v43(v41, v42);
    return __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  else
  {
    v47 = v63;
    v48 = v62;
    v49 = v10;
    sub_25132B6C0(&v74, sub_25132ADA8);
    sub_25133F244();
    (*(v70 + 16))(v69, a1, v8);
    v50 = sub_25133F264();
    v51 = sub_25133F994();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v76 = v53;
      *v52 = 136446466;
      v79 = v47;
      swift_getMetatypeMetadata();
      v54 = sub_25133F764();
      v56 = sub_25132F394(v54, v55, &v76);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = v69;
      sub_25133F0D4();
      (*(v70 + 8))(v57, v8);
      v58 = sub_25132F394(v79, v80, &v76);

      *(v52 + 14) = v58;
      _os_log_impl(&dword_251318000, v50, v51, "[%{public}s] No article data provider was found in updateLayout using identifier %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253072C40](v53, -1, -1);
      MEMORY[0x253072C40](v52, -1, -1);
    }

    else
    {

      (*(v70 + 8))(v69, v8);
    }

    (*(v48 + 8))(v71, v49);
    v59 = v73;
    sub_25132AE48();
    v59[3] = v60;
    v59[4] = sub_25132B8AC(&qword_27F42B2D8, sub_25132AE48, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(v59);
    return sub_25133F404();
  }
}

uint64_t sub_251329344(uint64_t a1, uint64_t a2)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2513293D4@<X0>(_OWORD *a1@<X0>, uint64_t *a3@<X8>)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = swift_getKeyPath();
  v5 = MEMORY[0x277CDF458];
  sub_25132B754(0, &qword_280DE6F40, sub_25132B81C, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ArticleTileView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_25132B754(0, &qword_280DE6F48, MEMORY[0x277CDFA28], v5);
  swift_storeEnumTagMultiPayload();
  v8 = v6[6];
  *(a3 + v8) = swift_getKeyPath();
  sub_25132B754(0, &qword_27F42B300, MEMORY[0x277D10E70], v5);
  swift_storeEnumTagMultiPayload();
  v9 = (a3 + v6[7]);
  v10 = a1[1];
  *v9 = *a1;
  v9[1] = v10;
  v11 = a1[3];
  v9[2] = a1[2];
  v9[3] = v11;
  v12 = (a3 + v6[8]);
  sub_25132B850(a1, &v17);
  sub_25133F114();
  sub_25132B8AC(&qword_280DE6F58, MEMORY[0x277D10F38], MEMORY[0x277D10F30]);

  v13 = sub_25133F304();
  v15 = v14;

  *v12 = v13;
  v12[1] = v15;
  return result;
}

uint64_t sub_25132960C(uint64_t a1, uint64_t a2)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25133F154();
}

uint64_t sub_2513296C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25133F2A4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ArticleContentConfigurationProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2513297E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ArticleContentConfigurationProvider(0, *(a2 + 80), *(a2 + 88), a4);

  return MEMORY[0x282169C78](a1, v6, a3);
}

uint64_t (*sub_25132983C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2513289EC(v2);
  return sub_2513298AC;
}

void sub_2513298AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2513298F4@<X0>(void *a1@<X8>)
{
  v2 = sub_25133F204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25133F1A4();
  sub_25133F1F4();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    sub_251327E68(&v9, v11);
    sub_251327E68(v11, &v9);
    sub_25132B7B8();
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v8[1];
      *a1 = v8[0];
      a1[1] = v7;
      return result;
    }
  }

  else
  {
    result = sub_25132B6C0(&v9, sub_25132B720);
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_251329A44()
{
  v1 = *v0;
  v2 = sub_25133F274();
  v53 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v52 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v51 = &v47[-v5];
  v6 = sub_25133F204();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = v1;
  v11 = *(v1 + class metadata base offset for ArticleContentConfigurationProvider.ActionHandler);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v8);
  v14 = &v47[-v13];
  v55 = v0;
  sub_2513298F4(v58);
  v15 = *(&v58[0] + 1);
  if (*(&v58[0] + 1))
  {
    v52 = v12;
    v49 = v2;
    v16 = *&v58[0];
    v17 = *(v54 + class metadata base offset for ArticleContentConfigurationProvider.ActionHandler + 8);
    (*(v17 + 8))(v11, v17);
    sub_25133F1A4();
    v18 = sub_25133F1D4();
    v50 = *(v7 + 8);
    v50(v10, v6);
    (*(v17 + 16))(&v56, v16, v15, v18, v11, v17);

    if (v57)
    {
      sub_25132AF18(&v56, v58);
      sub_25132A6B0(v58);
      sub_25133F1A4();
      v19 = sub_25133F1E4();
      v50(v10, v6);
      sub_25132A0B8(v58, v19);

      (*(v17 + 32))(v58, v11, v17);
      __swift_destroy_boxed_opaque_existential_1(v58);
      return (*(v52 + 1))(v14, v11);
    }

    else
    {
      v50 = v6;
      sub_25132B6C0(&v56, sub_25132ADA8);
      v32 = v51;
      sub_25133F244();

      v33 = sub_25133F264();
      v34 = sub_25133F994();

      v35 = os_log_type_enabled(v33, v34);
      v36 = v52;
      if (v35)
      {
        v37 = swift_slowAlloc();
        v48 = v34;
        v38 = v37;
        v39 = swift_slowAlloc();
        *&v58[0] = v39;
        *v38 = 136315394;
        v40 = sub_25133FD74();
        v42 = v33;
        v43 = sub_25132F394(v40, v41, v58);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        sub_25133F1A4();
        v44 = sub_25133F764();
        v46 = sub_25132F394(v44, v45, v58);

        *(v38 + 14) = v46;
        _os_log_impl(&dword_251318000, v42, v48, "[%s]: Received tap for article without underlying article: %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253072C40](v39, -1, -1);
        MEMORY[0x253072C40](v38, -1, -1);
      }

      else
      {
      }

      (*(v53 + 8))(v32, v49);
      return (*(v36 + 1))(v14, v11);
    }
  }

  else
  {
    v21 = v52;
    sub_25133F244();

    v22 = sub_25133F264();
    v23 = sub_25133F994();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v58[0] = v25;
      *v24 = 136315394;
      v26 = sub_25133FD74();
      v28 = sub_25132F394(v26, v27, v58);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      sub_25133F1A4();
      v29 = sub_25133F764();
      v31 = sub_25132F394(v29, v30, v58);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_251318000, v22, v23, "[%s]: Received tap for article without identifier: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253072C40](v25, -1, -1);
      MEMORY[0x253072C40](v24, -1, -1);
    }

    return (*(v53 + 8))(v21, v2);
  }
}

void sub_25132A0B8(void *a1, void *a2)
{
  v55 = a2;
  v4 = *v2;
  v5 = sub_25133F274();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25133F204();
  v7 = *(v56 - 8);
  v8 = MEMORY[0x28223BE20](v56);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v4;
  v11 = *(v4 + class metadata base offset for ArticleContentConfigurationProvider.ActionHandler);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v8);
  v14 = &v51 - v13;
  v16 = *(v15 + 8);
  (*(v16 + 8))(v11, v16);
  v17 = a1[3];
  v18 = a1[5];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 8))(v17, v18);
  v21 = v20;
  sub_25133F1A4();
  v22 = sub_25133F1D4();
  (*(v7 + 8))(v10, v56);
  v23 = (*(v16 + 24))(v19, v21, v22, v11, v16);

  (*(v12 + 8))(v14, v11);
  if (v23)
  {
    v24 = v57[3];
    v25 = v57[5];
    __swift_project_boxed_opaque_existential_1(v57, v24);
    v26 = (*(v25 + 16))(v24, v25);
    v28 = v27;
    v29 = objc_allocWithZone(type metadata accessor for HealthArticleViewController());
    v30 = HealthArticleViewController.init(title:components:)(v26, v28, v23);
    v31 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];
    [v31 setDelegate_];
    [v31 setModalPresentationStyle_];
    v32 = [v55 navigationController];
    if (v32)
    {
      v33 = v32;
      [v32 presentViewController:v31 animated:1 completion:0];
    }
  }

  else
  {
    v35 = v52;
    v34 = v53;
    v36 = v51;
    v37 = v54;
    sub_25133F244();
    sub_25132B608(v57, v59);
    v38 = sub_25133F264();
    v39 = sub_25133F994();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v58 = v41;
      *v40 = 136446466;
      v62 = v34;
      swift_getMetatypeMetadata();
      v42 = sub_25133F764();
      v44 = sub_25132F394(v42, v43, &v58);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = v60;
      v46 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v47 = (*(v46 + 8))(v45, v46);
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_1(v59);
      v50 = sub_25132F394(v47, v49, &v58);

      *(v40 + 14) = v50;
      _os_log_impl(&dword_251318000, v38, v39, "[%{public}s] No article components were found in presentArticle using identifier %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253072C40](v41, -1, -1);
      MEMORY[0x253072C40](v40, -1, -1);

      (*(v36 + 8))(v37, v35);
    }

    else
    {

      (*(v36 + 8))(v37, v35);
      __swift_destroy_boxed_opaque_existential_1(v59);
    }
  }
}

uint64_t sub_25132A634@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_25133F144();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_25132A6B0(uint64_t a1)
{
  v42 = *v1;
  v3 = sub_25133F274();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25133F0C4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25133F204();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25132B608(a1, v44);
  sub_25133F1A4();
  v14 = sub_25133F1E4();
  (*(v11 + 8))(v13, v10);
  v15 = [v14 traitCollection];

  sub_25133FA04();
  ArticleTapAnalyticsEvent.init(article:articleLocation:)(v44, v9, &v47);
  v16 = v47;
  v17 = v48;
  v18 = v49;
  v19 = v50;
  sub_25133F254();
  v20 = v16;

  v21 = v18;
  v22 = v19;
  v43 = v6;
  v23 = sub_25133F264();
  v24 = sub_25133F9B4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v40 = v3;
    v28 = v27;
    v47 = v27;
    *v26 = 136446466;
    v44[0] = v42;
    swift_getMetatypeMetadata();
    v29 = sub_25133F764();
    v31 = sub_25132F394(v29, v30, &v47);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v44[0] = v20;
    v44[1] = v17;
    v44[2] = v21;
    v45 = v22;
    v32 = v20;

    v33 = v21;
    v34 = v22;
    v35 = sub_25133F764();
    v37 = sub_25132F394(v35, v36, &v47);

    *(v26 + 14) = v37;
    _os_log_impl(&dword_251318000, v23, v24, "[%{public}s]: Submitting article tap analytics for: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253072C40](v28, -1, -1);
    MEMORY[0x253072C40](v26, -1, -1);

    (*(v41 + 8))(v43, v40);
  }

  else
  {

    (*(v4 + 8))(v43, v3);
  }

  v47 = v20;
  v48 = v17;
  v49 = v21;
  v50 = v22;
  v38 = sub_25133F054();
  v39 = sub_25133F044();
  v45 = v38;
  v46 = MEMORY[0x277D10CD0];
  v44[0] = v39;
  sub_25132B66C();
  sub_25133F064();
  __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t ArticleContentConfigurationProvider.ActionHandler.init(content:)(uint64_t a1)
{
  v2 = sub_25133F204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_25133F1B4();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t ArticleContentConfigurationProvider.ActionHandler.__deallocating_deinit()
{
  v0 = _s16HealthArticlesUI35ArticleContentConfigurationProviderC13ActionHandlerCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

void sub_25132ACA8()
{
  if (!qword_280DE6F60[0])
  {
    v0 = sub_25133F0E4();
    if (!v1)
    {
      atomic_store(v0, qword_280DE6F60);
    }
  }
}

void sub_25132ACF8(uint64_t a1)
{
  if (!qword_280DE6E90)
  {
    type metadata accessor for ArticleTileView(255);
    sub_25132B8AC(&qword_280DE7088, type metadata accessor for ArticleTileView, &protocol conformance descriptor for ArticleTileView);
    v1 = sub_25133F414();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE6E90);
    }
  }
}

unint64_t sub_25132ADDC()
{
  result = qword_27F42B2C8;
  if (!qword_27F42B2C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42B2C8);
  }

  return result;
}

void sub_25132AE48()
{
  if (!qword_27F42B2D0)
  {
    v0 = sub_25133F414();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B2D0);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_25132AF18(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_25132AF40(uint64_t a1)
{
  if (!qword_280DE6E98)
  {
    type metadata accessor for ArticleTileView(255);
    sub_25133F164();
    sub_25132B8AC(&qword_280DE7088, type metadata accessor for ArticleTileView, &protocol conformance descriptor for ArticleTileView);
    sub_25132B8AC(&qword_280DE6F50, MEMORY[0x277D11038], MEMORY[0x277D11030]);
    v1 = sub_25133F414();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE6E98);
    }
  }
}

unint64_t sub_25132B080()
{
  result = qword_280DE72A8;
  if (!qword_280DE72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72A8);
  }

  return result;
}

unint64_t sub_25132B0D8()
{
  result = qword_280DE7298;
  if (!qword_280DE7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE7298);
  }

  return result;
}

unint64_t sub_25132B130()
{
  result = qword_280DE72A0;
  if (!qword_280DE72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72A0);
  }

  return result;
}

uint64_t sub_25132B1A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25132B1E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25132B4B0()
{
  result = qword_27F42B2E0;
  if (!qword_27F42B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B2E0);
  }

  return result;
}

unint64_t sub_25132B508()
{
  result = qword_280DE72B8;
  if (!qword_280DE72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72B8);
  }

  return result;
}

unint64_t sub_25132B560()
{
  result = qword_280DE72C0;
  if (!qword_280DE72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72C0);
  }

  return result;
}

unint64_t sub_25132B5B4()
{
  result = qword_280DE72B0;
  if (!qword_280DE72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72B0);
  }

  return result;
}

uint64_t sub_25132B608(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25132B66C()
{
  result = qword_27F42B2E8;
  if (!qword_27F42B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B2E8);
  }

  return result;
}

uint64_t sub_25132B6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25132B754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25132B7B8()
{
  result = qword_27F42B2F8;
  if (!qword_27F42B2F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42B2F8);
  }

  return result;
}

uint64_t sub_25132B8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25132B92C(uint64_t a1, uint64_t a2)
{
  sub_25132BAF4(a1, a2);
  v3 = [v2 image];
  if (v3)
  {
    v15 = v3;
    [v3 size];
    if (v5 == 0.0 && v4 == 0.0)
    {
    }

    else
    {
      [v15 size];
      v7 = v6;
      [v15 size];
      v9 = v7 / v8;
      v10 = [v2 widthAnchor];
      v11 = [v2 heightAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 multiplier:v9];

      v13 = sub_25133F724();
      [v12 setIdentifier_];

      type metadata accessor for UILayoutPriority(0);
      sub_25132BD58();
      sub_25133F294();
      LODWORD(v14) = v16;
      [v12 setPriority_];
      [v12 setActive_];
    }
  }
}

void sub_25132BAF4(uint64_t a1, uint64_t a2)
{
  v3 = [v2 constraints];
  sub_25131C1BC();
  v4 = sub_25133F854();

  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_25133FB54();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_25:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253072420](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v17 = v7;
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_25133F8F4();
    sub_25133F8E4();
    sub_25133F894();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v9 = [v17 identifier];
    if (!v9)
    {

      goto LABEL_5;
    }

    v10 = v9;
    v11 = sub_25133F754();
    v13 = v12;

    if (v11 == a1 && v13 == a2)
    {
      break;
    }

    v14 = sub_25133FCB4();

    if (v14)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_25;
    }
  }

LABEL_19:

  [v17 setActive_];
}

unint64_t sub_25132BD58()
{
  result = qword_280DE7290;
  if (!qword_280DE7290)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE7290);
  }

  return result;
}

uint64_t sub_25132BDC8(void *a1, void *a2, uint64_t a3, char a4)
{
  sub_251327F10();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251341AB0;
  v9 = [a1 topAnchor];
  v10 = [a2 layoutMarginsGuide];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v12;
  v13 = [a1 leftAnchor];
  v14 = [a2 layoutMarginsGuide];
  v15 = [v14 leftAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [a1 bottomAnchor];
  v18 = [a2 layoutMarginsGuide];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = [a1 rightAnchor];
  v22 = [a2 layoutMarginsGuide];
  v23 = [v22 rightAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v8 + 56) = v24;
  if ((a4 & 1) == 0)
  {
    v25 = *&a3;
    v26 = [a1 heightAnchor];
    v27 = [v26 constraintEqualToConstant_];

    LODWORD(v28) = 1144750080;
    MEMORY[0x2530720B0]([v27 setPriority_]);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25133F864();
    }

    sub_25133F874();
  }

  return v8;
}

uint64_t sub_25132C0DC(void *a1, void *a2, uint64_t a3, char a4)
{
  sub_251327F10();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251341AB0;
  v9 = [a1 topAnchor];
  v10 = [a2 topAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v8 + 32) = v11;
  v12 = [a1 leftAnchor];
  v13 = [a2 layoutMarginsGuide];
  v14 = [v13 leftAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v8 + 40) = v15;
  v16 = [a1 bottomAnchor];
  v17 = [a2 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v8 + 48) = v18;
  v19 = [a1 rightAnchor];
  v20 = [a2 layoutMarginsGuide];
  v21 = [v20 rightAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v8 + 56) = v22;
  if ((a4 & 1) == 0)
  {
    v23 = *&a3;
    v24 = [a1 heightAnchor];
    v25 = [v24 constraintEqualToConstant_];

    LODWORD(v26) = 1144750080;
    MEMORY[0x2530720B0]([v25 setPriority_]);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25133F864();
    }

    sub_25133F874();
  }

  return v8;
}

uint64_t sub_25132C3C0(void *a1, void *a2, uint64_t a3, char a4)
{
  sub_251327F10();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251341AB0;
  v9 = [a1 topAnchor];
  v10 = [a2 topAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v8 + 32) = v11;
  v12 = [a1 leftAnchor];
  v13 = [a2 leftAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v8 + 40) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [a2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v8 + 48) = v17;
  v18 = [a1 rightAnchor];
  v19 = [a2 rightAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v8 + 56) = v20;
  if ((a4 & 1) == 0)
  {
    v21 = *&a3;
    v22 = [a1 heightAnchor];
    v23 = [v22 constraintEqualToConstant_];

    LODWORD(v24) = 1144750080;
    MEMORY[0x2530720B0]([v23 setPriority_]);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25133F864();
    }

    sub_25133F874();
  }

  return v8;
}

unint64_t sub_25132C69C()
{
  result = qword_27F42B308;
  if (!qword_27F42B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B308);
  }

  return result;
}

unint64_t sub_25132C6F4()
{
  result = qword_27F42B310;
  if (!qword_27F42B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B310);
  }

  return result;
}

unint64_t sub_25132C758()
{
  result = qword_27F42B318;
  if (!qword_27F42B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B318);
  }

  return result;
}

unint64_t sub_25132C7B0()
{
  result = qword_27F42B320;
  if (!qword_27F42B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B320);
  }

  return result;
}

BOOL sub_25132C848(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25132C878@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25132C8A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for MovementVisibilityState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MovementVisibilityState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

id sub_25132CBCC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SectionHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_25132CC24(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints] = v9;
  v10 = OBJC_IVAR____TtC16HealthArticlesUI9ImageView_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setContentMode_];
  [v11 setClipsToBounds_];

  [v11 setImage_];
  *&v4[v10] = v11;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ImageView();
  v12 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setPreservesSuperviewLayoutMargins_];
  v13 = OBJC_IVAR____TtC16HealthArticlesUI9ImageView_imageView;
  [v12 addSubview_];
  v14 = *&v12[v13];
  v15 = sub_25132BDC8(v14, v12, 0, 1);

  *&v12[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints] = v15;

  v16 = *&v12[v13];
  v17 = sub_25132C3C0(v16, v12, 0, 1);

  *&v12[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints] = v17;

  v18 = objc_opt_self();
  sub_25131C1BC();

  v19 = sub_25133F844();

  [v18 activateConstraints_];

  return v12;
}

void sub_25132CFC4(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16HealthArticlesUI9ImageView_imageView);
  [v4 setImage_];
  sub_25132B92C(0xD000000000000043, 0x8000000251342FD0);
  v5 = objc_opt_self();
  sub_25131C1BC();
  if (a2)
  {
    v6 = 3.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = sub_25133F844();

  [v5 deactivateConstraints_];

  v8 = sub_25133F844();

  [v5 activateConstraints_];

  v9 = [v4 layer];
  [v9 setCornerRadius_];
}

id sub_25132D148(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ImageView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_25132D1FC()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints) = v1;
  v2 = OBJC_IVAR____TtC16HealthArticlesUI9ImageView_imageView;
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setContentMode_];
  [v3 setClipsToBounds_];

  [v3 setImage_];
  *(v0 + v2) = v3;
  sub_25133FC14();
  __break(1u);
}

id sub_25132D310()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView;
  v2 = *&v0[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView];
  }

  else
  {
    v4 = sub_25132D5B8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_25132D374()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes);
    if (v2 != 7)
    {
      v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text);
      v5 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes);

      sub_25131C1AC(v2);
      sub_25132D400(v3, v1, &v5);

      return sub_25131BE80(v2);
    }
  }

  return result;
}

void sub_25132D400(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = v3;
  v5 = *a3;
  v6 = &v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes];
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes] = v5;
  sub_25131BE70(v5);
  sub_25131BE80(v7);
  v8 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v8);

  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_25133F724();
  type metadata accessor for Key(0);
  sub_25131DE90();
  v11 = sub_25133F6E4();

  v13 = [v9 initWithString:v10 attributes:v11];

  v12 = sub_25132D310();
  [v12 setAttributedText_];

  [v4 setNeedsLayout];
}

double sub_25132D568()
{
  [v0 layoutMargins];
  v2 = v1;
  [v0 layoutMargins];
  return v2;
}

id sub_25132D5B8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setBackgroundColor_];
  v3 = v2;
  [v3 setScrollEnabled_];
  [v3 setUserInteractionEnabled_];

  [v3 setEditable_];
  v4 = [a1 effectiveUserInterfaceLayoutDirection];
  if (v4 == 1)
  {
    v5 = 5.0;
  }

  else
  {
    v5 = -5.0;
  }

  if (v4 == 1)
  {
    v6 = -5.0;
  }

  else
  {
    v6 = 5.0;
  }

  [v3 setContentInset_];

  [v3 setTextContainerInset_];
  [v3 setAccessibilityTraits_];
  return v3;
}

void *sub_25132D704(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView] = 0;
  v9 = &v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes] = 7;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for DynamicHeightTextView();
  v10 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 setPreservesSuperviewLayoutMargins_];
  (*((*MEMORY[0x277D85000] & *v10) + 0xC8))(v11);
  [v10 setLayoutMargins_];
  v12 = sub_25132D310();
  [v10 addSubview_];

  v13 = objc_opt_self();
  v14 = *(v10 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView);
  sub_25132BDC8(v14, v10, 0, 1);

  sub_25131C1BC();
  v15 = sub_25133F844();

  [v13 activateConstraints_];

  sub_25131C208(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_251340BD0;
  v17 = sub_25133F2B4();
  v18 = MEMORY[0x277D74DB8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  MEMORY[0x2530722E0](v16, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  return v10;
}

id sub_25132DB64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicHeightTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

HealthArticlesUI::HealthArticleView __swiftcall HealthArticleView.init(title:components:)(Swift::String title, Swift::OpaquePointer components)
{
  *v2 = title;
  *(v2 + 16) = components;
  result.title = title;
  result.components = components;
  return result;
}

uint64_t HealthArticleView.init(articleProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id HealthArticleView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(type metadata accessor for HealthArticleViewController());

  v5 = HealthArticleViewController.init(title:components:)(v1, v2, v3);
  v6 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];

  return v6;
}

unint64_t sub_25132DD7C()
{
  result = qword_27F42B358;
  if (!qword_27F42B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B358);
  }

  return result;
}

id sub_25132DDD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(type metadata accessor for HealthArticleViewController());

  v5 = HealthArticleViewController.init(title:components:)(v1, v2, v3);
  v6 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];

  return v6;
}

uint64_t sub_25132DEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25132E068();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25132DF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25132E068();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25132DF94(uint64_t a1)
{
  sub_25132E068();
  sub_25133F4A4();
  __break(1u);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25132DFD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25132E018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25132E068()
{
  result = qword_27F42B360;
  if (!qword_27F42B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B360);
  }

  return result;
}

unint64_t HealthArticleTextAttributes.textAttributes.getter()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      v20 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      LODWORD(v21) = 1045220557;
      [v20 setHyphenationFactor_];
      [v20 setLineBreakStrategy_];
      sub_25132E71C(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_251341E10;
      v23 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      sub_251322098(0, &qword_280DE7278, 0x277D74300);
      v24 = v23;
      v25 = sub_25133FA54();
      v26 = *MEMORY[0x277D740C0];
      *(inited + 40) = v25;
      *(inited + 48) = v26;
      v27 = objc_opt_self();
      v28 = v26;
      v29 = [v27 labelColor];
      v30 = *MEMORY[0x277D74118];
      *(inited + 56) = v29;
      *(inited + 64) = v30;
      *(inited + 72) = v20;
      v31 = v30;
      v32 = sub_25132F924(inited);
      swift_setDeallocating();
      sub_2513303E0(0, &qword_27F42B190, MEMORY[0x277D84F68] + 8);
LABEL_19:
      swift_arrayDestroy();
      goto LABEL_20;
    }

    if (v1 == 1 || v1 == 2)
    {
      sub_25132E71C(0);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v49 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      sub_251322098(0, &qword_280DE7278, 0x277D74300);
      v50 = v49;
      v51 = sub_25133FA54();
      v52 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v51;
      *(v2 + 48) = v52;
      v53 = objc_opt_self();
      v54 = v52;
      v11 = [v53 labelColor];
      goto LABEL_18;
    }
  }

  else if (v1 > 4)
  {
    if (v1 == 5)
    {
      sub_25132E71C(0);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v41 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      v42 = objc_opt_self();
      v43 = *MEMORY[0x277D76938];
      v44 = v41;
      v45 = [v42 preferredFontForTextStyle_];
      v46 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v45;
      *(v2 + 48) = v46;
      v47 = objc_opt_self();
      v48 = v46;
      v11 = [v47 secondaryLabelColor];
      goto LABEL_18;
    }

    if (v1 == 6)
    {
      sub_25132E71C(0);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v12 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      v13 = objc_opt_self();
      v14 = *MEMORY[0x277D76918];
      v15 = v12;
      v16 = [v13 preferredFontForTextStyle_];
      v17 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v16;
      *(v2 + 48) = v17;
      v18 = objc_opt_self();
      v19 = v17;
      v11 = [v18 systemBlueColor];
      goto LABEL_18;
    }
  }

  else
  {
    if (v1 == 3)
    {
      sub_25132E71C(0);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v33 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      v34 = objc_opt_self();
      v35 = *MEMORY[0x277D76918];
      v36 = v33;
      v37 = [v34 preferredFontForTextStyle_];
      v38 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v37;
      *(v2 + 48) = v38;
      v39 = objc_opt_self();
      v40 = v38;
      v11 = [v39 labelColor];
      goto LABEL_18;
    }

    if (v1 == 4)
    {
      sub_25132E71C(0);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v3 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      v4 = objc_opt_self();
      v5 = *MEMORY[0x277D76918];
      v6 = v3;
      v7 = [v4 preferredFontForTextStyle_];
      v8 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v7;
      *(v2 + 48) = v8;
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 whiteColor];
LABEL_18:
      *(v2 + 56) = v11;
      v32 = sub_25132F924(v2);
      swift_setDeallocating();
      sub_2513303E0(0, &qword_27F42B190, MEMORY[0x277D84F68] + 8);
      goto LABEL_19;
    }
  }

  v32 = *v0;
LABEL_20:
  sub_25131BE70(v1);
  return v32;
}

void sub_25132E71C(uint64_t a1)
{
  if (!qword_27F42B188)
  {
    sub_2513303E0(255, &qword_27F42B190, MEMORY[0x277D84F68] + 8);
    v1 = sub_25133FCA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B188);
    }
  }
}

_OWORD *sub_25132E788(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_251330284(0, &qword_27F42B390, MEMORY[0x277D84F70] + 8);
    v1 = sub_25133FC54();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_251323A54((v25 + 8), v23);
    sub_251323A54(v23, v25);
    sub_25133F754();
    sub_25133FCF4();
    sub_25133F7B4();
    v14 = sub_25133FD24();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_251323A54(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_25132EA44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_251330448(0);
    v1 = sub_25133FC54();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    sub_2513304E8(0);
    v13 = v12;

    swift_dynamicCast();
    sub_251323A54((v25 + 8), v23);
    sub_251323A54(v23, v25);
    sub_25133F754();
    sub_25133FCF4();
    sub_25133F7B4();
    v14 = sub_25133FD24();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_251323A54(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25132ECE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_251330230(0, &qword_27F42B380, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
    v1 = sub_25133FC54();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v4)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_251323A54(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_251323A54(v29, v30);
    result = sub_25133FB74();
    v14 = -1 << *(v1 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v1 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    result = sub_251323A54(v30, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t HealthArticleTextAttributes.attributeContainer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25133F274();
  MEMORY[0x28223BE20](v2);
  v3 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v3);

  swift_getKeyPath();
  sub_25133EEC4();
  sub_251330320(&qword_27F42B128, MEMORY[0x277D74A38], MEMORY[0x277D74A30]);
  sub_25133EF84();
  v4 = sub_25133EF74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_25132F364@<X0>(uint64_t *a1@<X8>)
{
  sub_25133EED4();
  result = sub_25133EEC4();
  *a1 = result;
  return result;
}

unint64_t sub_25132F394(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25132F460(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251330688(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25132F460(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25132F56C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25133FBB4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25132F56C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25132F5B8(a1, a2);
  sub_25132F6E8(&unk_28635DA10);
  return v3;
}

void *sub_25132F5B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25132F7D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25133FBB4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25133F7E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25132F7D4(v10, 0);
        result = sub_25133FB84();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25132F6E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25132F83C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25132F7D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2513306E4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25132F83C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2513306E4();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25132F924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330284(0, &qword_27F42B2A8, MEMORY[0x277D84F68] + 8);
    v3 = sub_25133FC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_251328050();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FA24()
{
  result = qword_27F42B368;
  if (!qword_27F42B368)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F42B368);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16HealthArticlesUI0A21ArticleTextAttributesO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25132FA84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25132FAE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_25132FB30(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_25132FB60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330230(0, &qword_27F42B370, MEMORY[0x277D837D0], MEMORY[0x277D84F70] + 8, MEMORY[0x277D837E0]);
    v3 = sub_25133FC54();
    v4 = a1 + 32;

    while (1)
    {
      sub_251330044(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_251326E24(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251323A54(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FC88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2513305EC(0);
    v3 = sub_25133FC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_251328050();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FD68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330540(0);
    v3 = sub_25133FC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_251328050();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FE54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330284(0, &qword_27F42B390, MEMORY[0x277D84F70] + 8);
    v3 = sub_25133FC54();
    v4 = a1 + 32;

    while (1)
    {
      sub_251330368(v4, &v11);
      v5 = v11;
      result = sub_251328050();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251323A54(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FF64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251327D84(0);
    v3 = sub_25133FC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_251326F2C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_251330044(uint64_t a1, uint64_t a2)
{
  sub_2513300A8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2513300A8()
{
  if (!qword_27F42B378)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B378);
    }
  }
}

unint64_t sub_25133010C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330230(0, &qword_27F42B388, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    v3 = sub_25133FC54();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_251326E24(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_251330230(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_25133FC64();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251330284(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for Key(255);
    sub_251330320(&qword_27F42B2B0, type metadata accessor for Key, &unk_251340D94);
    v4 = sub_25133FC64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251330320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251330368(uint64_t a1, uint64_t a2)
{
  sub_2513303E0(0, &qword_27F42B148, MEMORY[0x277D84F70] + 8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2513303E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251330448(uint64_t a1)
{
  if (!qword_27F42B398)
  {
    type metadata accessor for AttributeName(255);
    sub_251330320(&qword_27F42AEB8, type metadata accessor for AttributeName, &unk_251341320);
    v1 = sub_25133FC64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B398);
    }
  }
}

void sub_2513304E8(uint64_t a1)
{
  if (!qword_27F42B180)
  {
    sub_251324518(255);
    v1 = sub_25133F884();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B180);
    }
  }
}

void sub_251330540(uint64_t a1)
{
  if (!qword_27F42B3A0)
  {
    type metadata accessor for AttributeName(255);
    sub_2513304E8(255);
    sub_251330320(&qword_27F42AEB8, type metadata accessor for AttributeName, &unk_251341320);
    v1 = sub_25133FC64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B3A0);
    }
  }
}

void sub_2513305EC(uint64_t a1)
{
  if (!qword_27F42B3A8)
  {
    type metadata accessor for FeatureKey(255);
    sub_251330320(&qword_27F42AEC8, type metadata accessor for FeatureKey, &unk_251341364);
    v1 = sub_25133FC64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42B3A8);
    }
  }
}

uint64_t sub_251330688(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2513306E4()
{
  if (!qword_27F42B3B0)
  {
    v0 = sub_25133FCA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B3B0);
    }
  }
}

uint64_t static ArticleMutualExclusionPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25133FCB4();
  }
}

uint64_t sub_25133078C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_25133FCB4();
  }

  return 1;
}

uint64_t HealthArticleInformationProviding.articleAutomationIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v6 = sub_25133F754();
  MEMORY[0x253072050](0x656C63697472412ELL, 0xE90000000000002ELL);
  v4 = (*(a2 + 8))(a1, a2);
  MEMORY[0x253072050](v4);

  return v6;
}

uint64_t HealthArticleInformationProviding.feedItemIdentifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a2, a3);
  MEMORY[0x253072050](95, 0xE100000000000000);
  v3 = sub_25133F034();
  MEMORY[0x253072050](v3);

  return v5;
}

uint64_t get_enum_tag_for_layout_string_16HealthArticlesUI28ArticleMutualExclusionPolicyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_251330950(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2513309A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_251330A00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t ArticleTileView.ViewModel.init(title:description:backgroundImage:cellState:automationIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t ArticleTileView.init(_:cellState:)@<X0>(_OWORD *a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  v5 = MEMORY[0x277CDF458];
  sub_2513326D8(0, &qword_280DE6F40, sub_25132B81C, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ArticleTileView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_2513326D8(0, &qword_280DE6F48, MEMORY[0x277CDFA28], v5);
  swift_storeEnumTagMultiPayload();
  v8 = v6[6];
  *(a3 + v8) = swift_getKeyPath();
  sub_2513326D8(0, &qword_27F42B300, MEMORY[0x277D10E70], v5);
  swift_storeEnumTagMultiPayload();
  v9 = (a3 + v6[7]);
  v10 = a1[1];
  *v9 = *a1;
  v9[1] = v10;
  v11 = a1[3];
  v9[2] = a1[2];
  v9[3] = v11;
  v12 = (a3 + v6[8]);
  sub_25133F114();
  sub_25133327C(&qword_280DE6F58, MEMORY[0x277D10F38], MEMORY[0x277D10F30]);
  result = sub_25133F304();
  *v12 = result;
  v12[1] = v14;
  return result;
}

uint64_t ArticleTileView.ViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleTileView.ViewModel.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArticleTileView.ViewModel.baseIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArticleTileView.ViewModel.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ArticleTileView.viewModel.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleTileView(0) + 28));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_25132B850(v9, &v8);
}

uint64_t ArticleTileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_25133F434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513328F8(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513332EC(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_25133F3D4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_251333800(0, &qword_280DE6F20, sub_25133298C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_2513310BC(v1, &v9[*(v15 + 44)]);
  v16 = sub_25133327C(&qword_280DE6E40, sub_2513328F8, MEMORY[0x277CE1198]);
  sub_25133F584();
  sub_2513337A0(v9, sub_2513328F8);
  sub_25133F424();
  v18[2] = v7;
  v18[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_25133F5C4();
  (*(v3 + 8))(v5, v2);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2513310BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  sub_251332CF8(0);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = (&v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251332CD0(0);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v92 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332C44(0);
  v91 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v94 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v78 - v11;
  MEMORY[0x28223BE20](v10);
  v93 = &v78 - v12;
  sub_251332A94(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332A6C(0);
  *&v84 = v16;
  MEMORY[0x28223BE20](v16);
  v83 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332A38(0);
  v82 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v90 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v81 = &v78 - v22;
  MEMORY[0x28223BE20](v21);
  v87 = &v78 - v23;
  sub_25133F8F4();
  v88 = sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = type metadata accessor for ArticleTileView(0);
  v25 = (a1 + *(v24 + 28));
  v26 = v25[1];
  v27 = v25[3];
  v103 = v25[2];
  v104 = v27;
  v28 = v25[1];
  v102[0] = *v25;
  v102[1] = v28;
  v109 = v102[0];
  v110 = v26;
  v29 = v25[3];
  v111 = v103;
  v112 = v29;
  sub_25132B850(v102, v105);
  sub_251331A2C(&v109);
  v105[0] = v109;
  v105[1] = v110;
  v105[2] = v111;
  v105[3] = v112;
  sub_25132B02C(v105);
  v78 = *(a1 + *(v24 + 32));
  v79 = v15;
  sub_25133F114();
  sub_25133327C(&qword_280DE6F58, MEMORY[0x277D10F38], MEMORY[0x277D10F30]);
  sub_25133F314();
  swift_getKeyPath();
  v80 = a1;
  sub_25133F324();

  v100 = v109;
  v101 = v110;
  sub_2513336E8(0, &qword_280DE6E30, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
  v31 = v30;
  MEMORY[0x253071EC0](&v99);

  sub_25133F314();
  swift_getKeyPath();
  sub_25133F324();

  v97 = v106;
  v98 = v107;
  MEMORY[0x253071EC0](&v96, v31);

  sub_25133F664();
  sub_25133F2E4();
  v32 = v83;
  sub_251333680(v79, v83, sub_251332A94);
  v33 = (v32 + *(v84 + 36));
  v34 = v107;
  *v33 = v106;
  v33[1] = v34;
  v33[2] = v108;
  v35 = v32;
  v36 = v81;
  sub_251333680(v35, v81, sub_251332A6C);
  *(v36 + *(v82 + 36)) = 0;
  v37 = v87;
  sub_251333680(v36, v87, sub_251332A38);
  v38 = v25[1];
  v109 = *v25;
  v110 = v38;
  v39 = v25[3];
  v111 = v25[2];
  v112 = v39;
  v40 = sub_25133F3C4();
  v41 = v86;
  *v86 = v40;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  sub_251333800(0, &qword_280DE6F30, sub_251332D8C, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_251331C64(&v109, v80, v41 + *(v42 + 44));
  sub_2513336E8(0, &qword_27F42B3E0, MEMORY[0x277CE0910], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v84 = xmmword_251341600;
  *(inited + 16) = xmmword_251341600;
  LOBYTE(v31) = sub_25133F504();
  *(inited + 32) = v31;
  v44 = sub_25133F514();
  *(inited + 33) = v44;
  v45 = sub_25133F534();
  sub_25133F534();
  if (sub_25133F534() != v31)
  {
    v45 = sub_25133F534();
  }

  sub_25133F534();
  if (sub_25133F534() != v44)
  {
    v45 = sub_25133F534();
  }

  v46 = v92;
  sub_25133F2C4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_251333738(v41, v46, sub_251332CF8);
  v55 = v46 + *(v85 + 36);
  *v55 = v45;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = swift_initStackObject();
  *(v56 + 16) = v84;
  v57 = sub_25133F524();
  *(v56 + 32) = v57;
  v58 = sub_25133F544();
  *(v56 + 33) = v58;
  v59 = sub_25133F534();
  sub_25133F534();
  if (sub_25133F534() != v57)
  {
    v59 = sub_25133F534();
  }

  sub_25133F534();
  if (sub_25133F534() != v58)
  {
    v59 = sub_25133F534();
  }

  sub_25133F2C4();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v89;
  sub_251333738(v46, v89, sub_251332CD0);
  v69 = v68 + *(v91 + 36);
  *v69 = v59;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  v70 = v93;
  sub_251333738(v68, v93, sub_251332C44);
  v71 = v90;
  sub_251333944(v37, v90, sub_251332A38);
  v72 = v94;
  sub_25133386C(v70, v94, sub_251332C44);
  v73 = v95;
  sub_251333944(v71, v95, sub_251332A38);
  sub_2513329C0(0);
  v75 = v74;
  sub_25133386C(v72, v73 + *(v74 + 48), sub_251332C44);
  v76 = v73 + *(v75 + 64);
  *v76 = 0;
  *(v76 + 8) = 1;
  sub_2513337A0(v70, sub_251332C44);
  sub_2513338E4(v37, sub_251332A38);
  sub_2513337A0(v72, sub_251332C44);
  sub_2513338E4(v71, sub_251332A38);
}

uint64_t sub_251331A2C(uint64_t a1)
{
  v3 = sub_25133F604();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332A94(0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  sub_25133F5F4();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v11 = sub_25133F614();

  (*(v4 + 8))(v6, v3);
  v15[3] = v11;
  v15[4] = 0;
  v16 = 257;
  v12 = v1 + *(type metadata accessor for ArticleTileView(0) + 28);
  v13 = *(v12 + 56);
  v15[1] = *(v12 + 48);
  v15[2] = v13;

  MEMORY[0x253072050](0x6567616D492ELL, 0xE600000000000000);
  sub_251332B3C();
  sub_2513339AC();
  sub_25133F5D4();

  sub_25133F344();
  return sub_2513338E4(v9, sub_251332A94);
}

uint64_t sub_251331C64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251332E28(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v11 = sub_25133F3D4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_251333800(0, &qword_280DE6F28, sub_251332EBC, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_251331E3C(a1, a2, &v11[*(v12 + 44)]);
  sub_25133386C(v11, v9, sub_251332E28);
  sub_25133386C(v9, a3, sub_251332E28);
  sub_251332DC0(0);
  v14 = a3 + *(v13 + 48);
  *v14 = 0;
  *(v14 + 8) = 1;
  sub_2513337A0(v11, sub_251332E28);
  sub_2513337A0(v9, sub_251332E28);
}

uint64_t sub_251331E3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  sub_2513332C4(0);
  v59 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v54 - v8;
  sub_25133300C(0);
  v56 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332F60(0);
  v55 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v54 - v15;
  sub_25133F8F4();
  v58 = sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = a1[1];
  *&v66 = *a1;
  *(&v66 + 1) = v16;
  v54 = sub_2513236B4();

  v17 = sub_25133F574();
  v19 = v18;
  *&v66 = v17;
  *(&v66 + 1) = v18;
  v21 = v20 & 1;
  LOBYTE(v67) = v20 & 1;
  *(&v67 + 1) = v22;
  v23 = a2 + *(type metadata accessor for ArticleTileView(0) + 28);
  v24 = *(v23 + 56);
  v64 = *(v23 + 48);
  v25 = v64;
  v65 = v24;

  MEMORY[0x253072050](0x656C7469542ELL, 0xE600000000000000);
  sub_25133F5D4();

  sub_2513338D4(v17, v19, v21);

  v26 = sub_25133F564();
  KeyPath = swift_getKeyPath();
  v28 = v56;
  v29 = &v11[*(v56 + 36)];
  *v29 = KeyPath;
  v29[1] = v26;
  sub_25133311C();
  v30 = v57;
  sub_25133F5E4();
  sub_2513338E4(v11, sub_25133300C);
  LOBYTE(v26) = sub_25133F514();
  sub_25133F2C4();
  v31 = v30 + *(v55 + 36);
  *v31 = v26;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  *(v31 + 24) = v34;
  *(v31 + 32) = v35;
  *(v31 + 40) = 0;
  v36 = a1[3];
  *&v66 = a1[2];
  *(&v66 + 1) = v36;

  v37 = sub_25133F574();
  v39 = v38;
  *&v66 = v37;
  *(&v66 + 1) = v38;
  v41 = v40 & 1;
  LOBYTE(v67) = v40 & 1;
  *(&v67 + 1) = v42;
  v64 = v25;
  v65 = v24;

  MEMORY[0x253072050](0x706972637365442ELL, 0xEC0000006E6F6974);
  v43 = v61;
  sub_25133F5D4();

  sub_2513338D4(v37, v39, v41);

  v44 = sub_25133F554();
  v45 = swift_getKeyPath();
  v46 = (v43 + *(v28 + 36));
  *v46 = v45;
  v46[1] = v44;
  sub_25133F654();
  sub_25133F2E4();
  v47 = v60;
  v48 = (v43 + *(v59 + 36));
  v49 = v67;
  *v48 = v66;
  v48[1] = v49;
  v48[2] = v68;
  sub_25133386C(v30, v47, sub_251332F60);
  v50 = v63;
  sub_251333944(v43, v63, sub_2513332C4);
  v51 = v62;
  sub_25133386C(v47, v62, sub_251332F60);
  sub_251332EF0(0);
  sub_251333944(v50, v51 + *(v52 + 48), sub_2513332C4);
  sub_2513338E4(v43, sub_2513332C4);
  sub_2513337A0(v30, sub_251332F60);
  sub_2513338E4(v50, sub_2513332C4);
  sub_2513337A0(v47, sub_251332F60);
}

uint64_t sub_251332368@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_25133F434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513328F8(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513332EC(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_25133F3D4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_251333800(0, &qword_280DE6F20, sub_25133298C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_2513310BC(v1, &v9[*(v15 + 44)]);
  v16 = sub_25133327C(&qword_280DE6E40, sub_2513328F8, MEMORY[0x277CE1198]);
  sub_25133F584();
  sub_2513337A0(v9, sub_2513328F8);
  sub_25133F424();
  v18[2] = v7;
  v18[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_25133F5C4();
  (*(v3 + 8))(v5, v2);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_25133263C(uint64_t a1)
{
  sub_25132B81C(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_251333944(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_25132B81C);
  return sub_25133F394();
}

void sub_2513326D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ArticleTileView(uint64_t a1)
{
  result = qword_280DE7078;
  if (!qword_280DE7078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251332828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_2513328F8(uint64_t a1)
{
  if (!qword_280DE6E38)
  {
    sub_25133298C(255);
    sub_25133327C(&qword_280DE6E10, sub_25133298C, MEMORY[0x277CE14C0]);
    v1 = sub_25133F634();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE6E38);
    }
  }
}

void sub_2513329C0(uint64_t a1)
{
  if (!qword_280DE6EA8)
  {
    sub_251332A38(255);
    sub_251332C44(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280DE6EA8);
    }
  }
}

void sub_251332AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_25133F354();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251332B3C()
{
  if (!qword_280DE6EF0)
  {
    v0 = sub_25133F354();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6EF0);
    }
  }
}

void sub_251332B94(uint64_t a1)
{
  if (!qword_280DE6F38)
  {
    sub_251332BF0();
    v1 = sub_25133F2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE6F38);
    }
  }
}

unint64_t sub_251332BF0()
{
  result = qword_280DE6E28;
  if (!qword_280DE6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6E28);
  }

  return result;
}