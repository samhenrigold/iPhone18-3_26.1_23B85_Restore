double sub_1E3B8BA4C()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1768))();
  sub_1E3C37CBC(v2, 247);

  v4 = (*(*v0 + 1792))(v3);
  sub_1E3C37CBC(v4, 245);

  return result;
}

double sub_1E3B8BAFC()
{
  OUTLINED_FUNCTION_8();
  v0 += 221;
  v1 = *v0;
  (*v0)();
  v9[0] = sub_1E3952C28(12.0);
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v10 = 0;
  OUTLINED_FUNCTION_8();
  (*(v5 + 184))(v9);

  v7 = *(v1)(v6);
  (*(v7 + 312))(0x4039000000000000, 0);

  return result;
}

double sub_1E3B8BC00()
{
  OUTLINED_FUNCTION_8();
  v0 += 224;
  v1 = *v0;
  (*v0)();
  v9[0] = sub_1E3952C28(16.0);
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v10 = 0;
  OUTLINED_FUNCTION_8();
  (*(v5 + 184))(v9);

  v7 = *(v1)(v6);
  (*(v7 + 312))(0x4046000000000000, 0);

  return result;
}

double sub_1E3B8BD04()
{

  return result;
}

uint64_t sub_1E3B8BD3C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3B8BD7C()
{
  v0 = sub_1E3B8BD3C();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

double sub_1E3B8BDAC@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 1720))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void sub_1E3B8BE64(void *a1, void *a2)
{
  v7 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  v3 = *(v2 + *a2);
  v4 = a1;
  v5 = OUTLINED_FUNCTION_57();
  [v5 v6];
}

void sub_1E3B8BEE0(uint64_t a1, char *a2)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_allocWithZone(v2) init];
  }

  v6 = (*(*a1 + 464))(a2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    v68 = MEMORY[0x1E69E7CC0];
    v9 = sub_1E32AE9B0(v6);
    v10 = 0;
    v11 = v7;
    while (v9 != v10)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1E6911E60](v10, v8);
        v12 = v13;
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (*v12 == _TtC8VideosUI13TextViewModel)
      {
        MEMORY[0x1E6910BF0](v13);
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v11 = v68;
        ++v10;
      }

      else
      {

        ++v10;
      }
    }

    v67 = v5;

    v14 = sub_1E32AE9B0(v11);
    if (v14)
    {
      v15 = v14;
      if (v14 < 1)
      {
        goto LABEL_55;
      }

      v16 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v16, v11);
        }

        else
        {
        }

        v17 = OUTLINED_FUNCTION_18();
        v18 = sub_1E3C287F4(0, v17 & 1);
        if (v18)
        {
          v19 = v18;
          v20 = [v18 string];

          v21 = sub_1E4205F14();
          v23 = v22;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1E3740F88(0, *(v7 + 2) + 1, 1, v7);
          }

          v25 = *(v7 + 2);
          v24 = *(v7 + 3);
          if (v25 >= v24 >> 1)
          {
            v7 = sub_1E3740F88((v24 > 1), v25 + 1, 1, v7);
          }

          *(v7 + 2) = v25 + 1;
          v26 = &v7[16 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
        }

        else
        {
        }

        ++v16;
      }

      while (v15 != v16);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  v27 = *(v7 + 2);
  if (!v27)
  {
    goto LABEL_37;
  }

  v28 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentIndex];
  if (v28 < v27)
  {
    v29 = &v7[16 * v28];
    v30 = *(v29 + 4);
    v31 = *(v29 + 5);
    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    v32 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout;
    v33 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout];
    v34 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel];
    v35 = v34;

    v36 = sub_1E3810954(v30, v31, v33, v34);
    v37 = v36;
    sub_1E3B8BE64(v36, &OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel);
    v38 = *&v5[v32];
    v39 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel];
    v40 = v39;
    v41 = sub_1E3810954(0, 0xE000000000000000, v38, v39);
    v42 = v41;
    sub_1E3B8BE64(v41, &OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel);

    *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles] = v7;

LABEL_37:

    if (TVAppFeature.isEnabled.getter(10, v43, v44))
    {
      type metadata accessor for ImageLayout();
      v45 = sub_1E3BD61D8();
      (*(*v45 + 2072))(2);
      v46 = objc_opt_self();
      if ([v46 isMac])
      {
        v47 = 2;
      }

      else
      {
        v47 = 1;
      }

      (*(*v45 + 2024))(v47, 0);
      if ([v46 isMac])
      {
        v48 = 7;
      }

      else
      {
        v48 = 10;
      }

      v49 = (*(*v45 + 2168))(v48);
      v50 = (*(*v45 + 1944))(v49);
      sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
      v51 = sub_1E37E96E8(0xD000000000000017, 0x80000001E4273CB0, v50);
    }

    else
    {
      sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
      v52 = [objc_opt_self() vui_videosUIBundle];
      v53 = sub_1E3B8C65C(0xD00000000000001ELL, 0x80000001E4273C90, v52);
      if (v53)
      {
        v54 = v53;
        v51 = [v53 imageWithRenderingMode_];
      }

      else
      {
        v51 = 0;
      }
    }

    v55 = objc_allocWithZone(MEMORY[0x1E69DF740]);
    v56 = v51;
    v57 = [v55 init];
    if (TVAppFeature.isEnabled.getter(10, v58, v59))
    {
      [v57 _setTintColor_];
    }

    else
    {
      v60 = [*&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout] color];
      [v57 _setTintColor_];
    }

    [v57 setImage_];

    v61 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView];
    *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView] = v57;
    v62 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView];
    v63 = v57;
    [v5 vui:v62 addSubview:v61 oldView:?];

    type metadata accessor for Accessibility();
    v64 = v5;
    sub_1E40A7DC8();
    sub_1E38E89A0(v65, v66, v64);

    return;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

id sub_1E3B8C65C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

void sub_1E3B8C6DC(int64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles];
  v3 = *(v2 + 16);
  if (v3 > a1)
  {
    v4 = v1;
    v6 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentIndex;
    if (*&v1[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentIndex] != a1)
    {
      if (v3 <= a1)
      {
        __break(1u);
      }

      else
      {
        v7 = v2 + 16 * a1;
        v8 = *(v7 + 32);
        v9 = *(v7 + 40);
        sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
        v10 = *&v4[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout];
        v11 = *&v4[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel];
        v12 = v11;

        v13 = sub_1E3810954(v8, v9, v10, v11);
        v14 = *&v4[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel];
        v15 = v14;
        sub_1E3B8BE64(v14, &OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel);
        v16 = v13;
        sub_1E3B8BE64(v13, &OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel);
        v17 = v16;
        [v17 frame];
        v19 = v18;
        [v4 bounds];
        [v17 sizeThatFits_];
        v22 = v21;
        v24 = v23;
        [v4 bounds];
        v26 = OUTLINED_FUNCTION_55_1(v25 - v24);
        v28 = -v27;
        if (*&v4[v6] <= a1)
        {
          v28 = v27;
        }

        [v17 setFrame_];

        [v4 setNeedsLayout];
        v29 = objc_opt_self();
        OUTLINED_FUNCTION_4_0();
        v30 = swift_allocObject();
        *(v30 + 16) = v4;
        v33[4] = sub_1E3839CC4;
        v33[5] = v30;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 1107296256;
        v33[2] = sub_1E378AEA4;
        v33[3] = &block_descriptor_70;
        v31 = _Block_copy(v33);
        v32 = v4;

        [v29 animateWithDuration:v31 animations:0.2];

        _Block_release(v31);
        *&v4[v6] = a1;
      }
    }
  }
}

id sub_1E3B8C97C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_156(&OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles);
  *&v0[*v2] = MEMORY[0x1E69E7CC0];
  if (TVAppFeature.isEnabled.getter(10, v3, v4))
  {
    type metadata accessor for RichHeaderViewLayout();
    sub_1E3EBACB4();
    v5 = sub_1E37BD068();
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v19[0] = *MEMORY[0x1E69DDCE0];
    v19[1] = v6;
    v20 = 0;
    (*(*v5 + 160))(v19);

    v7 = *sub_1E37BD068();
    v8 = (*(v7 + 2408))();

    v9 = v8;
    [v9 setMinimumScaleFactor_];
  }

  else
  {
    v9 = sub_1E3B8CC00();
  }

  *&v0[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout] = v9;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 setShowsMenuAsPrimaryAction_];
  [v10 setContextMenuInteractionEnabled_];

  if ((TVAppFeature.isEnabled.getter(10, v11, v12) & 1) == 0)
  {
    v13 = [v10 vuiLayer];
    if (v13)
    {
      v14 = v13;
      [v13 setCornerRadius_];
    }

    v15 = [v10 vuiLayer];
    [v15 setMasksToBounds_];

    v16 = [objc_opt_self() tertiarySystemFillColor];
    [v10 setBackgroundColor_];
  }

  return v10;
}

id sub_1E3B8CC00()
{
  v0 = [objc_allocWithZone(VUITextLayout) init];
  [v0 setTextStyle_];
  if (TVAppFeature.isEnabled.getter(10, v1, v2))
  {
    v3 = sub_1E3E5FD88();
  }

  else
  {
    v3 = sub_1E3E60700();
  }

  [v0 setColor_];
  [v0 setFontWeight_];
  if (TVAppFeature.isEnabled.getter(10, v4, v5))
  {
    v6 = 11.0;
  }

  else
  {
    v6 = 12.0;
  }

  [v0 setMargin_];
  return v0;
}

void sub_1E3B8CCE4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_156(&OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles);
  *(v0 + *v1) = MEMORY[0x1E69E7CC0];
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3B8CD94()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3B8CDEC(0, v1, v2);
}

double sub_1E3B8CDEC(char a1, double a2, double a3)
{
  [*&v3[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout] margin];
  v11 = a2 - sub_1E3952BE0(v7, v8, v9, v10);
  v12 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView;
  v13 = *&v3[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView];
  if (v13)
  {
    v14 = v13;
    if (TVAppFeature.isEnabled.getter(10, v15, v16))
    {
      v17 = 4.0;
    }

    else
    {
      v17 = 8.0;
    }

    [v14 vui:a2 sizeThatFits:0.0];
    v19 = v18;
    v21 = v20;
    v22 = objc_opt_self();
    v23 = [v3 vuiTraitCollection];
    [v22 scaleContentSizeValue:v23 forTraitCollection:7 maximumContentSizeCategory:v21];
    v25 = v24;

    v26 = [v3 vuiTraitCollection];
    [v22 scaleContentSizeValue:v26 forTraitCollection:7 maximumContentSizeCategory:v19];
    v28 = v27;

    v29 = v17 + v28;
    v11 = v11 - (v17 + v28);
    OUTLINED_FUNCTION_5_124();

    OUTLINED_FUNCTION_55_1(a3 - v25);
  }

  else
  {
    v29 = 0.0;
  }

  v30 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel;
  v31 = *&v3[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel];
  if (v31)
  {
    v32 = v31;
    [v32 sizeThatFits_];
    v35 = v34;
    if (v11 >= v33)
    {
      v36 = v33;
    }

    else
    {
      v36 = v11;
    }

    OUTLINED_FUNCTION_5_124();
    if (v35 <= 32.0)
    {
      v40 = 32.0;
      OUTLINED_FUNCTION_55_1(32.0 - v35);
    }

    else
    {
      OUTLINED_FUNCTION_5_124();
      v40 = v35 + sub_1E3952BD8(v37, v38, v39);
      OUTLINED_FUNCTION_5_124();
    }

    VUIRoundValue();
    TVAppFeature.isEnabled.getter(10, v42, v43);
    OUTLINED_FUNCTION_5_124();
    v48 = sub_1E3952BE0(v44, v45, v46, v47);

    v41 = v36 + v48;
    v82 = v29 + v36 + v48;
  }

  else
  {
    v82 = v29;
    v40 = 32.0;
    v41 = 0.0;
  }

  v49 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel;
  v50 = *&v3[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel];
  if (v50)
  {
    v51 = v50;
    [v51 sizeThatFits_];
    v53 = v52;
    OUTLINED_FUNCTION_5_124();

    v41 = OUTLINED_FUNCTION_55_1(v40 - v53);
    if (a1)
    {
      return v82;
    }
  }

  else if (a1)
  {
    return v82;
  }

  [v3 vuiIsRTL];
  [v3 bounds];
  OUTLINED_FUNCTION_2_6();
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  v55 = v54;
  v78 = v57;
  v79 = v56;
  v77 = v58;
  [v3 bounds];
  OUTLINED_FUNCTION_2_6();
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  v60 = v59;
  v62 = v61;
  v80 = v64;
  v81 = v63;
  [v3 bounds];
  OUTLINED_FUNCTION_2_6();
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = *&v3[v30];
  if (v73)
  {
    [v73 setFrame_];
  }

  v74 = *&v3[v12];
  if (v74)
  {
    [v74 setFrame_];
  }

  v75 = *&v3[v49];
  if (v75)
  {
    [v75 setFrame_];
  }

  return v82;
}

id sub_1E3B8D28C()
{
  sub_1E3280A90(0, &qword_1ECF341E0, 0x1E69DC8D8);
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1E3B8D318(0, 0, 0, sub_1E3B8D7EC, v0);
}

id sub_1E3B8D318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E38896EC;
  v17 = &block_descriptor_9_4;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E3B8D75C;
  v17 = &block_descriptor_6_2;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_1E34AF594(a4, a5);
  sub_1E34AF594(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

void *sub_1E3B8D5A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel);
  v2 = v1;
  return v1;
}

void *sub_1E3B8D608()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel);
  v2 = v1;
  return v1;
}

id sub_1E3B8D75C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);
  v3 = sub_1E42062B4();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_1E3B8D7EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v3 = *(Strong + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles);
  v4 = *(v3 + 16);

  v5 = 0;
  v6 = (v3 + 40);
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = *(v6 - 1);
    v7 = *v6;
    sub_1E3280A90(0, &unk_1ECF3BDE0, 0x1E69DC628);
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v7;
    v10[5] = v5;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_25();
    v11 = sub_1E4206FA4();
    MEMORY[0x1E6910BF0](v11, v12, v13, v14, v15);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();

    v2 = v18;
    v6 += 2;
    ++v5;
  }

  if (!(v2 >> 62))
  {

    sub_1E42079D4();
    sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);
    goto LABEL_10;
  }

LABEL_14:
  sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);

  OUTLINED_FUNCTION_57();
  sub_1E42076C4();

LABEL_10:

  sub_1E3280A90(0, &qword_1ECF2BA48, 0x1E69DCC60);
  OUTLINED_FUNCTION_25();
  v16 = sub_1E4206E94();

  return v16;
}

void sub_1E3B8DAB0()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, v3, v2, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E3B8DB90(uint64_t a1, uint64_t a2)
{
  v35 = sub_1E41FE734();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E41FE094();
  OUTLINED_FUNCTION_0_10();
  v33 = v11;
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  (*(a2 + 120))(a1, a2);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1E3B8DEF4(v17);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v24, v17, v18);
    sub_1E41FE714();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31808, &unk_1E42B6450);
    v26 = sub_1E41FE724();
    OUTLINED_FUNCTION_0_10();
    v28 = v27;
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E4297BE0;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x1E6969A68], v26);
    sub_1E3A78D84(v30);
    sub_1E41FE704();

    (*(v5 + 8))(v9, v35);
    v25 = sub_1E41FE064();
    (*(v33 + 8))(v14, v34);
    (*(v20 + 8))(v24, v18);
  }

  return v25;
}

uint64_t sub_1E3B8DEF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3B8DF5C(uint64_t a1, uint64_t a2)
{
  sub_1E42074B4();

  v4 = (*(a2 + 16))(a1, a2);
  MEMORY[0x1E69109E0](v4);

  MEMORY[0x1E69109E0](0x656C746974202320, 0xE900000000000020);
  v5 = (*(a2 + 32))(a1, a2);
  MEMORY[0x1E69109E0](v5);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return 0x3A797469746E655BLL;
}

uint64_t sub_1E3B8E07C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3B8E0BC(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1E3B8E16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((sub_1E38F07C0(v3[160], 4, a3) & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v34 += 94;
    v35 = *v34;
    (*v34)(0);
    OUTLINED_FUNCTION_9_2();
    (*(v36 + 800))(3);
    sub_1E39537A8();
    *&v561 = v37;
    *(&v561 + 1) = v38;
    *&v562 = v39;
    *(&v562 + 1) = v40;
    v563 = 0;
    (*(*v3 + 560))(&v561);
    __asm { FMOV            V0.2D, #10.0 }

    v559[0] = _Q0;
    v559[1] = xmmword_1E4298700;
    v560 = 0;
    OUTLINED_FUNCTION_111();
    (*(v42 + 184))(v559);
    v43 = *sub_1E3E5FB0C();
    v44 = OUTLINED_FUNCTION_8_10();
    v35(v44);
    v45 = *sub_1E3E5FB88();
    v46 = *(*v4 + 872);
    v47 = v45;
    v48 = OUTLINED_FUNCTION_8_10();
    v46(v48);
    v49 = *sub_1E418A500();
    (*(*v4 + 440))(v49, 0);
    OUTLINED_FUNCTION_9_2();
    (*(v50 + 1888))();
    sub_1E3952C88();
    OUTLINED_FUNCTION_1_157(v51, v52, v53, v54);
    sub_1E3952C88();
    *v557 = v55;
    *&v557[8] = v56;
    *&v557[16] = v57;
    *&v557[24] = v58;
    v558 = 0;
    sub_1E3952C88();
    OUTLINED_FUNCTION_12_86(v59, v60, v61, v62);
    sub_1E3952C88();
    OUTLINED_FUNCTION_7_127(v63, v64, v65, v66);
    type metadata accessor for UIEdgeInsets();
    v68 = v67;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_6_111();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_125();
    sub_1E3C2FCB8(v69, v557, v545, v539, v554, v551, v68, v70);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v71 = OUTLINED_FUNCTION_8_95();
    v72(v71);

    OUTLINED_FUNCTION_9_2();
    v74 = *(v73 + 1840);
    v74();
    OUTLINED_FUNCTION_2_1();
    (*(v75 + 1984))(1);

    (v74)(v76);
    OUTLINED_FUNCTION_2_1();
    v77 = OUTLINED_FUNCTION_15_8();
    v78(v77);

    (v74)(v79);
    OUTLINED_FUNCTION_2_1();
    (*(v80 + 2080))(2, 0);

    (v74)(v81);
    OUTLINED_FUNCTION_2_1();
    (*(v82 + 2104))(2, 0);

    v84 = (v74)(v83);
    v85 = *sub_1E3E5FD88();
    v86 = *(*v84 + 680);
    v87 = v85;
    v86(v85);

    (v74)(v88);
    LOBYTE(__dst[0]) = 19;
    v557[0] = 21;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_28_42();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_20_63();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_70();
    sub_1E3C3DE00();
    LOBYTE(v532[0]) = v535[0];
    OUTLINED_FUNCTION_14_102();
    OUTLINED_FUNCTION_31_42();
    sub_1E3C2FCB8(v89, v90, v91, v92, v93, v94, &qword_1F5D549D8, v95);
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v96 = OUTLINED_FUNCTION_11_93();
    v97(v96, 48);

    (v74)(v98);
    OUTLINED_FUNCTION_27_45();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_30_46();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_29_49();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_22_57();
    sub_1E3C2FCB8(v99, v100, v101, v102, v103, v104, &qword_1F5D54AF8, v105);
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v106 = OUTLINED_FUNCTION_11_93();
    v107(v106, 54);

    (v74)(v108);
    OUTLINED_FUNCTION_2_1();
    (*(v109 + 1720))(10);

    (v74)(v110);
    sub_1E3952C94();
    OUTLINED_FUNCTION_1_157(v111, v112, v113, v114);
    __asm { FMOV            V1.2D, #20.0 }

    *v486 = _Q1;
    *v557 = xmmword_1E42AE100;
    *&v557[16] = _Q1;
    v558 = 0;
    sub_1E3952C94();
    OUTLINED_FUNCTION_12_86(v116, v117, v118, v119);
    v120.n128_u64[0] = 0;
    v121 = j__OUTLINED_FUNCTION_7_78(v120);
    OUTLINED_FUNCTION_7_127(v121, v122, v123, v124);
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_6_111();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_125();
    sub_1E3C2FCB8(v125, v545, v539, v557, v554, v551, v68, v126);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v127 = OUTLINED_FUNCTION_8_95();
    v128(v127);

    (v74)(v129);
    *v557 = xmmword_1E42971B0;
    *&v557[16] = xmmword_1E42971B0;
    v558 = 0;
    OUTLINED_FUNCTION_26_0();
    (*(v130 + 184))(v557);

    OUTLINED_FUNCTION_9_2();
    v132 = *(v131 + 1864);
    v132();
    OUTLINED_FUNCTION_2_1();
    v133 = OUTLINED_FUNCTION_15_8();
    v134(v133);

    (v132)(v135);
    OUTLINED_FUNCTION_2_1();
    v136 = OUTLINED_FUNCTION_15_8();
    v137(v136);

    (v132)(v138);
    OUTLINED_FUNCTION_2_1();
    v139 = OUTLINED_FUNCTION_15_8();
    v140(v139);

    (v132)(v141);
    OUTLINED_FUNCTION_2_1();
    (*(v142 + 1984))(1);

    v144 = (v132)(v143);
    v145 = *sub_1E3E5FDEC();
    v146 = *(*v144 + 680);
    v147 = v145;
    v146(v145);

    (v132)(v148);
    LOBYTE(__dst[0]) = 21;
    LOBYTE(v554[0]) = 22;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_46();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_29_49();
    sub_1E3C3DE00();
    LOBYTE(v535[0]) = v539[0];
    sub_1E3C3DE00();
    LOBYTE(v529[0]) = v532[0];
    v149 = OUTLINED_FUNCTION_14_102();
    sub_1E3C2FCB8(v149, v548, v542, v554, v535, v529, &qword_1F5D549D8, v150);
    OUTLINED_FUNCTION_26_53();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v151 = OUTLINED_FUNCTION_11_93();
    v152(v151, 48);

    (v132)(v153);
    OUTLINED_FUNCTION_2_1();
    (*(v154 + 1720))(10);

    (v132)(v155);
    LOBYTE(__dst[0]) = 10;
    LOBYTE(v554[0]) = 10;
    LOBYTE(v551[0]) = 11;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_20_63();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_70();
    sub_1E3C3DE00();
    LOBYTE(v532[0]) = v535[0];
    sub_1E3C2FCB8(v545, __dst, v554, v551, v539, v532, &qword_1F5D54AF8, __src);
    OUTLINED_FUNCTION_26_53();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v156 = OUTLINED_FUNCTION_11_93();
    v157(v156, 54);

    (v132)(v158);
    sub_1E3952C58();
    OUTLINED_FUNCTION_1_157(v159, v160, v161, v162);
    *v554 = xmmword_1E42AE100;
    *&v554[2] = *v486;
    LOBYTE(v555) = 0;
    sub_1E3952C58();
    OUTLINED_FUNCTION_7_127(v163, v164, v165, v166);
    v167.n128_u64[0] = 0;
    v168 = j__OUTLINED_FUNCTION_7_78(v167);
    OUTLINED_FUNCTION_32_49(v168, v169, v170, v171);
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_23_54();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_37_39();
    v172 = OUTLINED_FUNCTION_14_102();
    sub_1E3C2FCB8(v172, v542, v535, v554, v551, v548, v68, v173);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v174 = OUTLINED_FUNCTION_8_95();
    v175(v174);

    (v132)(v176);
    __dst[0] = *v557;
    __dst[1] = *&v557[16];
    LOBYTE(__dst[2]) = v558;
    *v554 = xmmword_1E42971B0;
    *&v554[2] = xmmword_1E42BF280;
    LOBYTE(v555) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_21_60();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_23_54();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_37_39();
    sub_1E3C3DE00();
    *v529 = *v532;
    v530 = *v533;
    LOBYTE(v531) = v534;
    v177 = OUTLINED_FUNCTION_14_102();
    sub_1E3C2FCB8(v177, v548, v542, v535, v529, v554, v68, v178);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v179 = OUTLINED_FUNCTION_11_93();
    v180(v179, 1);

    OUTLINED_FUNCTION_9_2();
    (*(v181 + 1936))();
    OUTLINED_FUNCTION_2_1();
    (*(v182 + 944))(1);
    goto LABEL_26;
  }

  v7 = TVAppFeature.isEnabled.getter(10, v5, v6);
  if (v7)
  {
    __dst[0] = xmmword_1E42BF290;
    __dst[1] = xmmword_1E42BA110;
    LOBYTE(__dst[2]) = 0;
    __asm { FMOV            V1.2D, #12.0 }

    v561 = xmmword_1E4298700;
    v562 = _Q1;
    v563 = 0;
    __asm { FMOV            V0.2D, #20.0 }

    *(v559 + 8) = _Q0;
    *&v559[0] = 0x4030000000000000;
    *(&v559[1] + 1) = 0x4034000000000000;
    v560 = 0;
    *v557 = xmmword_1E42B2A00;
    *&v557[16] = xmmword_1E42B2A00;
    v558 = 0;
    __asm { FMOV            V0.2D, #8.0 }

    *v554 = _Q0;
    *&v554[2] = xmmword_1E42B2A30;
    LOBYTE(v555) = 0;
    type metadata accessor for UIEdgeInsets();
    v16 = v15;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_21_60();
    sub_1E3C2FCB8(v548, __dst, &v561, v559, v557, v554, v16, __src);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v17 = OUTLINED_FUNCTION_11_93();
    v18(v17, 1);
  }

  v491 = sub_1E418A4F4();
  OUTLINED_FUNCTION_111();
  (*(v19 + 440))();
  LODWORD(v495) = v7;
  sub_1E39537A8();
  if (v7)
  {
    OUTLINED_FUNCTION_1_157(v20, v21, v22, v23);
    sub_1E39537A8();
    *&v561 = v24;
    *(&v561 + 1) = v25;
    *&v562 = v26;
    *(&v562 + 1) = v27;
    v563 = 0;
    type metadata accessor for UIEdgeInsets();
    v29 = v28;
    sub_1E3C2FC98();
    *v557 = v559[0];
    *&v557[16] = v559[1];
    v558 = v560;
    sub_1E3C3DE00();
    *v551 = *v554;
    v552 = *&v554[2];
    LOBYTE(v553) = v555;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_6_111();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_125();
    sub_1E3C2FCB8(v30, v557, v551, &v561, v545, v539, v29, v31);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v32 = OUTLINED_FUNCTION_11_93();
    v33(v32, 17);
  }

  else
  {
    *&v561 = v20;
    *(&v561 + 1) = v21;
    *&v562 = v22;
    *(&v562 + 1) = v23;
    v563 = 0;
    OUTLINED_FUNCTION_111();
    (*(v183 + 560))(&v561);
  }

  OUTLINED_FUNCTION_111();
  v184 += 230;
  v185 = *v184;
  v186 = v184;
  v187 = (*v184)();
  sub_1E3755B54();
  v188 = objc_opt_self();
  v189 = [v188 whiteColor];
  v190 = [v188 whiteColor];
  v191 = sub_1E3E5F2F8(v189, v190);

  (*(*v187 + 680))(v191);

  (v185)(v192);
  LOBYTE(__dst[0]) = 27;
  LOBYTE(v559[0]) = 15;
  v557[0] = 15;
  LOBYTE(v554[0]) = 21;
  LOBYTE(v551[0]) = 14;
  LOBYTE(v548[0]) = 14;
  v193 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v193, v559, v557, v554, v551, v548, &qword_1F5D549D8, v194);
  OUTLINED_FUNCTION_4_134();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v195 = OUTLINED_FUNCTION_11_93();
  v196(v195, 48);

  (v185)(v197);
  OUTLINED_FUNCTION_2_1();
  (*(v198 + 1984))(1);

  v482 = v186;
  v484 = v185;
  (v185)(v199);
  sub_1E3952C94();
  OUTLINED_FUNCTION_1_157(v200, v201, v202, v203);
  sub_1E3952C94();
  *&v559[0] = v204;
  *(&v559[0] + 1) = v205;
  *&v559[1] = v206;
  *(&v559[1] + 1) = v207;
  v560 = 0;
  __asm { FMOV            V0.2D, #20.0 }

  *v487 = _Q0;
  *&v557[8] = _Q0;
  *v557 = 0;
  *&v557[24] = 0x4034000000000000;
  v558 = 0;
  sub_1E3952C94();
  OUTLINED_FUNCTION_12_86(v209, v210, v211, v212);
  type metadata accessor for UIEdgeInsets();
  v214 = v213;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_21_60();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_23_54();
  v215 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v215, v559, v548, v557, v554, v542, v214, v216);
  OUTLINED_FUNCTION_13_97();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v217 = OUTLINED_FUNCTION_8_95();
  v218(v217);

  if (v495)
  {
    (v185)(v219);
    memset(v559, 0, sizeof(v559));
    v560 = 1;
    OUTLINED_FUNCTION_26_0();
    (*(v220 + 160))(v559);

    (v185)(v221);
    OUTLINED_FUNCTION_30();
    (*(v222 + 184))(v559);

    (v185)(v223);
    LOBYTE(__dst[0]) = 5;
    v557[0] = 5;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_28_42();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_20_63();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_70();
    sub_1E3C3DE00();
    LOBYTE(v532[0]) = v535[0];
    sub_1E3C2FCB8(v551, __dst, v557, v545, v539, v532, &qword_1F5D54AF8, __src);
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v224 = OUTLINED_FUNCTION_11_93();
    v225(v224, 54);

    (v185)(v226);
    LOBYTE(__dst[0]) = 27;
    v557[0] = 19;
    LOBYTE(v554[0]) = 14;
    LOBYTE(v551[0]) = 15;
    LOBYTE(v548[0]) = 14;
    sub_1E3C3DE00();
    LOBYTE(v542[0]) = v545[0];
    v227 = OUTLINED_FUNCTION_14_102();
    sub_1E3C2FCB8(v227, v557, v554, v542, v551, v548, &qword_1F5D549D8, v228);
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v229 = OUTLINED_FUNCTION_11_93();
    v230(v229, 48);

    v232 = (v185)(v231);
    v233 = *sub_1E3E5FD88();
    v234 = *(*v232 + 680);
    v235 = v233;
    v234(v233);

    (v185)(v236);
    OUTLINED_FUNCTION_2_1();
    v237 = OUTLINED_FUNCTION_15_8();
    v238(v237);
  }

  OUTLINED_FUNCTION_111();
  v239 += 233;
  v240 = *v239;
  v241 = v239;
  (*v239)();
  OUTLINED_FUNCTION_2_1();
  v242 = OUTLINED_FUNCTION_15_8();
  v243(v242);

  (v240)(v244);
  OUTLINED_FUNCTION_2_1();
  v245 = OUTLINED_FUNCTION_15_8();
  v246(v245);

  (v240)(v247);
  OUTLINED_FUNCTION_2_1();
  v248 = OUTLINED_FUNCTION_15_8();
  v249(v248);

  (v240)(v250);
  OUTLINED_FUNCTION_2_1();
  (*(v251 + 1984))(1);

  (v240)(v252);
  v253 = [v188 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v254 + 680))();

  (v240)(v255);
  LOBYTE(__dst[0]) = 21;
  v557[0] = 21;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_28_42();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_20_63();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_19_70();
  sub_1E3C3DE00();
  LOBYTE(v532[0]) = v535[0];
  OUTLINED_FUNCTION_14_102();
  OUTLINED_FUNCTION_31_42();
  sub_1E3C2FCB8(v256, v257, v258, v259, v260, v261, &qword_1F5D549D8, v262);
  OUTLINED_FUNCTION_4_134();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v263 = OUTLINED_FUNCTION_11_93();
  v264(v263, 48);

  (v240)(v265);
  OUTLINED_FUNCTION_27_45();
  v266 = &qword_1F5D54AF8;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_30_46();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_29_49();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_22_57();
  sub_1E3C2FCB8(v267, v268, v269, v270, v271, v272, &qword_1F5D54AF8, v273);
  OUTLINED_FUNCTION_4_134();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v274 = OUTLINED_FUNCTION_11_93();
  v275(v274, 54);

  (v240)(v276);
  sub_1E3952C58();
  OUTLINED_FUNCTION_1_157(v277, v278, v279, v280);
  sub_1E3952C58();
  *v557 = v281;
  *&v557[8] = v282;
  *&v557[16] = v283;
  *&v557[24] = v284;
  v558 = 0;
  v554[0] = 0;
  *&v554[1] = *v487;
  v554[3] = 0x4034000000000000;
  LOBYTE(v555) = 0;
  sub_1E3952C58();
  OUTLINED_FUNCTION_7_127(v285, v286, v287, v288);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_6_111();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_5_125();
  sub_1E3C2FCB8(v289, v557, v545, v554, v551, v539, v214, v290);
  OUTLINED_FUNCTION_13_97();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v291 = OUTLINED_FUNCTION_8_95();
  v292(v291);

  (v240)(v293);
  *v557 = xmmword_1E42971B0;
  *&v557[16] = xmmword_1E42971B0;
  v558 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v294 + 184))(v557);

  v296 = v495;
  if (v495)
  {
    v297 = (v240)(v295);
    v266 = *sub_1E3E5FDEC();
    v298 = *(*v297 + 680);
    v299 = v266;
    v298(v266);

    (v240)(v300);
    OUTLINED_FUNCTION_2_1();
    (*(v301 + 1792))(11);

    (v240)(v302);
    memset(v554, 0, sizeof(v554));
    LOBYTE(v555) = 1;
    OUTLINED_FUNCTION_26_0();
    (*(v303 + 184))(v554);
  }

  OUTLINED_FUNCTION_111();
  v304 += 236;
  v305 = *v304;
  (*v304)();
  OUTLINED_FUNCTION_2_1();
  (*(v306 + 1744))();
  OUTLINED_FUNCTION_18_30();
  v307 = *(MEMORY[0x1E69DDCE0] + 16);
  *v551 = *MEMORY[0x1E69DDCE0];
  v552 = v307;
  LOBYTE(v553) = 0;
  (*(*v266 + 1856))(v551);

  (v305)(v308);
  OUTLINED_FUNCTION_2_1();
  (*(v309 + 1744))();
  OUTLINED_FUNCTION_18_30();
  OUTLINED_FUNCTION_34_6();
  (*(v310 + 2000))(3);

  (v305)(v311);
  OUTLINED_FUNCTION_2_1();
  (*(v312 + 1744))();
  OUTLINED_FUNCTION_18_30();
  v313 = [v188 clearColor];
  OUTLINED_FUNCTION_34_6();
  (*(v314 + 1832))();

  (v305)(v315);
  v316 = [v188 clearColor];
  OUTLINED_FUNCTION_36();
  (*(v317 + 752))();

  (v305)(v318);
  OUTLINED_FUNCTION_2_1();
  (*(v319 + 1744))();
  OUTLINED_FUNCTION_18_30();
  v320 = OUTLINED_FUNCTION_36_0();
  v321(v320);

  (v305)(v322);
  sub_1E3952C58();
  OUTLINED_FUNCTION_1_157(v323, v324, v325, v326);
  sub_1E3952C58();
  OUTLINED_FUNCTION_32_49(v327, v328, v329, v330);
  sub_1E3952C58();
  v545[0] = v331;
  v545[1] = v332;
  v546[0] = v333;
  v546[1] = v334;
  LOBYTE(v547) = 0;
  sub_1E3C3DE00();
  *v539 = *v542;
  v540 = v543;
  LOBYTE(v541) = v544;
  sub_1E3C3DE00();
  *v532 = *v535;
  *v533 = v536;
  LOBYTE(v534) = v537;
  v335 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_5_24(v335, v336, v337, v338, v339, v340, v341, v342, v475, v478, v241, v240, v482, v484, v188, v487[1], v491, v493, v495, v497, v499[0], v499[1], v500, *(&v500 + 1), v501, v502, v503, *(&v503 + 1), v504, *(&v504 + 1), v505, v506, v507[0], v507[1], v508, *(&v508 + 1), v509, v510, v511, *(&v511 + 1), v512, *(&v512 + 1), v513, v514, v515[0], v515[1], v516, *(&v516 + 1), v517, v518, v519, *(&v519 + 1), v520, *(&v520 + 1), v521, v522, v523, v524, v525, v526, v527, v528, *v529);
  v343 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v343, v548, v539, v545, v532, &v523, v214, v344);
  OUTLINED_FUNCTION_13_97();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v345 = OUTLINED_FUNCTION_8_95();
  v346(v345);

  OUTLINED_FUNCTION_9_2();
  v348 = *(v347 + 1912);
  v348();
  OUTLINED_FUNCTION_2_1();
  (*(v349 + 1712))(1);

  (v348)(v350);
  OUTLINED_FUNCTION_2_1();
  (*(v351 + 1808))(1);

  v353 = (v348)(v352);
  (*(*v353 + 440))(*v492, 0);

  (v348)(v354);
  OUTLINED_FUNCTION_2_1();
  (*(v355 + 2000))(2);

  (v348)(v356);
  OUTLINED_FUNCTION_9_2();
  (*(v357 + 552))(v535);
  OUTLINED_FUNCTION_34_6();
  (*(v358 + 560))(v535);

  v360 = (v348)(v359);
  *v548 = 0u;
  v549 = 0u;
  LOBYTE(v550) = 1;
  (*(*v360 + 1856))(v548);

  (v348)(v361);
  OUTLINED_FUNCTION_2_1();
  (*(v362 + 1832))(0);

  (v348)(v363);
  OUTLINED_FUNCTION_30();
  v364 = OUTLINED_FUNCTION_36_0();
  v365(v364);

  (v348)(v366);
  OUTLINED_FUNCTION_30();
  (*(v367 + 184))(v548);

  OUTLINED_FUNCTION_9_2();
  v476 = *(v368 + 1792);
  v479 = v368 + 1792;
  v369 = v476();
  if (sub_1E34AF508(v369 & 1, 1))
  {
    OUTLINED_FUNCTION_111();
    v370 = OUTLINED_FUNCTION_36_0();
    v371(v370);
    OUTLINED_FUNCTION_9_2();
    v373 = *(v372 + 1160);
    v374 = OUTLINED_FUNCTION_36_0();
    v373(v374);
    OUTLINED_FUNCTION_9_2();
    (*(v375 + 560))(v548);
    v376 = sub_1E3C6DC70();
    v377 = v376[1];
    *v545 = *v376;
    *v546 = v377;
    LOBYTE(v547) = 0;
    OUTLINED_FUNCTION_111();
    (*(v378 + 184))(v545);
    v379 = sub_1E3C6DC7C();
    (v373)(*v379, 0);
    v380 = v4[160];
    if (sub_1E38F07C0(v380, 2, v381))
    {
      v382 = *sub_1E3E60480();
      OUTLINED_FUNCTION_111();
      v383 += 109;
      v384 = *v383;
      v380 = v383;
      v385 = v382;
      v386 = OUTLINED_FUNCTION_8_10();
      v387 = v384(v386);
      (v305)(v387);
      sub_1E3952C58();
      OUTLINED_FUNCTION_7_64(v388, v389, v390, v391);
      (*(v392 + 160))(v542);
    }

    else
    {
      v394 = *sub_1E3E608EC();
      OUTLINED_FUNCTION_111();
      v396 = *(v395 + 872);
      v397 = v394;
      v398 = OUTLINED_FUNCTION_8_10();
      v399 = v396(v398);
      v296 = v496;
      (v305)(v399);
      sub_1E3952C58();
      OUTLINED_FUNCTION_7_64(v400, v401, v402, v403);
      (*(v404 + 160))(v542);

      if ((v496 & 1) == 0 || (v393 = sub_1E38F07C0(v380, 4, v405), (v393 & 1) == 0))
      {
LABEL_19:
        (v305)(v393);
        OUTLINED_FUNCTION_30();
        (*(v411 + 1744))();
        OUTLINED_FUNCTION_18_30();
        if (v296)
        {
          v412 = 0x4048000000000000;
        }

        else
        {
          v412 = 0x4050800000000000;
        }

        (*(*v380 + 208))(v412, 0);

        (v305)(v413);
        OUTLINED_FUNCTION_2_1();
        (*(v414 + 1744))();
        OUTLINED_FUNCTION_18_30();
        OUTLINED_FUNCTION_34_6();
        (*(v415 + 312))(v412, 0);

        (v348)(v416);
        sub_1E3C6DFCC(*v492);

        (v348)(v417);
        OUTLINED_FUNCTION_30();
        (*(v418 + 208))(0x4048000000000000, 0);

        (v348)(v419);
        OUTLINED_FUNCTION_2_1();
        (*(v420 + 312))(0x4048000000000000, 0);

        v422 = v485(v421);
        sub_1E3C6DC94(v422);

        v481(v423);
        sub_1E3C6DE18();

        OUTLINED_FUNCTION_9_2();
        v425 = (*(v424 + 1960))();
        sub_1E3C6E604(v425);

        goto LABEL_23;
      }

      v406 = (v305)();
      sub_1E39537A8();
      v539[0] = v407;
      v539[1] = v408;
      *&v540 = v409;
      *(&v540 + 1) = v410;
      LOBYTE(v541) = 0;
      (*(*v406 + 560))(v539);
    }

    goto LABEL_19;
  }

LABEL_23:
  OUTLINED_FUNCTION_111();
  v426 += 242;
  v427 = *v426;
  (*v426)();
  *&__dst[0] = 0x4020000000000000;
  *(&__dst[0] + 1) = 0x4028000000000000;
  memset(&__dst[1], 0, 17);
  *v532 = xmmword_1E42BF2A0;
  v533[0] = 0;
  v533[1] = 0;
  LOBYTE(v534) = 0;
  v428 = sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_24(v428, v429, v430, v431, v432, v433, v434, v435, v476, v479, v480, v481, v483, v485, v488, v490, v492, v494, v496, v498, v499[0], v499[1], v500, *(&v500 + 1), v501, v502, v503, *(&v503 + 1), v504, *(&v504 + 1), v505, v506, v507[0], v507[1], v508, *(&v508 + 1), v509, v510, v511, *(&v511 + 1), v512, *(&v512 + 1), v513, v514, v515[0], v515[1], v516, *(&v516 + 1), v517, v518, v519, *(&v519 + 1), v520, *(&v520 + 1), v521, v522, v523, v524, v525, v526, v527, v528, *v529);
  sub_1E3C3DE00();
  *v515 = v519;
  v516 = v520;
  LOBYTE(v517) = v521;
  sub_1E3C3DE00();
  *v507 = v511;
  v508 = v512;
  LOBYTE(v509) = v513;
  sub_1E3C3DE00();
  *v499 = v503;
  v500 = v504;
  LOBYTE(v501) = v505;
  v436 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v436, &v523, v515, v532, v507, v499, v214, v437);
  OUTLINED_FUNCTION_13_97();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v438 = OUTLINED_FUNCTION_8_95();
  v439(v438);

  (v427)(v440);
  *&__dst[0] = 0x4038000000000000;
  BYTE8(__dst[0]) = 0;
  v532[0] = 0x4030000000000000;
  LOBYTE(v532[1]) = 0;
  v529[0] = 0x4044000000000000;
  LOBYTE(v529[1]) = 0;
  v441 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  *&v519 = v523;
  BYTE8(v519) = v524;
  sub_1E3C2FC98();
  *&v511 = v515[0];
  BYTE8(v511) = v515[1];
  sub_1E3C3DE00();
  *&v503 = v507[0];
  BYTE8(v503) = v507[1];
  sub_1E3C2FCB8(&v519, &v511, &v503, __dst, v532, v529, v441, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v442 = OUTLINED_FUNCTION_11_93();
  v443(v442, 100);

  (v427)(v444);
  *&__dst[0] = 0x4038000000000000;
  BYTE8(__dst[0]) = 0;
  v532[0] = 0x403E000000000000;
  LOBYTE(v532[1]) = 0;
  v529[0] = 0x404E000000000000;
  LOBYTE(v529[1]) = 0;
  v523 = 0x4044000000000000;
  LOBYTE(v524) = 0;
  sub_1E3C2FC98();
  v515[0] = v519;
  LOBYTE(v515[1]) = BYTE8(v519);
  sub_1E3C3DE00();
  v507[0] = v511;
  LOBYTE(v507[1]) = BYTE8(v511);
  v445 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v445, v515, v532, v529, v507, &v523, v441, v446);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v447 = OUTLINED_FUNCTION_11_93();
  v448(v447, 2);

  v450 = (v427)(v449);
  v427();
  OUTLINED_FUNCTION_30();
  v452 = (*(v451 + 200))();
  v454 = v453;

  (*(*v450 + 312))(v452, v454 & 1);

  (v427)(v455);
  OUTLINED_FUNCTION_2_1();
  (*(v456 + 2072))(15);

  v459 = TVAppFeature.isEnabled.getter(10, v457, v458);
  if (v459)
  {
    v460 = (v427)();
    v461 = v477();
    v462 = sub_1E34AF508(v461 & 1, 1);
    sub_1E375DA98(v460, v462);
  }

  (v427)(v459);
  v463 = [v489 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v464 + 680))();

  (v427)(v465);
  v466 = [v489 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v467 + 752))();

  (v427)(v468);
  OUTLINED_FUNCTION_2_1();
  (*(v469 + 2096))(7);

  (v427)(v470);
  OUTLINED_FUNCTION_2_1();
  (*(v471 + 944))(0);
LABEL_26:

  type metadata accessor for StandardLockupCellLayout();
  OUTLINED_FUNCTION_111();
  v473 = (*(v472 + 1816))();
  sub_1E3D8D0C0(v473);

  return result;
}

double sub_1E3B90FA0(char a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 99) = a1 & 1;
  v4 = swift_beginAccess();
  sub_1E3B91610(v4, v5, v6);
  v7 = sub_1E4205E84();
  if ((v7 & 1) == 0)
  {
    return sub_1E3B8E16C(v7, v8, v9);
  }

  return result;
}

uint64_t sub_1E3B91040(__n128 a1)
{
  if (*(v1 + 128))
  {
    v2 = *(v1 + 128);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v2 = sub_1E4097BF8(*(v1 + 160));
    *(v1 + 128) = v2;
  }

  return v2;
}

uint64_t sub_1E3B910AC()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3B91114()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E3B9117C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  return sub_1E3B911C8(a1, v2);
}

uint64_t sub_1E3B911C8(uint64_t a1, char a2)
{
  *(v2 + 99) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0;
  *(v2 + 98) = a1;
  *(v2 + 160) = a2;
  if (a1)
  {
    swift_beginAccess();
    *(v2 + 99) = 1;
  }

  v3 = sub_1E3C2F9A0();

  sub_1E3B8E16C(v4, v5, v6);
  OUTLINED_FUNCTION_36();
  v8 = (*(v7 + 1816))();
  sub_1E3C37EC8(v8, &unk_1F5D738C8);

  OUTLINED_FUNCTION_36();
  v10 = (*(v9 + 1840))();
  sub_1E3C37CBC(v10, 23);

  OUTLINED_FUNCTION_36();
  v12 = (*(v11 + 1864))();
  sub_1E3C37CBC(v12, 15);

  OUTLINED_FUNCTION_36();
  v14 = (*(v13 + 1888))();
  sub_1E3C37CBC(v14, 41);

  OUTLINED_FUNCTION_36();
  v16 = (*(v15 + 1912))();
  sub_1E3C37CBC(v16, 39);

  OUTLINED_FUNCTION_36();
  v18 = (*(v17 + 1936))();
  sub_1E3C37CBC(v18, 31);

  OUTLINED_FUNCTION_36();
  v20 = (*(v19 + 1960))();
  sub_1E3C37CBC(v20, 67);

  return v3;
}

void sub_1E3B91478()
{
  *(v0 + 99) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3B914EC(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = a3;
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_36();
  if ((*(v7 + 1768))())
  {
    v10 = 1;
  }

  else
  {
    if ((TVAppFeature.isEnabled.getter(10, v8, v9) & 1) == 0)
    {
      return result;
    }

    type metadata accessor for StandardLockupCellLayout();
    v10 = sub_1E3D8C9E8(a1, a2, v4) & 1;
  }

  return sub_1E3B90FA0(v10);
}

uint64_t sub_1E3B915BC()
{
  v0 = sub_1E38909F4();

  return MEMORY[0x1EEE6BDC0](v0, 161, 7);
}

unint64_t sub_1E3B91610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF341E8;
  if (!qword_1ECF341E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF341E8);
  }

  return result;
}

void OUTLINED_FUNCTION_32_49(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3C0] = a1;
  *&STACK[0x3C8] = a2;
  *&STACK[0x3D0] = a3;
  *&STACK[0x3D8] = a4;
  LOBYTE(STACK[0x3E0]) = 0;
}

uint64_t sub_1E3B916A4(__int16 a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 128, a2);
  *(v2 + 128) = a1;
  return result;
}

uint64_t sub_1E3B916D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = TVAppFeature.isEnabled.getter(10, a2, a3);
  type metadata accessor for ButtonLayout();
  v4 = j__OUTLINED_FUNCTION_18();
  v5 = sub_1E3B050E8();
  v6 = j__OUTLINED_FUNCTION_18();
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  return sub_1E3BBD964(v7, v4 & 1, v5, v6 & 1);
}

double sub_1E3B91774(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 144, a2);
  *(v2 + 144) = a1;

  return result;
}

double sub_1E3B917DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 152, a2);
  *(v2 + 152) = a1;

  return result;
}

uint64_t sub_1E3B91818(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3B91854(v1);
}

uint64_t sub_1E3B91854(__int16 a1)
{
  type metadata accessor for TextLayout();
  *(v1 + 104) = sub_1E383BCC0();
  *(v1 + 112) = sub_1E383BCC0();
  *(v1 + 120) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E3B050E8();
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = sub_1E3BBD964(1, v3 & 1, v4, v5 & 1);
  *(v1 + 136) = v6;
  *(v1 + 144) = sub_1E3B916D8(v6, v7, v8);
  type metadata accessor for ChannelLogoViewLayout();
  *(v1 + 152) = sub_1E3E38658(2);
  *(v1 + 128) = a1;
  v9 = sub_1E3C2F9A0();
  v10 = *(*v9 + 1744);

  v10();
  OUTLINED_FUNCTION_2_1();
  (*(v11 + 1720))(5);

  (v10)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1984))(1);

  (v10)(v14);
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 2056))(3, 0);

  (v10)(v16);
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 2080))(4, 0);

  (v10)(v18);
  OUTLINED_FUNCTION_2_1();
  (*(v19 + 2104))(4, 0);

  (v10)(v20);
  OUTLINED_FUNCTION_2_1();
  (*(v21 + 2128))(0x3FD999999999999ALL, 0);

  (v10)(v22);
  OUTLINED_FUNCTION_2_1();
  (*(v23 + 1792))(10);

  v25 = (v10)(v24);
  v26 = sub_1E3E5FD88();
  v27 = *v26;
  v28 = *(*v25 + 680);
  v29 = *v26;
  v28(v27);

  OUTLINED_FUNCTION_9_2();
  v31 = *(v30 + 1768);
  v31();
  OUTLINED_FUNCTION_2_1();
  (*(v32 + 1720))(5);

  (v31)(v33);
  OUTLINED_FUNCTION_2_1();
  (*(v34 + 1984))(1);

  (v31)(v35);
  OUTLINED_FUNCTION_2_1();
  v36 = OUTLINED_FUNCTION_8_5();
  v37(v36);

  (v31)(v38);
  OUTLINED_FUNCTION_2_1();
  v39 = OUTLINED_FUNCTION_8_5();
  v40(v39);

  (v31)(v41);
  OUTLINED_FUNCTION_2_1();
  v42 = OUTLINED_FUNCTION_8_5();
  v43(v42);

  (v31)(v44);
  OUTLINED_FUNCTION_2_1();
  (*(v45 + 2128))(0x3FD999999999999ALL, 0);

  v47 = (v31)(v46);
  v48 = *v26;
  v49 = *(*v47 + 680);
  v50 = *v26;
  v49(v48);

  OUTLINED_FUNCTION_9_2();
  v52 = v51 + 1792;
  v53 = *(v51 + 1792);
  v53();
  OUTLINED_FUNCTION_2_1();
  (*(v54 + 1720))(6);

  (v53)(v55);
  OUTLINED_FUNCTION_2_1();
  (*(v56 + 1984))(1);

  (v53)(v57);
  OUTLINED_FUNCTION_2_1();
  (*(v58 + 2056))(0, 0);

  (v53)(v59);
  OUTLINED_FUNCTION_2_1();
  (*(v60 + 2080))(0, 0);

  (v53)(v61);
  OUTLINED_FUNCTION_2_1();
  (*(v62 + 2104))(0, 0);

  (v53)(v63);
  __dst[0] = 22;
  LOBYTE(v549) = 17;
  LOBYTE(v547) = 22;
  sub_1E3C2FC98();
  LOBYTE(v543) = v545;
  OUTLINED_FUNCTION_16_83();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_11_94();
  sub_1E3C3DE00();
  v553 = v554[0];
  sub_1E3C2FCB8(__dst, &v543, &v539, &v553, &v549, &v547, &qword_1F5D549D8, __src);
  OUTLINED_FUNCTION_1_158();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v72 = OUTLINED_FUNCTION_4_135(v64, v65, v66, v67, v68, v69, v70, v71, v427, v449, v471, v493, v516, __dst[0]);
  v73(v72);

  v494 = v53;
  v517 = v52;
  v75 = (v53)(v74);
  sub_1E3755B54();
  v76 = sub_1E4206F24();
  v77 = [v76 colorWithAlphaComponent_];

  v78 = sub_1E4206F24();
  v79 = [v78 colorWithAlphaComponent_];

  v80 = sub_1E3E5F2F8(v77, v79);
  (*(*v75 + 680))(v80);

  OUTLINED_FUNCTION_9_2();
  v82 = (*(v81 + 1816))();
  if (sub_1E373F6E0(v82, 161, v83, v84, v85, v86))
  {
    v89 = TVAppFeature.isEnabled.getter(10, v87, v88);
    OUTLINED_FUNCTION_111();
    v90 += 218;
    v91 = *v90;
    v92 = (*v90)();
    if (v89)
    {
      LOBYTE(v549) = 2;
      LOBYTE(v547) = 2;
      LOBYTE(v545) = 7;
      LOBYTE(v543) = 6;
      LOBYTE(v541) = 6;
      v100 = OUTLINED_FUNCTION_0_157(v92, v93, v94, v95, v96, v97, v98, v99, v428, v450, v472, v494, v517, 27);
      sub_1E3C2FCB8(v100, v101, v102, v103, &v543, &v541, &qword_1F5D549D8, v104);
      OUTLINED_FUNCTION_1_158();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v113 = OUTLINED_FUNCTION_4_135(v105, v106, v107, v108, v109, v110, v111, v112, v429, v451, v473, v495, v518, __dst[0]);
      v114(v113);

      (v91)(v115);
      __dst[0] = 4;
      LOBYTE(v549) = 1;
      sub_1E3C3DE00();
      LOBYTE(v545) = v547;
      OUTLINED_FUNCTION_15_92();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_5_126();
      v116 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_103(v116, v117, v118, v119, v120, v121, v122, v123, v430, v452, v474, v496, v519, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v539);
      sub_1E3C3DE00();
      v552 = v553;
      sub_1E3C2FCB8(__dst, &v549, &v545, &v541, v554, &v552, &unk_1F5D54CA8, __src);
      OUTLINED_FUNCTION_1_158();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v132 = OUTLINED_FUNCTION_6_112(v124, v125, v126, v127, v128, v129, v130, v131, v431, v453, v475, v497, v520, __dst[0]);
      v133(v132, 59);

      (v91)(v134);
      OUTLINED_FUNCTION_2_1();
      (*(v135 + 2128))(0x3FE6666666666666, 0);

      (v91)(v136);
      OUTLINED_FUNCTION_2_1();
      v137 = OUTLINED_FUNCTION_8_5();
      v138(v137);

      (v91)(v139);
      *__dst = 0;
      __dst[8] = 1;
      v549 = 0x4073100000000000;
      v550 = 0;
      v547 = 0x4081300000000000;
      v548 = 0;
      v545 = 0x4077600000000000;
      v546 = 0;
      v543 = 0x407B000000000000;
      v544 = 0;
      v140 = MEMORY[0x1E69E7DE0];
      OUTLINED_FUNCTION_16_83();
      sub_1E3C3DE00();
      v539 = v541;
      v540 = v542;
      sub_1E3C2FCB8(&v539, __dst, &v549, &v547, &v545, &v543, v140, __src);
      memcpy(__dst, __src, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v149 = OUTLINED_FUNCTION_6_112(v141, v142, v143, v144, v145, v146, v147, v148, v432, v454, v476, v498, v521, __dst[0]);
      v151 = 4;
    }

    else
    {
      LOBYTE(v549) = 17;
      LOBYTE(v547) = 15;
      LOBYTE(v545) = 7;
      LOBYTE(v543) = 3;
      LOBYTE(v541) = 7;
      v267 = OUTLINED_FUNCTION_0_157(v92, v93, v94, v95, v96, v97, v98, v99, v428, v450, v472, v494, v517, 27);
      sub_1E3C2FCB8(v267, v268, v269, v270, &v543, &v541, &qword_1F5D549D8, v271);
      OUTLINED_FUNCTION_1_158();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v149 = OUTLINED_FUNCTION_4_135(v272, v273, v274, v275, v276, v277, v278, v279, v443, v465, v487, v510, v532, __dst[0]);
    }

    v150(v149, v151);

    OUTLINED_FUNCTION_111();
    v280 += 218;
    v281 = *v280;
    v282 = (*v280)();
    (*(*v282 + 1792))(10);

    if (TVAppFeature.isEnabled.getter(10, v283, v284))
    {
      v281();
      __dst[0] = 11;
      LOBYTE(v549) = 6;
      LOBYTE(v547) = 6;
      LOBYTE(v545) = 10;
      LOBYTE(v543) = 7;
      OUTLINED_FUNCTION_16_83();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_11_94();
      v295 = OUTLINED_FUNCTION_0_157(v287, v288, v289, v290, v291, v292, v293, v294, v433, v455, v477, v499, v522, __dst[0]);
      sub_1E3C2FCB8(v295, v296, v297, v298, &v539, &v543, &qword_1F5D54AF8, v299);
      OUTLINED_FUNCTION_1_158();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v308 = OUTLINED_FUNCTION_6_112(v300, v301, v302, v303, v304, v305, v306, v307, v444, v466, v488, v511, v533, __dst[0]);
      v309(v308, 54);
    }

    v310 = TVAppFeature.isEnabled.getter(10, v285, v286);
    OUTLINED_FUNCTION_111();
    (*(v311 + 1768))();
    if (v310)
    {
      __dst[0] = 17;
      LOBYTE(v549) = 17;
      LOBYTE(v547) = 21;
      LOBYTE(v545) = 25;
      OUTLINED_FUNCTION_15_92();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_5_126();
      v312 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_103(v312, v313, v314, v315, v316, v317, v318, v319, v433, v455, v477, v499, v522, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v539);
      v328 = OUTLINED_FUNCTION_0_157(v320, v321, v322, v323, v324, v325, v326, v327, v445, v467, v489, v512, v534, __dst[0]);
      v333 = &v541;
      v334 = v554;
    }

    else
    {
      __dst[0] = 19;
      LOBYTE(v549) = 27;
      LOBYTE(v547) = 27;
      LOBYTE(v545) = 3;
      LOBYTE(v543) = 2;
      OUTLINED_FUNCTION_16_83();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_11_94();
      v328 = OUTLINED_FUNCTION_0_157(v335, v336, v337, v338, v339, v340, v341, v342, v433, v455, v477, v499, v522, __dst[0]);
      v333 = &v543;
      v334 = &v539;
    }

    sub_1E3C2FCB8(v328, v329, v330, v331, v333, v334, &qword_1F5D549D8, v332);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v351 = OUTLINED_FUNCTION_4_135(v343, v344, v345, v346, v347, v348, v349, v350, v446, v468, v490, v513, v535, __dst[0]);
    v352(v351);

    v353 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    [v353 setShadowOffset_];
    [v353 setShadowBlurRadius_];
    v354 = [objc_opt_self() blackColor];
    v355 = [v354 colorWithAlphaComponent_];

    [v353 setShadowColor_];
    OUTLINED_FUNCTION_9_2();
    (*(v356 + 1840))();
    OUTLINED_FUNCTION_2_1();
    v358 = *(v357 + 608);
    v359 = v353;
    v358(v353);

    OUTLINED_FUNCTION_9_2();
    v361 = *(v360 + 1864);
    v361();
    OUTLINED_FUNCTION_2_1();
    (*(v362 + 2048))();
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_3_11();
    (*(v363 + 1720))(6);

    v365 = *(v361)(v364);
    (*(v365 + 2048))();

    __dst[0] = 27;
    if (TVAppFeature.isEnabled.getter(10, v366, v367))
    {
      v368 = 17;
    }

    else
    {
      v368 = 22;
    }

    LOBYTE(v549) = v368;
    LOBYTE(v547) = 19;
    LOBYTE(v545) = 27;
    LOBYTE(v543) = 19;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_11_94();
    v377 = OUTLINED_FUNCTION_0_157(v369, v370, v371, v372, v373, v374, v375, v376, v447, v469, v491, v514, v536, __dst[0]);
    sub_1E3C2FCB8(v377, v378, v379, v380, &v539, &v543, &qword_1F5D549D8, v381);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v390 = OUTLINED_FUNCTION_4_135(v382, v383, v384, v385, v386, v387, v388, v389, v448, v470, v492, v515, v537, __dst[0]);
    v391(v390);

    if (TVAppFeature.isEnabled.getter(10, v392, v393))
    {
      v396 = (v361)();
      (*(*v396 + 2048))(v396);
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v397 + 1792))(5);

      (v361)(v398);
      OUTLINED_FUNCTION_2_1();
      (*(v399 + 2096))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v400 + 2072))(27);

      (v361)(v401);
      OUTLINED_FUNCTION_2_1();
      (*(v402 + 2096))();
      OUTLINED_FUNCTION_30_6();
      v403 = *sub_1E3E5FD88();
      v404 = *(qword_1F5D549D8 + 680);
      v405 = v403;
      v404(v403);

      (v361)(v406);
      OUTLINED_FUNCTION_2_1();
      (*(v407 + 2096))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v408 + 2144))(0x4031000000000000, 0);

      (v361)(v409);
      OUTLINED_FUNCTION_2_1();
      (*(v410 + 2096))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v411 + 2168))(6);

      (v361)(v412);
      OUTLINED_FUNCTION_2_1();
      (*(v413 + 2096))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v414 + 2096))(6);
    }

    TVAppFeature.isEnabled.getter(10, v394, v395);
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v152 += 218;
    v153 = *v152;
    (*v152)();
    OUTLINED_FUNCTION_10_87();
    LOBYTE(v543) = 3;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_11_94();
    v162 = OUTLINED_FUNCTION_0_157(v154, v155, v156, v157, v158, v159, v160, v161, v428, v450, v472, v494, v517, __dst[0]);
    sub_1E3C2FCB8(v162, v163, v164, v165, &v543, &v539, &qword_1F5D549D8, v166);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v175 = OUTLINED_FUNCTION_4_135(v167, v168, v169, v170, v171, v172, v173, v174, v434, v456, v478, v500, v523, __dst[0]);
    v176(v175);

    (v153)(v177);
    __dst[0] = 10;
    LOBYTE(v549) = 11;
    LOBYTE(v547) = 11;
    LOBYTE(v545) = 10;
    OUTLINED_FUNCTION_15_92();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_126();
    v178 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_14_103(v178, v179, v180, v181, v182, v183, v184, v185, v435, v457, v479, v501, v524, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v539);
    v194 = OUTLINED_FUNCTION_0_157(v186, v187, v188, v189, v190, v191, v192, v193, v436, v458, v480, v502, v525, __dst[0]);
    sub_1E3C2FCB8(v194, v195, v196, v197, &v541, v554, &qword_1F5D54AF8, v198);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v207 = OUTLINED_FUNCTION_6_112(v199, v200, v201, v202, v203, v204, v205, v206, v437, v459, v481, v503, v526, __dst[0]);
    v208(v207, 54);

    OUTLINED_FUNCTION_9_2();
    v210 = *(v209 + 1768);
    v210();
    OUTLINED_FUNCTION_10_87();
    LOBYTE(v543) = 17;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_11_94();
    v219 = OUTLINED_FUNCTION_0_157(v211, v212, v213, v214, v215, v216, v217, v218, v438, v460, v482, v504, v527, __dst[0]);
    sub_1E3C2FCB8(v219, v220, v221, v222, &v543, &v539, &qword_1F5D549D8, v223);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v232 = OUTLINED_FUNCTION_4_135(v224, v225, v226, v227, v228, v229, v230, v231, v439, v461, v483, v505, v528, __dst[0]);
    v233(v232);

    (v210)(v234);
    __dst[0] = 4;
    LOBYTE(v549) = 11;
    LOBYTE(v547) = 11;
    LOBYTE(v545) = 10;
    OUTLINED_FUNCTION_15_92();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_126();
    v235 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_14_103(v235, v236, v237, v238, v239, v240, v241, v242, v440, v462, v484, v506, v529, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v539);
    v251 = OUTLINED_FUNCTION_0_157(v243, v244, v245, v246, v247, v248, v249, v250, v441, v463, v485, v507, v530, __dst[0]);
    sub_1E3C2FCB8(v251, v252, v253, v254, &v541, v554, &qword_1F5D54AF8, v255);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v264 = OUTLINED_FUNCTION_6_112(v256, v257, v258, v259, v260, v261, v262, v263, v442, v464, v486, v508, v531, __dst[0]);
    v265(v264, 54);
  }

  v415 = (v10)(v266);
  sub_1E3C37CBC(v415, 23);

  v417 = (v31)(v416);
  sub_1E3C37CBC(v417, 15);

  v419 = v509(v418);
  sub_1E3C37CBC(v419, 11);

  OUTLINED_FUNCTION_9_2();
  v421 = (*(v420 + 1840))();
  sub_1E3C37CBC(v421, 59);

  OUTLINED_FUNCTION_9_2();
  v423 = (*(v422 + 1864))();
  sub_1E3C37CBC(v423, 60);

  OUTLINED_FUNCTION_9_2();
  v425 = (*(v424 + 1888))();
  sub_1E3C37CBC(v425, 99);

  return v9;
}

uint64_t sub_1E3B93370()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  *(v0 + 112) = sub_1E383BCC0();
  *(v0 + 120) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E3BBD964(1, v1 & 1, v2, v3 & 1);
  *(v0 + 136) = v4;
  *(v0 + 144) = sub_1E3B916D8(v4, v5, v6);
  type metadata accessor for ChannelLogoViewLayout();
  *(v0 + 152) = sub_1E3E38658(2);
  *(v0 + 128) = 161;

  return sub_1E3C2F9A0();
}

double sub_1E3B9342C()
{

  return result;
}

uint64_t sub_1E3B9347C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3B934D4()
{
  v0 = sub_1E3B9347C();

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

id sub_1E3B93528(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight;
  OUTLINED_FUNCTION_0_12(a1);
  if (*(v1 + v2) == 1)
  {
    [v1 setBackgroundColor_];
    v3 = *sub_1E3E60700();
  }

  else
  {
    [v1 setBackgroundColor_];
    v3 = 0;
  }

  return [v1 setHighlightedBackgroundColor_];
}

void sub_1E3B935B0(void *a1)
{
  v6 = *&v1[OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView];
  *&v1[OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView] = a1;
  v2 = a1;
  v3 = [v1 vuiContentView];
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView];
  v5 = OUTLINED_FUNCTION_112();
  sub_1E3C8BDFC(v5, v6);
}

id sub_1E3B93650()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView) = 0;
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  [v5 setAutoresizingMask_];
  return v5;
}

void sub_1E3B93708()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3B937A0(char a1, double a2, double a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = OUTLINED_FUNCTION_17_4();
  objc_msgSendSuper2(v8, v9, v7);
  v10 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (!v11 || (v12 = *(*v11 + 176), v13 = , v12(v25, v13), v14 = *&v25[1], v15 = *&v25[3], , (v26 & 1) != 0))
  {
    v14 = *(MEMORY[0x1E69DDCE0] + 8);
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  if (v14 > v16)
  {
    v16 = v14;
  }

  if (v15 > v17)
  {
    v17 = v15;
  }

  if (a1)
  {
    if (*(v4 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView))
    {
      OUTLINED_FUNCTION_16_84();
      [v18 v19];
    }
  }

  else
  {
    v20 = sub_1E3CEE8A0(0.0, v16, 0.0, v17, 0.0);
    v21 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView;
    v22 = *(v4 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView);
    if (v22)
    {
      [v22 setFrame_];
      v23 = *(v4 + v21);
      if (v23)
      {
        [v23 vui_layoutIfNeeded];
      }
    }
  }

  return a2;
}

id sub_1E3B93994(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight;
  result = swift_beginAccess();
  if (*(v1 + v4) == 1)
  {
    v6.receiver = v1;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_vui_setHighlighted_, a1 & 1);
  }

  return result;
}

id sub_1E3B93A64()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_vui_prepareForReuse);
  result = *&v0[OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView];
  if (result)
  {
    return [result vui_prepareForReuse];
  }

  return result;
}

uint64_t sub_1E3B93B04(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = (*(*a1 + 488))(a2);
      if (v10)
      {
        *&v157 = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240, &unk_1E4297E90);
        sub_1E32752B0(&qword_1ECF289A8, &qword_1ECF34240, &unk_1E4297E90, MEMORY[0x1E69E5E60]);
        sub_1E38D2480(v11, v162);

        v13 = v162[0];
        if (v162[0])
        {
          v14 = (*(*a1 + 392))(v12);
          if (v14)
          {
            v15 = v14;
            if (*v14 == _TtC8VideosUI25OfferListLockupCellLayout)
            {
              v16 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout;
              OUTLINED_FUNCTION_3_0(v9 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout, v160);
              *(v9 + v16) = v15;
              swift_retain_n();

              v18 = sub_1E373E010(59, v13, v17);
              v19 = v18;
              v20 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView;
              v21 = *(v9 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView);
              if (v21)
              {
                type metadata accessor for ASCListItem();
                v18 = swift_dynamicCastClass();
                v22 = v18;
                if (v18)
                {
                  v18 = v21;
                }

                if (v19)
                {
LABEL_11:
                  v156 = v20;
                  v23 = (*(*v19 + 544))(v18);
                  v24 = [v23 selectEventDataSource];

                  if (v24)
                  {
                    v25 = [v24 action];
                    if (v25)
                    {
                      v26 = v25;
                      objc_opt_self();
                      v27 = swift_dynamicCastObjCClass();
                      if (v27)
                      {
                        v28 = v27;
                        if (v22)
                        {
                          v29 = v22;
                          sub_1E3CC2474(v28);
                        }

                        else
                        {
                          type metadata accessor for ASCListItem();
                          v30 = v26;
                          v29 = sub_1E3CC1DF0();
                        }

                        v31 = [v24 documentDataSource];
                        if (v31)
                        {
                          v32 = v31;
                          v154 = [v31 uiConfiguration];
                        }

                        else
                        {
                          v154 = 0;
                        }

                        v33 = OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration;
                        OUTLINED_FUNCTION_3_0(&v29[OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration], v162);
                        v34 = *&v29[v33];
                        *&v29[v33] = v154;

                        v35 = [v24 postActionDocumentDataSource];
                        if (v35)
                        {
                          v36 = v35;
                          v154 = [v35 uiConfiguration];

                          v37 = v154;
                        }

                        else
                        {

                          v37 = 0;
                        }

                        v38 = OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration;
                        OUTLINED_FUNCTION_3_0(&v29[OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration], v161);
                        v39 = *&v29[v38];
                        *&v29[v38] = v37;
                      }

                      else
                      {

                        v29 = 0;
                      }

                      goto LABEL_31;
                    }
                  }

                  v29 = 0;
LABEL_31:
                  v20 = v156;
LABEL_32:

                  if (v29)
                  {

                    v40 = v29;
                    v41 = OUTLINED_FUNCTION_122();
                    sub_1E3B935B0(v41);

LABEL_61:

                    goto LABEL_62;
                  }

                  v42 = *(v9 + v20);
                  if (v42 && (type metadata accessor for OfferListLockupContentView(), (v43 = swift_dynamicCastClass()) != 0))
                  {
                    v44 = v43;
                    v45 = v42;
                  }

                  else
                  {
                    type metadata accessor for OfferListLockupContentView();
                    v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                  }

                  v46 = v44;
                  *&v44[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout] = v15;

                  v48 = 0.0;
                  if (!sub_1E373E010(39, v13, v47))
                  {
                    v60 = 0;
                    v50 = 0;
LABEL_46:
                    v59 = 1;
LABEL_47:
                    v155 = v15;
                    v156 = v50;
                    v61 = sub_1E418A4F4();
                    if (v60 && (v59 & 1) == 0 && v48 == *v61)
                    {
                      v62 = *(*v60 + 2000);

                      v62(2);
                    }

                    v63 = v46;
                    v153 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView;
                    v64 = *&v46[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView];
                    v65 = type metadata accessor for UIFactory();
                    v157 = 0u;
                    v158 = 0u;
                    v159 = 0;
                    v66 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

                    v67 = v156;

                    v68 = v60;
                    v69 = v64;
                    v70 = v64;
                    v71 = v63;
                    v151 = v66;
                    v152 = v65;
                    v72 = sub_1E393D92C(v67, v70, &v157, v68, v66);
                    v154 = v68;

                    sub_1E373C624(&v157);
                    sub_1E3B949F8(v72);
                    v73 = *sub_1E37BD0DC();
                    v74 = (*(v73 + 504))();

                    if (v74 != 18)
                    {
                      *&v63[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imagePosition] = sub_1E41255DC(v74);
                    }

                    v76 = *&v63[v153];
                    if (v76)
                    {
                      [v76 setVuiUserInteractionEnabled_];
                    }

                    sub_1E373E010(23, v13, v75);
                    OUTLINED_FUNCTION_0_158();
                    v77 = v74;
                    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0, &qword_1E42B4768);
                    v79 = OUTLINED_FUNCTION_18_65();
                    v80 = v152;
                    v84 = sub_1E393D92C(v79, v81, v82, v83, v78);

                    sub_1E373C624(&v157);
                    v85 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A04(v85);
                    v88 = sub_1E373E010(9, v13, v86);
                    if (!v88)
                    {
                      v88 = sub_1E373E010(15, v13, v87);
                    }

                    OUTLINED_FUNCTION_0_158();
                    v89 = v84;
                    v153 = v88;
                    v90 = sub_1E393D92C(v88, v84, &v157, 0, v78);

                    sub_1E373C624(&v157);
                    v91 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A10(v91);
                    sub_1E373E010(17, v13, v92);
                    OUTLINED_FUNCTION_0_158();
                    v93 = v90;
                    v94 = OUTLINED_FUNCTION_18_65();
                    v98 = sub_1E393D92C(v94, v95, v96, v97, v151);

                    sub_1E373C624(&v157);
                    v99 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A40(v99);
                    sub_1E373E010(59, v13, v100);
                    OUTLINED_FUNCTION_0_158();
                    v101 = sub_1E3280A90(0, &qword_1EE23ACF0, off_1E8728290);
                    v151 = v101;
                    v102 = v98;
                    v103 = OUTLINED_FUNCTION_1_159();
                    v107 = sub_1E393D92C(v103, v104, v105, v106, v101);

                    sub_1E373C624(&v157);
                    v108 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A28(v108);
                    sub_1E373E010(14, v13, v109);
                    OUTLINED_FUNCTION_0_158();
                    v110 = v107;
                    v111 = OUTLINED_FUNCTION_1_159();
                    sub_1E393D92C(v111, v112, v113, v114, v78);

                    sub_1E373C624(&v157);
                    v115 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A1C(v115);
                    sub_1E373E010(60, v13, v116);
                    v117 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton;
                    v118 = *&v71[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton];
                    v159 = 0;
                    v157 = 0u;
                    v158 = 0u;
                    v119 = v118;
                    v120 = OUTLINED_FUNCTION_1_159();
                    sub_1E393D92C(v120, v121, v122, v123, v151);

                    sub_1E373C624(&v157);
                    v124 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A34(v124);
                    v125 = *&v71[v117];
                    type metadata accessor for Accessibility();
                    v126 = v125;
                    v128 = sub_1E373E010(60, v13, v127);
                    sub_1E40A91FC(v125, 0, v128);

                    v129 = sub_1E3B94AD8();
                    *(&v158 + 1) = &unk_1F5D5DAC8;
                    v159 = &off_1F5D5C998;
                    LOBYTE(v157) = 38;
                    v130 = j__OUTLINED_FUNCTION_18();
                    LOBYTE(v125) = sub_1E39C29F0(&v157, v130 & 1);
                    __swift_destroy_boxed_opaque_existential_1(&v157);
                    [v129 setHidden_];

                    v132 = sub_1E373E010(222, v13, v131);

                    if (v132)
                    {
                      sub_1E3280A90(0, &qword_1EE23B228, off_1E8728490);
                      v133 = sub_1E415EDEC();
                      v134 = *&v71[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView];
                      v135 = v134;
                      sub_1E4005268(v132, v133, v134, 0, 0);

                      v136 = OUTLINED_FUNCTION_4_126();
                      sub_1E3B94A4C(v136);
                    }

                    else
                    {
                      sub_1E3B94A4C(0);
                    }

                    [v71 vui_setNeedsLayout];
                    v137 = v71;
                    sub_1E3B935B0(v71);

                    goto LABEL_61;
                  }

                  type metadata accessor for ImageViewModel();
                  v49 = swift_dynamicCastClass();
                  v50 = v49;
                  if (v49)
                  {
                    v51 = *(*v49 + 392);

                    v53 = v51(v52);

                    if (!v53)
                    {
LABEL_45:
                      v60 = 0;
                      goto LABEL_46;
                    }

                    type metadata accessor for ImageLayout();
                    v54 = swift_dynamicCastClass();
                    if (v54)
                    {
                      v156 = *(*v54 + 432);
                      v55 = v54;

                      v57 = (v156)(v56);
                      v59 = v58;

                      v48 = *&v57;
                      v60 = v55;
                      goto LABEL_47;
                    }
                  }

                  goto LABEL_45;
                }
              }

              else
              {
                v22 = 0;
                if (v18)
                {
                  goto LABEL_11;
                }
              }

              v29 = 0;
              goto LABEL_32;
            }
          }
        }
      }

LABEL_62:
      *(&v158 + 1) = &unk_1F5D5DAC8;
      v159 = &off_1F5D5C998;
      LOBYTE(v157) = 33;
      v138 = sub_1E39BE4D0();
      if (v138)
      {
      }

      v139 = sub_1E39C29F0(&v157, v138 != 0);
      __swift_destroy_boxed_opaque_existential_1(&v157);
      v140 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight;
      v141 = OUTLINED_FUNCTION_3_0(v9 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight, &v157);
      *(v9 + v140) = v139 & 1;
      sub_1E3B93528(v141);
      return v9;
    }
  }

  v143 = sub_1E324FBDC();
  (*(v5 + 16))(v7, v143, v4);

  v144 = sub_1E41FFC94();
  v145 = sub_1E4206814();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&v157 = v147;
    *v146 = 136315138;
    sub_1E384EE08(a1[49]);
    v150 = sub_1E3270FC8(v148, v149, &v157);

    *(v146 + 4) = v150;
    _os_log_impl(&dword_1E323F000, v144, v145, "OfferListLockupCell: Failed to get correct cell for [%s]", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v147);
    MEMORY[0x1E69143B0](v147, -1, -1);
    MEMORY[0x1E69143B0](v146, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void *sub_1E3B94918@<X0>(void *a1@<X8>, double a2@<D1>, double a3@<D2>, double a4@<D3>, double a5@<D4>)
{
  OUTLINED_FUNCTION_16_84();
  [v10 v11];
  v13 = v12;
  v15 = v14;
  sub_1E41A300C(v18);
  sub_1E41A2FE8(v16, v13, v15);
  *&v18[6] = a2;
  *&v18[7] = a3;
  *&v18[8] = a4;
  *&v18[9] = a5;
  return memcpy(a1, v18, 0x50uLL);
}

void sub_1E3B94A58(void *a1, void *a2)
{
  v7 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  v4 = *(v2 + *a2);
  v5 = v4;
  v6 = a1;
  sub_1E3C8BDFC(v4, v7);
}

id sub_1E3B94AD8()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(VUISeparatorView) init];
    v10 = v4;
    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1E3280A90(0, &unk_1ECF38CB0, off_1E87285A8);
    sub_1E41E1A64(&v10, sub_1E3B962B8, v5, &v11);

    v6 = v11;
    v7 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3B94BD8(int a1, double a2, double a3)
{
  v217 = a2;
  v222 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout;
  v6 = *(v3 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout);
  v7 = MEMORY[0x1E69DDCE0];
  if (!v6 || (v8 = *(*v6 + 176), v9 = , v8(v230, v9), v11 = *v230, v10 = v230[1], v13 = v230[2], v12 = v230[3], , (v231 & 1) != 0))
  {
    v11 = *v7;
    v10 = *(v7 + 1);
    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
  }

  v201 = *&v11;
  v14 = *&v223[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imagePosition];
  v15 = [v223 vuiTraitCollection];
  v16 = [v15 isAXEnabled];

  v17 = *&v223[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView];
  v18 = &selRef_vui_disableLocalAsset;
  v203 = v13;
  v204 = v10;
  v202 = v12;
  v213 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView;
  if (!v17)
  {
    v21 = 0.0;
LABEL_10:
    v23 = v7[3];
    goto LABEL_11;
  }

  v19 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView;
  [v17 vui:v217 sizeThatFits:a3];
  v21 = v20;
  if (!*&v223[v19])
  {
    goto LABEL_10;
  }

  if (!*&v223[v222])
  {
    goto LABEL_10;
  }

  sub_1E37BD0DC();
  v22 = OUTLINED_FUNCTION_4_9();
  (*(OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView + 152))(v232, v22);
  v23 = *&v232[3];

  if (v233)
  {
    goto LABEL_10;
  }

LABEL_11:
  v24 = v217 - v21;
  v25 = *&OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_primaryButton;
  HIDWORD(v212) = a1;
  if (!*(OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_primaryButton + v223))
  {
    v199 = 0.0;
    v210 = 0.0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_16_84();
  [v26 v27];
  v210 = v28;
  v199 = v29;
  if (!*&v223[*&v25])
  {
LABEL_16:
    v32 = 0;
    v31 = *(v7 + 1);
    goto LABEL_17;
  }

  if (*&v223[v222])
  {

    sub_1E415EE5C();
    OUTLINED_FUNCTION_112();

    off_1F5F48F60(v234, v30);
    v31 = v234[1];
    v32 = v235;
  }

  else
  {
    v31 = 0;
    v32 = 1;
  }

LABEL_17:
  v215 = v25;
  v216 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_decorationView;
  v33 = *&v223[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_decorationView];
  *&v211 = v21;
  if (!v33)
  {
    v198 = 0.0;
    v35 = 0.0;
LABEL_26:
    v41 = 0;
    v40 = *(v7 + 1);
    goto LABEL_30;
  }

  if (*&v223[v222])
  {
    v34 = v33;
    OUTLINED_FUNCTION_112();

    sub_1E374EB64();
    OUTLINED_FUNCTION_122();
  }

  else
  {
    v18 = v33;
    v25 = 0.0;
  }

  OUTLINED_FUNCTION_16_84();
  sub_1E3C8B764(*&v25, v24, v36);
  v35 = v37;
  v198 = v38;

  if (!*&v223[v216])
  {
    v25 = v215;
    goto LABEL_26;
  }

  if (*&v223[v222])
  {

    sub_1E374EB64();
    OUTLINED_FUNCTION_122();

    (*(**&v25 + 152))(v236, v39);
    v40 = v236[1];
    v41 = v237;
  }

  else
  {
    v40 = 0;
    v41 = 1;
  }

  v25 = v215;
LABEL_30:
  v220 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView;
  v42 = *&v223[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView];
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0;
  if (v42)
  {
    [v42 intrinsicContentSize];
    v44 = v46;
  }

  v207 = v45;
  v47 = 0.0;
  v219 = 0.0;
  if ((v16 & 1) == 0)
  {
    if (*&v223[v220])
    {
      v48 = *&v223[v222];
      if (v48)
      {

        sub_1E415EDEC();
        OUTLINED_FUNCTION_122();

        [*&v25 margin];
        v50 = v49;

        v25 = v215;
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      v52 = *&v211;
      v219 = sub_1E4149E00(v51, v48 == 0, v44);
      v47 = 0.0;
      if (v14 == 2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v219 = 0.0;
      v52 = *&v211;
      if (v14 == 2)
      {
        goto LABEL_41;
      }
    }

    v47 = v52 + v23;
LABEL_41:
    if (v32)
    {
      v53 = 0;
    }

    else
    {
      v53 = v31;
    }

    v54 = sub_1E4149E00(v53, v32, v210);
    if (v41)
    {
      v55 = 0;
    }

    else
    {
      v55 = v40;
    }

    v43 = sub_1E4149E00(v55, v41, v35 + v54);
  }

  v56 = v14 == 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34200, &qword_1E42BF430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42BF390;
  if ((v56 | v16))
  {
    v58 = v223;
    v59 = *&v223[v213];
    v60 = v59;
  }

  else
  {
    v59 = 0;
    v58 = v223;
  }

  *(inited + 32) = v59;
  v61 = *&v58[v222];
  v62 = v58;
  if (v61)
  {

    sub_1E37BD0DC();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v58 = 0;
  }

  *(inited + 40) = v58;
  v200 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_titleLabel;
  *(inited + 48) = *&v62[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_titleLabel];
  OUTLINED_FUNCTION_19_71();
  v64 = v63;
  if (v61)
  {

    sub_1E415E454();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v58 = 0;
  }

  *(inited + 56) = v58;
  *(inited + 64) = *&v62[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_descriptionTextView];
  OUTLINED_FUNCTION_19_71();
  v66 = v65;
  if (v61)
  {

    sub_1E415E4EC();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v58 = 0;
  }

  *(inited + 72) = v58;
  v218 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_subBodyLabel;
  *(inited + 80) = *&v62[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_subBodyLabel];
  OUTLINED_FUNCTION_19_71();
  v68 = v67;
  if (v61)
  {

    sub_1E374EBCC();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v58 = 0;
  }

  *(inited + 88) = v58;
  if (((v16 & 1) != 0 || !*&v62[v218]) && (v69 = *&v62[v220]) != 0)
  {
    *(inited + 96) = v69;
    v70 = v69;
  }

  else
  {
    *(inited + 96) = 0;
  }

  *(inited + 104) = 0;
  *(inited + 112) = *&v62[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton];
  OUTLINED_FUNCTION_19_71();
  v72 = v71;
  if (v61)
  {

    sub_1E415EEE8();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v58 = 0;
  }

  *(inited + 120) = v58;
  if (v16 && (v73 = *&v62[*&v25]) != 0)
  {
    *(inited + 128) = v73;
    v74 = v73;
  }

  else
  {
    *(inited + 128) = 0;
  }

  if (*&v62[v222])
  {

    sub_1E415EE5C();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v58 = 0;
  }

  *(inited + 136) = v58;
  v75 = v62;
  if (v16)
  {
    v76 = *&v62[v216];
    v77 = v76;
  }

  else
  {
    v76 = 0;
  }

  v208 = *&v44;
  v209 = v217 - v47;
  v78 = v217 - v47 - v43;
  *(inited + 144) = v76;
  HIDWORD(v205) = v16;
  if (*&v75[v222])
  {

    sub_1E374EB64();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v58 = 0;
  }

  v79 = 0;
  *(inited + 152) = v58;
  v80 = MEMORY[0x1E69E7CC0];
LABEL_85:
  v81 = (inited + 32 + 16 * v79);
  while (1)
  {
    if (v79 == 8)
    {
      v206 = *&v47;
      swift_setDeallocating();
      v99 = inited;
      sub_1E3B960D8();
      v221 = v80[2];
      if (!v221)
      {
        v101 = 0.0;
        v103 = v223;
LABEL_133:
        if ((v212 & 0x100000000) != 0)
        {
          v138 = *&v103[v222];
          if (v138)
          {
            v139 = *(*v138 + 328);

            v139(v140);
          }

          sub_1E3952BD8(*&v201, *&v204, *&v203);
        }

        else
        {
          v141 = *&v103[v213];
          v142 = 0x1FAA53000;
          v143 = &selRef_textLayout;
          v214 = *&a3;
          if (v141)
          {
            v144 = v141;
            OUTLINED_FUNCTION_13_98();
            OUTLINED_FUNCTION_18_42();
            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            v145 = OUTLINED_FUNCTION_7_128();
            [v145 v146];
          }

          if (*&v103[*&v215])
          {
            OUTLINED_FUNCTION_9_92(a3 - v199);
            v215 = v217 - v210;
            v148 = v147;
            OUTLINED_FUNCTION_13_98();
            OUTLINED_FUNCTION_18_42();
            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            v149 = OUTLINED_FUNCTION_7_128();
            [v149 v150];
          }

          if (*&v103[v216])
          {
            OUTLINED_FUNCTION_9_92(a3 - v198);
            v152 = v151;
            OUTLINED_FUNCTION_13_98();
            OUTLINED_FUNCTION_18_42();
            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            v153 = OUTLINED_FUNCTION_7_128();
            [v153 v154];
          }

          v155 = v80[2];
          if (v155)
          {
            sub_1E39ABF00(v155 - 1, 1, v80);
            v156 = 0;
            OUTLINED_FUNCTION_9_92(a3 - v101);
            v157 = v80 + 9;
            v142 = &qword_1ECF34210;
            do
            {
              v158 = *(v157 - 5);
              if (v156)
              {
                v229 = v80;
                v225 = v156 - 1;
                v226 = 0;
                v159 = v158;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34210, &qword_1E42BF438);
                OUTLINED_FUNCTION_0_32();
                v161 = sub_1E32752B0(&unk_1ECF34218, &qword_1ECF34210, &qword_1E42BF438, v160);
                v169 = OUTLINED_FUNCTION_21_61(v161, v162, v163, v164, v165, v166, v167, v168, v197, *&v198, *&v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, *&v209, *&v210, v211, v212, v214, *&v215, v216, *&v217, v218, *&v219, v220, v221, v222, v223, v224, v225);
                sub_1E38D2054(v169, v170);
                v171 = v227;
                if (*&v227 != 0.0)
                {

                  [v171 frame];
                  OUTLINED_FUNCTION_18_3();
                  v173 = v172;
                  v175 = v174;

                  v240.origin.x = OUTLINED_FUNCTION_17_4();
                  v240.size.width = v173;
                  v240.size.height = v175;
                  CGRectGetMaxY(v240);
                }

                v143 = &selRef_textLayout;
              }

              else
              {
                v176 = v158;
              }

              ++v156;
              [v223 bounds];
              [v223 v143[416]];
              VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
              [v158 setFrame_];

              v157 += 6;
            }

            while (v155 != v156);
          }

          if ((v205 & 0x100000000) == 0)
          {
            v177 = *&v223[v220];
            if (v177)
            {
              v178 = *&v223[v218];
              if (v178)
              {
                v142 = v177;
                [v178 frame];
                OUTLINED_FUNCTION_18_3();
                width = v241.size.width;
                height = v241.size.height;
                CGRectGetMinY(v241);
                v242.origin.x = OUTLINED_FUNCTION_17_4();
                v242.size.width = width;
                v242.size.height = height;
                CGRectGetHeight(v242);
                v181 = v142;
                [v223 bounds];
                OUTLINED_FUNCTION_18_42();
                VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
                v182 = OUTLINED_FUNCTION_7_128();
                [v182 v183];
              }
            }
          }

          v184 = *&v223[v200];
          if (v184)
          {
            v185 = *&v223[v216];
            if (v185)
            {
              v186 = swift_dynamicCastObjCProtocolConditional();
              if (!((v186 == 0) | BYTE4(v205) & 1))
              {
                v187 = v186;
                v142 = v184;
                v188 = v185;
                [v142 frame];
                CGRectGetMinY(v243);
                [v142 vuiBaselineHeight];
                [v187 vuiBaselineHeight];
                [v187 frame];
                v189 = OUTLINED_FUNCTION_7_128();
                [v189 v190];
              }
            }
          }

          if (*&v223[v222])
          {

            sub_1E3A05A58();
            v191 = OUTLINED_FUNCTION_4_9();
            (*(*v142 + 152))(&v227, v191);
          }

          v192 = sub_1E3B94AD8();
          [v192 lineHeight];

          VUIRoundValue();
          v193 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView;
          [*&v223[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView] lineHeight];
          v194 = *&v223[v193];
          [v223 bounds];
          [v223 vuiIsRTL];
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          v195 = OUTLINED_FUNCTION_7_128();
          [v195 v196];
        }

        return;
      }

      v100 = 0;
      v101 = 0.0;
      v102 = 9;
      v103 = v223;
      while (1)
      {
        OUTLINED_FUNCTION_10_88();
        if (v104)
        {
          goto LABEL_163;
        }

        v105 = v80[v102 - 5];
        v106 = v80[v102 - 4];
        v229 = v80;
        v225 = v100 - 1;
        v226 = 0;

        v107 = v105;
        v99 = &qword_1ECF34210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34210, &qword_1E42BF438);
        OUTLINED_FUNCTION_0_32();
        v109 = sub_1E32752B0(&unk_1ECF34218, &qword_1ECF34210, &qword_1E42BF438, v108);
        v117 = OUTLINED_FUNCTION_21_61(v109, v110, v111, v112, v113, v114, v115, v116, v197, *&v198, *&v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, *&v209, *&v210, v211, v212, v213, *&v215, v216, *&v217, v218, *&v219, v220, v221, v222, v223, v224, v225);
        sub_1E38D2054(v117, v118);
        v119 = v227;
        if (*&v227 != 0.0)
        {

          if (v106)
          {
            v120 = *(*v106 + 152);

            v99 = v106;
            v120(v238, v121);

            if ((v239 & 1) == 0)
            {
              v225 = v238[0];
              sub_1E3A1F10C(v122, v123, v124);
              v99 = &v225;
              sub_1E41499CC(MEMORY[0x1E69E7DE0], &v227);
              if ((v228 & 1) == 0)
              {
                v134 = *&v227;
                v135 = v119;
                v99 = v107;
                sub_1E3C8B6B4(v119, v134);
                v129 = v136;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v80 = sub_1E3B962E4(v80);
                }

                OUTLINED_FUNCTION_10_88();
                if (v104)
                {
                  goto LABEL_167;
                }

                goto LABEL_128;
              }
            }
          }

          v125 = *&v103[v220];
          if (v125 && (sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250), v126 = v107, v127 = v125, v99 = sub_1E4206F64(), v127, v126, (v99 & 1) != 0))
          {
            v99 = *&v103[v222];
            if (v99)
            {

              sub_1E415EDEC();
              OUTLINED_FUNCTION_112();

              [v126 margin];
              v129 = v128;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v80 = sub_1E3B962E4(v80);
              }

              OUTLINED_FUNCTION_10_88();
              if (v104)
              {
                goto LABEL_166;
              }

LABEL_128:
              v80[v102 - 2] = v129;
              goto LABEL_129;
            }
          }

          else
          {
            v130 = *&v103[v222];
            if (v130)
            {
              v131 = *(*v130 + 1176);

              v99 = v131(v132);
              LOBYTE(v131) = v133;

              if (v131)
              {

                v103 = v223;
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v80 = sub_1E3B962E4(v80);
                }

                v103 = v223;

                OUTLINED_FUNCTION_10_88();
                if (v104)
                {
                  goto LABEL_165;
                }

                v80[v102 - 2] = v99;
              }

              goto LABEL_129;
            }
          }
        }

LABEL_129:
        OUTLINED_FUNCTION_10_88();
        if (v104)
        {
          goto LABEL_164;
        }

        ++v100;
        MaxY = CGRectGetMaxY(*&v80[v102 - 3]);

        v101 = v101 + MaxY;
        v102 += 6;
        if (v221 == v100)
        {
          goto LABEL_133;
        }
      }
    }

    if (v79 > 7)
    {
      break;
    }

    ++v79;
    v82 = v81 + 2;
    v83 = *v81;
    v81 += 2;
    if (v83)
    {
      v84 = *(v82 - 1);
      if (v83 == *&v223[v220])
      {

        v85 = v83;
        v87 = v207;
        v86 = v44;
      }

      else
      {
        v88 = *&v223[v218];
        if (v88)
        {
          sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

          v89 = v88;
          v90 = v83;
          v91 = sub_1E4206F64();

          if (v91)
          {
            v92 = v78 - v219;
          }

          else
          {
            v92 = v78;
          }
        }

        else
        {

          v93 = v83;
          v92 = v78;
        }

        sub_1E3C8B764(v84, v92, 1.79769313e308);
        v86 = v94;
        v87 = v95;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_1E3B96138(0, v80[2] + 1, 1, v80);
      }

      v97 = v80[2];
      v96 = v80[3];
      if (v97 >= v96 >> 1)
      {
        v80 = sub_1E3B96138((v96 > 1), v97 + 1, 1, v80);
      }

      v80[2] = v97 + 1;
      v98 = &v80[6 * v97];
      *(v98 + 4) = v83;
      *(v98 + 5) = v84;
      v98[6] = v47;
      v98[7] = 0.0;
      v98[8] = v86;
      *(v98 + 9) = v87;
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
}

id sub_1E3B95E30()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imagePosition) = 10;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_descriptionTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_subBodyLabel) = 0;
  *(OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_primaryButton + v0) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_decorationView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView) = 0;
  v5 = type metadata accessor for OfferListLockupContentView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3B95F04(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imagePosition] = 10;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_descriptionTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_subBodyLabel] = 0;
  *(OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_primaryButton + v1) = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_decorationView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for OfferListLockupContentView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3B95FF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfferListLockupContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B960D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34228, &qword_1E42BF440);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1E3B96138(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34230, &qword_1E42BF448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34238, &unk_1E42BF450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3B962F8()
{
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_name);
  swift_beginAccess();
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3B96348(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_name);
  OUTLINED_FUNCTION_3_0(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

double sub_1E3B963EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_startTime;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3B96420(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_startTime;
  result = OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_startTime, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3B964B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_durationMS;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3B964E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_durationMS;
  result = OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_durationMS, v5);
  *(v1 + v3) = a1;
  return result;
}

double sub_1E3B9657C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

uint64_t sub_1E3B965B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_children;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_children, v5);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3B96650()
{
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_descriptionText);
  swift_beginAccess();
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3B966A0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_descriptionText);
  OUTLINED_FUNCTION_3_0(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E3B96744()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_isVerboseMode))
  {
    return 0;
  }

  else
  {
    return 10;
  }
}

id sub_1E3B96760()
{
  OUTLINED_FUNCTION_12_87();
  v1 = objc_allocWithZone(v0);
  return sub_1E3B967B0();
}

id sub_1E3B967B0()
{
  OUTLINED_FUNCTION_12_87();
  *&v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_children] = MEMORY[0x1E69E7CC0];
  v5 = &v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_descriptionText];
  *v5 = 0;
  v5[1] = 0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_isVerboseMode;
    v9 = [result performanceDebuggerVerboseEnabled];

    v1[v8] = v9;
    v10 = &v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_name];
    *v10 = v3;
    v10[1] = v2;
    *&v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_startTime] = v4;
    *&v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_durationMS] = v0;
    v11.receiver = v1;
    v11.super_class = type metadata accessor for PerformanceMeasurementNode();
    return objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1E3B968CC(uint64_t a1)
{
  type metadata accessor for PerformanceMeasurementNode();
  v2 = sub_1E4205F14();
  v4 = v3;

  v50 = sub_1E3B96BBC(v5, v2, v4);
  v6 = sub_1E4205F14();
  v8 = v7;

  v49 = sub_1E3B96BBC(v9, v6, v8);
  v10 = sub_1E4205F14();
  v12 = v11;

  v14 = sub_1E3B96BBC(v13, v10, v12);
  v15 = sub_1E4205F14();
  v17 = v16;

  v19 = sub_1E3B96BBC(v18, v15, v17);
  v20 = sub_1E4205F14();
  v22 = v21;

  v24 = sub_1E3B96BBC(v23, v20, v22);
  v25 = sub_1E4205F14();
  v27 = v26;

  v29 = sub_1E3B96BBC(v28, v25, v27);
  v30 = sub_1E4205F14();
  v32 = v31;

  v34 = sub_1E3B96BBC(v33, v30, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E429DCC0;
  *(v35 + 32) = v24;
  *(v35 + 40) = v29;
  v36 = *((*MEMORY[0x1E69E7D40] & *v19) + 0xD0);
  v37 = v24;
  v38 = v29;
  v36(v35);
  v39 = sub_1E4205F14();
  v41 = sub_1E3B96BBC(a1, v39, v40);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1E42A76D0;
  *(v42 + 32) = v50;
  *(v42 + 40) = v49;
  *(v42 + 48) = v14;
  *(v42 + 56) = v19;
  *(v42 + 64) = v34;
  v43 = v41;
  v44 = v50;
  v45 = v49;
  v46 = v14;

  v47 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_children;
  OUTLINED_FUNCTION_3_0(&v43[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_children], v51);
  *&v43[v47] = v42;

  return v43;
}

id sub_1E3B96BBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = sub_1E378A81C(a2, a3, a1);

  if (v7)
  {
    v8 = [v7 durationMS];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 integerValue];
    }

    else
    {
      v10 = -1;
    }

    [v7 timestamp];
    v11 = v12;
  }

  else
  {
    v11 = -1.0;
    v10 = -1;
  }

  v13 = *(v3 + 256);

  v14 = (v13)(a2, a3, v10, v11);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  v21 = v21 && v20 == a3;
  v22 = v21;
  if (v18)
  {
    if (v22)
    {

LABEL_19:
      OUTLINED_FUNCTION_0_159();
      v4 = v23 + 25;
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_1_160(v19);
    OUTLINED_FUNCTION_6_113();
    if (v18)
    {
      goto LABEL_19;
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_2_126();
    if (!v21 || v49 != a3)
    {
      OUTLINED_FUNCTION_1_160(v48);
      OUTLINED_FUNCTION_6_113();
      if ((v18 & 1) == 0)
      {
        sub_1E4205F14();
        OUTLINED_FUNCTION_2_126();
        if (v21 && v52 == a3)
        {
        }

        else
        {
          OUTLINED_FUNCTION_1_160(v51);
          OUTLINED_FUNCTION_6_113();
          if ((v18 & 1) == 0)
          {
            sub_1E4205F14();
            OUTLINED_FUNCTION_2_126();
            if (!v21 || v55 != a3)
            {
              OUTLINED_FUNCTION_1_160(v54);
              OUTLINED_FUNCTION_6_113();
              if ((v18 & 1) == 0)
              {
                sub_1E4205F14();
                OUTLINED_FUNCTION_2_126();
                if (v21 && v58 == a3)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_1_160(v57);
                  OUTLINED_FUNCTION_6_113();
                  if ((v18 & 1) == 0)
                  {
                    sub_1E4205F14();
                    OUTLINED_FUNCTION_2_126();
                    if (v21 && v61 == a3)
                    {
                    }

                    else
                    {
                      OUTLINED_FUNCTION_1_160(v60);
                      OUTLINED_FUNCTION_6_113();
                      if ((v18 & 1) == 0)
                      {
                        OUTLINED_FUNCTION_5_127();
                        sub_1E4205F14();
                        OUTLINED_FUNCTION_2_126();
                        if (!v21 || v64 != a3)
                        {
                          OUTLINED_FUNCTION_1_160(v63);
                          OUTLINED_FUNCTION_6_113();
                          if (v18)
                          {
                            goto LABEL_97;
                          }

                          sub_1E4205F14();
                          OUTLINED_FUNCTION_2_126();
                          if (v21 && v67 == a3)
                          {
                          }

                          else
                          {
                            OUTLINED_FUNCTION_1_160(v66);
                            OUTLINED_FUNCTION_6_113();
                            if ((v18 & 1) == 0)
                            {
                              sub_1E4205F14();
                              OUTLINED_FUNCTION_2_126();
                              if (v21 && v70 == a3)
                              {
                              }

                              else
                              {
                                OUTLINED_FUNCTION_1_160(v69);
                                OUTLINED_FUNCTION_6_113();
                                if ((v18 & 1) == 0)
                                {
LABEL_93:

                                  v4 = a2;
                                  v13 = a3;
                                  goto LABEL_97;
                                }
                              }

                              OUTLINED_FUNCTION_0_159();
                              v4 = v83 + 17;
                              goto LABEL_97;
                            }
                          }

                          OUTLINED_FUNCTION_0_159();
                          v4 = v81 + 18;
                          goto LABEL_97;
                        }

                        goto LABEL_17;
                      }
                    }

                    OUTLINED_FUNCTION_0_159();
                    v4 = v80 + 14;
                    goto LABEL_97;
                  }
                }

                OUTLINED_FUNCTION_0_159();
                v4 = v78 + 28;
                goto LABEL_97;
              }

              goto LABEL_102;
            }

LABEL_101:

LABEL_102:
            v4 = 0xD000000000000012;
            v72 = "Load HLS playlists";
            goto LABEL_96;
          }
        }

        OUTLINED_FUNCTION_0_159();
        v4 = v76 + 30;
        goto LABEL_97;
      }

LABEL_95:
      v4 = 0xD000000000000012;
      v72 = "Total startup time";
LABEL_96:
      v13 = ((v72 - 32) | 0x8000000000000000);
      goto LABEL_97;
    }

LABEL_94:

    goto LABEL_95;
  }

  v13 = 0xEA0000000000656DLL;
  v4 = 0x6974206C61746F54;
  if (v22)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_160(v19);
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v21 && v25 == a3)
  {
    goto LABEL_94;
  }

  OUTLINED_FUNCTION_1_160(v24);
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v21 && v28 == a3)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_1_160(v27);
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v21 && v31 == a3)
  {
    goto LABEL_101;
  }

  OUTLINED_FUNCTION_1_160(v30);
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v21 && v34 == a3)
  {

    OUTLINED_FUNCTION_0_159();
    v4 = v79 | 4;
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_1_160(v33);
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v21 && v37 == a3)
  {
LABEL_100:

    OUTLINED_FUNCTION_0_159();
    v4 = v77 | 1;
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_1_160(v36);
  OUTLINED_FUNCTION_6_113();
  OUTLINED_FUNCTION_5_127();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (!v21 || v40 != a3)
  {
    OUTLINED_FUNCTION_1_160(v39);
    OUTLINED_FUNCTION_6_113();
    sub_1E4205F14();
    OUTLINED_FUNCTION_2_126();
    if (v21 && v43 == a3)
    {

      OUTLINED_FUNCTION_0_159();
      v4 = v82 + 11;
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_1_160(v42);
    OUTLINED_FUNCTION_6_113();
    sub_1E4205F14();
    OUTLINED_FUNCTION_2_126();
    if (v21 && v46 == a3)
    {

      OUTLINED_FUNCTION_0_159();
      v4 = v84 + 7;
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_1_160(v45);
    OUTLINED_FUNCTION_6_113();
    goto LABEL_93;
  }

LABEL_17:

LABEL_97:

  v73 = OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_descriptionText);
  OUTLINED_FUNCTION_3_0(v73, v74);
  *a3 = v4;
  a3[1] = v13;

  return v16;
}

uint64_t sub_1E3B971A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xB0);
  v8 = v7();
  if (v8 >= (*((*v6 & *v2) + 0xF8))())
  {
    v7();
    v11 = v7();
    v12 = objc_opt_self();
    v13 = &selRef_redColor;
    if (v11 <= 500)
    {
      v13 = &selRef_greenColor;
    }

    v14 = [v12 *v13];
    v101 = sub_1E4206154();
    v105 = v15;
    MEMORY[0x1E69109E0](32, 0xE100000000000000);
    MEMORY[0x1E69109E0](32, 0xE100000000000000);
    OUTLINED_FUNCTION_48();
    v17 = (*(v16 + 224))();
    v70 = v14;
    if (!v18)
    {
      OUTLINED_FUNCTION_48();
      v17 = (*(v19 + 128))();
    }

    MEMORY[0x1E69109E0](v17);

    MEMORY[0x1E69109E0](8250, 0xE200000000000000);
    sub_1E4206594();
    OUTLINED_FUNCTION_48();
    v21 = (*(v20 + 152))();
    v22 = (*((*v6 & *v3) + 0x120))(COERCE_DOUBLE(*&v21), 0);
    v24 = v23;

    MEMORY[0x1E69109E0](10649826, 0xA300000000000000);

    OUTLINED_FUNCTION_11_95(v25, v26, v27, v28, v29, v30, v31, v32, v64, a2, v70, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v105);
    MEMORY[0x1E69109E0](v22, v24);

    OUTLINED_FUNCTION_11_95(v33, v34, v35, v36, v37, v38, v39, v40, v65, v67, v71, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v106);
    MEMORY[0x1E69109E0](0, 0xE000000000000000);

    OUTLINED_FUNCTION_11_95(v41, v42, v43, v44, v45, v46, v47, v48, v66, v68, v72, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v107);
    MEMORY[0x1E69109E0](10, 0xE100000000000000);

    v49 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v51 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    *(inited + 64) = sub_1E3755B54();
    *(inited + 40) = v73;
    type metadata accessor for Key(0);
    sub_1E3B9794C(&qword_1EE23B100, &unk_1E429A0E0);
    v52 = v51;
    v53 = v73;
    v54 = sub_1E4205CB4();
    v55 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v56 = sub_1E376403C(v104, v108, v54);
    v57 = [v49 appendAttributedString_];
    v58 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC8))(v57);
    result = sub_1E32AE9B0(v58);
    if (!result)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v69, 1))
    {
      __break(1u);
    }

    else
    {
      v59 = result;
      if (result >= 1)
      {
        v60 = 0;
        do
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            v61 = MEMORY[0x1E6911E60](v60, v58);
          }

          else
          {
            v61 = *(v58 + 8 * v60 + 32);
          }

          v62 = v61;
          ++v60;
          v63 = sub_1E3B971A4(v61, v69 + 1);
          [v49 appendAttributedString_];
        }

        while (v59 != v60);
LABEL_17:

        return v49;
      }
    }

    __break(1u);
    return result;
  }

  v9 = objc_allocWithZone(MEMORY[0x1E696AD40]);

  return [v9 init];
}

uint64_t sub_1E3B976F4(uint64_t a1, char a2)
{
  v4 = sub_1E41FE5D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    return 0;
  }

  sub_1E41FE564();
  v8 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E3768E10(0x73733A6D6D3A4848, 0xEC0000005353532ELL, v8);
  v9 = sub_1E41FE514();
  v10 = [v8 stringFromDate_];

  v11 = sub_1E4205F14();
  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_1E3B978B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PerformanceMeasurementNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B9794C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E3B979C4(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_webView] = 0;
  v3 = OBJC_IVAR____TtC8VideosUI17WebViewController_url;
  v4 = sub_1E41FE414();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WebViewController(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for WebViewController(uint64_t a1)
{
  result = qword_1ECF57EA8;
  if (!qword_1ECF57EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B97B00()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17WebViewController_webView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3B97B8C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for WebViewController(0);
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  sub_1E3B97C90(0);
  sub_1E3B97E68();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v2 = OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator;
  v3 = *&v0[OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator];
  *&v0[OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator] = v1;
  v4 = v1;

  if (v4)
  {
    [v4 setHidesWhenStopped_];
  }

  [*&v0[v2] startAnimating];
  v5 = *&v0[v2];
  if (v5)
  {
    v6 = v5;
    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3B97C90(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    v9 = [v1 navigationItem];
    [v9 setLargeTitleDisplayMode_];

    v13 = type metadata accessor for WebViewController(0);
    v12[0] = v2;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v10 = v2;
    v6 = sub_1E3B987C0(0, v12, sel_doneTapped);
    v7 = [v10 navigationItem];
    v8 = sel_setRightBarButtonItem_;
    goto LABEL_6;
  }

  v3 = *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_webView];
  if (v3 && [v3 canGoBack])
  {
    sub_1E37E96A4();
    v4 = sub_1E3834BC8();
    v13 = type metadata accessor for WebViewController(0);
    v12[0] = v2;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v5 = v2;
    v6 = sub_1E3835830(v4, 0, v12, sel_backTapped);
    v7 = [v5 navigationItem];
    v8 = sel_setLeftBarButtonItem_;
LABEL_6:
    v11 = v7;
    [v7 v8];

    goto LABEL_8;
  }

  v11 = [v1 navigationItem];
  [v11 setLeftBarButtonItem_];
LABEL_8:
}

id sub_1E3B97E68()
{
  v1 = v0;
  v2 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result frame];
    OUTLINED_FUNCTION_3();

    v17 = objc_allocWithZone(MEMORY[0x1E69853A0]);
    v18 = OUTLINED_FUNCTION_6();
    v21 = [v19 v20];
    v22 = OBJC_IVAR____TtC8VideosUI17WebViewController_webView;
    v23 = *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_webView];
    *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_webView] = v21;
    v24 = v21;

    if (v24)
    {
      v25 = v2;
      v26 = v10;
      v27 = v8;
      v28 = [v24 scrollView];

      [v28 setBackgroundColor_];
      v8 = v27;
      v10 = v26;
      v2 = v25;
    }

    v29 = *&v1[v22];
    if (v29)
    {
      v30 = [v29 scrollView];
      [v30 setContentInsetAdjustmentBehavior_];

      v31 = *&v1[v22];
      if (v31)
      {
        [v31 setNavigationDelegate_];
      }
    }

    (*(v4 + 16))(v7, &v1[OBJC_IVAR____TtC8VideosUI17WebViewController_url], v2);
    sub_1E41FDDB4();
    v32 = *&v1[v22];
    if (!v32)
    {
      return (*(v10 + 8))(v14, v8);
    }

    v33 = v32;
    v34 = sub_1E41FDD94();
    v35 = [v33 loadRequest_];

    v36 = *&v1[v22];
    if (!v36)
    {
      return (*(v10 + 8))(v14, v8);
    }

    v37 = v36;
    result = [v1 view];
    if (result)
    {
      v38 = result;
      [result addSubview_];

      return (*(v10 + 8))(v14, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E3B981D0()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for WebViewController(0);
  objc_msgSendSuper2(&v16, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI17WebViewController_webView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    v4 = v3;
    [v3 bounds];
    OUTLINED_FUNCTION_3();

    v5 = OUTLINED_FUNCTION_6();
    [v6 v7];
  }

  v8 = *&v0[OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 center];
  v13 = v12;
  v15 = v14;

  [v9 setCenter_];
}

id sub_1E3B98340()
{
  sub_1E3B97C90(1);
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator);

  return [v1 stopAnimating];
}

id sub_1E3B9854C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B98618(uint64_t a1)
{
  result = sub_1E41FE414();
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

void sub_1E3B98710()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17WebViewController_webView);
  v2 = [v1 goBack];

  sub_1E3B97C90(1);
}

id sub_1E3B987C0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v9 = *(v6 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1E4207994();
    (*(v9 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 initWithBarButtonSystemItem:a1 target:v13 action:a3];
  swift_unknownObjectRelease();
  return v14;
}

void sub_1E3B98918(void *a1, void *a2, double a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = a1;
  if (v6)
  {
    v8 = [v6 computationLabel];
    if (!v8)
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = v8;

    v7 = v9;
  }

  v10 = objc_opt_self();
  v11 = OUTLINED_FUNCTION_18_35(v10);
  v12 = a2;
  if (!v11)
  {
    goto LABEL_7;
  }

  v13 = [v11 computationLabel];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
LABEL_7:
    v15 = swift_dynamicCastObjCProtocolConditional();
    if (v15)
    {
      v16 = v15;
      v17 = objc_opt_self();
      v18 = OUTLINED_FUNCTION_18_35(v17);
      if (v18)
      {
        v19 = v18;
        v7 = v7;
        [v16 topMarginToLabel:v19 withBaselineMargin:a3];

LABEL_13:
        return;
      }

      v20 = objc_opt_self();
      v21 = OUTLINED_FUNCTION_18_35(v20);
      if (v21)
      {
        v22 = v21;
        v23 = v7;
        v24 = [v22 textContentView];
        [v16 topMarginToLabel:v24 withBaselineMargin:a3];

        v7 = v12;
        v12 = v24;
        goto LABEL_13;
      }
    }

    [v7 topMarginWithBaselineMargin:3 maximumContentSizeCategory:a3];
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
}

double sub_1E3B98AF4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (**(a1 + 24) + 392);
  v7 = *v6;
  v8 = (*v6)();
  if (v8)
  {
    (*(*v8 + 152))(v39);

    v9 = v39[0];
    v10 = v40;
    if (v40)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  v36 = v9;
  v37 = v10 & 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  sub_1E4148C68(sub_1E3B997D4, v11, &v38);
  OUTLINED_FUNCTION_5_0(a1 + 16, &v36);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = v7();
      if (v22)
      {
        v23 = v22;
        if (a2)
        {
          v24 = *(*(a2 + 24) + 98);
          OUTLINED_FUNCTION_5_0(a2 + 16, &v35);
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            objc_opt_self();
            v27 = swift_dynamicCastObjCClass();
            if (v27)
            {
              v28 = [v27 tagsViewLayout];
              if (!v28)
              {

                return 40.0;
              }

              v29 = v28;
              [v29 margin];
              v19 = v30;
            }

            else
            {
              v19 = (*(*v23 + 1592))(v24);
              if ((a3 & 1) == 0 || (TVAppFeature.isEnabled.getter(10, v32, v33) & 1) == 0)
              {
                sub_1E3B98918(v21, v26, v19);
                v19 = v34;
              }
            }

            return v19;
          }
        }
      }

      else
      {
      }
    }

    return v38;
  }

  v13 = Strong;
  v14 = objc_opt_self();
  v15 = OUTLINED_FUNCTION_18_35(v14);
  if (!v15)
  {

    goto LABEL_11;
  }

  v16 = [v15 tagsViewLayout];
  if (!v16)
  {

    return 40.0;
  }

  v17 = v16;
  [v16 margin];
  v19 = v18;

  return v19;
}

CGFloat sub_1E3B98DD4(unint64_t a1, uint64_t a2, char a3, double a4, CGFloat a5, CGFloat height)
{
  *&rect.origin.y = a2;
  rect.origin.x = a5;
  MaxY = 0.0;
  if (a4 > 0.0)
  {
    v9 = a1;
    if (a1 >> 62)
    {
      goto LABEL_51;
    }

    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v11 = 0;
        *&rect.size.width = v9 & 0xC000000000000001;
        v12 = (v9 + 32);
        v59 = v9 & 0xFFFFFFFFFFFFFF8;
        MaxY = height;
        v61 = v10;
        v62 = v9;
        while (1)
        {
          if (*&rect.size.width)
          {
            v13 = MEMORY[0x1E6911E60](v11, v9);
          }

          else
          {
            v13 = *v12;
          }

          OUTLINED_FUNCTION_5_0(v13 + 16, v68);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            break;
          }

LABEL_48:
          ++v11;
          ++v12;
          if (v10 == v11)
          {
            return MaxY;
          }
        }

        v15 = Strong;
        OUTLINED_FUNCTION_0_160();
        *&rect.size.height = (*(v16 + 392))();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342D8, &qword_1E42BF4D0);
        sub_1E4148C68(sub_1E3B99424, v17, v65);

        v19 = *(*v65[0] + 152);
        v19(&v69, v18);
        OUTLINED_FUNCTION_2_127();
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
        v21 = sub_1E4148C68(sub_1E37E8788, v20, &rect.size.height);
        height = rect.size.height;
        v19(v70, v21);
        OUTLINED_FUNCTION_2_127();
        sub_1E4148C68(sub_1E3B997D4, v20, &v67);
        v22 = a4 - (height + v67);
        [v15 vui:v22 sizeThatFits:0.0];
        v24 = v23;
        v26 = v25;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v27 = v24;
        }

        else
        {
          v27 = v22;
        }

        OUTLINED_FUNCTION_0_160();
        v29 = *(v28 + 392);

        v31 = v29(v30);

        if (!v31)
        {
          goto LABEL_16;
        }

        type metadata accessor for ButtonLayout();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = (*(*v32 + 1784))();
        if (v33 == 11)
        {
          break;
        }

        LOBYTE(v65[0]) = v33;
        LOBYTE(rect.size.height) = 3;
        sub_1E3751DB0(v33, v34, v35);
        v39 = sub_1E4205E84();

        if (v39)
        {
          v27 = v24;
        }

        if (!v11)
        {
LABEL_26:
          v38 = 0.0;
LABEL_27:
          OUTLINED_FUNCTION_0_160();
          v41 = (*(v40 + 392))();
          x = rect.origin.x;
          if (v41)
          {
            v43 = (*(*v41 + 504))();
            if (v43 == 18)
            {
              goto LABEL_29;
            }

            LOBYTE(v67) = v43;
            v66 = 1;
            sub_1E3A96E4C(v43, v44, v45);
            sub_1E4206254();
            sub_1E4206254();
            if (v65[0] == *&rect.size.height && v65[1] == v64)
            {

LABEL_37:
              if ((TVAppFeature.isEnabled.getter(17, v48, v49) & 1) != 0 && v27 < a4)
              {

                v50 = a4 - v27;
              }

              else
              {
                if (v22 >= a4)
                {
                  goto LABEL_29;
                }

                v71.origin.y = 0.0;
                v71.origin.x = rect.origin.x;
                v71.size.width = v27;
                v71.size.height = v26;
                Width = CGRectGetWidth(v71);

                v50 = Width - v24;
              }

              x = v50 * 0.5;
            }

            else
            {
              v47 = sub_1E42079A4();

              if (v47)
              {
                goto LABEL_37;
              }

LABEL_29:

              x = rect.origin.x;
            }
          }

          v52 = **&rect.origin.y;
          v53 = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1E3B99638(0, v52[2] + 1, 1, v52);
          }

          v55 = v52[2];
          v54 = v52[3];
          if (v55 >= v54 >> 1)
          {
            v52 = sub_1E3B99638((v54 > 1), v55 + 1, 1, v52);
          }

          v52[2] = v55 + 1;
          v56 = &v52[5 * v55];
          *(v56 + 4) = v53;
          v72.origin.y = MaxY + v38;
          v56[5] = x;
          v56[6] = MaxY + v38;
          v56[7] = v27;
          v56[8] = v26;
          **&rect.origin.y = v52;
          v72.origin.x = x;
          v72.size.width = v27;
          v72.size.height = v26;
          MaxY = CGRectGetMaxY(v72);

          v10 = v61;
          v9 = v62;
          goto LABEL_48;
        }

LABEL_17:
        v36 = v11 - 1;
        if (*&rect.size.width)
        {
          v37 = MEMORY[0x1E6911E60](v36, v9);
LABEL_22:
          v38 = sub_1E3B98AF4(v13, v37, a3 & 1);
          goto LABEL_27;
        }

        if (v36 < *(v59 + 16))
        {
          v37 = *(v12 - 1);

          goto LABEL_22;
        }

        __break(1u);
LABEL_51:
        v57 = sub_1E4207384();
        if (v57 < 0)
        {
          __break(1u);
        }

        v10 = v57;
        if (!v57)
        {
          return height;
        }
      }

LABEL_16:
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    return height;
  }

  return MaxY;
}

uint64_t sub_1E3B99424@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewLayout();
  result = sub_1E3C2F968();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B99458(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3B994A8(a1, a2);
  return v4;
}

uint64_t sub_1E3B994A8(void *a1, uint64_t a2)
{
  v5 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_13(v5);
  swift_unknownObjectWeakAssign();

  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1E3B99504(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_0(a1 + 16, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_5_0(a2 + 16, &v10);
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (!Strong)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if (!v5)
  {

    goto LABEL_9;
  }

  v7 = sub_1E4206F64();

  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  type metadata accessor for ViewModel();
  v8 = static ViewModel.== infix(_:_:)(*(a1 + 24), *(a2 + 24));
  return v8 & 1;
}

uint64_t sub_1E3B995D0()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return v0;
}

uint64_t sub_1E3B995F8()
{
  sub_1E3B995D0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1E3B99638(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342E0, &qword_1E42BF578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342E8, &qword_1E42BF580);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1E3B997D8()
{
  v0 = objc_opt_self();
  result = [v0 isTV];
  v2 = 20.0;
  if ((result & 1) == 0)
  {
    result = [v0 isPhone];
    v2 = 18.0;
    if (result)
    {
      v2 = 15.0;
    }
  }

  qword_1ECF71490 = *&v2;
  return result;
}

void sub_1E3B99840()
{
  sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
  v0 = *MEMORY[0x1E69DDCF8];
  v1 = sub_1E4206E74();

  if (qword_1ECF57EC0 != -1)
  {
    OUTLINED_FUNCTION_1_161(&qword_1ECF57EC0);
  }

  v2 = [v1 fontWithSize_];

  qword_1ECF71498 = v2;
}

void sub_1E3B99908()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = [v0 preferredFontForTextStyle_];

  if (qword_1ECF57EC0 != -1)
  {
    OUTLINED_FUNCTION_1_161(&qword_1ECF57EC0);
  }

  v3 = [v2 fontWithSize_];

  qword_1ECF714A0 = v3;
}

id sub_1E3B999BC()
{
  v1 = sub_1E3B99F44();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  sub_1E390E860(v3, v4, v1);

  v5 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___timeRangeLabel;
  v6 = v2[1];
  v7 = *v2 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  [*(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___timeRangeLabel) setHidden_];
  return [*(v0 + v5) sizeToFit];
}

uint64_t sub_1E3B99A78()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_1E3B99ACC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return sub_1E3B999BC();
}

id (*sub_1E3B99B30(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3B99B84;
}

id sub_1E3B99B84(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3B999BC();
  }

  return result;
}

id sub_1E3B99BB8()
{
  v1 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_musicText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id (*sub_1E3B99C30(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3B99C84;
}

id sub_1E3B99CAC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1();
  v7 = *a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v6 setAttributedText_];

  v8 = *a3;
  v9 = *(v3 + *a3);
  v10 = *(v3 + v7);
  v11 = v9;
  [v11 setHidden_];

  return [*(v3 + v8) sizeToFit];
}

id sub_1E3B99D68()
{
  v1 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_actorsText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3B99DE0(void *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = *a2;
  swift_beginAccess();
  v10 = *(v4 + v9);
  *(v4 + v9) = a1;
  v11 = a1;

  sub_1E3B99CAC(a3, a2, a4);
}

id (*sub_1E3B99E6C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3B99EC0;
}

id sub_1E3B99EE8(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3B99CAC(a3, a4, a5);
  }

  return result;
}

id sub_1E3B99F6C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_1E3B9C898(a2 & 1);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1E3B99FCC()
{
  v1 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setDistribution_];
    [v4 setAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3B9A0A4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask) = 0;
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [v1 capellaDebuggerEnabled];

  *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode) = v3 ^ 1;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_musicText;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v6 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_actorsText;
  OUTLINED_FUNCTION_19_72([objc_allocWithZone(MEMORY[0x1E696AD40]) init]);
  v44 = type metadata accessor for TimedMetadataDebuggerViewController();
  OUTLINED_FUNCTION_25();
  v9 = objc_msgSendSuper2(v7, v8, v0, v44);
  v10 = [v9 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  [v10 setUserInteractionEnabled_];

  v12 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode;
  if ((v9[OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode] & 1) == 0)
  {
    v13 = sub_1E3B99FCC();
    v14 = sub_1E3B99F44();
    OUTLINED_FUNCTION_14_104(v14);
  }

  v15 = sub_1E3B99FCC();
  v16 = sub_1E3B99F54();
  OUTLINED_FUNCTION_14_104(v16);

  if ((v9[v12] & 1) == 0)
  {
    v17 = *&v9[OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView];
    v18 = sub_1E3B99F60();
    OUTLINED_FUNCTION_14_104(v18);
  }

  v19 = [v9 view];
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v19;
  v21 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView;
  [v19 addSubview_];

  v22 = objc_opt_self();
  v23 = 20.0;
  if (([v22 isTV] & 1) == 0)
  {
    if ([v22 isPhone])
    {
      v23 = 60.0;
    }

    else
    {
      v23 = 80.0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E42A73A0;
  v25 = [*&v9[v21] topAnchor];
  v26 = OUTLINED_FUNCTION_27_1();
  if (!v26)
  {
    goto LABEL_19;
  }

  v27 = v26;
  v28 = [v26 layoutMarginsGuide];

  v29 = [v28 topAnchor];
  v30 = [v6 constraintEqualToAnchor:v29 constant:v23];

  *(v24 + 32) = v30;
  v31 = [*&v9[v21] leadingAnchor];
  v32 = OUTLINED_FUNCTION_27_1();
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = [v32 layoutMarginsGuide];

  v35 = [v34 leadingAnchor];
  v36 = [v6 constraintEqualToAnchor:v35 constant:10.0];

  *(v24 + 40) = v36;
  v37 = [*&v9[v21] trailingAnchor];
  v38 = OUTLINED_FUNCTION_27_1();

  if (v38)
  {
    v39 = objc_opt_self();
    v40 = [v38 layoutMarginsGuide];

    v41 = [v40 trailingAnchor];
    v42 = [v6 constraintEqualToAnchor:v41 constant:-10.0];

    *(v24 + 48) = v42;
    sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
    v43 = sub_1E42062A4();

    [v39 activateConstraints_];

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1E3B9A590()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask) = 0;
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 capellaDebuggerEnabled];

  *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode) = v3 ^ 1;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_musicText;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  OUTLINED_FUNCTION_19_72([objc_allocWithZone(MEMORY[0x1E696AD40]) init]);
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3B9A6D0()
{
  if (*&v0[OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask])
  {

    sub_1E42064D4();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimedMetadataDebuggerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1E3B9A818()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E4206434();

  v8 = sub_1E4206424();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  *(v1 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask) = sub_1E376FE58(0, 0, v5, &unk_1E42BF658, v9);

  return result;
}

uint64_t sub_1E3B9A960()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v2 = sub_1E41FEC34();
  v0[6] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[7] = v3;
  v0[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C60, &unk_1E42B98F0);
  OUTLINED_FUNCTION_17_2(v4);
  v0[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D48, &qword_1E42B9A80);
  v0[10] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[11] = v6;
  v0[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D50, &qword_1E42B9A88);
  v0[13] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[14] = v8;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = sub_1E4206434();
  v0[18] = sub_1E4206424();
  v10 = sub_1E42063B4();
  v0[19] = v10;
  v0[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E3B9AB4C, v10, v9);
}

uint64_t sub_1E3B9AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *sub_1E3287198();
  v14 = sub_1E37C085C();

  if (v14)
  {
    v16 = v12[15];
    v15 = v12[16];
    v17 = v12[13];
    v18 = v12[14];
    sub_1E41FEEE4();

    (*(v18 + 32))(v15, v16, v17);
    sub_1E42064A4();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v19 = sub_1E4206424();
    v12[21] = v19;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v12[22] = v20;
    *v20 = v21;
    v22 = OUTLINED_FUNCTION_6_114(v20);
    v28 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v22, v19, v28, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v29();
  }
}

uint64_t sub_1E3B9ACEC()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E3B9AE28, v5, v4);
}

uint64_t sub_1E3B9AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[9];
  v14 = v12[6];
  OUTLINED_FUNCTION_52(v13, 1, v14);
  if (v15)
  {
    v16 = v12[16];
    v17 = v12[13];
    v18 = v12[14];
    v20 = v12[11];
    v19 = v12[12];
    v21 = v12[10];

    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v16, v17);

    OUTLINED_FUNCTION_54();

    return v22();
  }

  else
  {
    (*(v12[7] + 32))(v12[8], v13, v14);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      sub_1E3B9AFE8();
    }

    (*(v12[7] + 8))(v12[8], v12[6]);
    v26 = sub_1E4206424();
    v12[21] = v26;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v12[22] = v27;
    *v27 = v28;
    v29 = OUTLINED_FUNCTION_6_114(v27);
    v35 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v29, v26, v35, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_1E3B9AFE8()
{
  v1 = v0;
  OUTLINED_FUNCTION_106();
  v96 = sub_1E41FF284();
  OUTLINED_FUNCTION_0_10();
  v95 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v94 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D10, &unk_1E42B9A30);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  v104 = v91 - v8;
  v9 = sub_1E41FEBE4();
  OUTLINED_FUNCTION_0_10();
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v106 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34390, &unk_1E42BF630);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v91 - v16;
  v18 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v102 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D00, &qword_1E42B9A28);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  v93 = v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v97 = v91 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v91 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v91 - v33;
  v100 = v0;
  sub_1E41FEBF4();
  v35 = sub_1E41FEAE4();
  OUTLINED_FUNCTION_52(v34, 1, v35);
  v99 = v35;
  if (v36)
  {
    sub_1E325F7FC(v34, &unk_1ECF32D00, &qword_1E42B9A28);
    v38 = 0;
  }

  else
  {
    v98 = v0;
    v39 = sub_1E41FEAC4();
    OUTLINED_FUNCTION_37_1();
    (*(v40 + 8))(v34, v35);
    v41 = *(v39 + 16);
    if (v41)
    {
      v92 = v31;
      v91[1] = v39;
      v42 = v39 + 32;
      v105 = (v102 + 32);
      v38 = MEMORY[0x1E69E7CC0];
      v101 = v23;
      do
      {
        sub_1E327F454(v42, v108);
        sub_1E3251BE8(v108, v107);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A0, &unk_1E42BF640);
        v43 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v17, v43 ^ 1u, 1, v18);
        OUTLINED_FUNCTION_52(v17, 1, v18);
        if (v36)
        {
          sub_1E325F7FC(v17, &unk_1ECF34390, &unk_1E42BF630);
        }

        else
        {
          v44 = *v105;
          (*v105)(v23, v17, v18);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = sub_1E3B9D0DC(0, v38[2] + 1, 1, v38, &qword_1ECF32D30, &qword_1E42B9A50, MEMORY[0x1E69D57B0], MEMORY[0x1E69D57B0]);
          }

          v47 = v38[2];
          v46 = v38[3];
          if (v47 >= v46 >> 1)
          {
            v51 = OUTLINED_FUNCTION_35(v46);
            v38 = sub_1E3B9D0DC(v51, v47 + 1, 1, v38, &qword_1ECF32D30, &qword_1E42B9A50, MEMORY[0x1E69D57B0], MEMORY[0x1E69D57B0]);
          }

          v38[2] = v47 + 1;
          OUTLINED_FUNCTION_81();
          v50 = v38 + v48 + *(v49 + 72) * v47;
          v23 = v101;
          v44(v50, v101, v18);
        }

        v42 += 40;
        --v41;
      }

      while (v41);

      v31 = v92;
    }

    else
    {

      v38 = MEMORY[0x1E69E7CC0];
    }

    v1 = v98;
    v35 = v99;
  }

  v52 = v104;
  sub_1E3B9BABC(v38, v37);
  v54 = v53;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))(v54);
  sub_1E41FEC14();
  OUTLINED_FUNCTION_52(v31, 1, v35);
  if (v36)
  {
    sub_1E325F7FC(v31, &unk_1ECF32D00, &qword_1E42B9A28);
  }

  else
  {
    v55 = sub_1E41FEAC4();
    OUTLINED_FUNCTION_37_1();
    (*(v56 + 8))(v31, v35);
    v57 = *(v55 + 16);
    if (v57)
    {
      v98 = v1;
      v105 = v55;
      v58 = v55 + 32;
      v59 = (v103 + 32);
      v60 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1E327F454(v58, v108);
        sub_1E3251BE8(v108, v107);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A0, &unk_1E42BF640);
        v61 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v52, v61 ^ 1u, 1, v9);
        OUTLINED_FUNCTION_52(v52, 1, v9);
        if (v36)
        {
          sub_1E325F7FC(v52, &unk_1ECF32D10, &unk_1E42B9A30);
        }

        else
        {
          v62 = *v59;
          (*v59)(v106, v52, v9);
          v63 = swift_isUniquelyReferenced_nonNull_native();
          if ((v63 & 1) == 0)
          {
            v60 = sub_1E3B9D0DC(0, v60[2] + 1, 1, v60, &unk_1ECF32D20, &unk_1E42B9A40, MEMORY[0x1E69D57B8], MEMORY[0x1E69D57B8]);
          }

          v65 = v60[2];
          v64 = v60[3];
          if (v65 >= v64 >> 1)
          {
            v68 = OUTLINED_FUNCTION_35(v64);
            v60 = sub_1E3B9D0DC(v68, v65 + 1, 1, v60, &unk_1ECF32D20, &unk_1E42B9A40, MEMORY[0x1E69D57B8], MEMORY[0x1E69D57B8]);
          }

          v60[2] = v65 + 1;
          OUTLINED_FUNCTION_81();
          v62(v60 + v66 + *(v67 + 72) * v65, v106, v9);
          v52 = v104;
        }

        v58 += 40;
        --v57;
      }

      while (v57);
    }
  }

  v69 = sub_1E3B9C304();

  OUTLINED_FUNCTION_4_136();
  (*(v70 + 232))(v69);
  OUTLINED_FUNCTION_4_136();
  v72 = (*(v71 + 224))();
  v73 = [v72 length];

  if (v73 < 1)
  {
    OUTLINED_FUNCTION_4_136();
    v78 = (*(v77 + 200))();
    v79 = [v78 length];

    v80 = v99;
    if (v79 < 1)
    {
      OUTLINED_FUNCTION_4_136();
      return (*(v86 + 184))(0, 0xE000000000000000);
    }

    v81 = v93;
    sub_1E41FEC14();
    OUTLINED_FUNCTION_52(v81, 1, v80);
    if (!v36)
    {
      v84 = v94;
      sub_1E41FEAD4();
      OUTLINED_FUNCTION_37_1();
      (*(v88 + 8))(v81, v80);
      goto LABEL_43;
    }

    v76 = v81;
  }

  else
  {
    v74 = v97;
    sub_1E41FEC14();
    v75 = v99;
    OUTLINED_FUNCTION_52(v74, 1, v99);
    if (!v36)
    {
      v84 = v94;
      sub_1E41FEAD4();
      OUTLINED_FUNCTION_37_1();
      (*(v85 + 8))(v74, v75);
LABEL_43:
      v82 = sub_1E3B9BA50();
      v83 = v89;
      (*(v95 + 8))(v84, v96);
      goto LABEL_44;
    }

    v76 = v74;
  }

  sub_1E325F7FC(v76, &unk_1ECF32D00, &qword_1E42B9A28);
  v82 = 0;
  v83 = 0xE000000000000000;
LABEL_44:
  OUTLINED_FUNCTION_4_136();
  return (*(v90 + 184))(v82, v83);
}

uint64_t sub_1E3B9BA50()
{
  sub_1E41FF274();
  sub_1E3B9CE4C(v0);
  v4 = v1;
  MEMORY[0x1E69109E0](2108704, 0xE300000000000000);
  sub_1E41FF264();
  sub_1E3B9CE4C(v2);
  MEMORY[0x1E69109E0]();

  return v4;
}

void sub_1E3B9BABC(uint64_t a1, __n128 a2)
{
  v4 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v55 = MEMORY[0x1E69E7CC0];
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode);
      v16 = *(v6 + 16);
      v14 = v6 + 16;
      v15 = v16;
      OUTLINED_FUNCTION_81();
      v18 = a1 + v17;
      v54 = *(v14 + 56);
      v49 = *MEMORY[0x1E69DB648];
      v52 = v4;
      v51 = v13;
      v50 = v16;
      do
      {
        v15(v10, v18, v4);
        if (v13)
        {
          sub_1E3B9BFC8();
        }

        else
        {
          v19 = sub_1E3B9BFC8();
          v20 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

          if (sub_1E41FEAF4())
          {
            v21 = 0xEC00000073657920;
          }

          else
          {
            v21 = 0xEB000000006F6E20;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
          inited = swift_initStackObject();
          OUTLINED_FUNCTION_18_66(inited);
          *(v23 + 32) = v49;
          v24 = qword_1ECF57FD8;
          v53 = v49;
          if (v24 != -1)
          {
            OUTLINED_FUNCTION_0_161();
            swift_once();
          }

          v25 = qword_1ECF714A0;
          v26 = sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
          inited[4].n128_u64[0] = v26;
          inited[2].n128_u64[1] = v25;
          type metadata accessor for Key(0);
          OUTLINED_FUNCTION_2_128();
          sub_1E3B9794C(&qword_1EE23B100, v27);
          v28 = v25;
          v29 = sub_1E4205CB4();
          v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v31 = sub_1E376403C(0x3A6465646461202CLL, v21, v29);
          [v20 appendAttributedString_];

          if (sub_1E41FEB04())
          {
            v32 = swift_initStackObject();
            OUTLINED_FUNCTION_18_66(v32);
            v33[8] = v26;
            v33[4] = v53;
            v33[5] = v28;
            v34 = v53;
            v35 = v28;
            v36 = OUTLINED_FUNCTION_33_42();
            v37 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v38 = sub_1E376403C(0x63696C707865202CLL, 0xEF736579203A7469, v36);
            [v20 appendAttributedString_];
          }

          v4 = v52;
          v13 = v51;
          v15 = v50;
        }

        v39 = (*(v14 - 8))(v10, v4);
        MEMORY[0x1E6910BF0](v39);
        v40 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v40 >> 1)
        {
          OUTLINED_FUNCTION_35(v40);
          sub_1E42062F4();
        }

        sub_1E4206324();
        v18 += v54;
        --v12;
      }

      while (v12);
      v11 = v55;
    }
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v42 = sub_1E32AE9B0(v11);
  v43 = v42;
  v44 = 0;
  if (v42)
  {
    v45 = v42 - 1;
  }

  else
  {
    v45 = 0;
  }

  while (1)
  {
    if (v43 == v44)
    {

      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1E6911E60](v44, v11);
    }

    else
    {
      if (v44 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v46 = *(v11 + 8 * v44 + 32);
    }

    v47 = v46;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    [v41 appendAttributedString_];
    if (v43 < 0)
    {
      goto LABEL_34;
    }

    if (v45 != v44)
    {
      sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
      v48 = sub_1E3763FC8(10, 0xE100000000000000);
      [v41 appendAttributedString_];
    }

    ++v44;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_1E3B9BFC8()
{
  sub_1E3280A90(0, &unk_1EE23AFE0, 0x1E696AD40);
  v0 = OUTLINED_FUNCTION_106();
  v1 = sub_1E3763FC8(v0, 0xE000000000000000);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
  result = sub_1E3B9CDDC(0x636973756DLL, 0xE500000000000000);
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() redColor];
    v6 = [v4 imageWithTintColor_];

    [v2 setImage_];
    v30 = [objc_opt_self() attributedStringWithAttachment_];
    [v1 appendAttributedString_];
    v7 = sub_1E41FEB24();
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 1819047278;
    }

    v31 = v2;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    v11 = sub_1E41FEB34();
    v13 = v12;
    v14 = sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
    MEMORY[0x1E69109E0](v9, v10);

    v15 = sub_1E3763FC8(8224, 0xE200000000000000);
    OUTLINED_FUNCTION_16_85(v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v17 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v18 = qword_1ECF57FD8;
    v19 = v17;
    if (v18 != -1)
    {
      OUTLINED_FUNCTION_0_161();
      swift_once();
    }

    if (!v13)
    {
      v13 = 0xE400000000000000;
      v11 = 1819047278;
    }

    v20 = qword_1ECF714A0;
    *(inited + 64) = sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
    *(inited + 40) = v20;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_2_128();
    sub_1E3B9794C(v21, v22);
    v23 = v20;
    v24 = OUTLINED_FUNCTION_33_42();
    v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v26 = v24;
    v27 = v25;
    v28 = sub_1E376403C(7954976, 0xE300000000000000, v26);
    OUTLINED_FUNCTION_16_85(v28);

    MEMORY[0x1E69109E0](v11, v13);

    v29 = sub_1E3763FC8(32, 0xE100000000000000);
    OUTLINED_FUNCTION_16_85(v29);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3B9C304()
{
  OUTLINED_FUNCTION_106();
  v1 = sub_1E41FEBE4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &selRef_advisoryDisabledTimeRanges;
  if (v0)
  {
    v58 = MEMORY[0x1E69E7CC0];
    if (*(v0 + 16))
    {
      v54 = *(v3 + 16);
      OUTLINED_FUNCTION_81();
      v11 = v0 + v10;
      v51 = *(v12 + 56);
      v52 = (v12 - 8);
      v50 = *MEMORY[0x1E69DB648];
      v53 = v1;
      v49 = v6;
      while (1)
      {
        v56 = v11;
        v57 = v9;
        v54(v6);
        sub_1E3280A90(0, &unk_1EE23AFE0, 0x1E696AD40);
        v13 = OUTLINED_FUNCTION_106();
        v14 = sub_1E3763FC8(v13, 0xE000000000000000);
        v15 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
        sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
        result = sub_1E3B9CDDC(0x662E6E6F73726570, 0xEB000000006C6C69);
        if (!result)
        {
          goto LABEL_28;
        }

        v17 = result;
        v18 = [objc_opt_self() whiteColor];
        v19 = [v17 imageWithTintColor_];

        [v15 setImage_];
        v55 = [objc_opt_self() attributedStringWithAttachment_];
        [v14 v8[116]];
        v20 = sub_1E41FEBB4();
        if (v21)
        {
          v22 = v20;
        }

        else
        {
          v22 = 1819047278;
        }

        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0xE400000000000000;
        }

        v24 = sub_1E41FEBD4();
        v26 = v25;
        sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
        MEMORY[0x1E69109E0](v22, v23);

        v27 = sub_1E3763FC8(8224, 0xE200000000000000);
        [v14 v8[116]];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_18_66(inited);
        *(v29 + 32) = v50;
        v30 = qword_1ECF57FD8;
        v31 = v50;
        v32 = v8;
        if (v30 != -1)
        {
          OUTLINED_FUNCTION_0_161();
          swift_once();
        }

        if (!v26)
        {
          v26 = 0xE400000000000000;
          v24 = 1819047278;
        }

        v33 = qword_1ECF714A0;
        inited[4].n128_u64[0] = sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
        inited[2].n128_u64[1] = v33;
        type metadata accessor for Key(0);
        OUTLINED_FUNCTION_2_128();
        sub_1E3B9794C(&qword_1EE23B100, v34);
        v35 = v33;
        v36 = sub_1E4205CB4();
        v37 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v38 = sub_1E376403C(7561504, 0xE300000000000000, v36);
        OUTLINED_FUNCTION_32_50(v38);

        MEMORY[0x1E69109E0](v24, v26);

        v39 = sub_1E3763FC8(32, 0xE100000000000000);
        OUTLINED_FUNCTION_32_50(v39);

        v6 = v49;
        v40 = (*v52)(v49, v53);
        MEMORY[0x1E6910BF0](v40);
        v41 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v8 = v32;
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v41 >> 1)
        {
          OUTLINED_FUNCTION_35(v41);
          sub_1E42062F4();
        }

        sub_1E4206324();
        v11 = v56 + v51;
        v9 = v57 - 1;
        if (v57 == 1)
        {
          v7 = v58;
          break;
        }
      }
    }
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v43 = sub_1E32AE9B0(v7);
  if (!v43)
  {
LABEL_26:

    return v42;
  }

  v44 = v43;
  result = sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
  if (v44 >= 1)
  {
    v45 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1E6911E60](v45, v7);
      }

      else
      {
        v46 = *(v7 + 8 * v45 + 32);
      }

      v47 = v46;
      ++v45;
      [v42 v8[116]];
      v48 = sub_1E3763FC8(10, 0xE100000000000000);
      [v42 v8[116]];
    }

    while (v44 != v45);
    goto LABEL_26;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

id sub_1E3B9C898(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (a1)
  {
    if (_MergedGlobals_75 != -1)
    {
      OUTLINED_FUNCTION_7_129(&_MergedGlobals_75);
    }

    v3 = &qword_1ECF71498;
  }

  else
  {
    if (qword_1ECF57FD8 != -1)
    {
      OUTLINED_FUNCTION_0_161();
      swift_once();
    }

    v3 = &qword_1ECF714A0;
  }

  [v2 setFont_];
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  v6 = v2;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = OUTLINED_FUNCTION_34_41();
  v8 = [v4 blackColor];
  v9 = [v8 CGColor];

  [v7 setShadowColor_];
  v10 = OUTLINED_FUNCTION_34_41();
  [v10 setShadowOffset_];

  v11 = OUTLINED_FUNCTION_34_41();
  [v11 setShadowRadius_];

  v12 = OUTLINED_FUNCTION_34_41();
  LODWORD(v13) = 1060320051;
  [v12 setShadowOpacity_];

  return v6;
}

uint64_t sub_1E3B9CB4C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask))
  {

    sub_1E42064D4();
  }

  OUTLINED_FUNCTION_6_41();
  (*(v1 + 184))(0, 0xE000000000000000);
  [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 208))();
  [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  OUTLINED_FUNCTION_6_41();
  v4 = *(v3 + 232);

  return v4();
}

unint64_t sub_1E3B9CC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34308;
  if (!qword_1ECF34308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34308);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimedMetadataDebuggerViewController.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

id sub_1E3B9CDDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1E4205ED4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

void sub_1E3B9CE4C(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v1 = round((a1 - a1) * 1000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 < 9.22337204e18)
  {
    v2 = a1;
    v3 = v1;
    v4 = sub_1E4207944();
    v6 = v4;
    v7 = v5;
    if ((v3 - 10) > 0x59)
    {
      if ((v3 - 10) < 0xFFFFFFFFFFFFFFF7)
      {
        if (!v3)
        {

          v7 = 0xE300000000000000;
          v6 = 3158064;
        }

        goto LABEL_14;
      }

      v8 = 12336;
      v9 = 0xE200000000000000;
    }

    else
    {
      v8 = 48;
      v9 = 0xE100000000000000;
    }

    v12 = v8;
    v13 = v9;
    MEMORY[0x1E69109E0](v4, v5);

    v6 = v12;
    v7 = v13;
LABEL_14:
    sub_1E3B9D050(v2 / 3600);
    MEMORY[0x1E69109E0](58, 0xE100000000000000);
    v10 = sub_1E3B9D050(v2 % 3600 / 60);
    MEMORY[0x1E69109E0](v10);

    MEMORY[0x1E69109E0](58, 0xE100000000000000);
    v11 = sub_1E3B9D050(v2 % 60);
    MEMORY[0x1E69109E0](v11);

    MEMORY[0x1E69109E0](46, 0xE100000000000000);
    MEMORY[0x1E69109E0](v6, v7);

    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1E3B9D050(uint64_t a1)
{
  if (a1 > 9)
  {
    return sub_1E4207944();
  }

  v1 = sub_1E4207944();
  MEMORY[0x1E69109E0](v1);

  return 48;
}

void *sub_1E3B9D0DC(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1E3B9D1E8(v14, v13, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_81();
  if (v11)
  {
    sub_1E3B9D2DC(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1E3B9D1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_8_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E3B9D2DC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_37_1(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_29_50();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_29_50();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1E3B9D3A0()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E3B9A960();
}

id OUTLINED_FUNCTION_32_50(uint64_t a1)
{

  return [v2 (v1 + 411)];
}

uint64_t sub_1E3B9D484(uint64_t a1)
{
  *(v1 + 104) = 0;
  v2 = sub_1E3C2F9A0();

  v3 = objc_opt_self();
  v4 = [v3 isTV];
  v5 = [v3 isMac];
  v6 = *sub_1E37BD068();
  if (v5)
  {
    v7 = 3;
  }

  else
  {
    v7 = 17;
  }

  v8 = 4;
  if (v5)
  {
    v8 = 5;
  }

  v9 = v4 == 0;
  if (v4)
  {
    v10 = 15;
  }

  else
  {
    v10 = v7;
  }

  if (v4)
  {
    v11 = 9;
  }

  else
  {
    v11 = v8;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 5;
  }

  (*(v6 + 1696))(v10);

  OUTLINED_FUNCTION_0_36();
  v14 = *(v13 + 1792);

  v14(v12);

  v15 = sub_1E37BD068();
  v16 = *sub_1E3E5FD88();
  v17 = *(*v15 + 680);
  v18 = v16;
  v17(v16);

  OUTLINED_FUNCTION_0_36();
  v20 = *(v19 + 968);

  v20(0);

  OUTLINED_FUNCTION_0_36();
  v22 = *(v21 + 2056);

  v22(v11, 0);

  OUTLINED_FUNCTION_0_36();
  v24 = *(v23 + 2080);

  v24(v11, 0);

  OUTLINED_FUNCTION_0_36();
  v26 = *(v25 + 2104);

  v26(v11, 0);

  sub_1E3C37CBC(v27, 9);

  return v2;
}

uint64_t type metadata accessor for ClipItem(uint64_t a1)
{
  result = qword_1ECF57FE0;
  if (!qword_1ECF57FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1E3B9D7E0()
{
  type metadata accessor for ClipItem(0);
  sub_1E41FE4F4();
  return result;
}

uint64_t sub_1E3B9D814@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClipItem(0);
  v10 = *(v1 + *(v3 + 40));
  if (!v10)
  {
    v162 = 0u;
    v163 = 0u;
    goto LABEL_13;
  }

  v160 = &type metadata for ClipItem.Keys;
  v161 = &off_1F5D73C50;
  v11 = OUTLINED_FUNCTION_5_128(v3, v10, v4, v5, v6, v7, v8, v9, v102, v110, v118, v126, v134, v142, v150, 7);
  sub_1E3F9F164(v11, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  if (!*(&v163 + 1))
  {
LABEL_13:
    sub_1E329505C(&v162);
    goto LABEL_14;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_4_137(v14, v15, v16, v14, v17, v18, v19, v20, v103, v111, v119, v127, v135, v143, v151, v158);
  if (swift_dynamicCast())
  {
    v21 = v158;
    if (v158)
    {
      v160 = &type metadata for ClipItem.Keys;
      v161 = &off_1F5D73C50;
      LOBYTE(v158) = 8;

      v30 = OUTLINED_FUNCTION_5_128(v22, v23, v24, v25, v26, v27, v28, v29, v104, v112, v120, v128, v136, v144, v152, v158);
      sub_1E3F9F164(v30, v21, v31);

      v32 = __swift_destroy_boxed_opaque_existential_1(&v158);
      if (*(&v163 + 1))
      {
        OUTLINED_FUNCTION_4_137(v32, v33, v34, v35, v36, v37, v38, v39, v105, v113, v121, v129, v137, v145, v153, v158);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_22;
        }

        v41 = v158;
        v40 = v159;
        v160 = &type metadata for ClipItem.Keys;
        v161 = &off_1F5D73C50;
        LOBYTE(v158) = 9;

        v50 = OUTLINED_FUNCTION_5_128(v42, v43, v44, v45, v46, v47, v48, v49, v106, v114, v122, v130, v138, v146, v154, v158);
        sub_1E3F9F164(v50, v21, v51);

        v52 = __swift_destroy_boxed_opaque_existential_1(&v158);
        if (*(&v163 + 1))
        {
          OUTLINED_FUNCTION_4_137(v52, v53, v54, MEMORY[0x1E69E6530], v55, v56, v57, v58, v107, v115, v123, v131, v139, v147, v155, v158);
          v59 = swift_dynamicCast();
          if (v59)
          {
            v160 = &type metadata for ClipItem.Keys;
            v161 = &off_1F5D73C50;
            v67 = OUTLINED_FUNCTION_5_128(v59, v60, v61, v62, v63, v64, v65, v66, v108, v116, v124, v132, v140, v148, v156, 10);
            sub_1E3F9F164(v67, v21, v68);

            v69 = __swift_destroy_boxed_opaque_existential_1(&v158);
            if (*(&v163 + 1))
            {
              OUTLINED_FUNCTION_4_137(v69, v70, v71, MEMORY[0x1E69E6530], v72, v73, v74, v75, v109, v117, v125, v133, v141, v149, v157, v158);
              if (swift_dynamicCast())
              {
                v158 = v41;
                v159 = v40;
                *&v162 = 8222587;
                *(&v162 + 1) = 0xE300000000000000;
                v76 = sub_1E4207944();
                v79 = sub_1E32822E0(v76, v77, v78);
                v84 = OUTLINED_FUNCTION_0_162(v79, v80, v81, v82, v83);
                v86 = v85;

                v158 = v84;
                v159 = v86;
                *&v162 = 8218747;
                *(&v162 + 1) = 0xE300000000000000;
                v87 = sub_1E4207944();
                v92 = OUTLINED_FUNCTION_0_162(v87, v88, v89, v90, v91);
                v94 = v93;

                v158 = v92;
                v159 = v94;
                *&v162 = 8218235;
                *(&v162 + 1) = 0xE300000000000000;
                OUTLINED_FUNCTION_0_162(v95, v96, v97, v98, v99);

                sub_1E41FE404();
              }

              goto LABEL_22;
            }

            goto LABEL_20;
          }

LABEL_22:

          goto LABEL_16;
        }
      }

LABEL_20:

      goto LABEL_15;
    }
  }

LABEL_14:
  v162 = 0u;
  v163 = 0u;
LABEL_15:
  sub_1E329505C(&v162);
LABEL_16:
  v101 = sub_1E41FE414();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v101);
}

uint64_t sub_1E3B9DB48@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_1E41FFCB4();
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v2 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ClipItem(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = &type metadata for ClipItem.Keys;
  v60 = &off_1F5D73C50;
  LOBYTE(v58[0]) = 0;
  v7 = OUTLINED_FUNCTION_3_132();
  if (v61)
  {
    v10 = OUTLINED_FUNCTION_2_129(v7, v8, v9, MEMORY[0x1E69E6158]);
    if (v10)
    {
      v11 = v56;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v57;
    }

    else
    {
      v12 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    OUTLINED_FUNCTION_6_115();
    v11 = 0;
    v12 = 0;
  }

  *v6 = v11;
  v6[1] = v12;
  v59 = &type metadata for ClipItem.Keys;
  v60 = &off_1F5D73C50;
  v13 = OUTLINED_FUNCTION_1_162(3);
  if (v61)
  {
    v16 = OUTLINED_FUNCTION_2_129(v13, v14, v15, MEMORY[0x1E69E6158]);
    if (v16)
    {
      v17 = v56;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v57;
    }

    else
    {
      v18 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v58);
    v19 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_6_115();
    v17 = 0;
    v19 = 0;
  }

  v52 = v19;
  v53 = v12;
  v20 = (v6 + v3[7]);
  *v20 = v17;
  v20[1] = v19;
  v59 = &type metadata for ClipItem.Keys;
  v60 = &off_1F5D73C50;
  v21 = OUTLINED_FUNCTION_1_162(4);
  if (v61)
  {
    v24 = OUTLINED_FUNCTION_2_129(v21, v22, v23, MEMORY[0x1E69E6158]);
    if (v24)
    {
      v25 = v56;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v57;
    }

    else
    {
      v26 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    OUTLINED_FUNCTION_6_115();
    v25 = 0;
    v26 = 0;
  }

  v27 = (v6 + v3[8]);
  *v27 = v25;
  v27[1] = v26;
  v59 = &type metadata for ClipItem.Keys;
  v60 = &off_1F5D73C50;
  OUTLINED_FUNCTION_1_162(5);
  if (v61)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_2_129(v28, v29, v30, v28))
    {
      v31 = v56;
    }

    else
    {
      v31 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    OUTLINED_FUNCTION_6_115();
    v31 = 0;
  }

  *(v6 + v3[9]) = v31;
  v59 = &type metadata for ClipItem.Keys;
  v60 = &off_1F5D73C50;
  v32 = OUTLINED_FUNCTION_1_162(1);
  if (v61)
  {
    if ((OUTLINED_FUNCTION_2_129(v32, v33, v34, MEMORY[0x1E69E63B0]) & 1) == 0)
    {
LABEL_44:

      __swift_destroy_boxed_opaque_existential_1(v58);
      goto LABEL_45;
    }

    __swift_destroy_boxed_opaque_existential_1(v58);
    v59 = &type metadata for ClipItem.Keys;
    v60 = &off_1F5D73C50;
    v35 = OUTLINED_FUNCTION_1_162(2);
    if (v61)
    {
      if (OUTLINED_FUNCTION_2_129(v35, v36, v37, MEMORY[0x1E69E63B0]))
      {
        __swift_destroy_boxed_opaque_existential_1(v58);
        sub_1E41FE564();
        sub_1E41FE564();
        v59 = &type metadata for ClipItem.Keys;
        v60 = &off_1F5D73C50;
        LOBYTE(v58[0]) = 6;
        OUTLINED_FUNCTION_3_132();

        if (v61)
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          if (OUTLINED_FUNCTION_2_129(v38, v39, v40, v38))
          {
            v41 = v56;
          }

          else
          {
            v41 = 0;
          }

          __swift_destroy_boxed_opaque_existential_1(v58);
        }

        else
        {
          OUTLINED_FUNCTION_6_115();
          v41 = 0;
        }

        *(v6 + v3[10]) = v41;
        v49 = v55;
        sub_1E3ACA40C(v6, v55);
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v3);
        return sub_1E3ACA3B0(v6);
      }

      goto LABEL_44;
    }
  }

  OUTLINED_FUNCTION_6_115();
LABEL_45:
  v42 = sub_1E324FBDC();
  v43 = v51;
  v44 = v54;
  (*(v51 + 16))(v2, v42, v54);
  v45 = sub_1E41FFC94();
  v46 = sub_1E42067F4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1E323F000, v45, v46, "ClipItem:: missing cut in or cut out time", v47, 2u);
    MEMORY[0x1E69143B0](v47, -1, -1);
  }

  (*(v43 + 8))(v2, v44);

  return __swift_storeEnumTagSinglePayload(v55, 1, 1, v3);
}

unint64_t sub_1E3B9DFFC()
{
  v0 = sub_1E4207784();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3B9E048(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = 0x656D6954646E65;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0x6F676F4C6D616574;
      break;
    case 6:
      result = 0x736567616D69;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 7107189;
      break;
    case 9:
      result = 0x6874646977;
      break;
    case 10:
      result = 0x746867696568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3B9E16C(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v4 = 0x6D69547472617473;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v4 = 0x656D6954646E65;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v4 = 0x656C746974;
      break;
    case 4:
      v4 = 0x7470697263736564;
      v3 = 0xEB000000006E6F69;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v4 = 0x6F676F4C6D616574;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v4 = 0x736567616D69;
      break;
    case 7:
      v4 = 0xD000000000000014;
      v3 = 0x80000001E4274660;
      break;
    case 8:
      v3 = 0xE300000000000000;
      v4 = 7107189;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v4 = 0x6874646977;
      break;
    case 10:
      v3 = 0xE600000000000000;
      v4 = 0x746867696568;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v6 = 0x6D69547472617473;
      v5 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x656D6954646E65;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v6 = 0x656C746974;
      break;
    case 4:
      v6 = 0x7470697263736564;
      v5 = 0xEB000000006E6F69;
      break;
    case 5:
      v5 = 0xE800000000000000;
      v6 = 0x6F676F4C6D616574;
      break;
    case 6:
      v5 = 0xE600000000000000;
      v6 = 0x736567616D69;
      break;
    case 7:
      v6 = 0xD000000000000014;
      v5 = 0x80000001E4274660;
      break;
    case 8:
      v5 = 0xE300000000000000;
      v6 = 7107189;
      break;
    case 9:
      v5 = 0xE500000000000000;
      v6 = 0x6874646977;
      break;
    case 10:
      v5 = 0xE600000000000000;
      v6 = 0x746867696568;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B9E3F0(char a1)
{
  sub_1E4207B44();
  sub_1E3B9E048(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B9E45C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3B9E5B0(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3B9E048(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3B9E610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B9DFFC();
  *a1 = result;
  return result;
}

unint64_t sub_1E3B9E640@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3B9E048(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B9E69C(uint64_t a1)
{
  sub_1E389B768();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_1E41FE5D4();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1E3B9E754(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1E3B9E754(uint64_t a1)
{
  if (!qword_1EE23B608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A770, &qword_1E42992B0);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE23B608);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ClipItem.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        break;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3B9E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF58070[0];
  if (!qword_1ECF58070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF58070);
  }

  return result;
}

uint64_t sub_1E3B9E8EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v6 = *(type metadata accessor for VideosEnginePromiseResponse(0, a2, a2, a4) + 28);
  v7 = OUTLINED_FUNCTION_3_5();
  result = v8(v7);
  *(a3 + v6) = a1;
  return result;
}

uint64_t sub_1E3B9E980()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

double sub_1E3B9E9B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

BOOL sub_1E3B9E9FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

uint64_t sub_1E3B9EA34()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_20_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_3_5();
  sub_1E3B9EA74();
  return v0;
}

void sub_1E3B9EA74()
{
  OUTLINED_FUNCTION_5_3();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v4 = [v2 jsContext];
  v5 = [v4 virtualMachine];

  if (v5)
  {
    [v5 addManagedReference:v3 withOwner:v0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B9EB78()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_20_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_3_5();
  sub_1E3B9EBB8();
  return v0;
}

void sub_1E3B9EBB8()
{
  OUTLINED_FUNCTION_5_3();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v4 = [v2 jsContext];
  v5 = [v4 virtualMachine];

  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [v5 addManagedReference:Strong withOwner:v0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B9ECCC()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-v9];
  v11 = *(v1 + 56);
  v12 = sub_1E324FBDC();
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_121();
    v14(v13);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "VideosEnginePromiseOperation::trying to start a promise while it's waiting for fragments.", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v7, v2);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v10, v12, v2);
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_125_0();
      *v21 = 0;
      _os_log_impl(&dword_1E323F000, v19, v20, "VideosEnginePromiseOperation::starting promise", v21, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v10, v2);
    *(v1 + 56) = 0;
    OUTLINED_FUNCTION_4_0();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A8, &unk_1E42BF770);
    OUTLINED_FUNCTION_119(v23);
    v24 = sub_1E4200614();
    OUTLINED_FUNCTION_32_51();
    *(v1 + 48) = v24;

    result = (*(*v1 + 232))(v25);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

double sub_1E3B9EF64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      OUTLINED_FUNCTION_4_0();
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      OUTLINED_FUNCTION_5_10();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_1E3BA1484;
      v7[4] = v4;
      OUTLINED_FUNCTION_0_155();
      v11[1] = 1107296256;
      OUTLINED_FUNCTION_7_6();
      v11[2] = v8;
      v11[3] = &block_descriptor_38_1;
      v9 = _Block_copy(v11);

      [Strong evaluate_];
      _Block_release(v9);

      return result;
    }
  }

  else
  {
  }

  return result;
}

void sub_1E3B9F0DC()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E324FBDC();
  v9 = OUTLINED_FUNCTION_121();
  v10(v9);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v11, v12, "VideosEnginePromiseOperation::cancelling promise", v13, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_32_51();
  *(v1 + 48) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v16);
    aBlock[4] = sub_1E3BA0D9C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_7_6();
    aBlock[2] = v17;
    aBlock[3] = &block_descriptor_71;
    v18 = _Block_copy(aBlock);

    [v15 evaluate_];
    _Block_release(v18);
  }
}

void sub_1E3B9F2CC()
{
  v0 = [objc_opt_self() currentThread];
  v1 = sub_1E39051FC();

  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong jsContext];

      if (v4)
      {
        v5 = sub_1E3B9E9FC();
        v6 = [v4 virtualMachine];
        v7 = v6;
        if (v5)
        {
          if (v6)
          {
            goto LABEL_11;
          }

          __break(1u);
        }

        else if (v6)
        {
LABEL_11:
          v15 = swift_unknownObjectWeakLoadStrong();
          v16 = swift_unknownObjectWeakLoadStrong();
          [v7 removeManagedReference:v15 withOwner:v16];

          swift_unknownObjectWeakAssign();
          return;
        }

        __break(1u);
        return;
      }
    }
  }

  v8 = sub_1E3B9E9FC();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v11);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v8;
    OUTLINED_FUNCTION_0_155();
    v17[1] = 1107296256;
    OUTLINED_FUNCTION_7_6();
    v17[2] = v13;
    v17[3] = &block_descriptor_28_0;
    v14 = _Block_copy(v17);

    [v10 evaluate_];
    _Block_release(v14);
  }
}

uint64_t sub_1E3B9F514()
{
  sub_1E3B9F2CC();
  MEMORY[0x1E69144A0](v0 + 16);
  MEMORY[0x1E69144A0](v0 + 24);
  MEMORY[0x1E69144A0](v0 + 32);
  MEMORY[0x1E69144A0](v0 + 40);

  return v0;
}

uint64_t sub_1E3B9F560()
{
  sub_1E3B9F514();
  v0 = OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E3B9F58C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_2_4();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    *&v26 = 0xD000000000000040;
    *(&v26 + 1) = 0x80000001E4274780;
    v27 = 257;
    a1(&v26);
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
LABEL_7:
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      Strong = v19;
      sub_1E394DD58();
      if (v20)
      {
        v15 = v20;
        sub_1E3B9F8A8(v20, 1);
        OUTLINED_FUNCTION_2_4();
        v21 = swift_allocObject();
        OUTLINED_FUNCTION_9_93(v21);
        v17 = sub_1E3BA1868;
        goto LABEL_10;
      }
    }

    v22 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v22, v5);
    v23 = sub_1E41FFC94();
    v24 = sub_1E42067E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_125_0();
      *v25 = 0;
      _os_log_impl(&dword_1E323F000, v23, v24, "VideosEnginePromiseOperation::looks like js promis operation is already invalidated.", v25, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v11, v5);
    v26 = xmmword_1E42BF760;
    v27 = 262;
    a1(&v26);
    goto LABEL_15;
  }

  sub_1E3D4BD78();
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  sub_1E3B9F8A8(v14, 0);
  OUTLINED_FUNCTION_2_4();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_9_93(v16);
  v17 = sub_1E3BA20EC;
LABEL_10:
  sub_1E41EC148(v17, a1);

  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

LABEL_15:

  return result;
}

uint64_t sub_1E3B9F8A8(void *a1, char a2)
{
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A8, &unk_1E42BF770);
  OUTLINED_FUNCTION_119(v6);
  v7 = a1;
  return sub_1E4200614();
}

void sub_1E3B9F954(unint64_t a1, int a2, void (*a3)(__n128), uint64_t a4)
{
  v5 = v4;
  v120 = a2;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v123 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v115 - v20;
  v22 = sub_1E324FBDC();
  isa = v11[2].isa;
  v124 = v22;
  v125 = isa;
  (isa)(v21);

  v24 = sub_1E41FFC94();
  LOBYTE(v25) = sub_1E42067E4();

  if (!os_log_type_enabled(v24, v25))
  {

    v25 = v11[1].isa;
    v25(v21, v9);
    v24 = v11;
    goto LABEL_10;
  }

  v115 = v11;
  v117 = a3;
  v116 = a4;
  a4 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *&v129[0] = a3;
  *a4 = 136315138;
  v26 = sub_1E32AE9B0(a1);
  v122 = v5;
  if (!v26)
  {
    v29 = v9;
    aBlock = 0u;
    v131 = 0u;
    goto LABEL_9;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_65;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  for (i = *(a1 + 32); ; i = MEMORY[0x1E6911E60](0, a1))
  {
    v28 = i;
    v29 = v9;
    *(&v131 + 1) = sub_1E3A246B8();
    *&aBlock = v28;
LABEL_9:
    v30 = sub_1E3294FA4(&aBlock);
    v32 = sub_1E3270FC8(v30, v31, v129);

    *(a4 + 4) = v32;
    _os_log_impl(&dword_1E323F000, v24, v25, "VideosEnginePromiseOperation::promise resolved, returned response: %s", a4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(a3);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v24 = v115;
    v25 = v115[1].isa;
    v9 = v29;
    v25(v21, v29);
    a4 = v116;
    a3 = v117;
    v5 = v122;
LABEL_10:
    if (!sub_1E32AE9B0(a1))
    {
      aBlock = 0u;
      v131 = 0u;
LABEL_29:
      sub_1E329505C(&aBlock);
      v53 = v126;
      v125(v126, v124, v9);
      v54 = sub_1E41FFC94();
      v55 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v55))
      {
        v56 = OUTLINED_FUNCTION_125_0();
        *v56 = 0;
        _os_log_impl(&dword_1E323F000, v54, v53, "VideosEnginePromiseOperation::failed to unwrap JSValue response to an object.", v56, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v25(v126, v9);
      OUTLINED_FUNCTION_2_4();
      v57 = swift_allocObject();
      OUTLINED_FUNCTION_29_51(v57);
      v58 = MEMORY[0x1E696AF00];

      objc_opt_self();
      OUTLINED_FUNCTION_33_43();
      v59 = [v58 currentThread];
      v60 = [v59 isMainThread];

      if (v60)
      {
        (a3)(2, 0, 262);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v62 = Strong;
          OUTLINED_FUNCTION_2_4();
          v63 = swift_allocObject();
          *(v63 + 16) = sub_1E3BA2054;
          *(v63 + 24) = v54;
          v132 = sub_1E37D1918;
          v133 = v63;
          OUTLINED_FUNCTION_10_67();
          *(&aBlock + 1) = 1107296256;
          OUTLINED_FUNCTION_0_163();
          *&v131 = v64;
          *(&v131 + 1) = &block_descriptor_149_0;
          _Block_copy(&aBlock);
          OUTLINED_FUNCTION_28_43();

          v65 = OUTLINED_FUNCTION_121();
          [v65 v66];
          _Block_release(v60);
        }
      }

      goto LABEL_36;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(a1 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_65:
    ;
  }

  v33 = MEMORY[0x1E6911E60](0, a1);
LABEL_14:
  v34 = v33;
  v35 = [v33 toObject];

  if (v35)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = 0u;
    v128 = 0u;
  }

  aBlock = v127;
  v131 = v128;
  if (!*(&v128 + 1))
  {
    goto LABEL_29;
  }

  sub_1E329504C(&aBlock, v129);
  sub_1E328438C(v129, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (OUTLINED_FUNCTION_26_55() && (, sub_1E328438C(v129, &aBlock), (OUTLINED_FUNCTION_26_55() & 1) != 0))
  {
    v122 = v5;
    v36 = v127;
    if (v120)
    {
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v38 = v37;
        if (sub_1E394DEA4())
        {
          sub_1E394DF44();
          if (v39)
          {
            v126 = v39;
            v40 = OUTLINED_FUNCTION_19_73(&v134);
            v41 = v9;
            v42(v40);
            v43 = sub_1E41FFC94();
            v44 = sub_1E42067E4();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = OUTLINED_FUNCTION_125_0();
              *v45 = 0;
              _os_log_impl(&dword_1E323F000, v43, v44, "VideosEnginePromiseOperation::more fragments to come, returning promise along with JSON object.", v45, 2u);
              OUTLINED_FUNCTION_6_0();
            }

            v117 = a3;

            v25(v118, v41);
            v46 = v126;
            v47 = sub_1E3B9F8A8(v126, 1);
            OUTLINED_FUNCTION_4_0();
            v48 = swift_allocObject();
            swift_weakInit();
            v49 = swift_allocObject();
            v49[2] = v48;
            v49[3] = v47;
            v49[4] = a3;
            v49[5] = a4;
            v49[6] = v36;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();

            v50 = objc_opt_self();

            v51 = [v50 currentThread];
            v52 = [v51 isMainThread];

            if (v52)
            {
              sub_1E3BA0C00(v48, v47, v117, a4, v36);
            }

            else
            {
              v110 = swift_unknownObjectWeakLoadStrong();
              if (v110)
              {
                v111 = v110;
                OUTLINED_FUNCTION_2_4();
                v112 = swift_allocObject();
                *(v112 + 16) = sub_1E3BA1C10;
                *(v112 + 24) = v49;
                v132 = sub_1E37D1918;
                v133 = v112;
                OUTLINED_FUNCTION_10_67();
                *(&aBlock + 1) = 1107296256;
                OUTLINED_FUNCTION_0_163();
                *&v131 = v113;
                *(&v131 + 1) = &block_descriptor_87_0;
                v114 = _Block_copy(&aBlock);

                [v111 evaluateDelegateBlockSync_];
                _Block_release(v114);
              }
            }

            swift_bridgeObjectRelease_n();
            __swift_destroy_boxed_opaque_existential_1(v129);
LABEL_36:

            return;
          }
        }
      }

      v96 = OUTLINED_FUNCTION_19_73(&v135);
      v97(v96);
      v98 = sub_1E41FFC94();
      v99 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_6_33(v99))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v100, v101, "VideosEnginePromiseOperation::this is the final response of multi part request, returning JSON object.");
        OUTLINED_FUNCTION_6_0();
      }

      v25(v119, v9);
      OUTLINED_FUNCTION_5_10();
      v102 = swift_allocObject();
      *(OUTLINED_FUNCTION_29_51(v102) + 32) = v36;
      v103 = MEMORY[0x1E696AF00];

      objc_opt_self();
      OUTLINED_FUNCTION_33_43();

      v104 = [v103 currentThread];
      v90 = [v104 isMainThread];

      if (v90)
      {
LABEL_53:

        (a3)(v105, 0, 0);

        goto LABEL_57;
      }

      v106 = swift_unknownObjectWeakLoadStrong();
      if (v106)
      {
        v92 = v106;
        OUTLINED_FUNCTION_2_4();
        v107 = swift_allocObject();
        *(v107 + 16) = sub_1E3BA1FE4;
        *(v107 + 24) = v98;
        v132 = sub_1E37D1918;
        v133 = v107;
        OUTLINED_FUNCTION_10_67();
        *(&aBlock + 1) = 1107296256;
        OUTLINED_FUNCTION_0_163();
        v95 = &block_descriptor_119_1;
LABEL_56:
        *&v131 = v94;
        *(&v131 + 1) = v95;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_28_43();

        v108 = OUTLINED_FUNCTION_121();
        [v108 v109];
        _Block_release(v90);
      }
    }

    else
    {
      v81 = OUTLINED_FUNCTION_19_73(&v136);
      v82(v81);
      v83 = sub_1E41FFC94();
      v84 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_6_33(v84))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v85, v86, "VideosEnginePromiseOperation::finished single part promise, returning response.");
        OUTLINED_FUNCTION_6_0();
      }

      v25(v121, v9);
      OUTLINED_FUNCTION_5_10();
      v87 = swift_allocObject();
      *(OUTLINED_FUNCTION_29_51(v87) + 32) = v36;
      v88 = MEMORY[0x1E696AF00];

      objc_opt_self();
      OUTLINED_FUNCTION_33_43();

      v89 = [v88 currentThread];
      v90 = [v89 isMainThread];

      if (v90)
      {
        goto LABEL_53;
      }

      v91 = swift_unknownObjectWeakLoadStrong();
      if (v91)
      {
        v92 = v91;
        OUTLINED_FUNCTION_2_4();
        v93 = swift_allocObject();
        *(v93 + 16) = sub_1E3BA20C0;
        *(v93 + 24) = v83;
        v132 = sub_1E37D1918;
        v133 = v93;
        OUTLINED_FUNCTION_10_67();
        *(&aBlock + 1) = 1107296256;
        OUTLINED_FUNCTION_0_163();
        v95 = &block_descriptor_129_0;
        goto LABEL_56;
      }
    }

LABEL_57:

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v125(v123, v124, v9);
    v67 = sub_1E41FFC94();
    v68 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v68))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_15_14(&dword_1E323F000, v69, v70, "VideosEnginePromiseOperation::the response is not a valid JSON dictionary.");
      OUTLINED_FUNCTION_6_0();
    }

    v25(v123, v9);
    OUTLINED_FUNCTION_2_4();
    v71 = swift_allocObject();
    OUTLINED_FUNCTION_29_51(v71);
    v72 = MEMORY[0x1E696AF00];

    objc_opt_self();
    OUTLINED_FUNCTION_33_43();
    v73 = [v72 currentThread];
    v74 = [v73 isMainThread];

    if (v74)
    {
      (a3)(1, 0, 262);
    }

    else
    {
      v75 = swift_unknownObjectWeakLoadStrong();
      if (v75)
      {
        v76 = v75;
        OUTLINED_FUNCTION_2_4();
        v77 = swift_allocObject();
        *(v77 + 16) = sub_1E3BA204C;
        *(v77 + 24) = v67;
        v132 = sub_1E37D1918;
        v133 = v77;
        OUTLINED_FUNCTION_10_67();
        *(&aBlock + 1) = 1107296256;
        OUTLINED_FUNCTION_0_163();
        *&v131 = v78;
        *(&v131 + 1) = &block_descriptor_139;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_28_43();

        v79 = OUTLINED_FUNCTION_121();
        [v79 v80];
        _Block_release(v74);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v129);
}

uint64_t sub_1E3BA071C(unint64_t a1, void (*a2)(uint64_t, uint64_t, void))
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v10, v3);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v11, v12, "VideosEnginePromiseOperation::promise was rejected.", v13, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  v14 = sub_1E32AE9B0(a1);
  v15 = 0;
  v16 = a1 & 0xC000000000000001;
  v17 = MEMORY[0x1E69E7CC0];
  while (v14 != v15)
  {
    if (v16)
    {
      v18 = MEMORY[0x1E6911E60](v15, a1);
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v18 = *(a1 + 8 * v15 + 32);
    }

    v19 = v18;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      sub_1E329505C(&v50);
      goto LABEL_38;
    }

    v20 = [v18 description];
    v21 = sub_1E4205F14();
    v23 = v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1E3740F88(0, *(v17 + 2) + 1, 1, v17);
    }

    v25 = *(v17 + 2);
    v24 = *(v17 + 3);
    if (v25 >= v24 >> 1)
    {
      v17 = sub_1E3740F88((v24 > 1), v25 + 1, 1, v17);
    }

    *(v17 + 2) = v25 + 1;
    v26 = &v17[16 * v25];
    *(v26 + 4) = v21;
    *(v26 + 5) = v23;
    ++v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  sub_1E3924274();
  v27 = sub_1E4205DF4();
  v29 = v28;

  *&v50 = 2118474;
  *(&v50 + 1) = 0xE300000000000000;
  MEMORY[0x1E69109E0](v27, v29);

  v31 = 0xE300000000000000;
  v32 = 2118474;
  if (!v14)
  {
    v50 = 0u;
    v51 = 0u;
    goto LABEL_32;
  }

  if (v16)
  {
    v33 = MEMORY[0x1E6911E60](0, a1);
LABEL_19:
    v34 = v33;
    v35 = [v33 toObject];

    if (v35)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v50 = v48;
    v51 = v49;
    if (*(&v49 + 1))
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_14_105(v36, v37, v38, v36) & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1E3277E60(0x646F43726F727265, 0xE900000000000065, v48, &v50);
      if (*(&v51 + 1))
      {
        if (OUTLINED_FUNCTION_14_105(v39, v40, v41, MEMORY[0x1E69E6158]))
        {
          sub_1E4207784();

          sub_1E3277E60(0x73654D726F727265, 0xEC00000065676173, v48, &v50);

          if (!*(&v51 + 1))
          {
            goto LABEL_37;
          }

          if (OUTLINED_FUNCTION_14_105(v42, v43, v44, MEMORY[0x1E69E6158]))
          {
            v31 = *(&v48 + 1);
            v32 = v48;
            v45 = a2;
          }

          else
          {
LABEL_38:
            v45 = a2;
            v31 = 0xE700000000000000;
            v32 = 0x6E776F6E6B6E75;
          }

          v46 = 4;
LABEL_34:
          v45(v32, v31, v46 | 0x100u);
          return sub_1E37B5ACC(v32, v31, v46);
        }

LABEL_33:
        v46 = 1;
        v45 = a2;
        goto LABEL_34;
      }
    }

LABEL_32:
    sub_1E329505C(&v50);
    goto LABEL_33;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(a1 + 32);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

double sub_1E3BA0C00(uint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  OUTLINED_FUNCTION_2_4();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A8, &unk_1E42BF770);
  OUTLINED_FUNCTION_119(v9);

  v10 = sub_1E4200614();

  (a3)(v11, v10, 0);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 56) = 1;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v13 = swift_weakLoadStrong();

  if (v13)
  {
    swift_beginAccess();
    *(v13 + 48) = v10;
  }

  return result;
}

double sub_1E3BA0D9C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_17_75();
    if (v0)
    {
      sub_1E3D4BED8();
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3B9F2CC();
  }

  return result;
}

uint64_t sub_1E3BA0E38(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E3781F38(result, v2, v3);
    sub_1E42005F4();
    result = sub_1E4207104();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3BA0EE0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E3BA1024(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}