void sub_29D76499C(uint64_t a1)
{
  if (!qword_2A17B3FA8)
  {
    sub_29D764AA0(255, &qword_2A17B3FB0, MEMORY[0x29EDBC870], MEMORY[0x29EDBC868], MEMORY[0x29EDBC738]);
    sub_29D727614(255);
    sub_29D727690();
    sub_29D764AF4();
    sub_29D764B78(&qword_2A17B3FC0, sub_29D727614, MEMORY[0x29EDBC340]);
    v1 = sub_29D938878();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3FA8);
    }
  }
}

void sub_29D764AA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D764AF4()
{
  result = qword_2A17B3FB8;
  if (!qword_2A17B3FB8)
  {
    sub_29D764AA0(255, &qword_2A17B3FB0, MEMORY[0x29EDBC870], MEMORY[0x29EDBC868], MEMORY[0x29EDBC738]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FB8);
  }

  return result;
}

uint64_t sub_29D764B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D764BC0(uint64_t a1)
{
  if (!qword_2A17B3FD0)
  {
    sub_29D764C20(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3FD0);
    }
  }
}

void sub_29D764C20(uint64_t a1)
{
  if (!qword_2A17B3FD8)
  {
    sub_29D764AA0(255, &qword_2A17B3FB0, MEMORY[0x29EDBC870], MEMORY[0x29EDBC868], MEMORY[0x29EDBC738]);
    sub_29D727690();
    sub_29D764AF4();
    v1 = sub_29D938698();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3FD8);
    }
  }
}

unint64_t sub_29D764CD4()
{
  result = qword_2A17B3FE0;
  if (!qword_2A17B3FE0)
  {
    sub_29D7645A8(255);
    sub_29D764D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FE0);
  }

  return result;
}

unint64_t sub_29D764D54()
{
  result = qword_2A17B3FE8;
  if (!qword_2A17B3FE8)
  {
    sub_29D76464C(255, &qword_2A17B3F70, sub_29D7646D0, sub_29D764908, MEMORY[0x29EDBC558]);
    sub_29D764E48();
    sub_29D764B78(&qword_2A17B4018, sub_29D764908, MEMORY[0x29EDBC7E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FE8);
  }

  return result;
}

unint64_t sub_29D764E48()
{
  result = qword_2A17B3FF0;
  if (!qword_2A17B3FF0)
  {
    sub_29D7646D0(255);
    sub_29D764EF8();
    sub_29D764B78(&qword_2A17B4010, sub_29D76488C, MEMORY[0x29EDBC920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FF0);
  }

  return result;
}

unint64_t sub_29D764EF8()
{
  result = qword_2A17B3FF8;
  if (!qword_2A17B3FF8)
  {
    sub_29D764718(255);
    sub_29D764FA8();
    sub_29D764B78(&qword_2A17B4008, sub_29D764858, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3FF8);
  }

  return result;
}

unint64_t sub_29D764FA8()
{
  result = qword_2A17B4000;
  if (!qword_2A17B4000)
  {
    sub_29D764760(255);
    sub_29D69D430();
    sub_29D764B78(&qword_2A17B2448, sub_29D727974, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4000);
  }

  return result;
}

unint64_t sub_29D765058()
{
  result = qword_2A17B4020;
  if (!qword_2A17B4020)
  {
    sub_29D764BC0(255);
    sub_29D764B78(&qword_2A17B4028, sub_29D764C20, MEMORY[0x29EDBC340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4020);
  }

  return result;
}

uint64_t sub_29D765108(uint64_t a1, uint64_t a2)
{
  sub_29D76464C(0, &qword_2A17B3F70, sub_29D7646D0, sub_29D764908, MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7651B0(uint64_t a1, uint64_t a2)
{
  sub_29D7645A8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D765214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D76527C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D7652DC()
{
  result = qword_2A17B4030;
  if (!qword_2A17B4030)
  {
    sub_29D76464C(255, &qword_2A17B4038, sub_29D7645A8, sub_29D764BC0, MEMORY[0x29EDBC7F0]);
    sub_29D764CD4();
    sub_29D765058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4030);
  }

  return result;
}

id sub_29D765420()
{
  v1 = *&v0[OBJC_IVAR____TtC5Heart20BulletedIconListView_bulletedItems];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v41 = MEMORY[0x29EDCA190];
    sub_29D93AAD8();
    v4 = (v1 + 32);
    v5 = type metadata accessor for BulletedIconView();
    for (i = v2 - 1; ; --i)
    {
      v7 = v4[1];
      v35 = *v4;
      v36 = v7;
      v8 = v4[2];
      v9 = v4[3];
      v10 = v4[4];
      v40 = *(v4 + 10);
      v38 = v9;
      v39 = v10;
      v37 = v8;
      v11 = objc_allocWithZone(v5);
      *&v11[OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___iconView] = 0;
      *&v11[OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___textLabel] = 0;
      *&v11[OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___stackView] = 0;
      v12 = &v11[OBJC_IVAR____TtC5Heart16BulletedIconView_item];
      v13 = v36;
      *v12 = v35;
      *(v12 + 1) = v13;
      v15 = v38;
      v14 = v39;
      v16 = v37;
      *(v12 + 10) = v40;
      *(v12 + 3) = v15;
      *(v12 + 4) = v14;
      *(v12 + 2) = v16;
      sub_29D7664A4(&v35, v34);
      sub_29D7664A4(&v35, v34);
      v33.receiver = v11;
      v33.super_class = v5;
      v17 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v18 = sub_29D765ACC();
      v19 = sub_29D765828();
      [v18 addArrangedSubview_];

      v20 = OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___stackView;
      v21 = *&v17[OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___stackView];
      v22 = sub_29D76596C();
      [v21 addArrangedSubview_];

      [v17 addSubview_];
      [*&v17[v20] hk:v17 alignConstraintsWithView:?];
      v23 = *&v17[OBJC_IVAR____TtC5Heart16BulletedIconView_item + 80] ? sub_29D939D28() : 0;
      [v17 setAccessibilityIdentifier_];

      sub_29D7664DC(&v35);
      sub_29D93AAB8();
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
      if (!i)
      {
        break;
      }

      v4 = (v4 + 88);
    }

    v3 = v41;
    v0 = v32;
  }

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (j = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_29D93A928())
  {
    v25 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x29ED6AE30](v25, v3);
      }

      else
      {
        if (v25 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v26 = *(v3 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = sub_29D7653A0();
      [v29 addArrangedSubview_];

      ++v25;
      if (v28 == j)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v30 = sub_29D7653A0();
  [v0 addSubview_];

  return [*&v0[OBJC_IVAR____TtC5Heart20BulletedIconListView____lazy_storage___stackView] hk:v0 alignConstraintsWithView:?];
}

id sub_29D765828()
{
  v1 = OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView____lazy_storage___iconView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 48);
    v22 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 32);
    v23 = v4;
    v24 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 64);
    v25 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 80);
    v5 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item + 16);
    v20 = *(v0 + OBJC_IVAR____TtC5Heart16BulletedIconView_item);
    v21 = v5;
    v6 = type metadata accessor for BulletCircleImageView();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC5Heart21BulletCircleImageView____lazy_storage___iconView] = 0;
    v8 = &v7[OBJC_IVAR____TtC5Heart21BulletCircleImageView_item];
    v9 = v21;
    *v8 = v20;
    *(v8 + 1) = v9;
    v11 = v23;
    v10 = v24;
    v12 = v22;
    *(v8 + 10) = v25;
    *(v8 + 3) = v11;
    *(v8 + 4) = v10;
    *(v8 + 2) = v12;
    sub_29D7664A4(&v20, v19);
    v18.receiver = v7;
    v18.super_class = v6;
    v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v14 = v0;
    sub_29D766120();
    [v13 setOpaque_];

    v15 = *(v0 + v1);
    *(v14 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_29D76598C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v1 setFont_];

  v3 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setNumberOfLines_];
  LODWORD(v4) = 1132068864;
  [v1 setContentHuggingPriority:0 forAxis:v4];
  v5 = sub_29D939D28();
  [v1 setText_];

  return v1;
}

id sub_29D765AE4(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    [v11 setAlignment_];
    [v11 setAxis_];
    [v11 setSpacing_];
    v12 = *(v4 + v5);
    *(v4 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v13 = v6;
  return v7;
}

id sub_29D765D44()
{
  result = [objc_opt_self() systemGray5Color];
  qword_2A17B4040 = result;
  return result;
}

id sub_29D765DA0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D765E04(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v3 = a1 + OBJC_IVAR____TtC5Heart21BulletCircleImageView_item;
  [v2 setImage_];
  [v2 setContentMode_];
  if (*(v3 + 24))
  {
    [v2 setTintColor_];
  }

  v4 = *(v3 + 32);
  if (v4 && (*(v3 + 48) & 1) == 0 && (*(v3 + 64) & 1) == 0)
  {
    v5 = *(v3 + 56);
    v6 = *(v3 + 40);
    v7 = objc_opt_self();
    v8 = v4;
    v9 = [v7 configurationWithPointSize:v5 weight:v6];
    sub_29D6A0C58();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D940030;
    *(v10 + 32) = v8;
    sub_29D69567C(0, &qword_2A17B2CE8, 0x29EDC7A00);
    v11 = v8;
    v12 = sub_29D939F18();

    v13 = [v7 configurationWithPaletteColors_];

    v14 = [v9 configurationByApplyingConfiguration_];
    [v2 setPreferredSymbolConfiguration_];
  }

  return v2;
}

void sub_29D766120()
{
  v1 = sub_29D765D80();
  [v0 addSubview_];

  [*&v0[OBJC_IVAR____TtC5Heart21BulletCircleImageView____lazy_storage___iconView] hk:v0 alignConstraintsWithView:?];
  v2 = [v0 heightAnchor];
  v3 = [v2 constraintEqualToConstant_];

  v4 = [v0 widthAnchor];
  v5 = [v4 constraintEqualToConstant_];

  sub_29D6A0C58();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D941B10;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v7 = v5;
  v8 = v3;
  v9 = sub_29D939F18();

  [v0 addConstraints_];
}

id sub_29D7662F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 sub_29D7663D4(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D7663F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_29D766440(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29D76650C(uint64_t *a1, int a2)
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

uint64_t sub_29D766554(uint64_t result, int a2, int a3)
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

uint64_t sub_29D7665A0(uint64_t a1, uint64_t (*a2)(void))
{
  v39 = *MEMORY[0x29EDBA650];
  v38 = &v39;
  v4 = sub_29D76C424(sub_29D714870, v37, a1);
  if (v4)
  {
LABEL_2:
    if (qword_2A17B0D68 == -1)
    {
LABEL_3:
      v36 = 0xE000000000000000;
      return sub_29D9334A8();
    }

LABEL_39:
    swift_once();
    goto LABEL_3;
  }

  v39 = *MEMORY[0x29EDBA5D8];
  MEMORY[0x2A1C7C4A8](v4, v5);
  v36 = &v39;
  v6 = sub_29D76C424(sub_29D714870, v35, a1);
  if (v6 & 1) != 0 || (v39 = *MEMORY[0x29EDBA5F0], MEMORY[0x2A1C7C4A8](v6, v7), v36 = &v39, v8 = sub_29D76C424(sub_29D714870, v35, a1), (v8))
  {
LABEL_6:
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v36 = 0xE000000000000000;
    return sub_29D9334A8();
  }

  v39 = *MEMORY[0x29EDBA5C0];
  MEMORY[0x2A1C7C4A8](v8, v9);
  v36 = &v39;
  v11 = sub_29D76C424(sub_29D714870, v35, a1);
  if (v11)
  {
LABEL_11:
    if (a2())
    {
      if (qword_2A17B0D68 != -1)
      {
        swift_once();
      }

      v36 = 0xE000000000000000;
    }

    else
    {
      if (qword_2A17B0D68 != -1)
      {
        swift_once();
      }

      v36 = 0xE000000000000000;
    }

    return sub_29D9334A8();
  }

  v39 = *MEMORY[0x29EDBA5D0];
  MEMORY[0x2A1C7C4A8](v11, v12);
  v36 = &v39;
  v13 = sub_29D76C424(sub_29D714870, v35, a1);
  if (v13)
  {
    goto LABEL_6;
  }

  v39 = *MEMORY[0x29EDBA5E8];
  MEMORY[0x2A1C7C4A8](v13, v14);
  v36 = &v39;
  v15 = sub_29D76C424(sub_29D714870, v35, a1);
  if (v15)
  {
    goto LABEL_6;
  }

  v39 = *MEMORY[0x29EDBA640];
  MEMORY[0x2A1C7C4A8](v15, v16);
  v36 = &v39;
  v17 = sub_29D76C424(sub_29D714870, v35, a1);
  if (v17)
  {
    goto LABEL_2;
  }

  v39 = *MEMORY[0x29EDBA688];
  MEMORY[0x2A1C7C4A8](v17, v18);
  v36 = &v39;
  v19 = sub_29D76C424(sub_29D714870, v35, a1);
  if (v19)
  {
    goto LABEL_6;
  }

  v39 = *MEMORY[0x29EDBA600];
  MEMORY[0x2A1C7C4A8](v19, v20);
  v36 = &v39;
  v21 = sub_29D76C424(sub_29D714870, v35, a1);
  if (v21)
  {
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v36 = 0xE000000000000000;
    return sub_29D9334A8();
  }

  v39 = *MEMORY[0x29EDBA620];
  MEMORY[0x2A1C7C4A8](v21, v22);
  v36 = &v39;
  v23 = sub_29D76C424(sub_29D714870, v35, a1);
  if (v23)
  {
    v25 = sub_29D934848();
    v27 = v26;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v36 = 0xE000000000000000;
  }

  else
  {
    v39 = *MEMORY[0x29EDBA6A8];
    MEMORY[0x2A1C7C4A8](v23, v24);
    v36 = &v39;
    v28 = sub_29D76C424(sub_29D714870, v35, a1);
    if ((v28 & 1) == 0)
    {
      v39 = *MEMORY[0x29EDBA638];
      MEMORY[0x2A1C7C4A8](v28, v29);
      v36 = &v39;
      v33 = sub_29D76C424(sub_29D714870, v35, a1);
      if (v33)
      {
        if (qword_2A17B0D70 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_39;
      }

      v39 = *MEMORY[0x29EDBA648];
      MEMORY[0x2A1C7C4A8](v33, v34);
      v36 = &v39;
      if (sub_29D76C424(sub_29D714870, v35, a1))
      {
        if (qword_2A17B0D70 != -1)
        {
          swift_once();
        }

        v36 = 0xE000000000000000;
        return sub_29D9334A8();
      }

      goto LABEL_11;
    }

    v25 = sub_29D934858();
    v27 = v30;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v36 = 0xE000000000000000;
  }

  sub_29D9334A8();
  sub_29D76C988(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D93DDB0;
  *(v31 + 56) = MEMORY[0x29EDC99B0];
  *(v31 + 64) = sub_29D69AD24();
  *(v31 + 32) = v25;
  *(v31 + 40) = v27;
  v32 = sub_29D939D38();

  return v32;
}

uint64_t sub_29D766EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D76C988(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D943EA0;
  v9 = MEMORY[0x29EDC99B0];
  *(v8 + 56) = MEMORY[0x29EDC99B0];
  v10 = sub_29D69AD24();
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_29D935E88();
  v11 = sub_29D934808();
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  *(v8 + 136) = v9;
  *(v8 + 144) = v10;
  *(v8 + 112) = a3;
  *(v8 + 120) = a4;
  sub_29D935E88();
  v13 = sub_29D939D38();

  return v13;
}

uint64_t sub_29D76703C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v7 = sub_29D939F38();

  v10 = *(v7 + 16);
  if (v10)
  {
    if (v10 == 1)
    {
      v14 = *MEMORY[0x29EDBA608];
      MEMORY[0x2A1C7C4A8](v8, v9);
      v13[2] = &v14;
      v11 = sub_29D76C424(sub_29D714870, v13, v7);

      if (v11)
      {
        return sub_29D767618(1, a3);
      }
    }

    else
    {
    }

    return sub_29D767AAC(a1, a2, a3);
  }

  else
  {

    return sub_29D7671A4(a3);
  }
}

uint64_t sub_29D7671A4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v31 - v4;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v1);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v33 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v31 - v11;
  v13 = sub_29D9346E8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = v31 - v20;
  v22 = *MEMORY[0x29EDC1760];
  v23 = *(v14 + 104);
  v23(v31 - v20, v22, v13);
  v23(v18, v22, v13);
  v31[2] = sub_29D8C0ECC(v18, 1);
  v32 = *(v14 + 8);
  v32(v18, v13);
  v24 = sub_29D934818();
  v31[0] = v25;
  v31[1] = v24;
  v26 = sub_29D934358();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  (*(v14 + 16))(v18, v21, v13);
  sub_29D837E98();
  v27 = sub_29D934798();
  (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
  sub_29D76C8F4(v12, v33);
  v28 = v34;
  sub_29D934988();
  sub_29D76C884(v12, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  v32(v21, v13);
  v29 = sub_29D9349A8();
  return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
}

uint64_t sub_29D767618@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v35 - v6;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v3);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v39 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v35 - v13;
  v15 = sub_29D9346E8();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = v35 - v22;
  v24 = *MEMORY[0x29EDC1768];
  v25 = *(v16 + 104);
  v25(v35 - v22, v24, v15);
  if (a1)
  {
    v26 = sub_29D9347E8();
  }

  else
  {
    v26 = sub_29D9347D8();
  }

  v37 = v27;
  v38 = v26;
  v25(v20, v24, v15);
  v35[2] = sub_29D8C0ECC(v20, a1 & 1);
  v36 = *(v16 + 8);
  v36(v20, v15);
  v28 = sub_29D934818();
  v35[0] = v29;
  v35[1] = v28;
  v30 = sub_29D934358();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  (*(v16 + 16))(v20, v23, v15);
  sub_29D837E98();
  v31 = sub_29D934798();
  (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
  sub_29D76C8F4(v14, v39);
  v32 = v40;
  sub_29D934988();
  sub_29D76C884(v14, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  v36(v23, v15);
  v33 = sub_29D9349A8();
  return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
}

uint64_t sub_29D767AAC@<X0>(id a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a4@<X8>)
{
  v6 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v7 = sub_29D939F38();

  v134[0] = *MEMORY[0x29EDBA680];
  v133 = v134;
  v8 = sub_29D76C424(sub_29D714870, v132, v7);
  if ((v8 & 1) == 0)
  {
    v134[0] = *MEMORY[0x29EDBA5F8];
    MEMORY[0x2A1C7C4A8](v8, v9);
    v131 = v134;
    v16 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v16)
    {

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v18 = sub_29D937898();
      sub_29D69C6C0(v18, qword_2A1A2C008);
      v11 = sub_29D937878();
      v12 = sub_29D93A2A8();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_27;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v134[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
      v15 = "[%s.%s] Not creating feature status configuration due to feature flag disabled";
      goto LABEL_26;
    }

    v134[0] = *MEMORY[0x29EDBA618];
    MEMORY[0x2A1C7C4A8](v16, v17);
    v131 = v134;
    v19 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v19)
    {

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v21 = sub_29D937898();
      sub_29D69C6C0(v21, qword_2A1A2C008);
      v11 = sub_29D937878();
      v12 = sub_29D93A2A8();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_27;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v134[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
      v15 = "[%s.%s] Not creating feature status configuration due to health app being hidden";
      goto LABEL_26;
    }

    v134[0] = *MEMORY[0x29EDBA5A8];
    MEMORY[0x2A1C7C4A8](v19, v20);
    v131 = v134;
    v22 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v22)
    {

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v24 = sub_29D937898();
      sub_29D69C6C0(v24, qword_2A1A2C008);
      v11 = sub_29D937878();
      v12 = sub_29D93A2A8();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_27;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v134[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
      v15 = "[%s.%s] Not creating feature status configuration due to no paired device";
      goto LABEL_26;
    }

    v134[0] = *MEMORY[0x29EDBA690];
    MEMORY[0x2A1C7C4A8](v22, v23);
    v131 = v134;
    v25 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v25)
    {

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v27 = sub_29D937898();
      sub_29D69C6C0(v27, qword_2A1A2C008);
      v11 = sub_29D937878();
      v12 = sub_29D93A2A8();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_27;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v134[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
      v15 = "[%s.%s] Not creating feature status configuration due to region list being empty";
      goto LABEL_26;
    }

    v134[0] = *MEMORY[0x29EDBA650];
    MEMORY[0x2A1C7C4A8](v25, v26);
    v131 = v134;
    v31 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v31)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v33 = sub_29D937898();
      sub_29D69C6C0(v33, qword_2A1A2C008);
      v34 = sub_29D937878();
      v35 = sub_29D93A2A8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v134[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
        _os_log_impl(&dword_29D677000, v34, v35, "[%s.%s] Creating age gated feature status configuration due to being in store mode", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v37, -1, -1);
        MEMORY[0x29ED6BE30](v36, -1, -1);
      }

      v38 = sub_29D7665A0(v7, a2);
      v40 = v39;

      sub_29D76AAC4(v38, v40, a4);
      goto LABEL_47;
    }

    v134[0] = *MEMORY[0x29EDBA5D8];
    MEMORY[0x2A1C7C4A8](v31, v32);
    v131 = v134;
    v41 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v41 & 1) != 0 || (v134[0] = *MEMORY[0x29EDBA5F0], MEMORY[0x2A1C7C4A8](v41, v42), v131 = v134, v43 = sub_29D76C424(sub_29D714870, v130, v7), (v43))
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v45 = sub_29D937898();
      sub_29D69C6C0(v45, qword_2A1A2C008);
      v46 = sub_29D937878();
      v47 = sub_29D93A2A8();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_42;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v134[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
      v50 = "[%s.%s] Creating country not supported on local device feature status configuration";
LABEL_41:
      _os_log_impl(&dword_29D677000, v46, v47, v50, v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v49, -1, -1);
      MEMORY[0x29ED6BE30](v48, -1, -1);
LABEL_42:

      v51 = sub_29D7665A0(v7, a2);
      v53 = v52;

      if (qword_2A17B0D68 != -1)
      {
        swift_once();
      }

      v131 = 0xE000000000000000;
LABEL_45:
      v54 = sub_29D9334A8();
      sub_29D766EAC(v51, v53, v54, v55);

      sub_29D76AF74(v51, v53, a4);
LABEL_46:

LABEL_47:

      v28 = 0;
      goto LABEL_28;
    }

    v134[0] = *MEMORY[0x29EDBA5C0];
    MEMORY[0x2A1C7C4A8](v43, v44);
    v131 = v134;
    v56 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v56)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v58 = sub_29D937898();
      sub_29D69C6C0(v58, qword_2A1A2C008);
      v59 = sub_29D937878();
      v60 = sub_29D93A2A8();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_54;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v134[0] = v62;
      *v61 = 136315394;
      *(v61 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
      v63 = "[%s.%s] Creating not supported on active device feature status configuration";
LABEL_53:
      _os_log_impl(&dword_29D677000, v59, v60, v63, v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v62, -1, -1);
      MEMORY[0x29ED6BE30](v61, -1, -1);
LABEL_54:

      v64 = sub_29D7665A0(v7, a2);
      v66 = v65;

      sub_29D76AF74(v64, v66, a4);
      goto LABEL_47;
    }

    v134[0] = *MEMORY[0x29EDBA5D0];
    MEMORY[0x2A1C7C4A8](v56, v57);
    v131 = v134;
    v67 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v67 & 1) != 0 || (v134[0] = *MEMORY[0x29EDBA5E8], MEMORY[0x2A1C7C4A8](v67, v68), v131 = v134, v69 = sub_29D76C424(sub_29D714870, v130, v7), (v69))
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v71 = sub_29D937898();
      sub_29D69C6C0(v71, qword_2A1A2C008);
      v46 = sub_29D937878();
      v47 = sub_29D93A2A8();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_42;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v134[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
      v50 = "[%s.%s] Creating country not supported on active device feature status configuration";
      goto LABEL_41;
    }

    v134[0] = *MEMORY[0x29EDBA640];
    MEMORY[0x2A1C7C4A8](v69, v70);
    v131 = v134;
    v72 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v72)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v74 = sub_29D937898();
      sub_29D69C6C0(v74, qword_2A1A2C008);
      v59 = sub_29D937878();
      v60 = sub_29D93A2A8();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_54;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v134[0] = v62;
      *v61 = 136315394;
      *(v61 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
      v63 = "[%s.%s] Creating age gated feature status configuration";
      goto LABEL_53;
    }

    v134[0] = *MEMORY[0x29EDBA688];
    MEMORY[0x2A1C7C4A8](v72, v73);
    v131 = v134;
    v75 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v75)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v77 = sub_29D937898();
      sub_29D69C6C0(v77, qword_2A1A2C008);
      v78 = sub_29D937878();
      v79 = sub_29D93A2A8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v134[0] = v81;
        *v80 = 136315394;
        *(v80 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
        _os_log_impl(&dword_29D677000, v78, v79, "[%s.%s] Creating seed expired feature status configuration", v80, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v81, -1, -1);
        MEMORY[0x29ED6BE30](v80, -1, -1);
      }

      v82 = sub_29D7665A0(v7, a2);
      v84 = v83;

      v85 = [objc_opt_self() seedExpiredLinkURL];
LABEL_78:
      v94 = v85;
      v95 = sub_29D939D68();
      v97 = v96;

      sub_29D766EAC(v82, v84, v95, v97);

      sub_29D76AF74(v82, v84, a4);
      goto LABEL_46;
    }

    v134[0] = *MEMORY[0x29EDBA600];
    MEMORY[0x2A1C7C4A8](v75, v76);
    v131 = v134;
    v86 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v86)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v88 = sub_29D937898();
      sub_29D69C6C0(v88, qword_2A1A2C008);
      v89 = sub_29D937878();
      v90 = sub_29D93A2A8();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v134[0] = v92;
        *v91 = 136315394;
        *(v91 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
        *(v91 + 12) = 2080;
        *(v91 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
        _os_log_impl(&dword_29D677000, v89, v90, "[%s.%s] Creating remotely disabled feature status configuration", v91, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v92, -1, -1);
        MEMORY[0x29ED6BE30](v91, -1, -1);
      }

      v82 = sub_29D7665A0(v7, a2);
      v84 = v93;

      v85 = [objc_opt_self() remoteDisabledLinkURL];
      goto LABEL_78;
    }

    v134[0] = *MEMORY[0x29EDBA620];
    MEMORY[0x2A1C7C4A8](v86, v87);
    v131 = v134;
    v98 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v98)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v100 = sub_29D937898();
      sub_29D69C6C0(v100, qword_2A1A2C008);
      v101 = sub_29D937878();
      v102 = sub_29D93A2A8();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v134[0] = v104;
        *v103 = 136315394;
        *(v103 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
        *(v103 + 12) = 2080;
        *(v103 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
        _os_log_impl(&dword_29D677000, v101, v102, "[%s.%s] Creating heart rate disabled in privacy feature status configuration", v103, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v104, -1, -1);
        MEMORY[0x29ED6BE30](v103, -1, -1);
      }

      v105 = sub_29D7665A0(v7, a2);
      v107 = v106;

      v108 = sub_29D934868();
LABEL_91:
      sub_29D76B3B0(v105, v107, v108, v109, a4);

      goto LABEL_47;
    }

    v134[0] = *MEMORY[0x29EDBA6A8];
    MEMORY[0x2A1C7C4A8](v98, v99);
    v131 = v134;
    v110 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v110)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v112 = sub_29D937898();
      sub_29D69C6C0(v112, qword_2A1A2C008);
      v113 = sub_29D937878();
      v114 = sub_29D93A2A8();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v134[0] = v116;
        *v115 = 136315394;
        *(v115 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
        *(v115 + 12) = 2080;
        *(v115 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
        _os_log_impl(&dword_29D677000, v113, v114, "[%s.%s] Creating wrist detection disabled feature status configuration", v115, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v116, -1, -1);
        MEMORY[0x29ED6BE30](v115, -1, -1);
      }

      v105 = sub_29D7665A0(v7, a2);
      v107 = v117;

      v108 = sub_29D934878();
      goto LABEL_91;
    }

    v134[0] = *MEMORY[0x29EDBA638];
    MEMORY[0x2A1C7C4A8](v110, v111);
    v131 = v134;
    v118 = sub_29D76C424(sub_29D714870, v130, v7);
    if (v118)
    {
      if (qword_2A1A25718 == -1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v134[0] = *MEMORY[0x29EDBA648];
      MEMORY[0x2A1C7C4A8](v118, v119);
      v131 = v134;
      if ((sub_29D76C424(sub_29D714870, v130, v7) & 1) == 0)
      {
        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v129 = sub_29D937898();
        sub_29D69C6C0(v129, qword_2A1A2C008);
        v59 = sub_29D937878();
        v60 = sub_29D93A2A8();
        if (!os_log_type_enabled(v59, v60))
        {
          goto LABEL_54;
        }

        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v134[0] = v62;
        *v61 = 136315394;
        *(v61 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
        *(v61 + 12) = 2080;
        *(v61 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
        v63 = "[%s.%s] Creating unavailable not supported feature status configuration";
        goto LABEL_53;
      }

      if (qword_2A1A25718 == -1)
      {
LABEL_94:
        v120 = sub_29D937898();
        sub_29D69C6C0(v120, qword_2A1A2C008);
        v121 = sub_29D937878();
        v122 = sub_29D93A2A8();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v135[0] = v124;
          *v123 = 136315650;
          *(v123 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v135);
          *(v123 + 12) = 2080;
          *(v123 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v135);
          *(v123 + 22) = 2080;
          v134[0] = 0xD000000000000016;
          v134[1] = 0x800000029D95F9D0;
          v125 = sub_29D939DE8();
          v127 = sub_29D6C2364(v125, v126, v135);

          *(v123 + 24) = v127;
          _os_log_impl(&dword_29D677000, v121, v122, "[%s.%s] Creating %s feature status configuration", v123, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v124, -1, -1);
          MEMORY[0x29ED6BE30](v123, -1, -1);
        }

        v51 = sub_29D7665A0(v7, a2);
        v53 = v128;

        if (qword_2A17B0D68 != -1)
        {
          swift_once();
        }

        v131 = 0xE000000000000000;
        goto LABEL_45;
      }
    }

    swift_once();
    goto LABEL_94;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2C008);
  v11 = sub_29D937878();
  v12 = sub_29D93A2A8();
  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_27;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v134[0] = v14;
  *v13 = 136315394;
  *(v13 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, v134);
  *(v13 + 12) = 2080;
  *(v13 + 14) = sub_29D6C2364(0xD00000000000003FLL, 0x800000029D95F990, v134);
  v15 = "[%s.%s] Not creating feature status configuration due to family setup profile";
LABEL_26:
  _os_log_impl(&dword_29D677000, v11, v12, v15, v13, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x29ED6BE30](v14, -1, -1);
  MEMORY[0x29ED6BE30](v13, -1, -1);
LABEL_27:

  v28 = 1;
LABEL_28:
  v29 = sub_29D9349A8();
  return (*(*(v29 - 8) + 56))(a4, v28, 1, v29);
}

uint64_t sub_29D769888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v143 = a2;
  sub_29D76C988(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v140 = &v136 - v7;
  v8 = sub_29D9336F8();
  v139 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D9346E8();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v142 = &v136 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v136 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v136 - v26;
  v141 = a1;
  sub_29D934958();
  v28 = v13;
  v29 = *(v13 + 16);
  v29(v24, v27, v12);
  v30 = (*(v28 + 88))(v24, v12);
  if (v30 != *MEMORY[0x29EDC1760])
  {
    v137 = v27;
    v138 = v12;
    v136 = a3;
    if (v30 == *MEMORY[0x29EDC1768])
    {
      v36 = v28;
      v37 = sub_29D76B7F8(*MEMORY[0x29EDBA5A0], *MEMORY[0x29EDBA578]);
      v38 = v137;
      if (v37)
      {
        v39 = v37;
        v40 = [v37 unsatisfiedRequirementIdentifiers];
        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        v41 = sub_29D939F38();

        v42 = *(v41 + 16);

        if (v42)
        {
          v43 = [v39 unsatisfiedRequirementIdentifiers];
          v44 = sub_29D939F38();

          v144 = *MEMORY[0x29EDBA660];
          MEMORY[0x2A1C7C4A8](v45, v46);
          *(&v136 - 2) = &v144;
          LOBYTE(v43) = sub_29D76C424(sub_29D714870, (&v136 - 4), v44);

          if ((v43 & 1) == 0)
          {
            if (qword_2A1A25718 != -1)
            {
              swift_once();
            }

            v96 = sub_29D937898();
            sub_29D69C6C0(v96, qword_2A1A2C008);
            v97 = v39;
            v98 = sub_29D937878();
            v99 = sub_29D93A2A8();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v144 = v101;
              *v100 = 136315394;
              *(v100 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v144);
              *(v100 + 12) = 2080;
              v102 = [v97 unsatisfiedRequirementIdentifiersDescription];
              v103 = sub_29D939D68();
              v105 = v104;

              v106 = sub_29D6C2364(v103, v105, &v144);

              *(v100 + 14) = v106;
              v38 = v137;
              _os_log_impl(&dword_29D677000, v98, v99, "[%s]: Presenting Enabled Feature Settings with unsatisfied requirements: %s", v100, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x29ED6BE30](v101, -1, -1);
              MEMORY[0x29ED6BE30](v100, -1, -1);
            }

            v107 = v138;
            v108 = v136;
            sub_29D934958();

            (*(v36 + 8))(v38, v107);
            v31 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
            swift_storeEnumTagMultiPayload();
            v32 = *(*(v31 - 8) + 56);
            v33 = v108;
            goto LABEL_3;
          }

          if (qword_2A1A25718 != -1)
          {
            swift_once();
          }

          v47 = sub_29D937898();
          sub_29D69C6C0(v47, qword_2A1A2C008);
          v48 = sub_29D937878();
          v49 = sub_29D93A2A8();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v144 = v51;
            *v50 = 136315138;
            *(v50 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v144);
            _os_log_impl(&dword_29D677000, v48, v49, "[%s]: found no onboardingAcknowledged, will present onboarding", v50, 0xCu);
            sub_29D69417C(v51);
            MEMORY[0x29ED6BE30](v51, -1, -1);
            MEMORY[0x29ED6BE30](v50, -1, -1);
          }

          else
          {
          }

          (*(v36 + 8))(v38, v138);
          v66 = v136;
          v31 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
          goto LABEL_58;
        }
      }

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v89 = sub_29D937898();
      sub_29D69C6C0(v89, qword_2A1A2C008);
      v90 = sub_29D937878();
      v91 = sub_29D93A298();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v138;
      if (v92)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v144 = v95;
        *v94 = 136315138;
        *(v94 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v144);
        _os_log_impl(&dword_29D677000, v90, v91, "[%s]: no unsatisfied requirement identifiers", v94, 0xCu);
        sub_29D69417C(v95);
        MEMORY[0x29ED6BE30](v95, -1, -1);
        MEMORY[0x29ED6BE30](v94, -1, -1);
      }

      (*(v36 + 8))(v38, v93);
      goto LABEL_53;
    }

    v52 = v138;
    if (v30 != *MEMORY[0x29EDC1758])
    {
      if (v30 != *MEMORY[0x29EDC1750])
      {
        v72 = v28;
        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v73 = sub_29D937898();
        sub_29D69C6C0(v73, qword_2A1A2C008);
        v74 = v142;
        v75 = v137;
        v29(v142, v137, v52);
        v76 = sub_29D937878();
        v77 = sub_29D93A298();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          LODWORD(v141) = v77;
          v79 = v78;
          v143 = swift_slowAlloc();
          v144 = v143;
          *v79 = 136315394;
          *(v79 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v144);
          *(v79 + 12) = 2080;
          v29(v17, v74, v52);
          v80 = v75;
          v81 = sub_29D939DA8();
          v82 = v74;
          v84 = v83;
          v85 = *(v72 + 8);
          v85(v82, v52);
          v86 = sub_29D6C2364(v81, v84, &v144);

          *(v79 + 14) = v86;
          v52 = v138;
          _os_log_impl(&dword_29D677000, v76, v141, "[%s]: Unexpected featureStatusKind case: %s", v79, 0x16u);
          v87 = v143;
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v87, -1, -1);
          MEMORY[0x29ED6BE30](v79, -1, -1);

          v88 = v80;
        }

        else
        {

          v85 = *(v72 + 8);
          v85(v74, v52);
          v88 = v75;
        }

        v85(v88, v52);
        v109 = v136;
        v85(v24, v52);
        goto LABEL_54;
      }

      v67 = v28;
      v68 = sub_29D76B7F8(*MEMORY[0x29EDBA5A0], *MEMORY[0x29EDBA578]);
      if (v68)
      {
        v69 = v68;
        sub_29D76C55C(v68);
        v70 = v140;
        sub_29D9336E8();

        (*(v28 + 8))(v137, v52);
        v71 = v139;
        if ((*(v139 + 48))(v70, 1, v8) == 1)
        {
          sub_29D76C884(v70, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
          v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
          v32 = *(*(v35 - 8) + 56);
          v33 = v136;
LABEL_55:
          v34 = 1;
          return v32(v33, v34, 1, v35);
        }

        v124 = *(v71 + 32);
        v124(v11, v70, v8);
        v66 = v136;
        v124(v136, v11, v8);
        v31 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
LABEL_58:
        swift_storeEnumTagMultiPayload();
        v32 = *(*(v31 - 8) + 56);
        v33 = v66;
        goto LABEL_3;
      }

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v116 = sub_29D937898();
      sub_29D69C6C0(v116, qword_2A1A2C008);
      v117 = sub_29D937878();
      v118 = sub_29D93A298();
      v119 = os_log_type_enabled(v117, v118);
      v120 = v137;
      if (v119)
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v144 = v122;
        *v121 = 136315138;
        *(v121 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v144);
        _os_log_impl(&dword_29D677000, v117, v118, "[%s]: requirementsEvaluation is nil", v121, 0xCu);
        sub_29D69417C(v122);
        MEMORY[0x29ED6BE30](v122, -1, -1);
        MEMORY[0x29ED6BE30](v121, -1, -1);
      }

      (*(v67 + 8))(v120, v52);
LABEL_53:
      v109 = v136;
LABEL_54:
      v35 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
      v32 = *(*(v35 - 8) + 56);
      v33 = v109;
      goto LABEL_55;
    }

    v53 = v28;
    v54 = sub_29D76B7F8(*MEMORY[0x29EDBA5A0], *MEMORY[0x29EDBA578]);
    v55 = v137;
    if (v54)
    {
      v56 = v54;
      v57 = [v54 unsatisfiedRequirementIdentifiers];
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v58 = sub_29D939F38();

      v59 = *(v58 + 16);

      if (v59)
      {
        v60 = [v56 unsatisfiedRequirementIdentifiers];
        v61 = sub_29D939F38();

        v144 = *MEMORY[0x29EDBA620];
        MEMORY[0x2A1C7C4A8](v62, v63);
        *(&v136 - 2) = &v144;
        v64 = sub_29D76C424(sub_29D7141DC, (&v136 - 4), v61);
        if (v64)
        {
          (*(v53 + 8))(v55, v52);

          v31 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
          v66 = v136;
          goto LABEL_58;
        }

        v144 = *MEMORY[0x29EDBA6A8];
        MEMORY[0x2A1C7C4A8](v64, v65);
        *(&v136 - 2) = &v144;
        v115 = sub_29D76C424(sub_29D714870, (&v136 - 4), v61);

        if (v115)
        {
          (*(v53 + 8))(v55, v52);

          v31 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
          v66 = v136;
          goto LABEL_58;
        }

        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v125 = sub_29D937898();
        sub_29D69C6C0(v125, qword_2A1A2C008);
        v111 = v56;
        v126 = sub_29D937878();
        v127 = sub_29D93A298();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v144 = v129;
          *v128 = 136315394;
          *(v128 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v144);
          *(v128 + 12) = 2080;
          v130 = [v111 unsatisfiedRequirementIdentifiersDescription];
          v131 = v55;
          v132 = sub_29D939D68();
          v134 = v133;

          v135 = sub_29D6C2364(v132, v134, &v144);

          *(v128 + 14) = v135;
          _os_log_impl(&dword_29D677000, v126, v127, "[%s]: Unexpected unavailability requirements: %s", v128, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v129, -1, -1);
          MEMORY[0x29ED6BE30](v128, -1, -1);

          (*(v53 + 8))(v131, v138);
          goto LABEL_53;
        }

        goto LABEL_43;
      }
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v110 = sub_29D937898();
    sub_29D69C6C0(v110, qword_2A1A2C008);
    v111 = sub_29D937878();
    v112 = sub_29D93A298();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v144 = v114;
      *v113 = 136315138;
      *(v113 + 4) = sub_29D6C2364(0xD000000000000036, 0x800000029D946940, &v144);
      _os_log_impl(&dword_29D677000, v111, v112, "[%s]: no unsatisfied requirement identifiers", v113, 0xCu);
      sub_29D69417C(v114);
      MEMORY[0x29ED6BE30](v114, -1, -1);
      MEMORY[0x29ED6BE30](v113, -1, -1);
    }

LABEL_43:

    (*(v53 + 8))(v55, v52);
    goto LABEL_53;
  }

  (*(v28 + 32))(a3, v27, v12);
  v31 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  swift_storeEnumTagMultiPayload();
  v32 = *(*(v31 - 8) + 56);
  v33 = a3;
LABEL_3:
  v34 = 0;
  v35 = v31;
  return v32(v33, v34, 1, v35);
}

uint64_t sub_29D76AAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = v35 - v8;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v5);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v36 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v35 - v15;
  v17 = sub_29D9346E8();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = v35 - v24;
  v27 = v26;
  (*(v18 + 104))(v35 - v24, *MEMORY[0x29EDC1750]);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D93DDB0;
  *(v28 + 32) = a1;
  *(v28 + 40) = a2;
  v29 = qword_2A1A257A0;
  sub_29D935E88();
  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_29D9334A8();
  v35[2] = v31;
  v35[3] = v30;
  v32 = sub_29D934358();
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v35[1] = sub_29D9334A8();
  (*(v18 + 16))(v22, v25, v27);
  sub_29D837E98();
  v33 = sub_29D934798();
  (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
  sub_29D76C8F4(v16, v36);
  sub_29D934988();
  sub_29D76C884(v16, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  return (*(v18 + 8))(v25, v27);
}

uint64_t sub_29D76AF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v38 = v37 - v8;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v5);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v37 - v15;
  v17 = sub_29D9346E8();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = v37 - v24;
  v27 = v26;
  (*(v18 + 104))();
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D93DDB0;
  *(v28 + 32) = a1;
  *(v28 + 40) = a2;
  sub_29D935E88();
  v29 = sub_29D934808();
  v37[2] = v30;
  v37[3] = v29;
  v31 = sub_29D934358();
  v32 = v16;
  (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v37[1] = sub_29D9334A8();
  v33 = v25;
  (*(v18 + 16))(v22, v25, v27);
  v34 = v38;
  sub_29D837E98();
  v35 = sub_29D934798();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_29D76C8F4(v32, v13);
  sub_29D934988();
  sub_29D76C884(v32, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  return (*(v18 + 8))(v33, v27);
}

uint64_t sub_29D76B3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38[3] = a4;
  v38[4] = a3;
  v38[5] = a5;
  v7 = MEMORY[0x29EDC9C68];
  sub_29D76C988(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = v38 - v10;
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], v7);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v38 - v18;
  v20 = sub_29D9346E8();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = v38 - v27;
  v30 = v29;
  (*(v21 + 104))(v38 - v27, *MEMORY[0x29EDC1758]);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D93DDB0;
  *(v31 + 32) = a1;
  *(v31 + 40) = a2;
  sub_29D935E88();
  v32 = sub_29D934828();
  v38[1] = v33;
  v38[2] = v32;
  v34 = sub_29D934358();
  (*(*(v34 - 8) + 56))(v19, 1, 1, v34);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v38[0] = v35;
  (*(v21 + 16))(v25, v28, v30);
  sub_29D837E98();
  v36 = sub_29D934798();
  (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
  sub_29D76C8F4(v19, v16);
  sub_29D935E88();
  sub_29D934988();
  sub_29D76C884(v19, &qword_2A1A24760, MEMORY[0x29EDC3A58]);
  return (*(v21 + 8))(v28, v30);
}

uint64_t sub_29D76B7F8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v32 = a1;
  v3 = sub_29D937118();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D937178();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D937158();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D9371A8();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v2, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x29EDC2D70])
  {
    (*(v17 + 96))(v20, v16);
    (*(v12 + 32))(v15, v20, v11);
    sub_29D937108();
    v22 = sub_29D937188();
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }

  else if (v21 == *MEMORY[0x29EDC2D68])
  {
    (*(v17 + 96))(v20, v16);
    v24 = v30;
    v23 = v31;
    v25 = v28;
    (*(v30 + 32))(v28, v20, v31);
    sub_29D937108();
    v22 = sub_29D937188();
    (*(v7 + 8))(v10, v6);
    (*(v24 + 8))(v25, v23);
  }

  else
  {
    (*(v17 + 8))(v20, v16);
    return 0;
  }

  return v22;
}

void sub_29D76BBF0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = [a1 highestPriorityUnsatisfiedRequirement];
  if (v6)
  {

    if (sub_29D93A648())
    {

      sub_29D767AAC(a1, v5, a2);
    }

    else
    {
      v7 = sub_29D9371B8();
      sub_29D767AAC(v7, v5, a2);
    }
  }

  else
  {

    sub_29D767618(0, a2);
  }
}

uint64_t sub_29D76BD14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_29D76C988(0, &qword_2A17B4088, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D769888(a1, a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D76C884(v9, &qword_2A17B4088, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
    v15 = 1;
  }

  else
  {
    sub_29D76C3C0(v9, v14);
    sub_29D76C3C0(v14, a3);
    v15 = 0;
  }

  v16 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData(0);
  return (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_29D76BEFC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1878];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D76BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D76C9EC();

  return MEMORY[0x2A1C61018](a1, a2, a3, v6);
}

uint64_t sub_29D76BFC4(uint64_t a1, uint64_t a2)
{
  sub_29D76C9EC();

  return sub_29D934D08();
}

id sub_29D76C034()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  result = [objc_opt_self() hypertensionEventType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29D6E3D70(inited);
    v3 = v2;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D76C0EC(uint64_t a1)
{
  v2 = sub_29D76C294();

  return MEMORY[0x2A1C61000](a1, v2);
}

uint64_t sub_29D76C138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D76C294();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, v6);
}

unint64_t sub_29D76C1AC()
{
  result = qword_2A1A22BA8;
  if (!qword_2A1A22BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22BA8);
  }

  return result;
}

unint64_t sub_29D76C294()
{
  result = qword_2A1A22BA0;
  if (!qword_2A1A22BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22BA0);
  }

  return result;
}

uint64_t sub_29D76C378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D76C3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D76C424(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_29D76C4CC(void *a1, uint64_t *a2)
{
  v2 = sub_29D939D68();
  v4 = v3;
  if (v2 == sub_29D939D68() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_29D93AD78();
  }

  return v7 & 1;
}

uint64_t sub_29D76C55C(void *a1)
{
  v1 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v2 = sub_29D939F38();

  v18 = *MEMORY[0x29EDBA688];
  v17 = &v18;
  v3 = sub_29D76C424(sub_29D714870, v16, v2);
  if ((v3 & 1) == 0)
  {
    v18 = *MEMORY[0x29EDBA600];
    MEMORY[0x2A1C7C4A8](v3, v4);
    v15 = &v18;
    v6 = sub_29D76C424(sub_29D714870, v14, v2);
    if (v6)
    {

      v5 = [objc_opt_self() remoteDisabledLinkURL];
      goto LABEL_5;
    }

    v18 = *MEMORY[0x29EDBA5D8];
    MEMORY[0x2A1C7C4A8](v6, v7);
    v15 = &v18;
    v10 = sub_29D76C424(sub_29D714870, v14, v2);
    if (v10)
    {
    }

    else
    {
      v18 = *MEMORY[0x29EDBA5D0];
      MEMORY[0x2A1C7C4A8](v10, v11);
      v15 = &v18;
      v12 = sub_29D76C424(sub_29D714870, v14, v2);

      if ((v12 & 1) == 0)
      {
        if (qword_2A17B0D68 != -1)
        {
          swift_once();
        }

        v15 = 0xE000000000000000;
        return sub_29D9334A8();
      }
    }

    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v15 = 0xE000000000000000;
    return sub_29D9334A8();
  }

  v5 = [objc_opt_self() seedExpiredLinkURL];
LABEL_5:
  v8 = v5;
  v9 = sub_29D939D68();

  return v9;
}

uint64_t sub_29D76C884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D76C988(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D76C8F4(uint64_t a1, uint64_t a2)
{
  sub_29D76C988(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D76C988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D76C9EC()
{
  result = qword_2A1A22B98;
  if (!qword_2A1A22B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22B98);
  }

  return result;
}

uint64_t sub_29D76CA44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = *v3;
  v20 = a1;
  sub_29D76D048(0, &qword_2A17B4090, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC2EA0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v19 - v9;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_29D9339A8();
  sub_29D93A3F8();
  v16 = swift_allocObject();
  v17 = v19;
  v16[2] = v20;
  v16[3] = a2;
  v16[4] = v17;

  sub_29D93A5F8();

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_29D76CC84(char a1, void *a2, uint64_t (*a3)(void, void *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v8 = sub_29D937898();
    sub_29D69C6C0(v8, qword_2A1A2C008);
    v9 = sub_29D937878();
    v10 = sub_29D93A2A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446466;
      v13 = sub_29D93AF08();
      v15 = sub_29D6C2364(v13, v14, &v27);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D95FE80, &v27);
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s.%{public}s]:Successfully set onboarding acknowledged setting", v11, 0x16u);
LABEL_10:
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v16 = sub_29D937898();
    sub_29D69C6C0(v16, qword_2A1A2C008);
    v17 = a2;
    v9 = sub_29D937878();
    v18 = sub_29D93A288();

    if (os_log_type_enabled(v9, v18))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446722;
      v19 = sub_29D93AF08();
      v21 = sub_29D6C2364(v19, v20, &v27);

      *(v11 + 4) = v21;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D95FE80, &v27);
      *(v11 + 22) = 2080;
      v22 = a2;
      sub_29D76D048(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
      v23 = sub_29D939DA8();
      v25 = sub_29D6C2364(v23, v24, &v27);

      *(v11 + 24) = v25;
      _os_log_impl(&dword_29D677000, v9, v18, "[%{public}s.%{public}s]: Failed to set onboarding acknowledged setting with error: %s", v11, 0x20u);
      goto LABEL_10;
    }
  }

  return a3(a1 & 1, a2);
}

uint64_t sub_29D76CFE0()
{
  sub_29D936978();

  return swift_deallocClassInstance();
}

void sub_29D76D048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D76D0AC()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D934178();
  sub_29D6FD494(v5, qword_2A1A2C020);
  sub_29D69C6C0(v5, qword_2A1A2C020);
  sub_29D933FE8();
  sub_29D76FB80(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D93DDB0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x29EDC3790], v6);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC3898], v0);
  return sub_29D934158();
}

void *sub_29D76D2B4(__int16 a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v25 = *v2;
  v5 = sub_29D9341E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v9 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE508(0);
  v26 = v10;
  v24 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC5Heart36AtrialFibrillationPromotionGenerator_domain;
  if (qword_2A1A25760 != -1)
  {
    swift_once();
  }

  v15 = sub_29D934178();
  v16 = sub_29D69C6C0(v15, qword_2A1A2C020);
  (*(*(v15 - 8) + 16))(v3 + v14, v16, v15);
  *(v3 + OBJC_IVAR____TtC5Heart36AtrialFibrillationPromotionGenerator_result) = a1;
  v17 = v27;
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v5);
  v18 = (*(v6 + 80) + 18) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v6 + 32))(v20 + v18, v9, v5);
  *(v20 + v19) = v25;
  sub_29D6CE59C(0);
  sub_29D76FAE4(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);
  sub_29D938378();
  sub_29D76FAE4(&qword_2A1A24A00, sub_29D6CE508, MEMORY[0x29EDB8AE8]);
  v21 = v26;
  v22 = sub_29D938418();
  (*(v6 + 8))(v17, v5);
  (*(v24 + 8))(v13, v21);
  v3[2] = v22;
  return v3;
}

uint64_t sub_29D76D618@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a1;
  sub_29D6D09E0(0);
  v8 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D937898();
  v12 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D76D950(v5);
  sub_29D934D28();
  sub_29D935E88();
  v17 = sub_29D937878();
  v18 = sub_29D93A2A8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v8;
    v20 = v19;
    v32 = swift_slowAlloc();
    v36 = v32;
    v37 = a3;
    *v20 = 136446466;
    swift_getMetatypeMetadata();
    v21 = sub_29D939DA8();
    v23 = a4;
    v24 = sub_29D6C2364(v21, v22, &v36);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = MEMORY[0x29ED6A340](v16, MEMORY[0x29EDC3A38]);
    v27 = sub_29D6C2364(v25, v26, &v36);
    a4 = v23;

    *(v20 + 14) = v27;
    _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s]: Returning these changes: %{public}s", v20, 0x16u);
    v28 = v32;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v28, -1, -1);
    v29 = v20;
    v8 = v33;
    MEMORY[0x29ED6BE30](v29, -1, -1);
  }

  (*(v12 + 8))(v15, v34);
  v37 = v16;
  sub_29D6D07B0();
  sub_29D938338();
  sub_29D76FAE4(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
  v30 = sub_29D938418();
  result = (*(v35 + 8))(v11, v8);
  *a4 = v30;
  return result;
}

uint64_t sub_29D76D950(int a1)
{
  v109 = a1;
  v1 = sub_29D937898();
  v112 = *(v1 - 8);
  v113 = v1;
  v3 = MEMORY[0x2A1C7C4A8](v1, v2);
  v97 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v96 = &v95 - v7;
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v100 = &v95 - v10;
  MEMORY[0x2A1C7C4A8](v9, v11);
  v98 = &v95 - v12;
  v13 = sub_29D9340F8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v108 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v99 = &v95 - v19;
  sub_29D6C36D8(0);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v107 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v106 = &v95 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v31 = &v95 - v30;
  v33 = MEMORY[0x2A1C7C4A8](v29, v32);
  v111 = &v95 - v34;
  MEMORY[0x2A1C7C4A8](v33, v35);
  v37 = &v95 - v36;
  sub_29D76FB80(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v38 = *(v21 + 80);
  v39 = (v38 + 32) & ~v38;
  v104 = *(v21 + 72);
  v103 = v38;
  v105 = v40;
  v41 = swift_allocObject();
  sub_29D934188();
  sub_29D693E2C(v115, v115[3]);
  v114 = sub_29D76F854(0);
  sub_29D76F874(0, &qword_2A1A25048, sub_29D76F854);
  sub_29D939DA8();
  sub_29D934128();

  sub_29D69417C(v115);
  v42 = v39;
  sub_29D76FA1C(v41 + v39, v37, sub_29D6C36D8);
  sub_29D6C37D4(v37, v31);
  v43 = *(v14 + 48);
  v102 = v14 + 48;
  v101 = v43;
  if (v43(v31, 1, v13) == 1)
  {
    sub_29D76FA84(v31, sub_29D6C36D8);
    v110 = MEMORY[0x29EDCA190];
    v44 = v14;
  }

  else
  {
    v45 = v14;
    v46 = *(v14 + 32);
    v46(v99, v31, v13);
    v47 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_29D68F864(0, v47[2] + 1, 1, v47);
    }

    v49 = v47[2];
    v48 = v47[3];
    if (v49 >= v48 >> 1)
    {
      v47 = sub_29D68F864((v48 > 1), v49 + 1, 1, v47);
    }

    v44 = v45;
    v47[2] = v49 + 1;
    v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v110 = v47;
    v46(v47 + v50 + *(v45 + 72) * v49, v99, v13);
  }

  v51 = v100;
  v52 = v109;
  swift_setDeallocating();
  sub_29D76FA84(v41 + v42, sub_29D6C36D8);
  swift_deallocClassInstance();
  if (v52 > 1)
  {
    sub_29D934D28();
    v65 = sub_29D937878();
    v66 = sub_29D93A2A8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v115[0] = v68;
      *v67 = 136315394;
      v69 = sub_29D93AF08();
      v71 = sub_29D6C2364(v69, v70, v115);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D95FF00, v115);
      _os_log_impl(&dword_29D677000, v65, v66, "[%s.%s]: Promotion availability hidden, deleting feedItem", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v68, -1, -1);
      MEMORY[0x29ED6BE30](v67, -1, -1);
    }

    v64 = *(v112 + 8);
    v64(v51, v113);
    v72 = 1;
    v73 = v111;
  }

  else
  {
    v53 = v42;
    v54 = v13;
    v55 = v44;
    v56 = v98;
    sub_29D934D28();
    v57 = sub_29D937878();
    v58 = sub_29D93A2A8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v115[0] = v60;
      *v59 = 136315394;
      v61 = sub_29D93AF08();
      v63 = sub_29D6C2364(v61, v62, v115);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D95FF00, v115);
      _os_log_impl(&dword_29D677000, v57, v58, "[%s.%s]: Should show promotion, creating feedItem", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v60, -1, -1);
      MEMORY[0x29ED6BE30](v59, -1, -1);

      v64 = *(v112 + 8);
      v64(v98, v113);
    }

    else
    {

      v64 = *(v112 + 8);
      v64(v56, v113);
    }

    v73 = v111;
    sub_29D76E73C(v109, v111);
    v72 = 0;
    v44 = v55;
    v13 = v54;
    v42 = v53;
  }

  (*(v44 + 56))(v73, v72, 1, v13);
  v74 = swift_allocObject();
  sub_29D76FA1C(v73, v74 + v42, sub_29D6C36D8);
  v75 = v106;
  sub_29D76FA1C(v74 + v42, v106, sub_29D6C36D8);
  v76 = v107;
  sub_29D6C37D4(v75, v107);
  if (v101(v76, 1, v13) == 1)
  {
    sub_29D76FA84(v76, sub_29D6C36D8);
  }

  else
  {
    v77 = v42;
    v78 = *(v44 + 32);
    v78(v108, v76, v13);
    v79 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_29D68F864(0, *(v79 + 2) + 1, 1, v79);
    }

    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_29D68F864((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v78(&v79[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v81], v108, v13);
    v73 = v111;
    v42 = v77;
  }

  swift_setDeallocating();
  sub_29D76FA84(v74 + v42, sub_29D6C36D8);
  swift_deallocClassInstance();
  v82 = sub_29D939F58();

  v83 = v96;
  sub_29D934D28();
  sub_29D935E88();
  v84 = sub_29D937878();
  v85 = sub_29D93A2A8();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v115[0] = v87;
    *v86 = 136315650;
    v88 = sub_29D93AF08();
    v90 = sub_29D6C2364(v88, v89, v115);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    *(v86 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D95FF00, v115);
    *(v86 + 22) = 2080;
    v91 = MEMORY[0x29ED6A340](v82, MEMORY[0x29EDC3A38]);
    v93 = sub_29D6C2364(v91, v92, v115);

    *(v86 + 24) = v93;
    _os_log_impl(&dword_29D677000, v84, v85, "%s.%s]: Computed needed PluginFeedItemChanges: %s)", v86, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v87, -1, -1);
    MEMORY[0x29ED6BE30](v86, -1, -1);
  }

  v64(v83, v113);
  sub_29D76FA84(v73, sub_29D6C36D8);
  return v82;
}

id sub_29D76E73C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v77 = a1;
  v2 = sub_29D9342D8();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9342A8();
  v80 = *(v5 - 8);
  v81 = v5;
  v7 = MEMORY[0x2A1C7C4A8](v5, v6);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v65 = &v63 - v10;
  sub_29D76F8C0(0);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v69 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v79 = &v63 - v16;
  v72 = sub_29D934A08();
  MEMORY[0x2A1C7C4A8](v72, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D934A18();
  v70 = *(v20 - 8);
  v71 = v20;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v82 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D76F854(0);
  v83[0] = v76;
  v75 = sub_29D76F874(0, &qword_2A1A25048, sub_29D76F854);
  v23 = sub_29D939DA8();
  v73 = v24;
  v74 = v23;
  sub_29D76F8F4(0, v24);
  v26 = &v19[v25[12]];
  v27 = &v19[v25[16]];
  v28 = v25[20];
  v29 = HRHeartRhythmUIFrameworkBundle();
  sub_29D934788();
  v30 = HRHeartRhythmUIFrameworkBundle();
  v31 = sub_29D9334A8();
  v33 = v32;

  *v26 = v31;
  v26[1] = v33;
  v34 = HRHeartRhythmUIFrameworkBundle();
  v35 = sub_29D9334A8();
  v37 = v36;

  *v27 = v35;
  v27[1] = v37;
  sub_29D9346C8();
  v38 = *MEMORY[0x29EDC17D0];
  v39 = sub_29D934748();
  (*(*(v39 - 8) + 104))(&v19[v28], v38, v39);
  v40 = *MEMORY[0x29EDC1A08];
  v41 = sub_29D9349F8();
  (*(*(v41 - 8) + 104))(v19, v40, v41);
  swift_storeEnumTagMultiPayload();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9349D8();
  v42 = v79;
  if (v77)
  {
    v44 = v80;
    v43 = v81;
    if (v77 != 1)
    {
      v46 = 1;
      goto LABEL_9;
    }

    v45 = MEMORY[0x29EDC3900];
  }

  else
  {
    v45 = MEMORY[0x29EDC3908];
    v44 = v80;
    v43 = v81;
  }

  (*(v44 + 104))(v79, *v45, v43);
  v46 = 0;
LABEL_9:
  (*(v44 + 56))(v42, v46, 1, v43);
  v83[0] = v76;
  sub_29D939DA8();
  v47 = sub_29D76F0F8(v42);
  v49 = v48;
  v50 = sub_29D933FE8();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    sub_29D872AC4(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for AtrialFibrillationPromotionTileActionHandler(0);
  sub_29D76FAE4(&qword_2A17B40A0, type metadata accessor for AtrialFibrillationPromotionTileActionHandler, &unk_29D946F18);
  v51 = v82;
  sub_29D934038();

  sub_29D71847C(v47, v49);

  result = [objc_opt_self() atrialFibrillationEventType];
  if (result)
  {
    v53 = result;
    v54 = sub_29D934238();

    v55 = sub_29D9340C8();
    sub_29D7AF194(v54);

    v55(v83, 0);
    v56 = v79;
    v57 = v69;
    sub_29D76FA1C(v79, v69, sub_29D76F8C0);
    v59 = v80;
    v58 = v81;
    if ((*(v80 + 48))(v57, 1, v81) == 1)
    {
      sub_29D76FA84(v56, sub_29D76F8C0);
      (*(v70 + 8))(v51, v71);
      return sub_29D76FA84(v57, sub_29D76F8C0);
    }

    else
    {
      v60 = v65;
      (*(v59 + 32))(v65, v57, v58);
      (*(v59 + 16))(v64, v60, v58);
      v61 = v66;
      sub_29D9342E8();
      v62 = v68;
      sub_29D934068();
      (*(v67 + 8))(v61, v62);
      (*(v59 + 8))(v60, v58);
      sub_29D76FA84(v56, sub_29D76F8C0);
      return (*(v70 + 8))(v51, v71);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D76F0F8(uint64_t a1)
{
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76F8C0(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9342A8();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v31 - v18;
  sub_29D76FA1C(a1, v10, sub_29D76F8C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D76FA84(v10, sub_29D76F8C0);
    sub_29D934D28();
    v20 = sub_29D937878();
    v21 = sub_29D93A288();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315394;
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, &v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_29D6C2364(0x6174614472657375, 0xEF293A6874697728, &v32);
      _os_log_impl(&dword_29D677000, v20, v21, "%s.%s]: Feed item prominence is nil.", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    (*(v12 + 104))(v16, *MEMORY[0x29EDC3908], v11);
    sub_29D76FAE4(&qword_2A17B40A8, MEMORY[0x29EDC3918], MEMORY[0x29EDC3920]);
    sub_29D939EB8();
    sub_29D939EB8();
    v27 = *(v12 + 8);
    v27(v16, v11);
    v28 = v32 != v31[2];
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    LOBYTE(v32) = v28;
    sub_29D76FB2C();
    v30 = sub_29D9330E8();
    v27(v19, v11);

    return v30;
  }
}

uint64_t sub_29D76F598()
{

  v1 = OBJC_IVAR____TtC5Heart36AtrialFibrillationPromotionGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AtrialFibrillationPromotionGenerator(uint64_t a1)
{
  result = qword_2A1A25108;
  if (!qword_2A1A25108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D76F690(uint64_t a1)
{
  result = sub_29D934178();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D76F738@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart36AtrialFibrillationPromotionGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D76F7B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 18) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);

  return sub_29D76D618(v5, v4, a1);
}

uint64_t sub_29D76F874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D76F8F4(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B4098)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D934798();
    sub_29D934748();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B4098);
    }
  }
}

uint64_t sub_29D76FA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D76FA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D76FAE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D76FB2C()
{
  result = qword_2A17B40B0;
  if (!qword_2A17B40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B40B0);
  }

  return result;
}

void sub_29D76FB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AFibBurdenGetStartedDataSource(uint64_t a1)
{
  result = qword_2A17B40D8;
  if (!qword_2A17B40D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D76FC80()
{
  v1 = v0;
  v2 = *(v0 + qword_2A17B40C8);
  v3 = *(v0 + qword_2A17B40C8 + 8);
  v4 = sub_29D936AA8();
  if (*(v4 + 16) && (v5 = sub_29D6907F0(v2, v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);
  }

  else
  {

    v7 = 2;
  }

  v8 = *(v1 + qword_2A17B40B8);
  v9 = *(v1 + qword_2A17B40B8 + 8);
  v10 = sub_29D936AA8();
  if (*(v10 + 16) && (v11 = sub_29D6907F0(v8, v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + v11);
  }

  else
  {

    v13 = 2;
  }

  return v7 | (v13 << 8);
}

void sub_29D76FD58(unsigned int a1)
{
  v2 = (v1 + qword_2A17B40B8);
  *v2 = 0xD00000000000001ELL;
  v2[1] = 0x800000029D9601F0;
  v3 = (v1 + qword_2A17B40C0);
  *v3 = 0xD000000000000021;
  v3[1] = 0x800000029D960210;
  v4 = (v1 + qword_2A17B40C8);
  *v4 = 0xD000000000000014;
  v4[1] = 0x800000029D960240;
  v5 = (v1 + qword_2A17B40D0);
  *v5 = 0xD000000000000017;
  v5[1] = 0x800000029D960260;
  v6 = MEMORY[0x29EDC9E90];
  sub_29D7715B0(0, &qword_2A17B40F0, MEMORY[0x29EDC21E8], MEMORY[0x29EDC9E90]);
  sub_29D935928();
  *(swift_allocObject() + 16) = xmmword_29D93F680;
  sub_29D7715B0(0, &qword_2A17B40F8, MEMORY[0x29EDC21E0], v6);
  v7 = sub_29D935908();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = *(v8 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93F680;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v29 = v7;
  v30 = v8;
  sub_29D9334A8();
  sub_29D7715B0(0, &qword_2A17B4100, MEMORY[0x29EDC21D8], MEMORY[0x29EDC9E90]);
  sub_29D9358E8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D935E88();
  sub_29D935E88();
  sub_29D9358D8();
  sub_29D88BBC8(&unk_2A243CFF0);
  v11 = sub_29D939F18();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v10 + v9;
  sub_29D6AA360(&unk_2A243D010);
  sub_29D939D68();

  sub_29D9358F8();
  v28 = *MEMORY[0x29EDC21D0];
  v27 = *(v30 + 104);
  v27(v10 + v9);
  sub_29D9334A8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D935E88();
  sub_29D935E88();
  sub_29D9358D8();
  sub_29D88BBC8(&unk_2A243D060);
  v14 = sub_29D939F18();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_29D6AA360(&unk_2A243D080);
  sub_29D939D68();

  sub_29D9358F8();
  (v27)(v13 + v26, v28, v7);
  sub_29D935918();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D93F680;
  sub_29D9334A8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D935E88();
  sub_29D935E88();
  sub_29D9358D8();
  sub_29D88BBC8(&unk_2A243D0D0);
  v17 = sub_29D939F18();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16 + v9;
  sub_29D6AA360(&unk_2A243D0F0);
  sub_29D939D68();

  sub_29D9358F8();
  (v27)(v16 + v9, v28, v7);
  v25 = 0xE000000000000000;
  sub_29D9334A8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D935E88();
  sub_29D935E88();
  sub_29D9358D8();
  sub_29D88BBC8(&unk_2A243D140);
  v20 = sub_29D939F18();

  v21 = HKUIJoinStringsForAutomationIdentifier();

  if (v21)
  {
    sub_29D6AA360(&unk_2A243D160);
    v22 = sub_29D939D68();
    v24 = v23;

    LOBYTE(v25) = 1;
    sub_29D9358F8();
    (v27)(v19 + v26, v28, v29);
    sub_29D935918();
    [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D936878();
    swift_allocObject();
    sub_29D936868();
    sub_29D936AD8();
    return;
  }

LABEL_11:
  __break(1u);
}

double sub_29D770748()
{

  return result;
}

uint64_t sub_29D7707B8()
{
  sub_29D936AE8();

  return swift_deallocClassInstance();
}

uint64_t sub_29D770864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D7715B0(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v33 - v6;
  sub_29D771308(0);
  v9 = v8 - 8;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = (v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_29D933DA8();
  v14 = *(v9 + 56);
  *v12 = v13;
  v15 = sub_29D934B78();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a1, v15);
  if ((*(v16 + 88))(v12 + v14, v15) != *MEMORY[0x29EDC1B58])
  {
    goto LABEL_8;
  }

  if (v13 == 1)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v23 = sub_29D937B88();
    v24 = MEMORY[0x29EDC7800];
    *(a2 + 24) = v23;
    *(a2 + 32) = v24;
    sub_29D693F78(a2);
    sub_29D937B68();
    sub_29D935E88();
    sub_29D937B48();
    sub_29D718DF8();
    sub_29D93A658();
    v25 = sub_29D937A98();
    sub_29D937A58();
    v25(v34, 0);
    v26 = [objc_opt_self() labelColor];
    v27 = sub_29D937A98();
    sub_29D937A68();
    v27(v34, 0);
    goto LABEL_13;
  }

  if (v13)
  {
LABEL_8:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_29D771370(v12);
  }

  v33[3] = "TARTED_AFIB_DIAGNOSIS_TITLE";
  v17 = sub_29D933AA8();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v33[1] = *algn_2A17D0EB8;
  v33[2] = qword_2A17D0EB0;
  sub_29D7715B0(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D93DDB0;
  v34[0] = *MEMORY[0x29EDBAFA8];
  v19 = sub_29D93AD38();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x29EDC99B0];
  *(v18 + 64) = sub_29D69AD24();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_29D9334A8();
  if (*(v18 + 16))
  {
    sub_29D939D78();
  }

  sub_29D6940F0(v7);
  v28 = sub_29D937B88();
  v29 = MEMORY[0x29EDC7800];
  *(a2 + 24) = v28;
  *(a2 + 32) = v29;
  sub_29D693F78(a2);
  sub_29D937B68();
  sub_29D935E88();
  sub_29D937B48();
  sub_29D718DF8();
  sub_29D93A658();
  v30 = sub_29D937A98();
  sub_29D937A58();
  v30(v34, 0);
  v31 = [objc_opt_self() labelColor];
  v32 = sub_29D937A98();
  sub_29D937A68();
  v32(v34, 0);
LABEL_13:

  return (*(v16 + 8))(v12 + v14, v15);
}

id sub_29D770EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24[0] = a1;
  v3 = sub_29D937A28();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D937B88();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B58();
  v13 = sub_29D937A98();
  sub_29D937A38();
  v13(v26, 0);
  v14 = sub_29D937A98();
  sub_29D937A18();
  v14(v26, 0);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC77E0], v3);
  v15 = sub_29D937A98();
  sub_29D937A78();
  v15(v26, 0);
  sub_29D935E88();
  sub_29D937B48();
  v16 = [objc_opt_self() tintColor];
  v17 = sub_29D937A98();
  sub_29D937A68();
  v17(v26, 0);
  v18 = [objc_allocWithZone(MEMORY[0x29EDC7D20]) init];
  v26[3] = v8;
  v26[4] = MEMORY[0x29EDC7800];
  v19 = sub_29D693F78(v26);
  (*(v9 + 16))(v19, v12, v8);
  MEMORY[0x29ED6A590](v26);
  v20 = objc_allocWithZone(MEMORY[0x29EDC7D28]);
  v21 = v18;
  v22 = [v20 initWithTarget:v24[1] action:v25];
  [v21 addGestureRecognizer_];

  (*(v9 + 8))(v12, v8);
  return v21;
}

uint64_t sub_29D7711CC()
{
  result = sub_29D936AB8();
  if (result)
  {
    v1 = result;
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = v3;
      if ((*(v3 + 16))(ObjectType, v3))
      {
        v6 = v5;
        v7 = swift_getObjectType();
        (*(v6 + 24))(v1, v4, v7, v6);
        sub_29D936978();
      }
    }

    return sub_29D936978();
  }

  return result;
}

uint64_t sub_29D7712A8(uint64_t a1)
{

  sub_29D7711CC();
}

void sub_29D771308(uint64_t a1)
{
  if (!qword_2A17B40E8)
  {
    sub_29D934B78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B40E8);
    }
  }
}

uint64_t sub_29D771370(uint64_t a1)
{
  sub_29D771308(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29D7713CC(uint64_t a1)
{
  sub_29D771308(0);
  v3 = v2 - 8;
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_29D933DA8();
  v8 = *(v3 + 56);
  *v6 = v7;
  v9 = sub_29D934B78();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6 + v8, a1, v9);
  if ((*(v10 + 88))(v6 + v8, v9) == *MEMORY[0x29EDC1B50] && v7 == 1)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v13 = sub_29D9334A8();
    v15 = sub_29D770EA8(v13, v14, sel_learnMoreButtonTapped);

    (*(v10 + 8))(v6 + v8, v9);
    return v15;
  }

  else
  {
    sub_29D771370(v6);
    return 0;
  }
}

void sub_29D7715B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D771614(uint64_t a1)
{
  v2 = v1;
  sub_29D71BF90();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_context;
  v11 = sub_29D936378();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v2 + v10, a1, v11);
  v13 = sub_29D936338();
  v14 = [v13 profileIdentifier];
  v15 = [v14 type];

  if (v15 != 1)
  {

    goto LABEL_5;
  }

  v16 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v13];

  if (!v16)
  {
LABEL_5:
    type metadata accessor for NotOnboardedIsOnboardedProvider();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    LOBYTE(v23) = 0;
    sub_29D938338();
    sub_29D772D40(&qword_2A1A22340, sub_29D71BF90, MEMORY[0x29EDB8AB8]);
    v19 = sub_29D938418();
    (*(v12 + 8))(a1, v11);
    (*(v6 + 8))(v9, v5);
    *(v17 + 24) = v19;
    v18 = &off_2A24475D0;
    goto LABEL_6;
  }

  (*(v12 + 8))(a1, v11);
  v24 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v25 = MEMORY[0x29EDC2EA8];
  *&v23 = v16;
  type metadata accessor for FeatureStatusIsOnboardedProvider();
  v17 = swift_allocObject();
  sub_29D6959E8(&v23, v17 + 16);
  v18 = &off_2A24475E8;
LABEL_6:
  v20 = (v2 + OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_isOnboardedProvider);
  *v20 = v17;
  v20[1] = v18;
  return v2;
}

id sub_29D7718EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D936BE8();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D936D58();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D936D68();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D772A5C(0, &qword_2A17B2E28, &qword_2A17B2E30, MEMORY[0x29EDC22E8], MEMORY[0x29EDC9E90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D946C90;
  v15 = objc_opt_self();
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  v18 = v1 + OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_isOnboardedProvider;
  v20 = *(v1 + OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_isOnboardedProvider);
  v19 = *(v18 + 8);
  *(v14 + 56) = &_s36AFibBurdenChartOrOnboardingComponentVN;
  *(v14 + 64) = sub_29D772AC4();
  v21 = swift_allocObject();
  *(v14 + 32) = v21;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0;
  *(v21 + 16) = v17;
  *(v21 + 24) = 0xD00000000000001BLL;
  *(v21 + 32) = 0x800000029D960390;
  *(v21 + 40) = v20;
  *(v21 + 48) = v19;
  swift_unknownObjectRetain_n();
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v40 = v6;
  *(v14 + 96) = sub_29D9360E8();
  *(v14 + 104) = sub_29D772D40(&qword_2A17B4150, MEMORY[0x29EDC25F8], MEMORY[0x29EDC25F0]);
  sub_29D693F78((v14 + 72));
  sub_29D9360D8();
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v39 = a1;
  sub_29D772750(&unk_2A243D920);
  *(v14 + 136) = sub_29D9361F8();
  *(v14 + 144) = sub_29D772D40(&qword_2A17B4158, MEMORY[0x29EDC2638], MEMORY[0x29EDC2630]);
  sub_29D693F78((v14 + 112));
  sub_29D9361D8();
  v22 = swift_allocObject();
  v43 = xmmword_29D93F680;
  *(v22 + 16) = xmmword_29D93F680;
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = result;
  *(v22 + 56) = &_s37AFibBurdenLifeFactorsPlatterComponentVN;
  *(v22 + 64) = sub_29D772B18();
  *(v22 + 32) = v23;
  *(v22 + 40) = 0xD00000000000001CLL;
  *(v22 + 48) = 0x800000029D9603B0;
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = result;
  swift_getObjectType();
  sub_29D8CED54(v24, v20, 0, v19, &v51);
  *(v22 + 96) = &_s28AFibBurdenEducationComponentVN;
  *(v22 + 104) = sub_29D71C0F0();
  v25 = swift_allocObject();
  *(v22 + 72) = v25;
  v26 = v52[0];
  v25[1] = v51;
  v25[2] = v26;
  *(v25 + 41) = *(v52 + 9);
  v27 = sub_29D9362F8();
  *(v14 + 176) = v27;
  v28 = sub_29D772D40(&qword_2A17B4168, MEMORY[0x29EDC26C8], MEMORY[0x29EDC26C0]);
  *(v14 + 184) = v28;
  sub_29D693F78((v14 + 152));
  sub_29D936288();
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v14 + 216) = sub_29D936258();
  *(v14 + 224) = sub_29D772D40(&qword_2A17B2E48, MEMORY[0x29EDC2668], MEMORY[0x29EDC2660]);
  sub_29D693F78((v14 + 192));
  sub_29D936238();
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = result;
  v38 = v28;
  sub_29D772378(result, (v14 + 232));

  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = v27;
  *v13 = result;
  (*(v44 + 104))(v13, *MEMORY[0x29EDC2B00], v45);
  sub_29D9360F8();
  (*(v46 + 104))(v48, *MEMORY[0x29EDC2AF0], v47);
  *(v14 + 296) = sub_29D936128();
  *(v14 + 304) = sub_29D772D40(&qword_2A17B4170, MEMORY[0x29EDC2610], MEMORY[0x29EDC2608]);
  sub_29D693F78((v14 + 272));
  sub_29D936118();
  sub_29D936178();
  v31 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v43;
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v48 = v31;
  *(v32 + 56) = sub_29D936078();
  *(v32 + 64) = sub_29D772D40(&qword_2A17B4178, MEMORY[0x29EDC25B8], MEMORY[0x29EDC25B0]);
  sub_29D693F78((v32 + 32));
  sub_29D936068();
  sub_29D9361A8();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29D946CA0;
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_29D9362C8();
  *(v33 + 56) = sub_29D9362D8();
  *(v33 + 64) = sub_29D772D40(&qword_2A17B4180, MEMORY[0x29EDC26B8], MEMORY[0x29EDC26B0]);
  sub_29D693F78((v33 + 32));
  sub_29D9362A8();
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  *(v33 + 96) = &_s22AFibBurdenPDFComponentVN;
  *(v33 + 104) = sub_29D772B6C();
  v34 = swift_allocObject();
  *(v33 + 72) = v34;
  strcpy((v34 + 16), "AFibBurdenPDF");
  *(v34 + 30) = -4864;
  *(v34 + 48) = 0u;
  *(v34 + 64) = 0;
  *(v34 + 32) = 0u;
  sub_29D772BC0(v49, v34 + 32);
  result = [v15 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = result;
  *(v33 + 136) = &_s34AFibBurdenDisclosureItemsComponentVN;
  *(v33 + 144) = sub_29D772C50();
  *(v33 + 112) = v35;
  *(v33 + 120) = 0xD000000000000019;
  *(v33 + 128) = 0x800000029D960400;
  result = [v15 _quantityTypeWithCode_];
  if (result)
  {
    (*(v41 + 104))(v40, *MEMORY[0x29EDC2A38], v42);
    *(v33 + 176) = sub_29D936278();
    *(v33 + 184) = sub_29D772D40(&qword_2A17B4198, MEMORY[0x29EDC2678], MEMORY[0x29EDC2670]);
    sub_29D693F78((v33 + 152));
    sub_29D936268();
    *(v32 + 96) = sub_29D936298();
    *(v32 + 104) = sub_29D772D40(&qword_2A17B41A0, MEMORY[0x29EDC26A0], MEMORY[0x29EDC2698]);
    sub_29D693F78((v32 + 72));
    sub_29D936288();
    v36 = v38;
    *(v14 + 336) = v37;
    *(v14 + 344) = v36;
    sub_29D693F78((v14 + 312));
    sub_29D936288();
    return sub_29D9360B8();
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_29D772378@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D69567C(0, &qword_2A17B4138, 0x29EDBA0A8);
  sub_29D772A5C(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  sub_29D934528();
  v5 = sub_29D934518();
  v7 = v6;
  v8 = MEMORY[0x29EDC99B0];
  *(v4 + 56) = MEMORY[0x29EDC99B0];
  v9 = sub_29D69AD24();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = 0xD00000000000001BLL;
  *(v4 + 80) = 0x800000029D95AB80;
  sub_29D93A1C8();
  a2[3] = sub_29D936018();
  a2[4] = sub_29D772D40(&qword_2A17B4140, MEMORY[0x29EDC2590], MEMORY[0x29EDC2588]);
  sub_29D693F78(a2);
  v10 = a1;
  return sub_29D935FF8();
}

uint64_t sub_29D7724F8()
{
  v1 = OBJC_IVAR____TtC5Heart45AFibBurdenDataTypeDetailConfigurationProvider_context;
  v2 = sub_29D936378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenDataTypeDetailConfigurationProvider(uint64_t a1)
{
  result = qword_2A17B4118;
  if (!qword_2A17B4118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7725F8(uint64_t a1)
{
  result = sub_29D936378();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D7726E4(uint64_t a1)
{
  sub_29D93AE58();
  MEMORY[0x29ED6B260](a1);
  v2 = sub_29D93AE98();

  return sub_29D692F58(a1, v2);
}

unint64_t sub_29D772750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D772CA4(0);
    v3 = sub_29D93ABA8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_29D7726E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29D772820(void *a1)
{
  v2 = sub_29D93A378();
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  v3 = v2;
  sub_29D93A3B8();
  sub_29D6945AC(v11, v9);
  v4 = v3;
  sub_29D73460C(v4, v9, v10);
  sub_29D7728FC(v10, v9);
  sub_29D772958(0);
  v6 = objc_allocWithZone(v5);
  v7 = sub_29D938CF8();
  [a1 showViewController:v7 sender:0];

  sub_29D772A08(v10);
  return sub_29D69417C(v11);
}

void sub_29D772958(uint64_t a1)
{
  if (!qword_2A17B4128)
  {
    sub_29D7729B4();
    v1 = sub_29D938D28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4128);
    }
  }
}

unint64_t sub_29D7729B4()
{
  result = qword_2A17B4130;
  if (!qword_2A17B4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4130);
  }

  return result;
}

void sub_29D772A5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D772AC4()
{
  result = qword_2A17B4148;
  if (!qword_2A17B4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4148);
  }

  return result;
}

unint64_t sub_29D772B18()
{
  result = qword_2A17B4160;
  if (!qword_2A17B4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4160);
  }

  return result;
}

unint64_t sub_29D772B6C()
{
  result = qword_2A17B4188;
  if (!qword_2A17B4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4188);
  }

  return result;
}

uint64_t sub_29D772BC0(uint64_t a1, uint64_t a2)
{
  sub_29D772A5C(0, &qword_2A1A246D8, &qword_2A1A246E0, MEMORY[0x29EDC2D90], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D772C50()
{
  result = qword_2A17B4190;
  if (!qword_2A17B4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4190);
  }

  return result;
}

void sub_29D772CA4(uint64_t a1)
{
  if (!qword_2A17B41A8)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29D772D40(&unk_2A17B37E0, type metadata accessor for UIUserInterfaceSizeClass, &unk_29D93F360);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B41A8);
    }
  }
}

uint64_t sub_29D772D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for OnboardingCollectionViewControllerWithCancelButton(uint64_t a1)
{
  result = qword_2A17B41B0;
  if (!qword_2A17B41B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D772E14(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for OnboardingCollectionViewControllerWithCancelButton(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
}

id sub_29D772F0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingCollectionViewControllerWithCancelButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D772F4C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AtrialFibrillationPromotionTileActionHandler(uint64_t a1)
{
  result = qword_2A17B41C8;
  if (!qword_2A17B41C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D773040()
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = v0;
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    swift_getObjectType();
    sub_29D773A90();
    v7 = sub_29D939DA8();
    v9 = sub_29D6C2364(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0x2928706154646964, 0xE800000000000000, &v10);
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s.%{public}s] On-boarding button tapped", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  sub_29D7731F0();
}

void sub_29D7731F0()
{
  v1 = sub_29D933CE8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D936638();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  v30 = *(v7 + 8);
  v30(v10, v6);
  sub_29D693E2C(v32, v32[3]);
  v11 = sub_29D936588();
  sub_29D933C88();
  v12 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v13 = sub_29D933BB8();
  v14 = [v12 initWithCalendar_];

  (*(v2 + 8))(v5, v1);
  v15 = [objc_allocWithZone(MEMORY[0x29EDC52B0]) initWithOnboardingType:0 isFirstTimeOnboarding:1 healthStore:v11 dateCache:v14 provenance:3 delegate:v0];

  sub_29D69417C(v32);
  v16 = *&v0[qword_2A17B41C0];
  *&v0[qword_2A17B41C0] = v15;
  v17 = v15;

  if (v17 && (v18 = [v17 onboardingNavigationController], v17, v18))
  {
    [v18 setModalInPresentation_];
    sub_29D936B88();
    v19 = sub_29D936618();
    v30(v10, v6);
    [v19 showViewController:v18 sender:0];
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    sub_29D69C6C0(v20, qword_2A1A2C008);
    v21 = v0;
    v22 = sub_29D937878();
    v23 = sub_29D93A298();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v24 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29D773A90();
      v26 = sub_29D939DA8();
      v28 = sub_29D6C2364(v26, v27, v32);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95AC80, v32);
      _os_log_impl(&dword_29D677000, v22, v23, "[%{public}s.%{public}s] On-boarding navigation controller not initialized", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }
  }
}

uint64_t sub_29D773634(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[qword_2A17B41C0] = 0;
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D773750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AtrialFibrillationPromotionTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D7737B8()
{
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_2A17B41C0);
  *(v0 + qword_2A17B41C0) = 0;

  sub_29D936B88();
  v7 = sub_29D936618();
  (*(v2 + 8))(v5, v1);
  v8 = [v7 tabBarController];

  if (v8)
  {
    v9 = [objc_opt_self() atrialFibrillationEventType];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for AtrialFibrillationPromotionTileActionHandler(0);
      sub_29D773A48(&qword_2A17B40A0, type metadata accessor for AtrialFibrillationPromotionTileActionHandler, &unk_29D946F18);
      v11 = sub_29D936AF8();
      if (v11)
      {
        v12 = v11;
        sub_29D74E500(v11, 0);

        v8 = v10;
        v10 = v12;
      }

      v8 = v10;
    }
  }
}

void sub_29D773970(void *a1)
{
  v1 = a1;
  sub_29D7737B8();
}

uint64_t sub_29D773A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D773A90()
{
  result = qword_2A17B41F0;
  if (!qword_2A17B41F0)
  {
    type metadata accessor for AtrialFibrillationPromotionTileActionHandler(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B41F0);
  }

  return result;
}

id sub_29D773AD8()
{
  [*(*sub_29D693E2C(&v0[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider] *&v0[OBJC:sel_removeHeartRhythmAvailabilityObserver_ IVAR:v0 :? :? :? TtC5Heart36TachycardiaAdvertisableFeatureSource:?heartSettingsUtilityProvider + 24]) + 16)];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TachycardiaAdvertisableFeatureSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TachycardiaAdvertisableFeatureSource(uint64_t a1)
{
  result = qword_2A17B4218;
  if (!qword_2A17B4218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D773CB8()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D9334A8();
  v3 = v2;
  v4 = sub_29D9334A8();
  v6 = v5;
  v7 = v0;
  v8 = sub_29D939D28();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:{v7, 0xE000000000000000}];

  return MEMORY[0x2A1C60BA0](v1, v3, v4, v6, v9);
}

void sub_29D773E6C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_29D7747CC(a2, a3);
  }
}

uint64_t sub_29D773F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v8 = sub_29D939968();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D939998();
  v13 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v5 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);

  sub_29D939988();
  v26 = MEMORY[0x29EDCA190];
  sub_29D7758A0(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D7758A0(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v16, v12, v19);
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v25);
}

void *sub_29D774208(uint64_t a1, void (*a2)(char *))
{
  v3 = MEMORY[0x29EDCA180];
  sub_29D7758F8(0, &qword_2A17B1710, MEMORY[0x29EDCA180] + 8);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v9 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_29D934928();
    sub_29D7758A0(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    sub_29D93AEA8();
    a2(v7);
    return sub_29D775994(v7, &qword_2A17B1710, v3 + 8);
  }

  return result;
}

uint64_t sub_29D774330(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_29D939968();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D939998();
  v13 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  aBlock[4] = sub_29D7758E8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2444848;
  v19 = _Block_copy(aBlock);

  sub_29D939988();
  v23 = MEMORY[0x29EDCA190];
  sub_29D7758A0(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D7758A0(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v16, v12, v19);
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void *sub_29D77464C(uint64_t a1, char a2, void (*a3)(char *))
{
  v5 = MEMORY[0x29EDCA180];
  sub_29D7758F8(0, &qword_2A17B1710, MEMORY[0x29EDCA180] + 8);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    if (a2)
    {
      [objc_opt_self() tachycardiaThresholdHeartRate];
      v11 = sub_29D93A138();
    }

    else
    {
      v11 = 0;
    }

    [objc_opt_self() setTachycardiaThresholdHeartRate_];

    sub_29D934928();
    sub_29D7758A0(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    sub_29D93AEA8();
    a3(v9);

    return sub_29D775994(v9, &qword_2A17B1710, v5 + 8);
  }

  return result;
}

uint64_t sub_29D7747CC(void (*a1)(uint64_t), uint64_t a2)
{
  v75 = a2;
  v76 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29D937898();
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v69 = &v66 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v66 = &v66 - v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v67 = &v66 - v16;
  sub_29D7758F8(0, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
  v74 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v73 = &v66 - v19;
  v20 = sub_29D9339F8();
  v68 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D933A58();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = (v2 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider);
  sub_29D693E2C((v2 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider), *(v2 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider + 24));
  sub_29D852AAC();
  if (!v30 || (v31 = v30, v32 = HKNRDeviceCapabilityHeartRateV2(), sub_29D933A38(), v32, v33 = sub_29D933A28(), (*(v25 + 8))(v28, v24), v34 = [v31 supportsCapability_], v31, v33, !v34))
  {
    sub_29D937848();
    v51 = sub_29D937878();
    v52 = sub_29D93A2A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v77 = v54;
      *v53 = 136315394;
      v55 = sub_29D93AF08();
      v57 = sub_29D6C2364(v55, v56, &v77);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v77);
      _os_log_impl(&dword_29D677000, v51, v52, "[%s] %s -> false: heart rate motion context not supported on active watch", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v54, -1, -1);
      MEMORY[0x29ED6BE30](v53, -1, -1);
    }

    (*(v72 + 8))(v8, v71);
    goto LABEL_18;
  }

  v35 = objc_opt_self();
  if ([v35 isBackgroundHeartRateEnabled])
  {
    v36 = *sub_29D693E2C(v29, v29[3]);
    sub_29D852AAC();
    if (!v37 || (v38 = v37, v39 = *(v36 + 16), sub_29D9339E8(), v40 = sub_29D933958(), (*(v68 + 8))(v23, v20), v41 = [v39 isHeartAgeGatingEnabledOnWatch:v38 currentDate:v40], v38, v40, (v41 & 1) == 0))
    {
      if (([v35 isTachycardiaDetectionEnabled] & 1) == 0)
      {
        v64 = v73;
        *v73 = 1;
        goto LABEL_19;
      }

      v42 = v67;
      sub_29D937848();
      v43 = sub_29D937878();
      v44 = sub_29D93A2A8();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_17;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v45 = 136315394;
      v61 = sub_29D93AF08();
      v63 = sub_29D6C2364(v61, v62, &v77);

      *(v45 + 4) = v63;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v77);
      v50 = "[%s] %s -> false: detection already enabled";
      goto LABEL_16;
    }

    v42 = v66;
    sub_29D937848();
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v45 = 136315394;
      v47 = sub_29D93AF08();
      v49 = sub_29D6C2364(v47, v48, &v77);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v77);
      v50 = "[%s] %s -> false: heart age gating enabled on active watch";
LABEL_16:
      _os_log_impl(&dword_29D677000, v43, v44, v50, v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v45, -1, -1);
    }
  }

  else
  {
    v42 = v69;
    sub_29D937848();
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v45 = 136315394;
      v58 = sub_29D93AF08();
      v60 = sub_29D6C2364(v58, v59, &v77);

      *(v45 + 4) = v60;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v77);
      v50 = "[%s] %s -> false: background heart rate not enabled";
      goto LABEL_16;
    }
  }

LABEL_17:

  (*(v72 + 8))(v42, v71);
LABEL_18:
  v64 = v73;
  *v73 = 0;
LABEL_19:
  swift_storeEnumTagMultiPayload();
  v76(v64);
  return sub_29D775994(v64, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
}

uint64_t sub_29D774FFC(uint64_t a1)
{
  result = sub_29D934718();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D7750B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_identifier;
  v4 = sub_29D934718();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29D775178(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D7751E4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D705FAC;
}

uint64_t sub_29D7752A8()
{
  v1 = sub_29D939968();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939998();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = *(v0 + OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_queue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29D775878;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24447F8;
  v12 = _Block_copy(aBlock);

  sub_29D939988();
  v14[1] = MEMORY[0x29EDCA190];
  sub_29D7758A0(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D7758A0(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v10, v5, v12);
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void *sub_29D77558C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_29D7747CC(sub_29D775898, a1);
  }

  return result;
}

void sub_29D775608(uint64_t a1, uint64_t a2)
{
  sub_29D7758F8(0, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v9[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29D750E68(a1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29D775994(v6, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_6;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
LABEL_6:
        swift_getObjectType();
        sub_29D7758A0(&qword_2A17B4228, type metadata accessor for TachycardiaAdvertisableFeatureSource, &unk_29D946FD8);
        sub_29D934A38();

        sub_29D936978();
        return;
      }
    }
  }
}

uint64_t sub_29D775880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7758A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7758F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_29D934928();
    sub_29D7758A0(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    v4 = sub_29D93AEB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D775994(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_29D7758F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D775A40(uint64_t a1)
{
  result = type metadata accessor for CardioFitnessHealthChecklistSettingsState(319);
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

unint64_t sub_29D775B18(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    sub_29D935E88();
    v6 = sub_29D93AB48();

    return v6;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    sub_29D935E88();
    sub_29D93AD88();
    if (!swift_dynamicCastMetatype())
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        for (i = (v2 + 32); *i; ++i)
        {
          if (!--v4)
          {
            return v1;
          }
        }

        return v2 | 1;
      }
    }

    return v1;
  }
}

uint64_t sub_29D775BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v21 = MEMORY[0x29EDCA190];
    sub_29D7EE538(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    v5 = MEMORY[0x29EDC1910];
    v6 = MEMORY[0x29EDC18F8];
    do
    {
      sub_29D6945AC(v4, v17);
      sub_29D6B7370(0, &qword_2A17B1080, v5);
      sub_29D6B7370(0, &qword_2A17B1140, v6);
      swift_dynamicCast();
      v21 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_29D7EE538((v7 > 1), v8 + 1, 1);
      }

      v9 = v19;
      v10 = v20;
      v11 = sub_29D693DDC(v18, v19);
      MEMORY[0x2A1C7C4A8](v11, v11);
      v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v14 + 16))(v13);
      sub_29D778AC4(v8, v13, &v21, v9, v10);
      sub_29D69417C(v18);
      v2 = v21;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29D775DB0(uint64_t a1)
{
  v2 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_29D7EE538(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_29D77931C(v9, v6, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29D7EE538((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_29D778C64(&qword_2A17B2CB8, type metadata accessor for HypertensionNotificationsStatusDataSourceItem, &unk_29D943800);
      v13 = sub_29D693F78(&v15);
      sub_29D77931C(v6, v13, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
      *(v8 + 16) = v12 + 1;
      sub_29D679D3C(&v15, v8 + 40 * v12 + 32);
      sub_29D7794DC(v6, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29D775FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v20 = MEMORY[0x29EDCA190];
    sub_29D7EE538(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v16 = *v4;
      v17 = v5;
      v6 = v4[3];
      v18 = v4[2];
      v19 = v6;
      sub_29D778B5C(&v16, &v13);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_29D7EE538((v7 > 1), v8 + 1, 1);
        v2 = v20;
      }

      v14 = &type metadata for HypertensionNotificationsEducationDataSourceItem;
      v15 = sub_29D778BB8();
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v17;
      v9[1] = v16;
      v9[2] = v10;
      v11 = v19;
      v9[3] = v18;
      v9[4] = v11;
      *(v2 + 16) = v8 + 1;
      sub_29D679D3C(&v13, v2 + 40 * v8 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29D776128(uint64_t a1)
{
  v2 = sub_29D935DA8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v22 = MEMORY[0x29EDCA190];
    sub_29D7EE538(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29D7EE538((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_29D778C64(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
      v15 = sub_29D693F78(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_29D679D3C(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29D776350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x29EDCA190];
  if (v5)
  {
    v17 = MEMORY[0x29EDCA190];
    sub_29D7EE620(0, v5, 0);
    v6 = v17;
    v12 = a1 + 32;
    a5(0, a2, a3, a4);
    sub_29D778C0C(0, &qword_2A17B42A0, &qword_2A17B1140, MEMORY[0x29EDC18F8]);
    do
    {
      sub_29D935E88();
      swift_dynamicCast();
      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29D7EE620((v13 > 1), v14 + 1, 1);
      }

      *(v17 + 16) = v14 + 1;
      *(v17 + 8 * v14 + 32) = v16;
      v12 += 8;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_29D77648C(uint64_t a1)
{
  v2 = sub_29D934FF8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v22 = MEMORY[0x29EDCA190];
    sub_29D7EE788(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29D7EE788((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x29EDC1CC0];
      v15 = sub_29D693F78(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_29D679D3C(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29D776658(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v13 = MEMORY[0x29EDCA190];
    sub_29D7EE7C0(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v8 = *(v2 + 24);
      sub_29D935E88();
      if (v7 >= v8 >> 1)
      {
        sub_29D7EE7C0((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for AFibBurdenPDFChartPage;
      v12 = sub_29D779790();
      *&v10 = v5;
      *(&v10 + 1) = v6;
      *(v2 + 16) = v7 + 1;
      sub_29D679D3C(&v10, v2 + 40 * v7 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29D776764@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_2A17B4270;
  swift_beginAccess();
  v4 = *(type metadata accessor for CardioFitnessHealthChecklistSettingsState(0) + 20);
  v5 = sub_29D9346E8();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void sub_29D7767FC()
{
  swift_getObjectType();
  sub_29D779384(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v30 - v3;
  sub_29D77953C(0);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7795E8(0);
  v11 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + qword_2A17B4240);
  v16 = [v15 profileIdentifier];
  v17 = [v16 type];

  if (v17 == 1 && (v18 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6C0] healthStore:v15]) != 0)
  {
    v19 = v18;
    sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
    v30 = v19;
    v33[0] = sub_29D937288();
    sub_29D6B7D8C(0);
    type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
    sub_29D778C64(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
    sub_29D938428();

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v20 = sub_29D93A468();
    v33[0] = v20;
    v21 = sub_29D93A448();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_29D778C64(&qword_2A17B42C8, sub_29D77953C, MEMORY[0x29EDB88A0]);
    sub_29D706380();
    sub_29D938538();
    sub_29D779720(v4, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

    (*(v31 + 8))(v9, v6);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_29D778C64(&qword_2A17B42D0, sub_29D7795E8, MEMORY[0x29EDB89E8]);
    sub_29D938588();

    (v32[1].isa)(v14, v11);
    swift_beginAccess();
    sub_29D938258();
    swift_endAccess();
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v32 = sub_29D937878();
    v23 = sub_29D93A298();
    if (os_log_type_enabled(v32, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v24 = 136446210;
      v26 = sub_29D93AF08();
      v28 = sub_29D6C2364(v26, v27, v33);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29D677000, v32, v23, "[%{public}s] Unable to get feature status provider from health store, is this not a primary profile?", v24, 0xCu);
      sub_29D69417C(v25);
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    else
    {
      v29 = v32;
    }
  }
}

uint64_t sub_29D776E18@<X0>(NSObject *a1@<X0>, char *a2@<X8>)
{
  sub_29D779384(0, &qword_2A1A24720, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = sub_29D9349A8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9371B8();
  sub_29D6DD1FC(v13, sub_29D6E2864, sub_29D6E2868, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_29D779720(v7, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = sub_29D6E0EB0(a1, a2);
    (*(v9 + 8))(v12, v8, v15);
    v14 = 0;
  }

  v16 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  return (*(*(v16 - 8) + 56))(a2, v14, 1, v16);
}

void sub_29D777074(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29D77931C(a1, v6, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
    v9 = qword_2A17B4270;
    swift_beginAccess();
    sub_29D7796BC(v6, v8 + v9);
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      swift_getObjectType();
      sub_29D9367C8();
      sub_29D936978();
    }
  }
}

uint64_t sub_29D7771D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29D9346E8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D934798();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AA840();
  v14 = sub_29D934758();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v15 = v2 + qword_2A17B4270;
    swift_beginAccess();
    v16 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
    (*(v5 + 16))(v8, v15 + *(v16 + 20), v4);
    sub_29D9347C8();
    sub_29D9347A8();
    (*(v5 + 8))(v8, v4);
    sub_29D935E88();
    sub_29D9368E8();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_29D9368F8();
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t sub_29D777458()
{
  swift_getObjectType();
  v37 = MEMORY[0x29EDCA190];
  v1 = objc_opt_self();
  v2 = sub_29D939D28();
  v3 = [v1 groupSpecifierWithID_];

  if (v3)
  {
    v4 = v0 + qword_2A17B4270;
    swift_beginAccess();
    v5 = (v4 + *(type metadata accessor for CardioFitnessHealthChecklistSettingsState(0) + 28));
    if (v5[3])
    {
      v7 = v5[4];
      v6 = v5[5];
      sub_29D935E88();
      sub_29D935E88();
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v17 = objc_opt_self();
    sub_29D935E88();
    v18 = [v17 cardioFitnessWristDetectFooterLinkURL];
    v19 = sub_29D939D68();
    v21 = v20;

    if (v6)
    {
      if (v7 == v19 && v6 == v21)
      {
      }

      else
      {
        sub_29D93AD78();
      }
    }

    else
    {
    }

    v22 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
    v23 = sub_29D939D28();
    v24 = [v22 initWithString_];

    v25 = sub_29D939D28();

    v26 = [v24 localizedStandardRangeOfString_];
    v28 = v27;

    sub_29D69567C(0, &qword_2A17B2A38, 0x29EDC6268);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v30)
    {
      sub_29D939D68();
      v30 = sub_29D939D28();
    }

    [v3 setProperty:v30 forKey:*MEMORY[0x29EDC62D0]];

    v31 = sub_29D939D28();

    [v3 setProperty:v31 forKey:*MEMORY[0x29EDC62F0]];

    v38.location = v26;
    v38.length = v28;
    v32 = NSStringFromRange(v38);
    if (!v32)
    {
      sub_29D939D68();
      v32 = sub_29D939D28();
    }

    [v3 setProperty:v32 forKey:*MEMORY[0x29EDC62E0]];

    v33 = [objc_opt_self() valueWithNonretainedObject_];
    [v3 setProperty:v33 forKey:*MEMORY[0x29EDC62E8]];
    sub_29D933DC8();
    v34 = sub_29D939D28();

    [v3 setProperty:v34 forKey:*MEMORY[0x29EDC62D8]];

    v35 = v3;
    MEMORY[0x29ED6A300]();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();

    return v37;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v8 = sub_29D937898();
    sub_29D69C6C0(v8, qword_2A1A2C008);
    v9 = sub_29D937878();
    v10 = sub_29D93A288();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36[0] = v12;
      *v11 = 136446210;
      v13 = sub_29D93AF08();
      v15 = sub_29D6C2364(v13, v14, v36);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Could not get specifier footer content.", v11, 0xCu);
      sub_29D69417C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    return MEMORY[0x29EDCA190];
  }
}

uint64_t sub_29D7779A4()
{
  v8 = MEMORY[0x29EDCA190];
  v1 = [objc_opt_self() cardioFitnessTitleDescription];
  if (!v1)
  {
    sub_29D939D68();
    v1 = sub_29D939D28();
  }

  v2 = [objc_opt_self() preferenceSpecifierNamed:v1 target:v0 set:sel_setCardioFitnessEnabledWithValue_ get:sel_isCardioFitnessEnabled detail:0 cell:6 edit:0];

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = sub_29D939D28();
  [v2 setIdentifier_];

  swift_beginAccess();
  v4 = sub_29D939FC8();
  [v2 setProperty:v4 forKey:*MEMORY[0x29EDC62C8]];

  v5 = sub_29D939FC8();
  [v2 setProperty:v5 forKey:*MEMORY[0x29EDC62A0]];

  v6 = v2;
  MEMORY[0x29ED6A300]();
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D939F78();
  }

  sub_29D939FA8();

  return v8;
}

id sub_29D777B88(uint64_t a1)
{
  v2 = qword_2A17B4270;
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];

  return v3;
}

uint64_t sub_29D777C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2A1C73D48](sub_29D777C28, 0, 0);
}

uint64_t sub_29D777C28()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[19];
    v3 = *MEMORY[0x29EDBA788];
    v0[21] = *MEMORY[0x29EDBA788];
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_29D777D98;
    v4 = swift_continuation_init();
    sub_29D6ACB00(0);
    v0[17] = v5;
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29D8D0FE0;
    v0[13] = &unk_2A2444978;
    v0[14] = v4;
    [v1 setFeatureSettingNumber:v2 forKey:v3 completion:v0 + 10];

    return MEMORY[0x2A1C73CC0](v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_29D777D98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_29D777F08;
  }

  else
  {
    v2 = sub_29D777EA8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D777EA8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D777F08(uint64_t a1)
{
  v21 = v1;
  v2 = v1[21];
  swift_willThrow();

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = v1[22];
  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = v3;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[22];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136446466;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Error when setting Cardio Fitness setting enabled: %@", v10, 0x16u);
    sub_29D7794DC(v11, sub_29D6ACA98);
    MEMORY[0x29ED6BE30](v11, -1, -1);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  else
  {
  }

  v18 = v1[1];

  return v18();
}

uint64_t sub_29D77812C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_29D779384(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = sub_29D93A028();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(a1 + qword_2A17B4248);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = a3;
  v12[6] = ObjectType;
  swift_unknownObjectRetain();
  v13 = a3;
  sub_29D6BEBA4(0, 0, v9, &unk_29D947190, v12);
}

void sub_29D778284(char *a1)
{
  v2 = &a1[qword_2A17B4270];
  swift_beginAccess();
  if (*&v2[*(type metadata accessor for CardioFitnessHealthChecklistSettingsState(0) + 28) + 24])
  {
    v3 = a1;
    sub_29D935E88();
    sub_29D939DF8();
  }
}

void sub_29D778318()
{
  v1 = qword_2A1A257A0;
  v2 = *(v0 + qword_2A17B4240);
  if (v1 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();

  v3 = v2;
  sub_29D6E8EC8(v3);

  v4 = objc_allocWithZone(sub_29D934568());
  v5 = sub_29D934558();
  v6 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v7 = sub_29D936F08();
    sub_29D936978();
    [v7 presentViewController:v6 animated:1 completion:0];
  }
}

void sub_29D7784BC(void *a1)
{
  v1 = a1;
  sub_29D778318();
}

uint64_t sub_29D778534()
{

  sub_29D936978();

  sub_29D68B77C(v0 + qword_2A17B4260);
  sub_29D68B77C(v0 + qword_2A17B4268);
  return sub_29D7794DC(v0 + qword_2A17B4270, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
}

uint64_t sub_29D77860C(uint64_t a1)
{

  sub_29D936978();

  sub_29D68B77C(a1 + qword_2A17B4260);
  sub_29D68B77C(a1 + qword_2A17B4268);
  return sub_29D7794DC(a1 + qword_2A17B4270, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
}

void (*sub_29D778758(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17B4260;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7787F8;
}

uint64_t sub_29D778860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5 + *a5;
  swift_beginAccess();
  *(v7 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D7788C8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17B4268;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7797E4;
}

unint64_t sub_29D77896C()
{
  v4 = MEMORY[0x29EDCA190];
  v0 = sub_29D777458();
  sub_29D88BF0C(v0);
  v1 = sub_29D7779A4();
  sub_29D88BF0C(v1);
  v2 = sub_29D775B18(v4);

  return v2;
}

id sub_29D778A7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D778AC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29D693F78(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29D679D3C(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_29D778BB8()
{
  result = qword_2A17B4298;
  if (!qword_2A17B4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4298);
  }

  return result;
}

void sub_29D778C0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D6B7370(255, a3, a4);
    v5 = sub_29D939FB8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D778C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29D778CAC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_29D779384(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v28 - v9;
  v11 = (v3 + qword_2A17B4230);
  *v11 = 0xD000000000000017;
  v11[1] = 0x800000029D9606D0;
  v12 = (v3 + qword_2A17B4238);
  *v12 = 0xD000000000000015;
  v12[1] = 0x800000029D9606F0;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v13 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v13 = MEMORY[0x29EDCA1A0];
  }

  *(v3 + qword_2A17B4250) = v13;
  *(v3 + qword_2A17B4258) = 0;
  *(v3 + qword_2A17B4260 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17B4268 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17B4240) = a1;
  v14 = [a1 featureAvailabilityProviderForIdentifier_];
  if (!v14)
  {
    v15 = v3;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v16 = sub_29D937898();
    sub_29D69C6C0(v16, qword_2A1A2C008);
    v17 = sub_29D937878();
    v18 = sub_29D93A298();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136446210;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v29);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s] Unable to get feature availability provider from health store, is this not a primary profile?", v19, 0xCu);
      sub_29D69417C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    v14 = 0;
    v3 = v15;
  }

  *(v3 + qword_2A17B4248) = v14;
  sub_29D77931C(a2, v3 + qword_2A17B4270, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
  v24 = sub_29D934C58();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v10, a3, v24);
  (*(v25 + 56))(v10, 0, 1, v24);
  v26 = sub_29D934C48();
  sub_29D7767FC();

  (*(v25 + 8))(a3, v24);
  sub_29D7794DC(a2, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
  return v26;
}

id sub_29D7790B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v7 = sub_29D934C58();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D77931C(a2, v15, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
  (*(v8 + 16))(v11, a3, v7);
  v16 = objc_allocWithZone(type metadata accessor for CardioFitnessHealthChecklistSpecifierDataSource(0));
  v17 = sub_29D778CAC(a1, v15, v11);
  sub_29D778C64(&qword_2A17B42B0, type metadata accessor for CardioFitnessHealthChecklistSpecifierDataSource, &unk_29D947124);
  v18 = v17;
  v19 = sub_29D9365D8();
  sub_29D8AA778();
  v20 = sub_29D939D28();

  [v19 setTitle_];

  (*(v8 + 8))(a3, v7);
  sub_29D7794DC(a2, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
  return v19;
}

uint64_t sub_29D77931C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D779384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7793E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D777C04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29D7794DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D77953C(uint64_t a1)
{
  if (!qword_2A17B42B8)
  {
    sub_29D6B7D8C(255);
    type metadata accessor for CardioFitnessHealthChecklistSettingsState(255);
    sub_29D778C64(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B42B8);
    }
  }
}

void sub_29D7795E8(uint64_t a1)
{
  if (!qword_2A17B42C0)
  {
    sub_29D77953C(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D778C64(&qword_2A17B42C8, sub_29D77953C, MEMORY[0x29EDB88A0]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B42C0);
    }
  }
}

uint64_t sub_29D7796BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D779720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D779384(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D779790()
{
  result = qword_2A17B42D8;
  if (!qword_2A17B42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B42D8);
  }

  return result;
}

uint64_t sub_29D7797E8()
{
  v0 = sub_29D933F58();
  sub_29D6FD494(v0, qword_2A1A22D70);
  v1 = sub_29D69C6C0(v0, qword_2A1A22D70);
  v2 = *MEMORY[0x29EDC3710];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_29D7798C4@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_29D934148();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9341B8();
  sub_29D77BC2C(0, &qword_2A1A24898, MEMORY[0x29EDC3798]);
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D93DDB0;
  if (qword_2A1A22D68 != -1)
  {
    swift_once();
  }

  v10 = sub_29D69C6C0(v6, qword_2A1A22D70);
  (*(v7 + 16))(v9 + v8, v10, v6);
  sub_29D6E4080(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  v11 = sub_29D8AA8CC();
  sub_29D8E8608(v11);

  (*(v2 + 104))(v5, *MEMORY[0x29EDC3898], v1);
  return sub_29D934168();
}

uint64_t sub_29D779B38(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_29D6BBF08(0);
  v7 = v6;
  v19 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC5Heart50CardioFitnessClassificationStatusGeneratorPipeline_context;
  v12 = sub_29D9341E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v20 = v12;
  v14(v2 + v11, a1);
  v21 = a2;
  v22 = sub_29D779E08(a1, a2);
  v15 = sub_29D934198();
  sub_29D77B878(0, &qword_2A1A24AD8, sub_29D6CE0BC);
  sub_29D77B8DC(&qword_2A1A24AE0, &qword_2A1A24AD8, sub_29D6CE0BC);
  if (v15)
  {
    v16 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D77B788(&qword_2A1A224E8, sub_29D6BBF08, MEMORY[0x29EDB8940]);
    v16 = sub_29D938418();

    (*(v19 + 8))(v10, v7);
  }

  v22 = v16;
  sub_29D77B878(0, &qword_2A1A24AD8, sub_29D6CE0BC);
  v17 = sub_29D938418();

  (*(v13 + 8))(a1, v20);

  *(v3 + OBJC_IVAR____TtC5Heart50CardioFitnessClassificationStatusGeneratorPipeline_publisher) = v17;
  return v3;
}

uint64_t sub_29D779E08(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v31 = sub_29D9341E8();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v31, v5);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D77B7D0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D77B92C(0);
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934198();
  sub_29D934418();
  v35 = a2;
  sub_29D6B8230();
  v35 = sub_29D937268();
  v17 = MEMORY[0x29EDC2D78];
  sub_29D77B878(0, &qword_2A1A22410, MEMORY[0x29EDC2D78]);
  sub_29D77B8DC(&qword_2A1A22420, &qword_2A1A22410, v17);
  sub_29D938468();

  v18 = MEMORY[0x29EDB8908];
  sub_29D77B788(&qword_2A1A22608, sub_29D77B7D0, MEMORY[0x29EDB8908]);
  v19 = sub_29D938418();
  (*(v8 + 8))(v11, v7);
  v35 = v19;
  v20 = v30;
  v21 = v31;
  (*(v3 + 16))(v30, v29, v31);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = (v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v3 + 32))(v24 + v22, v20, v21);
  *(v24 + v23) = v32;
  sub_29D77B9D8();
  sub_29D6CE0BC();
  sub_29D77B788(&qword_2A1A223F0, sub_29D77B9D8, MEMORY[0x29EDB8A00]);
  sub_29D938468();

  sub_29D77B788(&qword_2A1A225C8, sub_29D77B92C, v18);
  v25 = v33;
  v26 = sub_29D938418();
  (*(v34 + 8))(v16, v25);
  return v26;
}

uint64_t sub_29D77A24C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29D934178();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9341E8();
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  (*(v14 + 16))(v13, a2);
  sub_29D7798C4(v9);
  v15 = type metadata accessor for CardioFitnessClassificationStatusGenerator(0);
  v16 = swift_allocObject();
  sub_29D77A584(v13, v9, a1);
  a3[3] = v15;
  result = sub_29D77B788(&qword_2A1A233D0, type metadata accessor for CardioFitnessClassificationStatusGenerator, &unk_29D94721C);
  a3[4] = result;
  *a3 = v16;
  return result;
}

uint64_t sub_29D77A3DC()
{
  v1 = OBJC_IVAR____TtC5Heart50CardioFitnessClassificationStatusGeneratorPipeline_context;
  v2 = sub_29D9341E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D77A4B0(uint64_t a1)
{
  result = sub_29D9341E8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_29D77A584(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a3;
  v28 = a1;
  v29 = a2;
  v6 = v3;
  v30 = *v3;
  v31 = v3;
  v27 = sub_29D9341E8();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v27, v9);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE508(0);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC5Heart42CardioFitnessClassificationStatusGenerator_domain;
  v17 = sub_29D934178();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6 + v16, a2, v17);
  v19 = v27;
  (*(v7 + 16))(v10, a1, v27);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = v20 + v8;
  v22 = (v20 + v8) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v20, v10, v19);
  *(v23 + v21) = v32;
  *(v23 + v22 + 8) = v30;
  sub_29D6CE59C(0);
  sub_29D77B788(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);
  sub_29D938378();
  sub_29D77B788(&qword_2A1A24A00, sub_29D6CE508, MEMORY[0x29EDB8AE8]);
  v24 = v33;
  v25 = sub_29D938418();
  (*(v18 + 8))(v29, v17);
  (*(v7 + 8))(v28, v19);
  (*(v34 + 8))(v15, v24);
  result = v31;
  v31[2] = v25;
  return result;
}

uint64_t sub_29D77A8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v4 = a2;
  sub_29D6D09E0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D77ABBC(a1, v4);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  sub_29D935E88();
  v15 = sub_29D937878();
  v16 = sub_29D93A2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446466;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, &v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = MEMORY[0x29ED6A340](v13, MEMORY[0x29EDC3A38]);
    v25 = sub_29D6C2364(v23, v24, &v30);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s]: Returning these changes: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v19, -1, -1);
    v26 = v18;
    a4 = v29;
    MEMORY[0x29ED6BE30](v26, -1, -1);
  }

  v30 = v13;
  sub_29D77BBD8(0, &qword_2A1A249B8, MEMORY[0x29EDC9A40]);
  sub_29D938338();
  sub_29D77B788(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
  v27 = sub_29D938418();
  result = (*(v9 + 8))(v12, v8);
  *a4 = v27;
  return result;
}

uint64_t sub_29D77ABBC(uint64_t a1, char a2)
{
  v3 = sub_29D933F98();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v18[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933108();
  swift_allocObject();
  sub_29D9330F8();
  LOBYTE(v18[0]) = a2;
  sub_29D77BB84();
  v8 = sub_29D9330E8();
  v10 = v9;

  sub_29D934188();
  sub_29D693E2C(v18, v18[3]);
  v11 = sub_29D934118();
  v12 = [v11 profileIdentifier];

  sub_29D77B228(v12);
  sub_29D69417C(v18);
  sub_29D9341B8();
  sub_29D6AA230(v8, v10);
  sub_29D933F88();
  sub_29D77BBD8(0, &qword_2A1A21F60, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  v17 = xmmword_29D93DDB0;
  *(v13 + 16) = xmmword_29D93DDB0;
  sub_29D77BC2C(0, &qword_2A1A21F78, MEMORY[0x29EDC37D8]);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v17;
  (*(v4 + 16))(v15 + v14, v7, v3);
  *(v13 + 32) = v15;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 64;
  sub_29D6AA284(v8, v10);
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t sub_29D77AFE8()
{

  v1 = OBJC_IVAR____TtC5Heart42CardioFitnessClassificationStatusGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D77B0B4(uint64_t a1)
{
  result = sub_29D934178();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D77B154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart42CardioFitnessClassificationStatusGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D77B1D0(unsigned __int8 *a1@<X8>)
{
  v2 = sub_29D9371B8();
  v3 = [v2 areAllRequirementsSatisfied];

  *a1 = v3;
}

unint64_t sub_29D77B228(void *a1)
{
  v2 = sub_29D933A58();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_29D93AA18();

  v12 = 0xD000000000000022;
  v13 = 0x800000029D960870;
  v7 = [a1 identifier];
  sub_29D933A38();

  v8 = sub_29D933A18();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x29ED6A240](v8, v10);

  return v12;
}

uint64_t sub_29D77B37C(uint64_t a1)
{
  v2 = sub_29D9341E8();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9342F8();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC(0);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D934358();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(v40, v40[3]);
  v18 = sub_29D934118();
  sub_29D69417C(v40);
  v39 = a1;
  sub_29D9341D8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v34;
    v19 = v35;
    (*(v34 + 32))(v8, v12, v35);
    sub_29D77B788(&qword_2A1A24770, MEMORY[0x29EDC39C0], MEMORY[0x29EDC39C8]);
    swift_willThrowTypedImpl();
    (*(v20 + 8))(v8, v19);
    v21 = *MEMORY[0x29EDBA6C0];
    v22 = v18;
    v23 = 0;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_29D934348();
    (*(v14 + 8))(v17, v13);
    v24 = *MEMORY[0x29EDBA6C0];
    v25 = v18;
    v21 = v24;
    v23 = sub_29D939D28();
  }

  v26 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v21 healthStore:v18 currentCountryCode:v23];

  v28 = v36;
  v27 = v37;
  v30 = v38;
  v29 = v39;
  (*(v37 + 16))(v36, v39, v38);
  type metadata accessor for CardioFitnessClassificationStatusGeneratorPipeline(0);
  v31 = swift_allocObject();
  sub_29D779B38(v28, v26);

  (*(v27 + 8))(v29, v30);
  return v31;
}

uint64_t sub_29D77B788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D77B7D0(uint64_t a1)
{
  if (!qword_2A1A22600)
  {
    v1 = MEMORY[0x29EDC2D78];
    sub_29D77B878(255, &qword_2A1A22410, MEMORY[0x29EDC2D78]);
    sub_29D77B8DC(&qword_2A1A22420, &qword_2A1A22410, v1);
    v2 = sub_29D9380F8();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A22600);
    }
  }
}

void sub_29D77B878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938238();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D77B8DC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D77B878(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D77B92C(uint64_t a1)
{
  if (!qword_2A1A225C0)
  {
    sub_29D77B9D8();
    sub_29D6CE0BC();
    sub_29D77B788(&qword_2A1A223F0, sub_29D77B9D8, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A225C0);
    }
  }
}

void sub_29D77B9D8()
{
  if (!qword_2A1A223E8)
  {
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A223E8);
    }
  }
}

uint64_t sub_29D77BA38@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D77A24C(a1, v6, a2);
}

uint64_t sub_29D77BAE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + v4 + *(v3 + 64));

  return sub_29D77A8D4(v1 + v4, v5, a1);
}

unint64_t sub_29D77BB84()
{
  result = qword_2A1A23BB8;
  if (!qword_2A1A23BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23BB8);
  }

  return result;
}

void sub_29D77BBD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC3A38]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D77BC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93AD48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for CardioFitnessOnboardingFactorsViewController(uint64_t a1)
{
  result = qword_2A17B42E8;
  if (!qword_2A17B42E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D77BD18()
{
  *(v0 + qword_2A17B42E0 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D77C524(0);
  sub_29D935398();
  *(swift_allocObject() + 16) = xmmword_29D946CA0;
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_29D9334A8();

  v4 = [v2 bundleForClass_];
  sub_29D9334A8();

  sub_29D935388();
  v5 = [v2 bundleForClass_];
  sub_29D9334A8();

  v6 = [v2 bundleForClass_];
  sub_29D9334A8();

  sub_29D935388();
  v7 = [v2 bundleForClass_];
  sub_29D9334A8();

  v8 = [v2 bundleForClass_];
  sub_29D9334A8();

  sub_29D935388();
  v9 = [v2 bundleForClass_];
  sub_29D9334A8();

  v10 = [v2 bundleForClass_];
  sub_29D9334A8();

  sub_29D935388();
  v11 = [v2 &selRef:ObjCClassFromMetadata initWithIconImage:0xE000000000000000 titleText:? detailText:? tintColor:? + 3];
  sub_29D9334A8();

  return sub_29D936B68();
}

id sub_29D77C320(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingFactorsViewController(0);
  return objc_msgSendSuper2(&v2, sel_viewDidLoad);
}

uint64_t sub_29D77C364()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_29D888E9C(v0, result);

    return sub_29D936978();
  }

  return result;
}

void sub_29D77C3C4(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D77C57C(v3);
    sub_29D936978();
  }
}

id sub_29D77C480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingFactorsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D77C4D8(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B42E0 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D77C524(uint64_t a1)
{
  if (!qword_2A17B42F8)
  {
    sub_29D935398();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B42F8);
    }
  }
}

void sub_29D77C57C(uint64_t a1)
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446466;
    nullsub_1();
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v9);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D960A80, &v9);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: User pressed cancel button", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  sub_29D82A174(1, 0, 0, 0);
}

unint64_t sub_29D77C744()
{
  result = qword_2A1A22880;
  if (!qword_2A1A22880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22880);
  }

  return result;
}

uint64_t sub_29D77C828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D77C870(char a1, char a2)
{
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  if (a1)
  {
    if (qword_2A1A257A0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (qword_2A1A257A0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_2A1A257A0 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  *(v4 + 32) = sub_29D9334A8();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_29D9334A8();
  *(v4 + 56) = v6;
  return v4;
}

uint64_t sub_29D77CA78@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v25 - v4;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_29D9346E8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A2C038;
  v25 = sub_29D9334A8();
  (*(v11 + 104))(v14, *MEMORY[0x29EDC1760], v10);
  v16 = v15;
  sub_29D934788();
  v17 = sub_29D934798();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D93F680;
  *(v18 + 32) = sub_29D9334A8();
  *(v18 + 40) = v19;
  *(v18 + 48) = sub_29D9334A8();
  *(v18 + 56) = v20;
  sub_29D934818();
  v21 = sub_29D934358();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  v22 = v26;
  sub_29D934988();
  v23 = sub_29D9349A8();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_29D77CEB0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v24 - v6;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v3);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = sub_29D9346E8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A2C038;
  v24 = sub_29D9334A8();
  (*(v13 + 104))(v16, *MEMORY[0x29EDC1768], v12);
  v18 = v17;
  sub_29D934788();
  v19 = sub_29D934798();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  if (a1)
  {
    sub_29D9347E8();
  }

  else
  {
    sub_29D9347D8();
  }

  sub_29D77C870(0, a1 & 1);
  sub_29D934818();
  v20 = sub_29D934358();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = v25;
  sub_29D934988();
  v22 = sub_29D9349A8();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_29D77D268@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v185 = &v174 - v7;
  v8 = sub_29D9346B8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v4);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v184 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v174 - v18;
  v20 = sub_29D9346E8();
  v186 = *(v20 - 8);
  v187 = v20;
  v22 = MEMORY[0x2A1C7C4A8](v20, v21);
  v183 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v174 - v25;
  v27 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v27)
  {
    __break(1u);
    goto LABEL_74;
  }

  a1 = v27;
  v28 = sub_29D939D68();
  v30 = v29;
  if (v28 == sub_29D939D68() && v30 == v31)
  {
    goto LABEL_4;
  }

  v32 = sub_29D93AD78();

  if (v32)
  {
LABEL_6:

    goto LABEL_7;
  }

  v36 = sub_29D939D68();
  v38 = v37;
  if (v36 == sub_29D939D68() && v38 == v39)
  {
    goto LABEL_4;
  }

  v40 = sub_29D93AD78();

  if (v40)
  {
    goto LABEL_6;
  }

  v41 = sub_29D939D68();
  v43 = v42;
  if (v41 == sub_29D939D68() && v43 == v44)
  {
LABEL_4:

LABEL_7:
    v33 = sub_29D9349A8();
    v34 = *(*(v33 - 8) + 56);

    return v34(a2, 1, 1, v33);
  }

  v45 = sub_29D93AD78();

  if (v45)
  {
    goto LABEL_6;
  }

  v46 = sub_29D939D68();
  v48 = v47;
  v50 = sub_29D939D68();
  v177 = a2;
  if (v46 == v50 && v48 == v49)
  {

LABEL_21:
    v52 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
    v53 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v54 = sub_29D9334A8();
    v56 = v55;
    (*(v186 + 104))(v26, *MEMORY[0x29EDC1750], v187);
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_29D93DDB0;
    *(v57 + 32) = v54;
    *(v57 + 40) = v56;
    v181 = v57;
    sub_29D935E88();
    v178 = sub_29D934808();
    v176 = v58;
    v59 = MEMORY[0x29ED64C30](v54, v56);
    v179 = v60;
    *&v180 = v59;

    v175 = sub_29D934808();
    v182 = v61;
    sub_29D77F1BC(v19);
    goto LABEL_33;
  }

  v51 = sub_29D93AD78();

  if (v51)
  {

    goto LABEL_21;
  }

  v62 = sub_29D939D68();
  v64 = v63;
  if (v62 != sub_29D939D68() || v64 != v65)
  {
    v66 = sub_29D93AD78();

    if (v66)
    {
LABEL_27:

      goto LABEL_31;
    }

    v67 = sub_29D939D68();
    v69 = v68;
    if (v67 != sub_29D939D68() || v69 != v70)
    {
      v88 = sub_29D93AD78();

      if (v88)
      {
        goto LABEL_27;
      }

      v89 = sub_29D939D68();
      v91 = v90;
      if (v89 == sub_29D939D68() && v91 == v92)
      {

        goto LABEL_43;
      }

      v93 = sub_29D93AD78();

      if (v93)
      {

LABEL_43:
        v53 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        v52 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
        if (qword_2A1A257A0 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_72;
      }

      v94 = sub_29D939D68();
      v96 = v95;
      if (v94 == sub_29D939D68() && v96 == v97)
      {

LABEL_50:
        if (qword_2A1A257A0 != -1)
        {
          swift_once();
        }

        v53 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        v99 = sub_29D9334A8();
        v101 = v100;
        (*(v186 + 104))(v26, *MEMORY[0x29EDC1750], v187);
        sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_29D93DDB0;
        *(v102 + 32) = v99;
        *(v102 + 40) = v101;
        v181 = v102;
        sub_29D935E88();
        v178 = sub_29D934808();
        v176 = v103;
        v104 = MEMORY[0x29ED64C30](v99, v101);
        v179 = v105;
        *&v180 = v104;

        v175 = sub_29D934808();
        v182 = v106;
        sub_29D77ECC8(v19);
LABEL_53:
        v107 = sub_29D9336F8();
        (*(*(v107 - 8) + 56))(v19, 0, 1, v107);
LABEL_54:
        v52 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
        goto LABEL_34;
      }

      v98 = sub_29D93AD78();

      if (v98)
      {

        goto LABEL_50;
      }

      v108 = sub_29D939D68();
      v110 = v109;
      if (v108 == sub_29D939D68() && v110 == v111)
      {

LABEL_60:
        if (qword_2A1A257A0 != -1)
        {
          swift_once();
        }

        v53 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        v113 = sub_29D9334A8();
        v115 = v114;
        (*(v186 + 104))(v26, *MEMORY[0x29EDC1750], v187);
        sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_29D93DDB0;
        *(v116 + 32) = v113;
        *(v116 + 40) = v115;
        v181 = v116;
        sub_29D935E88();
        v178 = sub_29D934808();
        v176 = v117;
        v118 = MEMORY[0x29ED64C30](v113, v115);
        v179 = v119;
        *&v180 = v118;

        v175 = sub_29D934808();
        v182 = v120;
        sub_29D77F1BC(v19);
        goto LABEL_53;
      }

      v112 = sub_29D93AD78();

      if (v112)
      {

        goto LABEL_60;
      }

      v121 = sub_29D939D68();
      v123 = v122;
      if (v121 == sub_29D939D68() && v123 == v124)
      {

LABEL_68:
        v126 = sub_29D934848();
        v182 = v127;
        if (qword_2A1A257A0 != -1)
        {
          swift_once();
        }

        sub_29D9334A8();
        sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
        v128 = swift_allocObject();
        v180 = xmmword_29D93DDB0;
        *(v128 + 16) = xmmword_29D93DDB0;
        *(v128 + 56) = MEMORY[0x29EDC99B0];
        *(v128 + 64) = sub_29D69AD24();
        v175 = v126;
        v129 = v182;
        *(v128 + 32) = v126;
        *(v128 + 40) = v129;
        sub_29D935E88();
        v130 = sub_29D939D38();
        v132 = v131;

        (*(v186 + 104))(v26, *MEMORY[0x29EDC1758], v187);
        sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
        v133 = swift_allocObject();
        v181 = v133;
        *(v133 + 16) = v180;
        v179 = v132;
        *&v180 = v130;
        *(v133 + 32) = v130;
        *(v133 + 40) = v132;
        sub_29D935E88();
        v178 = sub_29D934828();
        v176 = v134;
        v135 = MEMORY[0x29EDC1720];
LABEL_71:
        (*(v9 + 104))(v12, *v135, v8);
        sub_29D934698();
        v136 = v12;
        v53 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        (*(v9 + 8))(v136, v8);
        goto LABEL_54;
      }

      v125 = sub_29D93AD78();

      if (v125)
      {

        goto LABEL_68;
      }

LABEL_74:
      v137 = sub_29D939D68();
      v139 = v138;
      if (v137 == sub_29D939D68() && v139 == v140)
      {

LABEL_79:
        v142 = sub_29D934858();
        v182 = v143;
        if (qword_2A1A257A0 != -1)
        {
          swift_once();
        }

        sub_29D9334A8();
        sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
        v144 = swift_allocObject();
        v180 = xmmword_29D93DDB0;
        *(v144 + 16) = xmmword_29D93DDB0;
        *(v144 + 56) = MEMORY[0x29EDC99B0];
        *(v144 + 64) = sub_29D69AD24();
        v175 = v142;
        v145 = v182;
        *(v144 + 32) = v142;
        *(v144 + 40) = v145;
        sub_29D935E88();
        v146 = sub_29D939D38();
        v148 = v147;

        (*(v186 + 104))(v26, *MEMORY[0x29EDC1758], v187);
        sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
        v149 = swift_allocObject();
        v181 = v149;
        *(v149 + 16) = v180;
        v179 = v148;
        *&v180 = v146;
        *(v149 + 32) = v146;
        *(v149 + 40) = v148;
        sub_29D935E88();
        v178 = sub_29D934828();
        v176 = v150;
        v135 = MEMORY[0x29EDC1728];
        goto LABEL_71;
      }

      v141 = sub_29D93AD78();

      if (v141)
      {

        goto LABEL_79;
      }

      v151 = sub_29D939D68();
      v153 = v152;
      if (v151 == sub_29D939D68() && v153 == v154)
      {

LABEL_86:
        if (qword_2A17B0D48 != -1)
        {
          swift_once();
        }

        v156 = sub_29D9334A8();
        v158 = v157;
        (*(v186 + 104))(v26, *MEMORY[0x29EDC1750], v187);
        sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
        v159 = swift_allocObject();
        *(v159 + 16) = xmmword_29D93DDB0;
        *(v159 + 32) = v156;
        *(v159 + 40) = v158;
        v181 = v159;
        sub_29D935E88();
        v178 = sub_29D934808();
        v176 = v160;
        v161 = MEMORY[0x29ED64C30](v156, v158);
        v179 = v162;
        *&v180 = v161;

        v175 = sub_29D934808();
        v182 = v163;
        sub_29D77F1BC(v19);
        v164 = sub_29D9336F8();
        (*(*(v164 - 8) + 56))(v19, 0, 1, v164);
        goto LABEL_95;
      }

      v155 = sub_29D93AD78();

      if (v155)
      {
        goto LABEL_86;
      }

      if (sub_29D9347F8())
      {
        if (qword_2A1A257A0 == -1)
        {
          goto LABEL_94;
        }
      }

      else if (qword_2A1A257A0 == -1)
      {
LABEL_94:
        v165 = sub_29D9334A8();
        v167 = v166;
        (*(v186 + 104))(v26, *MEMORY[0x29EDC1750], v187);
        sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
        v168 = swift_allocObject();
        *(v168 + 16) = xmmword_29D93DDB0;
        *(v168 + 32) = v165;
        *(v168 + 40) = v167;
        v181 = v168;
        sub_29D935E88();
        v178 = sub_29D934808();
        v176 = v169;
        v170 = MEMORY[0x29ED64C30](v165, v167);
        v179 = v171;
        *&v180 = v170;

        v175 = sub_29D934808();
        v182 = v172;
        sub_29D77F1BC(v19);
        v173 = sub_29D9336F8();
        (*(*(v173 - 8) + 56))(v19, 0, 1, v173);
LABEL_95:
        v53 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        goto LABEL_54;
      }

      swift_once();
      goto LABEL_94;
    }
  }

LABEL_31:
  v52 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  v53 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
  if (qword_2A1A257A0 != -1)
  {
LABEL_72:
    swift_once();
  }

LABEL_32:
  v71 = sub_29D9334A8();
  v73 = v72;
  (*(v186 + 104))(v26, *MEMORY[0x29EDC1750], v187);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_29D93DDB0;
  *(v74 + 32) = v71;
  *(v74 + 40) = v73;
  v181 = v74;
  sub_29D935E88();
  v178 = sub_29D934808();
  v176 = v75;
  v76 = MEMORY[0x29ED64C30](v71, v73);
  v179 = v77;
  *&v180 = v76;

  v175 = sub_29D934808();
  v182 = v78;
  sub_29D77EF5C(v19);
LABEL_33:
  v79 = sub_29D9336F8();
  (*(*(v79 - 8) + 56))(v19, 0, 1, v79);
LABEL_34:
  if (v52[244] != -1)
  {
    swift_once();
  }

  v80 = v53[7];
  v174 = sub_29D9334A8();
  v81 = v186;
  v82 = v187;
  (*(v186 + 16))(v183, v26, v187);
  v83 = v80;
  v84 = v185;
  sub_29D934788();
  v85 = sub_29D934798();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  sub_29D6D962C(v19, v184);
  v86 = v177;
  sub_29D934978();
  sub_29D6D96C0(v19);
  (*(v81 + 8))(v26, v82);
  v87 = sub_29D9349A8();
  return (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
}

uint64_t sub_29D77E95C()
{
  v0 = *MEMORY[0x29EDC5158];
  v1 = *MEMORY[0x29EDC5158];
  return v0;
}

uint64_t sub_29D77E99C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1880];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D77EA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D77F498();

  return MEMORY[0x2A1C60FD8](a1, a2, a3, v6);
}

uint64_t sub_29D77EA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D77F498();

  return MEMORY[0x2A1C60FC0](a1, a2, v4);
}

unint64_t sub_29D77EABC()
{
  result = qword_2A1A22888;
  if (!qword_2A1A22888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22888);
  }

  return result;
}

uint64_t sub_29D77EB10()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D77EC7C();
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA478]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D77EBC0(uint64_t a1)
{
  v2 = sub_29D77EABC();

  return MEMORY[0x2A1C61000](a1, v2);
}

uint64_t sub_29D77EC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D77EABC();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, v6);
}

unint64_t sub_29D77EC7C()
{
  result = qword_2A1A24918;
  if (!qword_2A1A24918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A24918);
  }

  return result;
}

uint64_t sub_29D77ECC8@<X0>(uint64_t a1@<X8>)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v16 - v4;
  v6 = [objc_opt_self() seedExpiredLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  v7 = sub_29D9336F8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_29D6D96C0(v5);
  sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93F680;
  v16[1] = &type metadata for IrregularRhythmNotificationsHealthChecklistConfigurationProvider;
  sub_29D77F450();
  v11 = sub_29D939DA8();
  v13 = v12;
  v14 = MEMORY[0x29EDC99B0];
  *(v10 + 56) = MEMORY[0x29EDC99B0];
  v15 = sub_29D69AD24();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 64) = v15;
  *(v10 + 72) = 0xD00000000000001DLL;
  *(v10 + 80) = 0x800000029D960EC0;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D77EF5C@<X0>(uint64_t a1@<X8>)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v15 - v4;
  sub_29D9336E8();
  v6 = sub_29D9336F8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_29D6D96C0(v5);
  sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D93F680;
  v15[1] = &type metadata for IrregularRhythmNotificationsHealthChecklistConfigurationProvider;
  sub_29D77F450();
  v10 = sub_29D939DA8();
  v12 = v11;
  v13 = MEMORY[0x29EDC99B0];
  *(v9 + 56) = MEMORY[0x29EDC99B0];
  v14 = sub_29D69AD24();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  *(v9 + 72) = 0xD000000000000025;
  *(v9 + 80) = 0x800000029D960E90;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D77F1BC@<X0>(uint64_t a1@<X8>)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v16 - v4;
  v6 = [objc_opt_self() irregularHeartRhythmFooterLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  v7 = sub_29D9336F8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_29D6D96C0(v5);
  sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93F680;
  v16[1] = &type metadata for IrregularRhythmNotificationsHealthChecklistConfigurationProvider;
  sub_29D77F450();
  v11 = sub_29D939DA8();
  v13 = v12;
  v14 = MEMORY[0x29EDC99B0];
  *(v10 + 56) = MEMORY[0x29EDC99B0];
  v15 = sub_29D69AD24();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 64) = v15;
  *(v10 + 72) = 0xD00000000000001BLL;
  *(v10 + 80) = 0x800000029D960EE0;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

unint64_t sub_29D77F450()
{
  result = qword_2A17B4300;
  if (!qword_2A17B4300)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B4300);
  }

  return result;
}

unint64_t sub_29D77F498()
{
  result = qword_2A1A22890[0];
  if (!qword_2A1A22890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A22890);
  }

  return result;
}

uint64_t sub_29D77F4EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore;
  swift_beginAccess();
  sub_29D783054(a1, v1 + v3);
  swift_endAccess();
  sub_29D708D30(v1 + v3, &v6);
  if (v7)
  {
    sub_29D679D3C(&v6, v8);
    sub_29D780D68(v8);
    sub_29D782FB8(a1, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
    return sub_29D69417C(v8);
  }

  else
  {
    v5 = MEMORY[0x29EDC3660];
    sub_29D782FB8(a1, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
    return sub_29D782FB8(&v6, &qword_2A17B2B10, &qword_2A17B50D0, v5, sub_29D6B7370);
  }
}

id sub_29D77F640()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = sub_29D9354E8();
  v4 = v3;
  if (v2 == sub_29D9354E8() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_29D93AD78();

    if ((v7 & 1) == 0)
    {
      sub_29D7801D4();
    }
  }

  result = [v1 tableView];
  if (result)
  {
    v9 = result;
    sub_29D936938();
    sub_29D93A1E8();

    result = [v1 tableView];
    if (result)
    {
      v10 = result;
      sub_29D934B68();
      sub_29D93A1E8();

      sub_29D783014(&qword_2A17B4388, &unk_29D947500);
      return sub_29D936EF8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D77F838()
{
  v1 = sub_29D9354E8();
  v3 = v2;
  if (v1 == sub_29D9354E8() && v3 == v4)
  {
    goto LABEL_12;
  }

  v6 = sub_29D93AD78();

  if (v6)
  {
LABEL_13:
    v13 = *&v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType];
    v14 = [*&v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_viewControllerFactory] profile];
    sub_29D93A388();
    v15 = type metadata accessor for SummariesAtrialFibrillationListDataProvider();
    v16 = objc_allocWithZone(v15);
    v17 = [v14 healthStore];
    *&v16[OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_store] = v17;
    sub_29D6945AC(v20, &v16[OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_healthExperienceStore]);
    v19.receiver = v16;
    v19.super_class = v15;
    v18 = objc_msgSendSuper2(&v19, sel_initWithDisplayType_profile_, v13, v14);

    sub_29D69417C(v20);
    [v0 setDataProvider_];

    return;
  }

  v7 = sub_29D9354E8();
  v9 = v8;
  if (v7 == sub_29D9354E8() && v9 == v10)
  {
LABEL_12:

    goto LABEL_13;
  }

  v12 = sub_29D93AD78();

  if (v12)
  {
    goto LABEL_13;
  }
}

uint64_t sub_29D77FA40()
{
  swift_getObjectType();
  sub_29D693E2C((v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager), *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager + 24));
  sub_29D93A1F8();
  v1 = sub_29D934318();

  if (v1 == 2)
  {
    if (qword_2A1A24670 != -1)
    {
      swift_once();
    }

    v2 = sub_29D937898();
    sub_29D69C6C0(v2, qword_2A1A2BF40);
    v3 = sub_29D937878();
    v4 = sub_29D93A2A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_29D93AF08();
      v9 = sub_29D6C2364(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s] Unable to fetch pinned status", v5, 0xCu);
      sub_29D69417C(v6);
      MEMORY[0x29ED6BE30](v6, -1, -1);
      MEMORY[0x29ED6BE30](v5, -1, -1);
    }

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_29D77FC44(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2BF40);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Setting favorite: %{BOOL}d", v7, 0x12u);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  sub_29D693E2C((v2 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager), *(v2 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager + 24));
  if (a1)
  {
    return sub_29D934328();
  }

  else
  {
    return sub_29D934338();
  }
}

id sub_29D77FDF8()
{
  v1 = sub_29D9354E8();
  v3 = v2;
  if (v1 == sub_29D9354E8() && v3 == v4)
  {
    goto LABEL_12;
  }

  v6 = sub_29D93AD78();

  if (v6)
  {
    goto LABEL_13;
  }

  v7 = sub_29D9354E8();
  v9 = v8;
  if (v7 == sub_29D9354E8() && v9 == v10)
  {
LABEL_12:

    goto LABEL_13;
  }

  v12 = sub_29D93AD78();

  if ((v12 & 1) == 0)
  {
    v16.receiver = v0;
    v16.super_class = type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    return objc_msgSendSuper2(&v16, sel_recomputeTotalSampleCount);
  }

LABEL_13:
  v14 = [objc_msgSend(v0 dataProvider)];
  sub_29D936978();
  if (v14 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = [objc_msgSend(v0 dataProvider)];
    sub_29D936978();
  }

  return [v0 setTotalSampleCount_];
}

void sub_29D780008()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType];
  v8 = *&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore];
  v9 = [v1 resolvedHealthToolbox];
  sub_29D9339E8();
  v10 = sub_29D933958();
  (*(v3 + 8))(v6, v2);
  v11 = [v7 wd:v8 addDataViewControllerWithHealthStore:v9 healthToolBox:v10 initialStartDate:?];

  v12 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v1 presentViewController:v12 animated:1 completion:0];
}

void sub_29D7801D4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore;
  swift_beginAccess();
  sub_29D708D30(&v1[v2], v14);
  v3 = v15;
  if (v15)
  {
    v4 = sub_29D693E2C(v14, v15);
    v5 = *(v3 - 8);
    MEMORY[0x2A1C7C4A8](v4, v4);
    v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v5 + 16))(v7);
    sub_29D782FB8(v14, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
    v8 = sub_29D933EC8();
    (*(v5 + 8))(v7, v3);
    v9 = [*&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore] profileIdentifier];
    v10 = [v1 title];
    if (v10)
    {
      v11 = v10;
      sub_29D939D68();
    }

    type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    sub_29D783014(&qword_2A17B4378, &unk_29D94751C);
    v12 = sub_29D936C98();

    if (v12)
    {
      swift_beginAccess();
      sub_29D938258();
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    sub_29D782FB8(v14, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
    sub_29D93AB28();
    __break(1u);
  }
}

void sub_29D7804E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v40 = sub_29D937898();
  v38 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v3);
  v39 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D783564(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v32[3] = v32 - v7;
  sub_29D783564(0, &qword_2A17B2B20, MEMORY[0x29EDC4378]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v33 = v32 - v10;
  v11 = sub_29D939A78();
  v36 = *(v11 - 8);
  v37 = v11;
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v34 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v35 = v32 - v16;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = ObjectType;
  v41 = v1;
  v19 = *&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore];
  v20 = *MEMORY[0x29EDBA6F8];
  v21 = type metadata accessor for IRNFeatureRegulatoryInfoTransformProvider(0);
  swift_allocObject();
  v32[2] = v19;
  v32[1] = v20;
  v22 = sub_29D939A98();
  v43 = v21;
  v44 = MEMORY[0x29EDC43B8];
  v42 = v22;
  if (qword_2A17B0D78 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9336E8();

  v23 = v33;
  sub_29D939A48();
  v24 = sub_29D939A58();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v25 = v40;
  v26 = sub_29D69C6C0(v40, qword_2A1A2BF40);
  (*(v38 + 16))(v39, v26, v25);
  v27 = v35;
  sub_29D939A68();
  v28 = objc_allocWithZone(type metadata accessor for FeatureRegulatoryAboutViewController(0));
  v30 = v36;
  v29 = v37;
  (*(v36 + 16))(v34, v27, v37);
  v31 = sub_29D938CF8();
  (*(v30 + 8))(v27, v29);
  [v41 showAdaptively:v31 sender:0 animated:1];
}

void sub_29D780A54(uint64_t a1, uint64_t a2)
{
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF40);
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136446210;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s] Reenable IRN button action selected", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong navigationController];
    if (v12)
    {
      v13 = v12;
    }

    [v11 launchOnboardingToReenableFeature];
  }
}

uint64_t sub_29D780C20(uint64_t a1)
{
  v3 = sub_29D939A78();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D938CF8();
  (*(v4 + 8))(a1, v3);
  return v9;
}

void sub_29D780D68(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29D936BE8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9354E8();
  v12 = v11;
  if (v10 == sub_29D9354E8() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_29D93AD78();

    if ((v15 & 1) == 0)
    {
      return;
    }
  }

  v32 = ObjectType;
  v16 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource;
  if (*&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource])
  {

    v17 = sub_29D935F58();

    [v17 unregisterObserver_];
  }

  v18 = *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore];
  sub_29D6945AC(&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager], v33);
  sub_29D693E2C(a1, a1[3]);
  v19 = v18;
  sub_29D933EC8();
  v20 = *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType];
  (*(v6 + 104))(v9, *MEMORY[0x29EDC2A40], v5);
  sub_29D934BD8();
  swift_allocObject();
  v21 = v20;
  *&v2[v16] = sub_29D934BC8();

  sub_29D7814E4();
  *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems] = v22;

  [v2 reloadFeatureStatusSection];
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v23 = sub_29D937898();
  sub_29D69C6C0(v23, qword_2A1A2BF40);
  v24 = sub_29D937878();
  v25 = sub_29D93A2A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v26 = 136446210;
    v28 = sub_29D93AF08();
    v30 = sub_29D6C2364(v28, v29, v33);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] Starting observation of feature status feed item changes", v26, 0xCu);
    sub_29D69417C(v27);
    MEMORY[0x29ED6BE30](v27, -1, -1);
    MEMORY[0x29ED6BE30](v26, -1, -1);
  }

  if (*&v2[v16])
  {

    v31 = sub_29D935F58();

    [v31 registerObserver_];
  }
}

uint64_t sub_29D78112C()
{
  v2 = *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = sub_29D93A928();
    if (sub_29D93A928() < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v5 = sub_29D93A928();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4;
  }

  v6 = v4 != 0;
  if (v5 < v6)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v2 & 0xC000000000000001) == 0 || v4 == 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_29D69567C(0, &qword_2A17B4380, 0x29EDC7D10);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_29D93AA28();
      v8 = v9;
    }

    while (v6 != v9);
  }

  if (v3)
  {
    v6 = sub_29D93AB68();
    v3 = v10;
    v1 = v11;
    v4 = v12;

    if ((v4 & 1) == 0)
    {
LABEL_16:
      sub_29D84FB20(v6, v3, v1, v4);
      v14 = v13;
LABEL_23:
      sub_29D936978();
      return v14;
    }
  }

  else
  {
    v1 = 0;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  sub_29D93AD98();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    sub_29D936978();
    v15 = MEMORY[0x29EDCA190];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v4 >> 1, v1))
  {
    goto LABEL_31;
  }

  if (v16 != (v4 >> 1) - v1)
  {
LABEL_32:
    swift_unknownObjectRelease_n();
    goto LABEL_16;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v14)
  {
    v14 = MEMORY[0x29EDCA190];
    goto LABEL_23;
  }

  return v14;
}

unint64_t sub_29D7813A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (sub_29D93A928() < 2)
  {
    return 0;
  }

  result = sub_29D93A928();
  if (result)
  {
LABEL_6:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v1 & 0xC000000000000001) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v1 + 8 * v3 + 32);
LABEL_11:
        v5 = [v4 contentView];

        return v5;
      }

      __break(1u);
      return result;
    }

    sub_29D935E88();
    v4 = MEMORY[0x29ED6AE30](v3, v1);

    goto LABEL_11;
  }

  return result;
}

void sub_29D7814E4()
{
  v1 = v0;
  swift_getObjectType();
  sub_29D75DD24();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource])
  {

    sub_29D935F78();
    v8 = sub_29D937B98();
    (*(v4 + 8))(v7, v3);
    v9 = v8[2];

    v10 = MEMORY[0x29EDCA190];
    if (v9)
    {
      v11 = 0;
      v12 = v8 + 5;
      while (v11 < v8[2])
      {
        sub_29D935E88();
        sub_29D935F68();

        if (v27)
        {
          sub_29D679D3C(&v26, v28);
          sub_29D679D3C(v28, &v26);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_29D68FDD8(0, v10[2] + 1, 1, v10);
          }

          v14 = v10[2];
          v13 = v10[3];
          if (v14 >= v13 >> 1)
          {
            v10 = sub_29D68FDD8((v13 > 1), v14 + 1, 1, v10);
          }

          v10[2] = v14 + 1;
          sub_29D679D3C(&v26, &v10[5 * v14 + 4]);
        }

        else
        {
          sub_29D782FB8(&v26, &qword_2A17B2C58, &qword_2A17B1140, MEMORY[0x29EDC18F8], sub_29D6B7370);
        }

        ++v11;
        v12 += 2;
        if (v9 == v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_13:

    *&v26 = MEMORY[0x29EDCA190];
    v15 = v10[2];
    if (v15)
    {
      v16 = 0;
      v8 = 0;
      v17 = v10 + 4;
      v22 = v15 - 1;
      v23 = v10 + 4;
      v24 = MEMORY[0x29EDCA190];
LABEL_15:
      v18 = &v17[5 * v16];
      v19 = v16;
      while (v19 < v10[2])
      {
        sub_29D6945AC(v18, v28);
        sub_29D781884(v28, v1, &v25);
        v20 = sub_29D69417C(v28);
        if (v25)
        {
          MEMORY[0x29ED6A300](v20);
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29D939F78();
          }

          v16 = v19 + 1;
          sub_29D939FA8();
          v24 = v26;
          v17 = v23;
          if (v22 != v19)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }

        ++v19;
        v18 += 40;
        if (v15 == v19)
        {
          goto LABEL_26;
        }
      }

LABEL_28:
      __break(1u);

      sub_29D69417C(v28);

      __break(1u);
      return;
    }

    v24 = MEMORY[0x29EDCA190];
LABEL_26:
  }
}

uint64_t sub_29D781884@<X0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  sub_29D6945AC(a1, v21);
  sub_29D6B7370(0, &qword_2A17B1140, MEMORY[0x29EDC18F8]);
  sub_29D6B7370(0, &qword_2A17B1080, MEMORY[0x29EDC1910]);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_29D782FB8(v19, &qword_2A17B1830, &qword_2A17B1080, MEMORY[0x29EDC1910], sub_29D6B7370);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v17 = sub_29D93AF08();
    MEMORY[0x29ED6A240](v17);

    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0xD000000000000028, 0x800000029D961140);
    MEMORY[0x29ED6A240](2112093, 0xE300000000000000);
    sub_29D693E2C(a1, a1[3]);
    v18 = sub_29D9348E8();
    MEMORY[0x29ED6A240](v18);

    MEMORY[0x29ED6A240](0xD0000000000000AELL, 0x800000029D961170);
LABEL_11:
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  sub_29D679D3C(v19, v22);
  sub_29D693E2C(v22, v22[3]);
  sub_29D9348F8();
  v7 = [a2 tableView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = sub_29D939D28();
  v10 = [v8 dequeueReusableCellWithIdentifier_];

  if (!v10)
  {
    goto LABEL_11;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_11;
  }

  v11 = v10;

  swift_getObjectType();
  sub_29D6945AC(v22, v21);
  sub_29D935828();
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v12 = v11;
    v13 = a2;
    sub_29D935D28();
  }

  v14 = v11;
  sub_29D781C80(&unk_2A243D960);
  sub_29D6AA360(&unk_2A243D980);
  v15 = sub_29D939D28();

  [v14 setAccessibilityIdentifier_];

  *a4 = v11;
  return sub_29D69417C(v22);
}

uint64_t sub_29D781C80(uint64_t a1)
{
  sub_29D782F64(0, &qword_2A1A21F18, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D93F680;
  *(v1 + 32) = sub_29D939D68();
  *(v1 + 40) = v2;
  *(v1 + 48) = 5132873;
  *(v1 + 56) = 0xE300000000000000;
  v3 = sub_29D935E88();
  sub_29D88BBC8(v3);
  sub_29D782F64(0, &qword_2A17B3628, MEMORY[0x29EDC9A40]);
  sub_29D738398(v4);
  v5 = sub_29D939CA8();

  return v5;
}

void sub_29D781D8C()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D933D48();
    v5 = [v2 cellForRowAtIndexPath_];

    if (v5)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v4 = v5;
        sub_29D935888();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for FeatureRegulatoryAboutViewController(uint64_t a1)
{
  result = qword_2A17B4368;
  if (!qword_2A17B4368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D78239C(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v1 action:sel_didTapDone_];
    v8 = v4;
    v7 = MEMORY[0x29EDCA190];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x29ED6A300]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      sub_29D939FA8();
    }
  }

  else
  {
    v8 = 0;
  }

  sub_29D782FB8(&v8, &qword_2A17B2B00, &qword_2A17B2B08, 0x29EDC7940, sub_29D69567C);
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  v6 = sub_29D939F18();

  [v3 setRightBarButtonItems_];
}

uint64_t sub_29D782524(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D93A868();
  sub_29D936978();
  [v4 dismissViewControllerAnimated:1 completion:0];

  return sub_29D69417C(v6);
}

uint64_t sub_29D782598(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D939A78();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  (*(v5 + 16))(v8, a2, v4);
  v10 = sub_29D938CE8();
  (*(v5 + 8))(a2, v4);
  return v10;
}

id sub_29D7826A0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for FeatureRegulatoryAboutViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D782738(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_29D782778(void *a1)
{
  v1 = a1;
  sub_29D78239C(1);
}

void sub_29D7827C8(void *a1)
{
  v1 = a1;
  sub_29D78239C(0);
}

void sub_29D782818(void *a1, uint64_t a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  sub_29D783564(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v56 - v14;
  v60[3] = a5;
  v60[4] = a6;
  v16 = sub_29D693F78(v60);
  (*(*(a5 - 8) + 32))(v16, a2, a5);
  v17 = &a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore];
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v19 = [ObjCClassFromMetadata atrialFibrillationEventType];
  if (!v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType] = v19;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_favoritesObserver] = 0;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource] = 0;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems] = MEMORY[0x29EDCA190];
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_cancellables] = MEMORY[0x29EDCA1A0];
  v21 = [a1 profile];
  v22 = [v21 healthStore];

  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore] = v22;
  sub_29D6945AC(v60, &a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager]);
  v23 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v23 displayTypeForObjectType_];

  if (!v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType] = v25;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_viewControllerFactory] = a1;
  v27 = a1;
  v28 = [v27 profile];
  v29 = [v28 healthStore];

  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = [v29 profileIdentifier];

  v31 = [v30 type];
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_profileType] = v31;
  if (a3 != 4)
  {
    a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode] = a3;
    v37 = qword_29D947568[a3];
LABEL_10:
    v38 = *&a4[v26];
    v39 = [v27 profile];
    v40 = type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    v59.receiver = a4;
    v59.super_class = v40;
    v41 = objc_msgSendSuper2(&v59, sel_initWithDisplayType_profile_mode_, v38, v39, v37);

    v42 = v41;
    sub_29D77F838();
    if ([*&v42[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType] allowsManualEntry])
    {
      v43 = sub_29D9354E8();
      v45 = v44;
      if (v43 == sub_29D9354E8() && v45 == v46)
      {
      }

      else
      {
        v49 = sub_29D93AD78();

        if ((v49 & 1) == 0)
        {
LABEL_20:

          sub_29D69417C(v60);
          return;
        }
      }

      v50 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:4 target:v42 action:sel_showAddDataVC];
      v57 = 0;
      v58 = 0xE000000000000000;
      v51 = v50;
      sub_29D93AA18();

      v57 = sub_29D939D68();
      v58 = v52;
      MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D95B180);
      v53 = sub_29D939D28();

      [v51 setAccessibilityIdentifier_];

      v54 = qword_2A1A257A0;
      v47 = v51;
      if (v54 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      v55 = sub_29D939D28();

      [v47 setAccessibilityValue_];

      v48 = [v42 navigationItem];
      [v48 setRightBarButtonItem_];
    }

    else
    {
      v47 = v27;
      v48 = v42;
    }

    v27 = v48;
    goto LABEL_20;
  }

  v32 = [v27 profile];
  v33 = [v32 healthStore];

  if (v33)
  {
    v34 = [v33 profileIdentifier];

    v35 = sub_29D9350C8();
    (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
    v36 = MEMORY[0x29ED658D0](v34, v15);

    sub_29D782E90(v15);
    v37 = 0;
    a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode] = v36;
    goto LABEL_10;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_29D782E90(uint64_t a1)
{
  sub_29D783564(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D782F08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29D93A7F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D782F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D782FB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29D782F08(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D783014(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D783054(uint64_t a1, uint64_t a2)
{
  sub_29D782F08(0, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29D7830E4()
{
  v1 = v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v3 = [ObjCClassFromMetadata atrialFibrillationEventType];
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType) = v3;
  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_favoritesObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems) = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_cancellables) = MEMORY[0x29EDCA1A0];
  sub_29D93AB28();
  __break(1u);
}

void sub_29D7831E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (!*&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource])
  {
    goto LABEL_7;
  }

  v6 = sub_29D935F48();
  v8 = v7;

  if (v6 == a1 && v8 == a2)
  {
  }

  else
  {
    v10 = sub_29D93AD78();

    if ((v10 & 1) == 0)
    {
LABEL_7:
      if (qword_2A1A24670 != -1)
      {
        swift_once();
      }

      v11 = sub_29D937898();
      sub_29D69C6C0(v11, qword_2A1A2BF40);
      sub_29D935E88();
      oslog = sub_29D937878();
      v12 = sub_29D93A288();

      if (os_log_type_enabled(oslog, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v28 = v14;
        *v13 = 136446466;
        v15 = sub_29D93AF08();
        v17 = sub_29D6C2364(v15, v16, &v28);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_29D6C2364(a1, a2, &v28);
        _os_log_impl(&dword_29D677000, oslog, v12, "[%{public}s] Received notification of unknown data source change from %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v14, -1, -1);
        MEMORY[0x29ED6BE30](v13, -1, -1);
      }

      return;
    }
  }

  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v18 = sub_29D937898();
  sub_29D69C6C0(v18, qword_2A1A2BF40);
  v19 = sub_29D937878();
  v20 = sub_29D93A2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446210;
    v23 = sub_29D93AF08();
    v25 = sub_29D6C2364(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s] Received notification of feature status feed items change", v21, 0xCu);
    sub_29D69417C(v22);
    MEMORY[0x29ED6BE30](v22, -1, -1);
    MEMORY[0x29ED6BE30](v21, -1, -1);
  }

  sub_29D7814E4();
  *&v3[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems] = v26;

  [v3 reloadFeatureStatusSection];
}

void sub_29D783564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D7835CC()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D7836C4(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D7837A8(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D78389C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D784018(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D7838CC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006D6F6F52;
  v4 = 0x6570795461746164;
  v5 = 0xE800000000000000;
  v6 = 0x73676E6974746573;
  v7 = 0x800000029D956D70;
  v8 = 0xD000000000000018;
  if (v2 == 3)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v7 = 0x800000029D956D90;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000029D956D50;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_29D783980(void *a1, char a2, uint64_t a3, char a4)
{
  v5 = a3;
  v7 = *(v4 + 16);
  v8 = a4 == 0;
  v9 = type metadata accessor for BloodPressureJournalLoggingMainViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator] = 0;
  type metadata accessor for BloodPressureJournalBestPracticesManager();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v13 = v7;
  v14 = sub_29D939D28();
  v15 = [v12 initWithCategory:2 domainName:v14 healthStore:v13];

  *(v11 + 24) = v15;
  type metadata accessor for BloodPressureJournalLoggingModel(0);
  swift_allocObject();
  v16 = v13;

  v17 = sub_29D7B28C8(v16, v11, v5);

  type metadata accessor for BloodPressureJournalLoggingViewControllerFactory();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = *(v17 + 16);
  *(v18 + 24) = v19;
  v29.receiver = v10;
  v29.super_class = v9;

  v20 = v19;
  v21 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  [v21 setModalPresentationStyle_];
  [v21 setModalInPresentation_];
  v22 = type metadata accessor for BloodPressureJournalLoggingCoordinator();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A2443828;
  swift_unknownObjectWeakAssign();
  *&v23[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model] = v17;
  *&v23[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_vcFactory] = v18;
  *&v23[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_healthStore] = v16;
  v23[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isInNavigationController] = 0;
  v23[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isDetailRoomOnStack] = v8;
  v28.receiver = v23;
  v28.super_class = v22;
  v24 = v16;

  v25 = objc_msgSendSuper2(&v28, sel_init);
  sub_29D740E10();

  v26 = *&v21[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator];
  *&v21[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator] = v25;

  [a1 presentViewController:v21 animated:a2 & 1 completion:0];
}

void sub_29D783C64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a3;
  v8 = *(v4 + 16);
  v9 = type metadata accessor for BloodPressureJournalLoggingMainViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator] = 0;
  type metadata accessor for BloodPressureJournalBestPracticesManager();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v13 = v8;
  v14 = sub_29D939D28();
  v15 = [v12 initWithCategory:2 domainName:v14 healthStore:v13];

  *(v11 + 24) = v15;
  type metadata accessor for BloodPressureJournalLoggingModel(0);
  swift_allocObject();
  v16 = v13;

  v17 = sub_29D7B28C8(v16, v11, v6);

  type metadata accessor for BloodPressureJournalLoggingViewControllerFactory();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = *(v17 + 16);
  *(v18 + 24) = v19;
  v33.receiver = v10;
  v33.super_class = v9;

  v20 = v19;
  v21 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
  [v21 setModalPresentationStyle_];
  [v21 setModalInPresentation_];
  if (a1)
  {
    v22 = a4 == 0;
    v23 = type metadata accessor for BloodPressureJournalLoggingCoordinator();
    ObjectType = swift_getObjectType();
    v25 = swift_unknownObjectRetain();
    v26 = sub_29D741DA0(v25, v17, v18, v16, 1, v22, v23, ObjectType, a2);
  }

  else
  {
    v27 = type metadata accessor for BloodPressureJournalLoggingCoordinator();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController + 8] = a2;
    *(swift_unknownObjectWeakInit() + 8) = &off_2A2443828;
    swift_unknownObjectWeakAssign();
    *&v28[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model] = v17;
    *&v28[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_vcFactory] = v18;
    *&v28[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_healthStore] = v16;
    v28[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isInNavigationController] = 0;
    v28[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isDetailRoomOnStack] = a4 == 0;
    v32.receiver = v28;
    v32.super_class = v27;
    v29 = v16;

    v26 = objc_msgSendSuper2(&v32, sel_init);
    sub_29D740E10();
  }

  v30 = *&v21[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator];
  *&v21[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator] = v26;
}

unint64_t sub_29D783FC4()
{
  result = qword_2A17B4390;
  if (!qword_2A17B4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4390);
  }

  return result;
}

unint64_t sub_29D784018(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D784064()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews);
  if (v2)
  {
    sub_29D935E88();
  }

  else
  {
    v12 = OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews;
    v13 = MEMORY[0x29EDCA190];
    sub_29D93AAD8();
    v3 = OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_cacheObject;
    v4 = *(v1 + OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_healthStore);
    v5 = type metadata accessor for AFibBurdenLifeFactorView();
    v6 = 0;
    do
    {
      v7 = v6 + 1;
      v8 = *(v1 + v3);
      v9 = byte_2A243DA68[v6 + 32];
      objc_allocWithZone(v5);
      sub_29D935E88();
      v10 = sub_29D762510(v9, v8, v4);
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      *&v10[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_delegate + 8] = &off_2A2444BB8;
      swift_unknownObjectWeakAssign();
      sub_29D93AAB8();
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
      v6 = v7;
    }

    while (v7 != 5);
    v2 = v13;
    *(v1 + v12) = v13;
    sub_29D935E88();
  }

  return v2;
}