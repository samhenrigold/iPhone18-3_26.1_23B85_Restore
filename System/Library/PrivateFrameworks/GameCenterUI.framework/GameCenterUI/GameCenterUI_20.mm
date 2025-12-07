void sub_24E15929C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI10DetailView_separator;
  type metadata accessor for SeparatorView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView) = 0;
  OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC12GameCenterUI10DetailView_accessory);
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_style) = 0;
  v4 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E1593D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);
  if (a2)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText_];
}

void sub_24E159454(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView];
  if (a1)
  {
    v4 = a1;
    v3 = [v4 imageWithRenderingMode_];
    [v2 setImage_];
  }

  else
  {
    v4 = 0;
    [v2 setImage_];
  }

  [v1 setNeedsLayout];
}

void sub_24E159514(void *a1)
{
  [a1 removeFromSuperview];
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView];
  if (v2)
  {
    v3 = v2;
    sub_24DFD8050(0xD000000000000029, 0x800000024E3A90F0, v3);
    [v1 addSubview_];
  }
}

void sub_24E1595B4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView) = a1;
  v2 = a1;
  sub_24E159514(v3);
}

id sub_24E159614()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView];
  if (v1)
  {
    v2 = v1;
    sub_24DFD8050(0xD00000000000002FLL, 0x800000024E3A90C0, v2);
    [v0 addSubview_];
  }

  return [v0 setNeedsLayout];
}

void sub_24E1596A4(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView;
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_24E159614();
}

uint64_t sub_24E159728()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameCenterUI10DetailView_accessory;
  swift_beginAccess();
  sub_24DF8F3A8(v1 + v2, __src, &qword_27F1DEE88, &unk_24E36BF90);
  if (__src[64] == 255)
  {
    return sub_24DF8F34C(__src, &qword_27F1DEE88, &unk_24E36BF90);
  }

  memcpy(__dst, __src, 0x41uLL);
  v3 = sub_24E073800();
  sub_24E1596A4(v3);
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 addTarget:v1 action:sel_didTapWithAccessoryView_ forControlEvents:64];
    }

    else
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        [v6 addTarget:v1 action:sel_didTapWithAccessoryView_ forControlEvents:4096];
      }
    }
  }

  return sub_24DF9D524(__dst);
}

uint64_t sub_24E159858(uint64_t a1)
{
  sub_24E1596A4(0);
  v3 = OBJC_IVAR____TtC12GameCenterUI10DetailView_accessory;
  swift_beginAccess();
  sub_24E15B8F4(a1, v1 + v3);
  swift_endAccess();
  sub_24E159728();
  return sub_24DF8F34C(a1, &qword_27F1DEE88, &unk_24E36BF90);
}

id sub_24E1598DC()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel];
  v2 = OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled;
  v3 = v0[OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled];
  result = [v1 textColor];
  v5 = result;
  if (v3 == 1)
  {
    v6 = 0.5;
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = 1.0;
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  v7 = [result colorWithAlphaComponent_];

  [v1 setTextColor_];
  [v0 setUserInteractionEnabled_];

  return [v0 setNeedsDisplay];
}

id sub_24E1599CC()
{
  v1 = v0;
  switch(*(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_style))
  {
    case 1:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      v10 = objc_opt_self();
      v11 = [v10 labelColor];
      [v2 setTextColor_];

      v19 = 1;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      v24 = 7;
      v12 = sub_24E073800();
      sub_24DF9D524(&v19);
      sub_24E1595B4(v12);
      v13 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView);
      v14 = GKIsRemoteUI();
      v15 = &selRef_whiteColor;
      if (!v14)
      {
        v15 = &selRef_labelColor;
      }

      v16 = [v10 *v15];
      [v13 setTintColor_];

      return [v2 setNeedsDisplay];
    case 2:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for PlayerCardTheme(0);
      [v2 setTextColor_];
      v19 = 1;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      v24 = 7;
      v18 = sub_24E073800();
      sub_24DF9D524(&v19);
      v8 = v18;
      goto LABEL_12;
    case 3:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for PlayerCardTheme(0);
      [v2 setTextColor_];
      goto LABEL_11;
    case 5:
    case 7:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      v3 = [objc_opt_self() systemRedColor];
      goto LABEL_10;
    case 6:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for PlayerCardTheme(0);
      v6 = __swift_project_value_buffer(v5, qword_27F20BF00);
      sub_24E0AEC50(v6 + *(v5 + 32));
      v3 = [objc_opt_self() secondaryLabelColor];
      goto LABEL_10;
    default:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      v3 = [objc_opt_self() labelColor];
LABEL_10:
      v7 = v3;
      [v2 setTextColor_];

LABEL_11:
      v8 = 0;
LABEL_12:
      sub_24E1595B4(v8);
      return [v2 setNeedsDisplay];
  }
}

void sub_24E159D40()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_selectionHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_selectionHandler + 8);

    v1(v3);

    sub_24DE73FA0(v1, v2);
  }
}

uint64_t sub_24E159DF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v43 = v4;
  v44 = v3;
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, sel_layoutSubviews, v5);
  v8 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView];
  v9 = [v8 image];
  v10 = v9;
  if ((v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_style] & 0xFE) == 4)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  sub_24E157F70(v9, v11, v49);

  v39 = sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel];
  v13 = type metadata accessor for DynamicTypeLabel(0);
  v47 = v13;
  v48 = MEMORY[0x277D22A68];
  *&v45 = v12;
  v40 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel];
  v41 = v12;
  v14 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView];
  v42 = v7;
  if (v14)
  {
    v38 = sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
    v37 = MEMORY[0x277D22A58];
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v15 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView];
  if (v15)
  {
    v16 = sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
    v17 = MEMORY[0x277D22A58];
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_separator];
  memcpy(v50, v49, sizeof(v50));
  v51 = v8;
  v52 = v39;
  v53 = MEMORY[0x277D22A58];
  sub_24DE56CE8(&v45, v54);
  v19 = v40;
  v54[5] = v40;
  v54[8] = v13;
  v54[9] = MEMORY[0x277D22A68];
  v54[10] = v14;
  v54[12] = 0;
  v54[11] = 0;
  v54[13] = v38;
  v54[14] = v37;
  v54[15] = v15;
  v54[16] = 0;
  v54[17] = 0;
  v54[18] = v16;
  v54[19] = v17;
  v54[20] = v18;
  v20 = v15;
  v21 = v18;
  v22 = v8;
  v23 = v41;
  v24 = v19;
  v25 = v14;
  [v1 bounds];
  [v1 layoutMargins];
  v26 = [v1 traitCollection];
  v27 = sub_24E3483C8();

  if (v27)
  {
    v28 = OUTLINED_FUNCTION_4_61();
    sub_24DFCF7A4(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6]);
  }

  else
  {
    OUTLINED_FUNCTION_4_61();
    sub_24DFD076C();
  }

  (*(v43 + 8))(v15, v44);
  return sub_24E15BADC(v50);
}

double sub_24E15A19C(void *a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView];
  v7 = [v6 image];
  v8 = v7;
  if ((v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_style] & 0xFE) == 4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  sub_24E157F70(v7, v9, __src);

  v38 = sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v10 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel];
  v11 = type metadata accessor for DynamicTypeLabel(0);
  v42 = v11;
  v43 = MEMORY[0x277D22A68];
  v39 = v10;
  *&v41 = v10;
  v12 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel];
  v13 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView];
  if (v13)
  {
    v37 = sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
    v36 = MEMORY[0x277D22A58];
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v14 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView];
  v40 = a1;
  if (v14)
  {
    v15 = sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
    v16 = MEMORY[0x277D22A58];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_separator];
  memcpy(__dst, __src, sizeof(__dst));
  v46 = v6;
  v47 = v38;
  v48 = MEMORY[0x277D22A58];
  sub_24DE56CE8(&v41, v49);
  v49[5] = v12;
  v49[8] = v11;
  v49[9] = MEMORY[0x277D22A68];
  v49[10] = v13;
  v49[12] = 0;
  v49[11] = 0;
  v49[13] = v37;
  v49[14] = v36;
  v49[15] = v14;
  v49[16] = 0;
  v49[17] = 0;
  v49[18] = v15;
  v49[19] = v16;
  v49[20] = v17;
  v18 = v14;
  v19 = v17;
  v20 = v6;
  v21 = v39;
  v22 = v12;
  v23 = v13;
  [v3 layoutMargins];
  v26 = a2 - v24 - v25;
  v27 = [v40 traitCollection];
  v28 = sub_24E3483C8();

  if (v28)
  {
    sub_24DFD108C(v40);
  }

  else
  {
    sub_24DFD1DE0(v40, v26);
  }

  v30 = v29;
  [v3 layoutMargins];
  v32 = v31;
  v34 = v33;
  sub_24E15BADC(__dst);
  return v30 + v32 + v34;
}

void *sub_24E15A520(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction + 8);
    v6[3] = sub_24DF88A8C(0, &qword_27F1E5BD8, 0x277D753C8);
    v6[0] = v3;
    sub_24DE56C38(v2, v4);
    v5 = v3;
    v2(v6);
    sub_24DE73FA0(v2, v4);
    return sub_24DF8F34C(v6, &qword_27F1E0370, &unk_24E369A10);
  }

  return result;
}

void sub_24E15A630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v6) = 1.0;
  [v5 setHyphenationFactor_];
  v2[OBJC_IVAR____TtC12GameCenterUI10DetailView_style] = *(a1 + 40);
  sub_24E1599CC();
  v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680, qword_24E36E390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  v11 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  v54 = sub_24DF88A8C(0, &qword_27F1E5BD0, 0x277D74240);
  *(inited + 64) = v54;
  *(inited + 40) = v5;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_2_71();
  sub_24E15BA2C(v12, v13, &unk_24E3690F8);
  v53 = v11;

  v14 = v5;
  v15 = sub_24E347C28();
  v16 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v17 = sub_24E15B964(v9, v8, v15);
  [v7 setAttributedText_];

  [v7 setIsAccessibilityElement_];
  v18 = sub_24E347CB8();
  [v7 setAccessibilityValue_];

  v19 = *(a1 + 80);
  v20 = v19;
  sub_24E159454(v19);
  v21 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel];
  if (*(a1 + 72))
  {
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_24E367D20;
  *(v24 + 64) = v54;
  *(v24 + 32) = v53;
  *(v24 + 40) = v14;
  v25 = v14;

  v26 = sub_24E347C28();
  v27 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v28 = sub_24E15B964(v22, v23, v26);
  [v21 setAttributedText_];

  v29 = [v21 attributedText];
  if (v29 && (v30 = v29, v31 = [v29 length], v30, !v31))
  {
    if (qword_27F1DDF90 != -1)
    {
      OUTLINED_FUNCTION_0_115(&qword_27F1DDF90);
    }

    v32 = &unk_27F20BAB0;
  }

  else
  {
    if (qword_27F1DDF98 != -1)
    {
      swift_once();
    }

    v32 = &unk_27F20BAC8;
  }

  v33 = sub_24E344158();
  v34 = __swift_project_value_buffer(v33, v32);
  sub_24E0AEC50(v34);
  sub_24DF8F3A8(a1 + 88, v57, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24E159858(v57);
  v35 = *(a1 + 160);
  v36 = *(a1 + 168);
  v37 = &v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction];
  v38 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction];
  v39 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction + 8];
  *v37 = v35;
  v37[1] = v36;
  sub_24DE56C38(v35, v36);
  sub_24DE73FA0(v38, v39);
  v40 = *(a1 + 177);
  v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled] = v40 ^ 1;
  sub_24E1598DC();
  v41 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView];
  if (v41)
  {
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    v43 = v42 == 0;
    if (!v42)
    {
      v42 = v41;
    }

    v44 = &selRef_setUserInteractionEnabled_;
    if (!v43)
    {
      v44 = &selRef_setEnabled_;
    }

    [v42 *v44];
  }

  if (!v40)
  {
    goto LABEL_22;
  }

  sub_24DF8F3A8(a1 + 184, &v55, &qword_27F1DEE90, &unk_24E369E90);
  if (!v56)
  {
    sub_24DF8F34C(&v55, &qword_27F1DEE90, &unk_24E369E90);
LABEL_22:
    v49 = OUTLINED_FUNCTION_8_48(OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
    *v51 = 0;
    v51[1] = 0;
    goto LABEL_23;
  }

  sub_24DE56CE8(&v55, v57);
  sub_24DE56CE8(v57, &v55);
  v45 = swift_allocObject();
  *(v45 + 16) = v52;
  sub_24DE56CE8(&v55, v45 + 24);
  v46 = &v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler];
  v47 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler];
  v48 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler + 8];
  *v46 = sub_24E15BA74;
  v46[1] = v45;

  v49 = v47;
  v50 = v48;
LABEL_23:
  sub_24DE73FA0(v49, v50);
  [v3 setNeedsLayout];
}

uint64_t sub_24E15AB4C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_24DF8F34C(v8, &unk_27F1EAC90, &unk_24E36E890);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v3 + 104))(v5, *MEMORY[0x277D21E18], v2);
    sub_24E3473B8();

    (*(v3 + 8))(v5, v2);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_24E15ADC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler + 8);

    v1(v3);

    sub_24DE73FA0(v1, v2);
  }
}

uint64_t sub_24E15AE28()
{
  sub_24E159454(0);
  sub_24E1593D8(0, 0, &OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
  sub_24E1593D8(0, 0, &OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel);
  memset(v10, 0, sizeof(v10));
  v11 = -1;
  sub_24E159858(v10);
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction);
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction);
  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_24DE73FA0(v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
  v5 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  [v4 setIsAccessibilityElement_];
  [v4 setAccessibilityValue_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView) setTintColor_];
  v6 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
  v7 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
  v8 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler + 8);
  *v6 = 0;
  v6[1] = 0;

  return sub_24DE73FA0(v7, v8);
}

double sub_24E15AF68(double a1, uint64_t a2, void *a3)
{
  v5 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0, &qword_24E3855F0);
  sub_24E347128();

  if (LOBYTE(v62[8]) == 255)
  {
    sub_24DF8F34C(v62, &qword_27F1DEE88, &unk_24E36BF90);
    v53 = 0;
  }

  else
  {
    v53 = sub_24E073800();
    sub_24DF9D524(v62);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  if (LOBYTE(v62[0]) == 6)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
    }

    v11 = type metadata accessor for PlayerCardTheme(0);
    v12 = __swift_project_value_buffer(v11, qword_27F20BF00) + *(v11 + 32);
  }

  else
  {
    if (qword_27F1DDF90 != -1)
    {
      OUTLINED_FUNCTION_0_115(&qword_27F1DDF90);
    }

    v12 = __swift_project_value_buffer(v5, &unk_27F20BAB0);
  }

  v56 = v7;
  (*(v7 + 16))(v10, v12, v5);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  v13 = v5;
  v14 = v62[0];
  v15 = v62[1];
  v16 = sub_24DF88A8C(0, &qword_27F1DEE28, 0x277D74300);
  ObjectType = swift_getObjectType();
  v17 = a3;
  v18 = [a3 traitCollection];
  v55 = v10;
  v50[1] = v16;
  v19 = MEMORY[0x25303F0C0](v10, v18);

  v20 = sub_24E344398();
  v21 = sub_24E344868();
  swift_allocObject();
  v51 = OUTLINED_FUNCTION_9_39(v14, v15, v19, v20);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  v23 = v62[0];
  v22 = v62[1];
  if (qword_27F1DE008 != -1)
  {
    swift_once();
  }

  v57 = v13;
  v24 = __swift_project_value_buffer(v13, &unk_27F20BC18);
  v54 = v17;
  v25 = [v17 traitCollection];
  v26 = MEMORY[0x25303F0C0](v24, v25);

  v27 = sub_24E344398();
  swift_allocObject();
  v28 = OUTLINED_FUNCTION_9_39(v23, v22, v26, v27);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  if (LOBYTE(v62[0]) == 1)
  {
    v29 = v53;
    v30 = v51;
LABEL_16:
    v31 = MEMORY[0x277D22A58];
    memset(&v62[1], 0, 56);
    v62[0] = 1;
    LOBYTE(v62[8]) = 7;
    v32 = sub_24E073800();
    sub_24DF9D524(v62);
    *(&v69 + 1) = sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
    v70 = v31;
    *&v68 = v32;
    goto LABEL_18;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  v29 = v53;
  v30 = v51;
  if (LOBYTE(v62[0]) == 2)
  {
    goto LABEL_16;
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
LABEL_18:
  type metadata accessor for SystemImage();
  v33 = [objc_opt_self() configurationWithTextStyle_];
  v34 = sub_24E18EFCC(0x2E6E6F7276656863, 0xEF64726177726F66, v33);

  [v34 size];
  v36 = v35;
  v38 = v37;

  if (qword_27F1DD8B0 != -1)
  {
    swift_once();
  }

  sub_24E15BA80(&xmmword_27F1E5A28, v61);
  v61[0] = 0;
  v61[1] = 0;
  v61[38] = v36;
  v61[39] = v38;
  v61[7] = 4;
  v39 = MEMORY[0x277D228F0];
  v59 = v21;
  v60 = MEMORY[0x277D228F0];
  *&v58 = v30;
  if (v29)
  {
    v40 = sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
    v41 = MEMORY[0x277D22A58];
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  sub_24DF8F3A8(&v68, v67, &qword_27F1DEE30, &qword_24E369B60);
  memcpy(v62, v61, sizeof(v62));
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  sub_24DE56CE8(&v58, v66);
  v66[5] = v28;
  v66[8] = v21;
  v66[9] = v39;
  v66[10] = v29;
  v66[12] = 0;
  v66[11] = 0;
  v66[13] = v40;
  v66[14] = v41;
  v67[5] = 0;
  v42 = v29;

  v43 = sub_24DFC1764();
  v44 = [v43 traitCollection];
  v45 = sub_24E3483C8();

  if (v45)
  {
    sub_24DFD108C(v43);
  }

  else
  {
    sub_24DFD1DE0(v43, a1);
  }

  v47 = v46;
  v48 = v55;

  swift_unknownObjectRelease();

  sub_24E15BADC(v62);
  (*(v56 + 8))(v48, v57);
  sub_24DF8F34C(&v68, &qword_27F1DEE30, &qword_24E369B60);
  return v47;
}

id sub_24E15B66C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0, &qword_24E3855F0);
  sub_24E347128();

  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_style) = v3;
  sub_24E1599CC();
  swift_getKeyPath();
  sub_24E347128();

  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled) = (v2 & 1) == 0;
  return sub_24E1598DC();
}

uint64_t sub_24E15B8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE88, &unk_24E36BF90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_24E15B964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24E347CB8();

  if (a3)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_2_71();
    sub_24E15BA2C(v6, v7, &unk_24E3690F8);
    v8 = sub_24E347BE8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 initWithString:v5 attributes:v8];

  return v9;
}

uint64_t sub_24E15BA2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_115(uint64_t a1)
{

  return swift_once();
}

char *OUTLINED_FUNCTION_5_64()
{

  return sub_24E0AEF24(v0, 0, 0, 0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_9_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_24E344858();
}

double OUTLINED_FUNCTION_11_31@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = -1;
  return result;
}

id sub_24E15BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  v8 = sub_24E011930(a1, a2);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage_];

  MEMORY[0x25303E950](0x2E6B726F77747261, 0xE800000000000000);

  MEMORY[0x25303E950](a1, a2);

  sub_24DFD8050(a3, a4, v9);

  return v9;
}

id sub_24E15BE90(uint64_t *a1, void *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v8 = [*&v3[*a2] *a3];
    v9 = [v3 *a3];
    v10 = [v8 constraintEqualToAnchor_];

    v11 = *&v3[v4];
    *&v3[v4] = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

char *sub_24E15BF50(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView;
  sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v12 = OUTLINED_FUNCTION_2_72(0xD000000000000016, 0x800000024E3A94F0, v11, 0x800000024E3A9510);
  *&v4[v10] = v12;
  v13 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView;
  *&v4[v13] = OUTLINED_FUNCTION_1_91(v12, 0xED0000676F44676ELL);
  v14 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView;
  v16 = OUTLINED_FUNCTION_2_72(0xD000000000000016, 0x800000024E3A9540, v15, 0x800000024E3A9510);
  *&v4[v14] = v16;
  v17 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView;
  v18 = OUTLINED_FUNCTION_1_91(v16, 0xED00006E614D676ELL);
  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView;
  v20 = OUTLINED_FUNCTION_1_91(v18, 0xEF746F626F52676ELL);
  *&v4[v19] = v20;
  v21 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView;
  *&v4[v21] = OUTLINED_FUNCTION_1_91(v20, 0xEF6E616D6F57676ELL);
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___logoCenterYConstraint] = 0;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v24 = ShouldUsePadUI == 0;
  if (ShouldUsePadUI)
  {
    v25 = 0xD000000000000012;
  }

  else
  {
    v25 = 0x696472616F626E4FLL;
  }

  if (v24)
  {
    v26 = 0xEE006F676F4C676ELL;
  }

  else
  {
    v26 = 0x800000024E3A9590;
  }

  v27 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView;
  *&v4[v27] = OUTLINED_FUNCTION_2_72(v25, v26, v23, 0x800000024E3A9510);
  v43.receiver = v4;
  v43.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_74(v28);
  v29 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView;
  OUTLINED_FUNCTION_4_62();
  v30 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView;
  OUTLINED_FUNCTION_4_62();
  v31 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView;
  OUTLINED_FUNCTION_4_62();
  v32 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView;
  OUTLINED_FUNCTION_4_62();
  v33 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView;
  OUTLINED_FUNCTION_4_62();
  v34 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView;
  OUTLINED_FUNCTION_4_62();
  v35 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_3_74(*&v28[v29]);
  OUTLINED_FUNCTION_3_74(*&v28[v30]);
  OUTLINED_FUNCTION_3_74(*&v28[v31]);
  OUTLINED_FUNCTION_3_74(*&v28[v35]);
  OUTLINED_FUNCTION_3_74(*&v28[v32]);
  OUTLINED_FUNCTION_3_74(*&v28[v33]);
  OUTLINED_FUNCTION_3_74(*&v28[v34]);
  sub_24E15C510();
  v36 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_24E37D390;
  *(v37 + 32) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterXConstraint);
  *(v37 + 40) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterYConstraint);
  *(v37 + 48) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterXConstraint);
  *(v37 + 56) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterYConstraint);
  *(v37 + 64) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterXConstraint);
  *(v37 + 72) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterYConstraint);
  *(v37 + 80) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterXConstraint);
  *(v37 + 88) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterYConstraint);
  *(v37 + 96) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterXConstraint);
  *(v37 + 104) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterYConstraint);
  *(v37 + 112) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterXConstraint);
  *(v37 + 120) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterYConstraint);
  v38 = [*&v28[v35] centerXAnchor];
  v39 = [v28 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v37 + 128) = v40;
  *(v37 + 136) = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___logoCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView, &selRef_centerYAnchor);
  sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
  v41 = sub_24E347EE8();

  [v36 activateConstraints_];

  return v28;
}

void sub_24E15C510()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView);
  v2 = [v1 widthAnchor];
  sub_24E15CEE0(v36);
  v3 = [v2 constraintEqualToConstant_];

  [v3 setActive_];
  v4 = [v1 heightAnchor];
  sub_24E15CEE0(v38);
  v5 = [v4 constraintEqualToConstant_];

  [v5 setActive_];
  v6 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView);
  v7 = [v6 widthAnchor];
  sub_24E15CEE0(v40);
  v8 = [v7 constraintEqualToConstant_];

  [v8 setActive_];
  v9 = [v6 heightAnchor];
  sub_24E15CEE0(v42);
  v10 = [v9 constraintEqualToConstant_];

  [v10 setActive_];
  v11 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView);
  v12 = [v11 widthAnchor];
  sub_24E15CEE0(v44);
  v13 = [v12 constraintEqualToConstant_];

  [v13 setActive_];
  v14 = [v11 heightAnchor];
  sub_24E15CEE0(v46);
  v15 = [v14 constraintEqualToConstant_];

  [v15 setActive_];
  v16 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView);
  v17 = [v16 widthAnchor];
  sub_24E15CEE0(v48);
  v18 = [v17 constraintEqualToConstant_];

  [v18 setActive_];
  v19 = [v16 heightAnchor];
  sub_24E15CEE0(v50);
  v20 = [v19 constraintEqualToConstant_];

  [v20 setActive_];
  v21 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView);
  v22 = [v21 widthAnchor];
  sub_24E15CEE0(v52);
  v23 = [v22 constraintEqualToConstant_];

  [v23 setActive_];
  v24 = [v21 heightAnchor];
  sub_24E15CEE0(v54);
  v25 = [v24 constraintEqualToConstant_];

  [v25 setActive_];
  v26 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView);
  v27 = [v26 widthAnchor];
  sub_24E15CEE0(v56);
  v28 = [v27 constraintEqualToConstant_];

  [v28 setActive_];
  v29 = [v26 heightAnchor];
  sub_24E15CEE0(v58);
  v30 = [v29 constraintEqualToConstant_];

  [v30 setActive_];
  v31 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView);
  v32 = [v31 widthAnchor];
  sub_24E15CEE0(v60);
  v33 = [v32 constraintEqualToConstant_];

  [v33 setActive_];
  v34 = [v31 heightAnchor];
  sub_24E15CEE0(v62);
  v35 = [v34 constraintEqualToConstant_];

  [v35 setActive_];
}

void sub_24E15CA7C()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_24E15CAB8();
}

void sub_24E15CAB8()
{
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v1 = -1.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v22);
  [v2 setConstant_];

  v3 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v24);
  v4 = v25;
  sub_24E15CEE0(v26);
  [v3 setConstant_];

  v5 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v28);
  [v5 setConstant_];

  v6 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v30);
  v7 = v31;
  sub_24E15CEE0(v32);
  [v6 setConstant_];

  v8 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v34);
  [v8 setConstant_];

  v9 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v36);
  v10 = v37;
  sub_24E15CEE0(v38);
  [v9 setConstant_];

  v11 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v40);
  [v11 setConstant_];

  v12 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v42);
  v13 = v43;
  sub_24E15CEE0(v44);
  [v12 setConstant_];

  v14 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v46);
  [v14 setConstant_];

  v15 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v48);
  v16 = v49;
  sub_24E15CEE0(v50);
  [v15 setConstant_];

  v17 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v52);
  [v17 setConstant_];

  v18 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v54);
  v19 = v55;
  sub_24E15CEE0(v56);
  [v18 setConstant_];

  v21 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___logoCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v58);
  v20 = v59;
  sub_24E15CEE0(v60);
  [v21 setConstant_];
}

void sub_24E15CEE0(uint64_t a3@<X8>)
{
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    type metadata accessor for OnboardingTemplateView();
    if (sub_24E3262B0())
    {
      v16 = [v3 superview];
      if (v16)
      {
        v17 = v16;
        [v16 frame];
        v19 = v18;

        if (v19 > 436.0)
        {
          v5 = xmmword_24E37D4E0;
          v6 = xmmword_24E37D4F0;
          v7 = xmmword_24E37D500;
          v9 = xmmword_24E37D510;
          v10 = xmmword_24E37D520;
          v11 = xmmword_24E37D530;
          v12 = xmmword_24E37D540;
          v13 = xmmword_24E37D550;
          v14 = 0x4065000000000000;
          v15 = xmmword_24E37D560;
          v8 = xmmword_24E37D470;
          goto LABEL_10;
        }
      }

      v15 = xmmword_24E37D570;
    }

    else
    {
      v15 = xmmword_24E37D4D0;
    }

    v14 = 0x4065000000000000;
    v5 = xmmword_24E37D440;
    v8 = xmmword_24E37D470;
    v7 = xmmword_24E37D460;
    v6 = xmmword_24E37D450;
    v10 = xmmword_24E37D490;
    v9 = xmmword_24E37D480;
    v12 = xmmword_24E37D4B0;
    v11 = xmmword_24E37D4A0;
    v13 = xmmword_24E37D4C0;
    goto LABEL_10;
  }

  v5 = xmmword_24E37D3A0;
  v6 = xmmword_24E37D3B0;
  v7 = xmmword_24E37D3C0;
  v8 = xmmword_24E37D3D0;
  v9 = xmmword_24E37D3E0;
  v10 = xmmword_24E37D3F0;
  v11 = xmmword_24E37D400;
  v12 = xmmword_24E37D410;
  v13 = xmmword_24E37D420;
  v14 = 0x4060000000000000;
  v15 = xmmword_24E37D430;
LABEL_10:
  *a3 = v15;
  *(a3 + 16) = v13;
  *(a3 + 32) = v12;
  *(a3 + 48) = v11;
  *(a3 + 64) = v10;
  *(a3 + 80) = v9;
  *(a3 + 96) = v8;
  *(a3 + 112) = v7;
  *(a3 + 128) = v6;
  *(a3 + 144) = v5;
  *(a3 + 160) = v14;
  *(a3 + 168) = 0;
}

void sub_24E15D0E8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView;
  sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v3 = OUTLINED_FUNCTION_2_72(0xD000000000000016, 0x800000024E3A94F0, v2, 0x800000024E3A9510);
  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView;
  *(v0 + v4) = OUTLINED_FUNCTION_0_116(v3, 0xED0000676F44676ELL);
  v5 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView;
  v7 = OUTLINED_FUNCTION_2_72(0xD000000000000016, 0x800000024E3A9540, v6, 0x800000024E3A9510);
  *(v0 + v5) = v7;
  v8 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView;
  v9 = OUTLINED_FUNCTION_0_116(v7, 0xED00006E614D676ELL);
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView;
  v11 = OUTLINED_FUNCTION_0_116(v9, 0xEF746F626F52676ELL);
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView;
  *(v0 + v12) = OUTLINED_FUNCTION_0_116(v11, 0xEF6E616D6F57676ELL);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___logoCenterYConstraint) = 0;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v15 = ShouldUsePadUI == 0;
  if (ShouldUsePadUI)
  {
    v16 = 0xD000000000000012;
  }

  else
  {
    v16 = 0x696472616F626E4FLL;
  }

  if (v15)
  {
    v17 = 0xEE006F676F4C676ELL;
  }

  else
  {
    v17 = 0x800000024E3A9590;
  }

  v18 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView;
  *(v0 + v18) = OUTLINED_FUNCTION_2_72(v16, v17, v14, 0x800000024E3A9510);
  sub_24E348AE8();
  __break(1u);
}

id OUTLINED_FUNCTION_0_116(uint64_t a1, uint64_t a2)
{

  return sub_24E15BC0C(v2, a2, 0xD000000000000022, v3 | 0x8000000000000000);
}

id OUTLINED_FUNCTION_1_91(uint64_t a1, uint64_t a2)
{

  return sub_24E15BC0C(v2, a2, 0xD000000000000022, v3 | 0x8000000000000000);
}

id OUTLINED_FUNCTION_2_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_24E15BC0C(a1, a2, 0xD000000000000022, a4);
}

id OUTLINED_FUNCTION_3_74(void *a1)
{

  return [a1 (v1 + 1466)];
}

id OUTLINED_FUNCTION_4_62()
{

  return [v0 (v1 + 2040)];
}

id OUTLINED_FUNCTION_5_65(uint64_t *a1)
{

  return sub_24E15BE90(a1, v2, v1);
}

id OUTLINED_FUNCTION_6_56(uint64_t *a1)
{

  return sub_24E15BE90(a1, v2, v1);
}

uint64_t sub_24E15D5B0()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
  __swift_allocate_value_buffer(v4, qword_27F1E5C80);
  v31 = v4;
  v5 = __swift_project_value_buffer(v4, qword_27F1E5C80);
  if (qword_27F1DDF80 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, &unk_27F20BA80);
  v8 = *(v6 - 8);
  v30 = *(v8 + 16);
  v29 = v8 + 16;
  v30(v3, v7, v6);
  v9 = v1[13];
  v28 = *MEMORY[0x277D22618];
  v27 = v9;
  v9(v3);
  v10 = sub_24E3444F8();
  v42 = v10;
  v43 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v41);
  v39 = v0;
  v40 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
  v12 = v1[2];
  v12(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  v13 = v1[1];
  v13(v3, v0);
  if (qword_27F1DDF88 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, &unk_27F20BA98);
  v30(v3, v14, v6);
  v27(v3, v28, v0);
  v39 = v10;
  v40 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v38);
  v36 = v0;
  v37 = MEMORY[0x277D22628];
  v15 = __swift_allocate_boxed_opaque_existential_1(&v35);
  v12(v15, v3, v0);
  sub_24E344508();
  v13(v3, v0);
  v16 = MEMORY[0x277D839F8];
  v17 = MEMORY[0x277D22A30];
  v36 = MEMORY[0x277D839F8];
  v37 = MEMORY[0x277D22A30];
  *&v35 = 0x4044000000000000;
  if (qword_27F1DDA08 != -1)
  {
    swift_once();
  }

  v18 = qword_27F20B158;
  v19 = MEMORY[0x277D225F8];
  *(v5 + 18) = MEMORY[0x277D85048];
  *(v5 + 19) = v19;
  *(v5 + 15) = v18;
  v20 = v31;
  v21 = *(v31 + 32);
  v22 = *MEMORY[0x277D227E8];
  v23 = sub_24E344658();
  (*(*(v23 - 8) + 104))(&v5[v21], v22, v23);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32[4] = v17;
  v32[3] = v16;
  v32[0] = 0x4064000000000000;
  v24 = &v5[*(v20 + 36)];
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = &v5[*(v20 + 40)];
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  sub_24DF88BF0(&v41, v5);
  sub_24DF88BF0(&v38, (v5 + 40));
  sub_24DF88BF0(&v35, (v5 + 80));
  sub_24DFB6B5C(v33, v25);
  return sub_24DFB6B5C(v32, v24);
}

char *sub_24E15DA1C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_centerContentInScrollView] = 1;
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators] = v10;
  v11 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v12 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_gradient;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v16 = *(MEMORY[0x277D768C8] + 16);
  v17 = *(MEMORY[0x277D768C8] + 24);
  v18 = v13;
  [v18 setLayoutMargins_];
  v19 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView;
  [*&v18[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView] setShowsHorizontalScrollIndicator_];
  [*&v18[v19] setShowsVerticalScrollIndicator_];
  v20 = *&v18[v19];
  sub_24E02909C();

  [*&v18[v19] setDelegate_];
  [v18 addSubview_];

  return v18;
}

void sub_24E15DBE0()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_centerContentInScrollView) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators) = v1;
  v2 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_gradient;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_24E348AE8();
  __break(1u);
}

void sub_24E15DCD4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);
      v7 = v5;
      [v6 removeFromSuperview];
      [v7 removeFromSuperview];

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  v8 = *(v2 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs);
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView;

  v11 = 0;
  v12 = (v8 + 40);
  while (v9 != v11)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = *v12;
    v14 = *(v2 + v10);
    v15 = *(v12 - 1);
    v16 = v13;
    [v14 addSubview_];
    [v14 addSubview_];
    v17 = *&v15[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
    if (!v17)
    {
      goto LABEL_13;
    }

    ++v11;
    v18 = v17;
    sub_24E02909C();

    sub_24E02909C();
    v12 += 2;
  }
}

uint64_t sub_24E15DE38(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs) = a1;
  sub_24E15DCD4(v2);
}

uint64_t sub_24E15DE80(uint64_t a1)
{
  result = sub_24DFD8654();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25303F560](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }

  v8 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators;
  swift_beginAccess();
  v9 = *(v1 + v8);
  result = sub_24DFD8654();
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (result < 1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v11 = *(v1 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView);

  for (j = 0; j != v10; ++j)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x25303F560](j, v9);
    }

    else
    {
      v13 = *(v9 + 8 * j + 32);
    }

    v14 = v13;
    [v11 addSubview_];
  }
}

uint64_t sub_24E15DFC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_24E15DE80(v4);
}

uint64_t sub_24E15E08C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E344658();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
  MEMORY[0x28223BE20](v45);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs];
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v39 = v5;
    v40 = v4;
    v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v1;
    v43 = a1;
    v50 = MEMORY[0x277D84F90];

    sub_24E12F6E0(0, v10, 0);
    v11 = v50;
    v12 = type metadata accessor for VibrancyHostView();
    v13 = type metadata accessor for DynamicTypeLabel(0);
    v38 = v9;
    v14 = (v9 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v50 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      v19 = v15;
      v20 = v16;
      if (v18 >= v17 >> 1)
      {
        sub_24E12F6E0((v17 > 1), v18 + 1, 1);
        v11 = v50;
      }

      *(v11 + 16) = v18 + 1;
      v21 = v11 + 80 * v18;
      *(v21 + 32) = v19;
      *(v21 + 40) = v46;
      *(v21 + 56) = v12;
      *(v21 + 64) = MEMORY[0x277D22A58];
      *(v21 + 72) = v20;
      *(v21 + 80) = v49;
      *(v21 + 96) = v13;
      *(v21 + 104) = MEMORY[0x277D22A68];
      v14 += 2;
      --v10;
    }

    while (v10);

    v2 = v42;
    a1 = v43;
    v4 = v40;
    v8 = v41;
    v5 = v39;
  }

  v22 = v45;
  if (qword_27F1DD8B8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v22, qword_27F1E5C80);
  sub_24E160A6C(v23, v8);
  v24 = [v2 traitCollection];
  v25 = sub_24E3483C8();

  if (v25)
  {
    v26 = [v2 traitCollection];
    v27 = sub_24E3483B8();

    v28 = MEMORY[0x277D227F8];
    if ((v27 & 1) == 0)
    {
      v28 = MEMORY[0x277D227F0];
    }

    v29 = v44;
    (*(v5 + 104))(v44, *v28, v4);
    (*(v5 + 40))(&v8[*(v22 + 32)], v29, v4);
  }

  v30 = [v2 traitCollection];
  sub_24E344A98();
  v32 = v31;

  v47 = MEMORY[0x277D85048];
  v48 = MEMORY[0x277D225F8];
  *&v46 = v32;
  __swift_destroy_boxed_opaque_existential_1(v8 + 15);
  sub_24DF88BF0(&v46, (v8 + 120));
  sub_24E160A6C(v8, a1);
  swift_beginAccess();

  sub_24E07A134(v33);
  v35 = v34;

  v36 = type metadata accessor for PlayerProfileInfoBarLayout(0);
  *(a1 + *(v36 + 20)) = v11;
  *(a1 + *(v36 + 24)) = v35;
  return sub_24E160AD0(v8, type metadata accessor for PlayerProfileInfoBarLayout.Metrics);
}

uint64_t sub_24E15E524()
{
  ObjectType = swift_getObjectType();
  v2 = sub_24E344048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlayerProfileInfoBarLayout(0);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = (&v44.receiver - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_layoutSubviews, v7);
  v10 = *&v0[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView];
  OUTLINED_FUNCTION_1_92();
  [v10 setFrame_];
  [v0 layoutMargins];
  [v10 setContentInset_];
  [v10 contentSize];
  v12 = v11;
  [v10 bounds];
  Width = CGRectGetWidth(v45);
  v14 = [v0 layer];
  v15 = v14;
  if (Width >= v12)
  {
    [v14 setMask_];
  }

  else
  {
    [v14 setMask_];

    sub_24E15E8B0();
    sub_24E15EB5C(v10);
  }

  sub_24E15E08C(v9);
  sub_24E15FB80(v0, v9, 1.79769313e308, 1.79769313e308);
  v17 = v16;
  OUTLINED_FUNCTION_1_92();
  v19 = v18;
  v21 = v20;
  [v0 layoutMargins];
  v23 = v22;
  v46.origin.x = v24;
  v26 = v19 - v24 - v25;
  v46.size.height = v21 - v23 - v27;
  v46.origin.y = v23;
  v46.size.width = v26;
  v28 = CGRectGetWidth(v46);
  if (v17 < v28)
  {
    if (v0[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_centerContentInScrollView] == 1)
    {
      OUTLINED_FUNCTION_1_92();
      v32 = v31;
      v34 = v33;
      [v0 layoutMargins];
      v36 = v35;
      v48.origin.x = v37;
      v39 = v32 - v37 - v38;
      v48.size.height = v34 - v36 - v40;
      v48.origin.y = v36;
      v48.size.width = v39;
      CGRectGetWidth(v48);
    }

    OUTLINED_FUNCTION_1_92();
    v30 = v41;
    Height = v42;
  }

  else
  {
    OUTLINED_FUNCTION_1_92();
    Height = CGRectGetHeight(v47);
    v30 = v17;
  }

  [v10 setContentSize_];
  [v10 setScrollEnabled_];
  [v10 contentSize];
  sub_24E30ABAC();
  (*(v3 + 8))(v5, v2);
  return sub_24E160AD0(v9, type metadata accessor for PlayerProfileInfoBarLayout);
}

id sub_24E15E8B0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_gradient];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24E36D5F0;
  sub_24DF88A8C(0, &qword_27F1E50D0, 0x277CCABB0);
  *(v3 + 32) = sub_24E3485F8();
  *(v3 + 40) = sub_24E3485F8();
  *(v3 + 48) = sub_24E3485F8();
  *(v3 + 56) = sub_24E3485F8();
  sub_24E317694(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00, &qword_24E372B80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E369E30;
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  v7 = [v6 CGColor];

  type metadata accessor for CGColor(0);
  v9 = v8;
  *(v4 + 56) = v8;
  *(v4 + 32) = v7;
  v10 = [v5 blackColor];
  v11 = [v10 CGColor];

  *(v4 + 88) = v9;
  *(v4 + 64) = v11;
  v12 = [v5 blackColor];
  v13 = [v12 CGColor];

  *(v4 + 120) = v9;
  *(v4 + 96) = v13;
  v14 = [v5 clearColor];
  v15 = [v14 CGColor];

  *(v4 + 152) = v9;
  *(v4 + 128) = v15;
  sub_24E27B56C(v4, v2);
  [v1 bounds];
  [v2 setFrame_];
  v16 = [v1 traitCollection];
  v17 = sub_24E3483B8();

  if (v17)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  if (v17)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  [v2 setStartPoint_];

  return [v2 setEndPoint_];
}

void sub_24E15EB5C(void *a1)
{
  [a1 contentOffset];
  [a1 contentSize];
  [a1 bounds];
  CGRectGetWidth(v6);
  [a1 contentOffset];
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_gradient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E36D5F0;
  sub_24DF88A8C(0, &qword_27F1E50D0, 0x277CCABB0);
  *(v4 + 32) = sub_24E3485F8();
  *(v4 + 40) = sub_24E3480E8();
  *(v4 + 48) = sub_24E3480E8();
  *(v4 + 56) = sub_24E3485F8();

  sub_24E317694(v4, v3);
}

uint64_t sub_24E15ED0C()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = *(*(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs) + 16);
  if (!v3)
  {
    return sub_24E15DFC8(v2);
  }

  v4 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators;
  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    v6 = *(v1 + v4);
    if (v6 >> 62)
    {
      v7 = sub_24E348878();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5 >= v7)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      v14 = [objc_opt_self() separatorColor];
      [v13 setBackgroundColor_];

      v15 = v13;
      MEMORY[0x25303EA30]();
      OUTLINED_FUNCTION_2_73();
      if (v12)
      {
        OUTLINED_FUNCTION_0_117();
      }

      sub_24E347F88();

      goto LABEL_15;
    }

    result = swift_beginAccess();
    v9 = *(v1 + v4);
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25303F560](v5);
      goto LABEL_9;
    }

    if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v10 = *(v9 + 8 * v5 + 32);
LABEL_9:
    v11 = swift_endAccess();
    MEMORY[0x25303EA30](v11);
    OUTLINED_FUNCTION_2_73();
    if (v12)
    {
      OUTLINED_FUNCTION_0_117();
    }

    sub_24E347F88();
LABEL_15:
    if (v3 == ++v5)
    {
      v2 = v16;
      return sub_24E15DFC8(v2);
    }
  }

  __break(1u);
  return result;
}

void sub_24E15EEF0(void *a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  v4 = [v2 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || v5 != [a1 layoutDirection])
  {
    sub_24E02909C();
    v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs];
    v7 = *(v6 + 16);

    v8 = 0;
    v9 = (v6 + 40);
    while (1)
    {
      if (v7 == v8)
      {

        return;
      }

      if (v8 >= *(v6 + 16))
      {
        break;
      }

      v10 = *(v9 - 1);
      v11 = *&v10[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
      if (!v11)
      {
        goto LABEL_11;
      }

      ++v8;
      v12 = *v9;
      v9 += 2;
      v13 = v10;
      v14 = v12;
      v15 = v11;
      sub_24E02909C();

      sub_24E02909C();
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}

id sub_24E15F11C()
{
  sub_24E15DE38(MEMORY[0x277D84F90]);
  sub_24E15ED0C();

  return [v0 setNeedsLayout];
}

void sub_24E15F15C()
{
  v1 = v0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5CD8, &unk_24E37D618);
  sub_24E347128();

  v2 = v18;
  v3 = *(v18 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24E12F6C0(0, v3, 0);
    v4 = 0;
    v5 = v17;
    v6 = (v18 + 56);
    while (v4 < *(v2 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v13 = *(v6 - 3);
      v14 = v7;
      v15 = v8;
      sub_24E15F2E8(&v13, &v16);
      v9 = v16;
      v17 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v16;
        sub_24E12F6C0((v10 > 1), v11 + 1, 1);
        v9 = v12;
        v5 = v17;
      }

      ++v4;
      *(v5 + 16) = v11 + 1;
      *(v5 + 16 * v11 + 32) = v9;
      v6 += 4;
      if (v3 == v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
LABEL_9:
    sub_24E15DE38(v5);
    sub_24E15ED0C();
    [v1 setNeedsLayout];
  }
}

void sub_24E15F2E8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v28 = a1[3];
  v29 = v8;
  if (qword_27F1DDF80 != -1)
  {
    swift_once();
  }

  v9 = sub_24E344158();
  v10 = __swift_project_value_buffer(v9, &unk_27F20BA80);
  v11 = *(*(v9 - 8) + 16);
  v11(v5, v10, v9);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  v12 = *MEMORY[0x277D74368];
  v13 = type metadata accessor for DynamicTypeLabel(0);
  v14 = objc_allocWithZone(v13);
  v15 = v12;
  v16 = sub_24E0AEF24(v5, v12, 1, 0, 1, 0);
  sub_24DFFA600(v7, v6, v16);
  if (qword_27F1DDF88 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, &unk_27F20BA98);
  v11(v5, v17, v9);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  v18 = objc_allocWithZone(v13);
  v19 = sub_24E0AEF24(v5, 0, 1, 0, 1, 0);
  sub_24DFFA600(v29, v28, v19);
  v20 = [objc_opt_self() secondaryLabelColor];
  [v19 setTextColor_];

  v21 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DF88A8C(0, &qword_27F1E9F20, 0x277D75D58);
  v22 = sub_24E347F08();

  v23 = v16;
  LOBYTE(v21) = GKIsRemoteUI();
  v24 = objc_allocWithZone(type metadata accessor for VibrancyHostView());
  v25 = sub_24E300F20(v23, v22, v21 ^ 1u);

  v26 = v30;
  *v30 = v25;
  v26[1] = v19;
}

uint64_t sub_24E15F66C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs) + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = ( + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(v2 - 1);
    v5 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5CF0, &qword_24E37D628);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24E36A270;
    v7 = *&v4[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
    *(v6 + 32) = v7;
    *(v6 + 40) = v5;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5CF8, &unk_24E37D630);
    *&v15 = v6;
    v8 = v7;
    v9 = v5;
    v10 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E077F98();
      v3 = v12;
    }

    v11 = *(v3 + 16);
    if (v11 >= *(v3 + 24) >> 1)
    {
      sub_24E077F98();
      v3 = v13;
    }

    *(v3 + 16) = v11 + 1;
    sub_24E024710(&v15, (v3 + 32 * v11 + 32));
    v2 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

double sub_24E15F928(void *a1, void *a2, double a3, double a4)
{
  v7 = type metadata accessor for PlayerProfileInfoBarLayout(0);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a2 layoutMargins];
  sub_24E348538();
  v12 = v11;
  v14 = v13;
  sub_24E15E08C(v10);
  sub_24E15FB80(a1, v10, v12, v14);
  [a2 layoutMargins];
  sub_24E160AD0(v10, type metadata accessor for PlayerProfileInfoBarLayout);
  return a3;
}

double sub_24E15FA4C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v7 = type metadata accessor for PlayerProfileInfoBarLayout(0);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 layoutMargins];
  sub_24E348538();
  sub_24E15E08C(v10);
  sub_24E30B6B8();
  [a2 layoutMargins];
  sub_24E160AD0(v10, type metadata accessor for PlayerProfileInfoBarLayout);
  return a4;
}

uint64_t sub_24E15FB80(void *a1, void *a2, double a3, double a4)
{
  v50 = a4;
  v49 = a3;
  v6 = sub_24E348BC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24E15FFDC(a1, a2);
  v11 = result;
  v12 = 0;
  v13 = *(result + 16);
  v47 = result + 32;
  v14 = (v7 + 8);
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v48 = v13;
  while (1)
  {
    if (v12 == v13)
    {
      v19 = 0;
      v20 = 0uLL;
      v21 = v13;
      v22 = 0uLL;
      v23 = 0uLL;
      goto LABEL_6;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    v21 = v12 + 1;
    *&v57 = v12;
    sub_24E1608A0(v47 + 48 * v12, &v57 + 8);
    v20 = v57;
    v22 = v58;
    v23 = v59;
    v19 = v60;
LABEL_6:
    v61[0] = v20;
    v61[1] = v22;
    v61[2] = v23;
    v62 = v19;
    if (!v23)
    {
    }

    v51 = v20;
    v52 = v21;
    v53 = v15;
    sub_24DFFE564((v61 + 8), &v57);
    __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
    v24 = sub_24E3440D8(v49, v50);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
    sub_24E160904(a2 + *(v31 + 36), v54);
    v32 = v55;
    if (v55)
    {
      v33 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      sub_24E2548A0(v32, v33);
      sub_24E344198();
      v35 = v34;
      (*v14)(v9, v6);
      __swift_destroy_boxed_opaque_existential_1(v54);
      v36 = [a1 traitCollection];
      v37 = sub_24E3483C8();

      if (v35 >= v24)
      {
        v38 = v24;
      }

      else
      {
        v38 = v35;
      }

      if ((v37 & 1) == 0)
      {
        v24 = v38;
      }
    }

    else
    {
      sub_24DF8A960(v54);
    }

    sub_24E160904(a2 + *(v31 + 40), v54);
    v39 = v55;
    if (v55)
    {
      v40 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      sub_24E2548A0(v39, v40);
      sub_24E344198();
      v42 = v41;
      (*v14)(v9, v6);
      __swift_destroy_boxed_opaque_existential_1(v54);
      if (v24 <= v42)
      {
        v24 = v42;
      }
    }

    else
    {
      sub_24DF8A960(v54);
    }

    v18 = v18 + v24;
    if (v51 != *(v11 + 16) - 1)
    {
      v43 = a2[13];
      v44 = a2[14];
      __swift_project_boxed_opaque_existential_1(a2 + 10, v43);
      sub_24E2548A0(v43, v44);
      sub_24E344198();
      v46 = v45;
      (*v14)(v9, v6);
      v18 = v18 + v46;
    }

    v13 = v48;
    if (v17 <= v26)
    {
      v17 = v26;
    }

    if (v16 <= v28)
    {
      v16 = v28;
    }

    v15 = v53;
    if (v53 <= v30)
    {
      v15 = v30;
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v57);
    v12 = v52;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E15FFDC(void *a1, uint64_t a2)
{
  v59 = sub_24E344648();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24E3445E8();
  v5 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v57 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E3446A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v80 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = v50 - v12;
  v14 = [a1 traitCollection];
  LOBYTE(a1) = sub_24E3483B8();

  v15 = *(type metadata accessor for PlayerProfileInfoBarLayout(0) + 20);
  v82 = a2;
  v16 = *(a2 + v15);

  if (a1)
  {
    v16 = sub_24E30B12C(v16);
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    v79 = v82 + *(type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0) + 32);
    v50[1] = v16;
    v18 = v16 + 32;
    v78 = (v5 + 104);
    v77 = *MEMORY[0x277D227C8];
    v76 = v60 + 8;
    v54 = (v5 + 8);
    v19 = (v8 + 16);
    v52 = (v8 + 8);
    v20 = MEMORY[0x277D84F90];
    v51 = xmmword_24E36A270;
    v75 = xmmword_24E367D20;
    v56 = v7;
    v55 = v13;
    v53 = v19;
    do
    {
      v72 = v20;
      v74 = v17;
      v73 = v18;
      sub_24E160974(v18, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10, &unk_24E369B80);
      v21 = *(sub_24E344688() - 8);
      v70 = *(v21 + 72);
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = swift_allocObject();
      v71 = v23;
      *(v23 + 16) = v51;
      v62 = v23 + v22;
      v85 = 0;
      v84 = 0u;
      v83 = 0u;
      v69 = *v78;
      v24 = v57;
      v25 = v81;
      v69(v57, v77, v81);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38, &qword_24E373200);
      v26 = v60;
      v67 = *(v60 + 72);
      v27 = swift_allocObject();
      *(v27 + 16) = v75;
      sub_24E344618();
      *&v88[0] = v27;
      v65 = sub_24E1609D0(&qword_27F1E5D20, MEMORY[0x277D227D8], MEMORY[0x277D227E0]);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
      v66 = sub_24DF8A8FC();
      v28 = v58;
      v29 = v59;
      sub_24E3487E8();
      sub_24E344678();
      v63 = *(v26 + 8);
      v63(v28, v29);
      v61 = *v54;
      v61(v24, v25);
      sub_24DF8A960(&v83);
      v31 = v92;
      v30 = v93;
      v32 = __swift_project_boxed_opaque_existential_1(&v91, v92);
      *(&v84 + 1) = v31;
      v85 = *(v30 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
      v34 = v80;
      (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v32, v31);
      sub_24E160A18(v90);
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      v35 = v81;
      v69(v24, v77, v81);
      v36 = swift_allocObject();
      *(v36 + 16) = v75;
      sub_24E344618();
      v87 = v36;
      sub_24E3487E8();
      v37 = v55;
      sub_24E344678();
      v38 = v28;
      v39 = v56;
      v63(v38, v29);
      v40 = v24;
      v20 = v72;
      v61(v40, v35);
      v41 = v53;
      sub_24DF8A960(v88);
      __swift_destroy_boxed_opaque_existential_1(&v83);
      sub_24E344668();
      v42 = *v41;
      (*v41)(v34, v37, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076B00();
        v20 = v47;
      }

      v43 = *(v20 + 16);
      if (v43 >= *(v20 + 24) >> 1)
      {
        sub_24E076B00();
        v20 = v48;
      }

      v44 = *v52;
      (*v52)(v37, v39);
      *(&v84 + 1) = v39;
      v85 = MEMORY[0x277D22808];
      v86 = MEMORY[0x277D22810];
      v45 = __swift_allocate_boxed_opaque_existential_1(&v83);
      v46 = v80;
      v42(v45, v80, v39);
      *(v20 + 16) = v43 + 1;
      sub_24DFFE564(&v83, (v20 + 48 * v43 + 32));
      v44(v46, v39);
      v18 = v73 + 80;
      v17 = v74 - 1;
    }

    while (v74 != 1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v20;
}

uint64_t sub_24E1608A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24E160904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE48, qword_24E36BF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1609D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E160A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E160AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_117()
{

  return sub_24E347F48();
}

id OUTLINED_FUNCTION_1_92()
{

  return [v0 (v1 + 3832)];
}

uint64_t sub_24E160B80(char a1)
{
  result = 0x6979616C50776F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6D65766569686361;
      break;
    case 2:
      result = 0x6F6272656461656CLL;
      break;
    case 3:
      result = 0x656461637261;
      break;
    case 4:
      result = 0x676E656C6C616863;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E160C2C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 17) = a2;
  return v4;
}

uint64_t *sub_24E160C40(uint64_t a1, void *a2)
{
  v3 = v2;
  v163 = a2;
  sub_24E3433A8();
  OUTLINED_FUNCTION_2_7();
  v157 = v6;
  v158 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_38();
  v154 = v7;
  MEMORY[0x28223BE20](v8);
  v155 = &v140 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v156 = &v140 - v12;
  v13 = OUTLINED_FUNCTION_18_1();
  v14 = type metadata accessor for JetDashboardSectionData(v13);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v18 = v17 - v16;
  v19 = sub_24E347478();
  v20 = OUTLINED_FUNCTION_4_5(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v151 = v22 - v21;
  OUTLINED_FUNCTION_18_1();
  sub_24E3474B8();
  OUTLINED_FUNCTION_2_7();
  v161 = v24;
  v162 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v165 = v26 - v25;
  OUTLINED_FUNCTION_18_1();
  v27 = sub_24E347458();
  v28 = OUTLINED_FUNCTION_4_5(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_1();
  v150 = v30 - v29;
  OUTLINED_FUNCTION_18_1();
  v31 = sub_24E347088();
  OUTLINED_FUNCTION_2_7();
  v149 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_1();
  v36 = v35 - v34;
  sub_24E347208();
  OUTLINED_FUNCTION_2_7();
  v159 = v38;
  v160 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_1();
  v164 = v40 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  v42 = OUTLINED_FUNCTION_4_5(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_38();
  *&v152 = v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v140 - v45;
  v153 = a1;
  sub_24DF95B98(a1, &v140 - v45, &qword_27F1DF018, &qword_24E372030);
  v47 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
  {
    sub_24DF8BFF4(v46, &qword_27F1DF018, &qword_24E372030);
    return 0;
  }

  memcpy(v169, v46 + 16, 0x199uLL);
  sub_24DF95B98(v169, v168, &qword_27F1DF030, &qword_24E36A2D0);
  OUTLINED_FUNCTION_5_66();
  sub_24E1644CC(v46, v48);
  memcpy(v170, v169, 0x199uLL);
  if (sub_24DF8BF80(v170) == 1)
  {
    return 0;
  }

  v146 = v47;
  v147 = v14;
  v148 = v18;
  sub_24DF95978();
  v49 = [v170[1] playerID];
  v50 = sub_24E347CF8();
  v52 = v51;

  v53 = sub_24E1C6A3C(v50, v52);
  v54 = [objc_opt_self() gameRecordForPlayer:v53 game:*(v3 + 24)];

  if ([v54 supportsAchievements])
  {
    OUTLINED_FUNCTION_18_27();
    v55 = OUTLINED_FUNCTION_20_22();
    sub_24E161C1C(v55, v56, 0, v57);
    sub_24E076EE4();
    v59 = OUTLINED_FUNCTION_13_35(v58);
    if (*(v59 + 16) >= *(v59 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_39();
      OUTLINED_FUNCTION_13_35(v133);
    }

    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_2_7();
    MEMORY[0x28223BE20](v60);
    OUTLINED_FUNCTION_7_1();
    v62 = OUTLINED_FUNCTION_4_63(v61);
    v63(v62);
    OUTLINED_FUNCTION_9_40();
    __swift_destroy_boxed_opaque_existential_1(v166);
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  if ([v54 supportsLeaderboards])
  {
    OUTLINED_FUNCTION_18_27();
    v64 = OUTLINED_FUNCTION_20_22();
    sub_24E162760(v64, v65, v66, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_8_49();
      OUTLINED_FUNCTION_13_35(v134);
    }

    if (v53[2] >= v53[3] >> 1)
    {
      OUTLINED_FUNCTION_10_39();
      OUTLINED_FUNCTION_13_35(v135);
    }

    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_2_7();
    MEMORY[0x28223BE20](v69);
    OUTLINED_FUNCTION_7_1();
    v71 = OUTLINED_FUNCTION_4_63(v70);
    v72(v71);
    OUTLINED_FUNCTION_9_40();
    __swift_destroy_boxed_opaque_existential_1(v166);
  }

  if (LOBYTE(v170[51]) == 1)
  {
    OUTLINED_FUNCTION_18_27();
    sub_24E1630D4(v168, v54, v53[2], v166);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v53;
    if ((v73 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_49();
      OUTLINED_FUNCTION_13_35(v136);
    }

    if (v53[2] >= v53[3] >> 1)
    {
      OUTLINED_FUNCTION_10_39();
      OUTLINED_FUNCTION_13_35(v137);
    }

    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_2_7();
    MEMORY[0x28223BE20](v74);
    OUTLINED_FUNCTION_7_1();
    v76 = OUTLINED_FUNCTION_4_63(v75);
    v77(v76);
    OUTLINED_FUNCTION_9_40();
    __swift_destroy_boxed_opaque_existential_1(v166);
  }

  if ([v54 isArcadeGame])
  {
    v163 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
    v78 = swift_allocObject();
    v145 = xmmword_24E367D20;
    *(v78 + 16) = xmmword_24E367D20;
    v79 = MEMORY[0x277D837D0];
    *(v78 + 32) = 0x79546E6F69746361;
    *(v78 + 40) = 0xEA00000000006570;
    *(v78 + 72) = v79;
    *(v78 + 48) = 0x657461676976616ELL;
    *(v78 + 56) = 0xE800000000000000;
    v80 = sub_24E347C28();
    if (qword_27F1DD808 != -1)
    {
      swift_once();
    }

    v81 = sub_24E347058();
    v82 = __swift_project_value_buffer(v81, qword_27F20AE00);
    MEMORY[0x25303DB90](0x656461637261, 0xE600000000000000, 0x74656C63696863, 0xE700000000000000, v80, v82);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
    v83 = v149;
    v84 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v145;
    (*(v83 + 16))(v85 + v84, v36, v31);
    sub_24E347448();
    sub_24E3471D8();
    (*(v83 + 8))(v36, v31);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_24E36A270;
    v87 = OUTLINED_FUNCTION_16_26(v86);
    v87[6] = 0x74656C63696863;
    v87[7] = 0xE700000000000000;
    v87[9] = v79;
    v87[10] = 0x6973736572706D69;
    v87[11] = 0xEF7865646E496E6FLL;
    v88 = v53[2];
    v87[15] = MEMORY[0x277D83B88];
    v87[12] = v88;
    sub_24E347C28();

    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_24E369E30;
    v90 = OUTLINED_FUNCTION_16_26(v89);
    v90[6] = 0x74656C63696863;
    v90[7] = 0xE700000000000000;
    v90[9] = v79;
    v90[10] = 0x6973736572706D69;
    v90[11] = 0xEF7865646E496E6FLL;
    v90[12] = v88;
    v90[15] = MEMORY[0x277D83B88];
    v90[16] = 0x657079546469;
    v90[17] = 0xE600000000000000;
    v90[18] = 0x636974617473;
    v90[19] = 0xE600000000000000;
    v90[21] = v79;
    v90[22] = 1701667182;
    v90[27] = v79;
    v90[23] = 0xE400000000000000;
    v90[24] = 0x656461637241;
    v90[25] = 0xE600000000000000;
    sub_24E347C28();
    sub_24E347468();
    sub_24E347448();
    v91 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v91);
    sub_24E347488();
    v92 = sub_24E347CB8();
    v93 = GKGameCenterUIFrameworkBundle();
    v94 = GKGetLocalizedStringFromTableInBundle();

    v95 = sub_24E347CF8();
    v150 = v96;
    v151 = v95;

    v97 = sub_24E347CB8();
    v98 = GKGameCenterUIFrameworkBundle();
    v99 = GKGetLocalizedStringFromTableInBundle();

    v149 = sub_24E347CF8();
    *&v145 = v100;

    v101 = v152;
    sub_24DF95B98(v153, v152, &qword_27F1DF018, &qword_24E372030);
    v102 = v146;
    if (__swift_getEnumTagSinglePayload(v101, 1, v146) == 1)
    {
      v103 = v163;
      sub_24DF8BFF4(v101, &qword_27F1DF018, &qword_24E372030);
      v153 = 0;
      v146 = 0;
      v152 = 0u;
      v143 = 0u;
      v144 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
    }

    else
    {
      v103 = v163;
      memcpy(v168, (v101 + *(v102 + 72)), 0x70uLL);
      sub_24DF95B98(v168, v166, &qword_27F1DF038, &unk_24E36F2B0);
      OUTLINED_FUNCTION_5_66();
      sub_24E1644CC(v101, v104);
      v152 = v168[0];
      v143 = v168[2];
      v144 = v168[1];
      v140 = v168[3];
      v141 = v168[5];
      v142 = v168[4];
      v146 = *(&v168[6] + 1);
      v153 = *&v168[6];
    }

    v105 = v162;
    v106 = v156;
    (*(v161 + 16))(v156, v165, v162);
    OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v105);
    v110 = type metadata accessor for ArcadePageAction(0);
    *(&v168[1] + 1) = v110;
    *&v168[2] = sub_24E164524(&qword_27F1E3AB0, type metadata accessor for ArcadePageAction, &unk_24E36E3C4);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v168);
    (*(v159 + 16))(boxed_opaque_existential_1 + *(v110 + 20), v164, v160);
    *boxed_opaque_existential_1 = v103;
    v112 = v103;
    v113 = v155;
    sub_24E343398();
    v115 = v157;
    v114 = v158;
    (*(v157 + 16))(v154, v113, v158);
    sub_24E164524(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v116 = v148;
    sub_24E348918();
    (*(v115 + 8))(v113, v114);
    *(v116 + 104) = 0;
    *(v116 + 88) = 0u;
    *(v116 + 72) = 0u;
    v117 = v147;
    v118 = *(v147 + 40);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v105);
    v122 = v150;
    *(v116 + 40) = v151;
    *(v116 + 48) = v122;
    v123 = v145;
    *(v116 + 56) = v149;
    *(v116 + 64) = v123;
    *(v116 + 112) = 2;
    *(v116 + 120) = 0;
    sub_24DF95BE4(v168, v116 + 72, &qword_27F1DEE90, &unk_24E369E90);
    sub_24DF95BE4(v106, v116 + v118, &qword_27F1E58A0, &unk_24E36BF80);
    v124 = v116 + *(v117 + 44);
    v125 = v144;
    *v124 = v152;
    *(v124 + 16) = v125;
    v126 = v140;
    *(v124 + 32) = v143;
    *(v124 + 48) = v126;
    v127 = v141;
    *(v124 + 64) = v142;
    *(v124 + 80) = v127;
    v128 = v146;
    *(v124 + 96) = v153;
    *(v124 + 104) = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_49();
      v53 = v138;
    }

    v129 = v53[2];
    if (v129 >= v53[3] >> 1)
    {
      sub_24E076EE4();
      v53 = v139;
    }

    sub_24DF8BFF4(v169, &qword_27F1DF030, &qword_24E36A2D0);

    (*(v161 + 8))(v165, v162);
    (*(v159 + 8))(v164, v160);
    *(&v168[1] + 1) = v147;
    *&v168[2] = sub_24E164524(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData, &unk_24E376D28);
    v130 = __swift_allocate_boxed_opaque_existential_1(v168);
    v131 = v148;
    sub_24E164470(v148, v130, type metadata accessor for JetDashboardSectionData);
    v53[2] = v129 + 1;
    sub_24DE56CE8(v168, &v53[5 * v129 + 4]);
    sub_24E1644CC(v131, type metadata accessor for JetDashboardSectionData);
  }

  else
  {

    sub_24DF8BFF4(v169, &qword_27F1DF030, &qword_24E36A2D0);
  }

  if (!v53[2])
  {

    return 0;
  }

  return v53;
}

uint64_t sub_24E161C1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v86 = a3;
  v88 = a2;
  v92 = a4;
  v5 = sub_24E3433A8();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v91 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v79 - v10;
  v11 = sub_24E347478();
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_24E3474B8();
  v89 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v97 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E347458();
  MEMORY[0x28223BE20](v14 - 8);
  v84 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24E347088();
  v16 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_24E347208();
  v87 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v99 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a1 + 24);
  LODWORD(v82) = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  memcpy(__dst, (a1 + 56), 0x70uLL);
  v21 = sub_24E347CB8();
  v22 = GKGameCenterUIFrameworkBundle();
  v23 = GKGetLocalizedStringFromTableInBundle();

  *&v79 = sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24E36A270;
  if (v20)
  {
    v25 = 0;
  }

  else
  {
    v25 = v19;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v27 = objc_opt_self();
  v28 = [v27 localizedStringFromNumber:v26 numberStyle:1];
  v29 = sub_24E347CF8();
  v31 = v30;

  v32 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v33 = sub_24DF95A7C();
  *(v24 + 64) = v33;
  *(v24 + 32) = v29;
  *(v24 + 40) = v31;
  if (v82)
  {
    v34 = 0;
  }

  else
  {
    v34 = v83;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v36 = [v27 localizedStringFromNumber:v35 numberStyle:1];
  v37 = sub_24E347CF8();
  v39 = v38;

  *(v24 + 96) = v32;
  *(v24 + 104) = v33;
  *(v24 + 72) = v37;
  *(v24 + 80) = v39;
  v40 = sub_24E347D18();
  v82 = v41;
  v83 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v79 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v32;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  v43 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v44 = sub_24E347058();
  v45 = __swift_project_value_buffer(v44, qword_27F20AE00);
  v46 = v80;
  MEMORY[0x25303DB90](0x6D65766569686361, 0xEC00000073746E65, 0x74656C63696863, 0xE700000000000000, v43, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v47 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v79;
  v49 = v81;
  (*(v16 + 16))(v48 + v47, v46, v81);
  sub_24E347448();
  sub_24E3471D8();
  (*(v16 + 8))(v46, v49);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_24E369E30;
  strcpy((v50 + 32), "impressionType");
  *(v50 + 47) = -18;
  *(v50 + 48) = 0x74656C63696863;
  *(v50 + 56) = 0xE700000000000000;
  *(v50 + 72) = v32;
  *(v50 + 80) = 0x6973736572706D69;
  v51 = MEMORY[0x277D83B88];
  v52 = v86;
  *(v50 + 88) = 0xEF7865646E496E6FLL;
  *(v50 + 96) = v52;
  *(v50 + 120) = v51;
  *(v50 + 128) = 0x657079546469;
  *(v50 + 136) = 0xE600000000000000;
  *(v50 + 144) = 0x636974617473;
  *(v50 + 152) = 0xE600000000000000;
  *(v50 + 168) = v32;
  *(v50 + 176) = 1701667182;
  *(v50 + 216) = v32;
  *(v50 + 184) = 0xE400000000000000;
  strcpy((v50 + 192), "Achievements");
  *(v50 + 205) = 0;
  *(v50 + 206) = -5120;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v53 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v53);
  v54 = v97;
  sub_24E347488();
  v55 = sub_24E347CB8();
  v56 = GKGameCenterUIFrameworkBundle();
  v57 = GKGetLocalizedStringFromTableInBundle();

  v58 = sub_24E347CF8();
  v85 = v59;
  v86 = v58;

  v60 = v89;
  v61 = v98;
  v62 = v93;
  (*(v89 + 16))(v98, v54, v93);
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
  v63 = type metadata accessor for GameAchievementsAction(0);
  v101[3] = v63;
  v101[4] = sub_24E164524(&qword_27F1E2698, type metadata accessor for GameAchievementsAction, &unk_24E38B588);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
  v65 = v87;
  (*(v87 + 16))(boxed_opaque_existential_1 + *(v63 + 24), v99, v96);
  v66 = v88;
  *boxed_opaque_existential_1 = v88;
  boxed_opaque_existential_1[1] = v53;
  v67 = (boxed_opaque_existential_1 + *(v63 + 28));
  *v67 = 0x72616F6268736164;
  v67[1] = 0xE900000000000064;
  sub_24DF95B98(__dst, &v100, &qword_27F1DF038, &unk_24E36F2B0);
  v68 = v66;
  v69 = v90;
  sub_24E343398();
  v71 = v94;
  v70 = v95;
  (*(v94 + 16))(v91, v69, v95);
  v72 = type metadata accessor for JetDashboardSectionData(0);
  v73 = v92;
  v92[3] = v72;
  v73[4] = sub_24E164524(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData, &unk_24E376D28);
  v74 = __swift_allocate_boxed_opaque_existential_1(v73);
  sub_24E164524(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v71 + 8))(v69, v70);
  v74[13] = 0;
  *(v74 + 11) = 0u;
  *(v74 + 9) = 0u;
  v75 = *(v72 + 40);
  __swift_storeEnumTagSinglePayload(v74 + v75, 1, 1, v62);
  v76 = v85;
  v74[5] = v86;
  v74[6] = v76;
  v77 = v82;
  v74[7] = v83;
  v74[8] = v77;
  *(v74 + 112) = 0;
  v74[15] = 0;
  sub_24DF95BE4(v101, (v74 + 9), &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF95BE4(v98, v74 + v75, &qword_27F1E58A0, &unk_24E36BF80);
  memcpy(v74 + *(v72 + 44), __dst, 0x70uLL);
  (*(v60 + 8))(v97, v62);
  return (*(v65 + 8))(v99, v96);
}

uint64_t sub_24E162760@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v58 = a3;
  v62 = a2;
  v66 = a4;
  v5 = sub_24E3433A8();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v56 - v10;
  v11 = sub_24E347478();
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24E3474B8();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v71 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E347458();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_24E347088();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24E347208();
  v61 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1 + 21, 0x70uLL);
  v20 = a1[50];
  v59 = a1[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v56 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v22 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v22;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  sub_24DF95B98(__dst, v74, &qword_27F1DF038, &unk_24E36F2B0);
  v60 = v20;

  v23 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v24 = sub_24E347058();
  v25 = __swift_project_value_buffer(v24, qword_27F20AE00);
  MEMORY[0x25303DB90](0x6F6272656461656CLL, 0xEC00000073647261, 0x74656C63696863, 0xE700000000000000, v23, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v56;
  (*(v16 + 16))(v27 + v26, v18, v15);
  sub_24E347448();
  sub_24E3471D8();
  (*(v16 + 8))(v18, v15);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_24E369E30;
  strcpy((v28 + 32), "impressionType");
  *(v28 + 47) = -18;
  *(v28 + 48) = 0x74656C63696863;
  *(v28 + 56) = 0xE700000000000000;
  *(v28 + 72) = v22;
  *(v28 + 80) = 0x6973736572706D69;
  v29 = MEMORY[0x277D83B88];
  v30 = v58;
  *(v28 + 88) = 0xEF7865646E496E6FLL;
  *(v28 + 96) = v30;
  *(v28 + 120) = v29;
  *(v28 + 128) = 0x657079546469;
  *(v28 + 136) = 0xE600000000000000;
  *(v28 + 144) = 0x636974617473;
  *(v28 + 152) = 0xE600000000000000;
  *(v28 + 168) = v22;
  *(v28 + 176) = 1701667182;
  *(v28 + 216) = v22;
  *(v28 + 184) = 0xE400000000000000;
  strcpy((v28 + 192), "Leaderboards");
  *(v28 + 205) = 0;
  *(v28 + 206) = -5120;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v31 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v31);
  v32 = v71;
  sub_24E347488();
  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = GKGetLocalizedStringFromTableInBundle();

  v36 = sub_24E347CF8();
  v57 = v37;
  v58 = v36;

  v38 = v63;
  v39 = v72;
  v40 = v67;
  (*(v63 + 16))(v72, v32, v67);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
  v41 = type metadata accessor for DashboardLeaderboardsChicletAction(0);
  v74[3] = v41;
  v74[4] = sub_24E164524(&qword_27F1E5D40, type metadata accessor for DashboardLeaderboardsChicletAction, &unk_24E36A8A4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  v43 = v61;
  (*(v61 + 16))(boxed_opaque_existential_1 + *(v41 + 24), v73, v70);
  v44 = v62;
  *boxed_opaque_existential_1 = v62;
  boxed_opaque_existential_1[1] = 0;
  v45 = v44;
  v46 = v64;
  sub_24E343398();
  v48 = v68;
  v47 = v69;
  (*(v68 + 16))(v65, v46, v69);
  v49 = type metadata accessor for JetDashboardSectionData(0);
  v50 = v66;
  v66[3] = v49;
  v50[4] = sub_24E164524(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData, &unk_24E376D28);
  v51 = __swift_allocate_boxed_opaque_existential_1(v50);
  sub_24E164524(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v48 + 8))(v46, v47);
  v51[13] = 0;
  *(v51 + 11) = 0u;
  *(v51 + 9) = 0u;
  v52 = *(v49 + 40);
  __swift_storeEnumTagSinglePayload(v51 + v52, 1, 1, v40);
  v53 = v57;
  v51[5] = v58;
  v51[6] = v53;
  v54 = v60;
  v51[7] = v59;
  v51[8] = v54;
  *(v51 + 112) = 1;
  v51[15] = 0;
  sub_24DF95BE4(v74, (v51 + 9), &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF95BE4(v72, v51 + v52, &qword_27F1E58A0, &unk_24E36BF80);
  memcpy(v51 + *(v49 + 44), __dst, 0x70uLL);
  (*(v38 + 8))(v71, v40);
  return (*(v43 + 8))(v73, v70);
}

uint64_t sub_24E1630D4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v64 = a3;
  v66 = a2;
  v70 = a4;
  v5 = sub_24E3433A8();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v62 - v10;
  v11 = sub_24E347478();
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24E3474B8();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v77 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E347458();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_24E347088();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24E347208();
  v65 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, (a1 + 280), 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v74 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v21 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v21;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  sub_24DF95B98(__dst, v79, &qword_27F1DF038, &unk_24E36F2B0);
  v22 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v23 = sub_24E347058();
  v24 = __swift_project_value_buffer(v23, qword_27F20AE00);
  MEMORY[0x25303DB90](0x676E656C6C616863, 0xEA00000000007365, 0x74656C63696863, 0xE700000000000000, v22, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v74;
  (*(v16 + 16))(v26 + v25, v18, v15);
  sub_24E347448();
  v27 = v75;
  sub_24E3471D8();
  (*(v16 + 8))(v18, v15);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_24E369E30;
  strcpy((v28 + 32), "impressionType");
  *(v28 + 47) = -18;
  *(v28 + 48) = 0x74656C63696863;
  *(v28 + 56) = 0xE700000000000000;
  *(v28 + 72) = v21;
  *(v28 + 80) = 0x6973736572706D69;
  v29 = MEMORY[0x277D83B88];
  v30 = v64;
  *(v28 + 88) = 0xEF7865646E496E6FLL;
  *(v28 + 96) = v30;
  *(v28 + 120) = v29;
  *(v28 + 128) = 0x657079546469;
  *(v28 + 136) = 0xE600000000000000;
  *(v28 + 144) = 0x636974617473;
  *(v28 + 152) = 0xE600000000000000;
  *(v28 + 168) = v21;
  *(v28 + 176) = 1701667182;
  *(v28 + 216) = v21;
  *(v28 + 184) = 0xE400000000000000;
  *(v28 + 192) = 0x676E656C6C616843;
  *(v28 + 200) = 0xEA00000000007365;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v31 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v31);
  v32 = v77;
  sub_24E347488();
  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = GKGetLocalizedStringFromTableInBundle();

  v36 = sub_24E347CF8();
  v63 = v37;
  v64 = v36;

  v38 = sub_24E347CB8();
  v39 = GKGameCenterUIFrameworkBundle();
  v40 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v41 = swift_allocObject();
  *(v41 + 16) = v74;
  v42 = MEMORY[0x277D83C10];
  *(v41 + 56) = v29;
  *(v41 + 64) = v42;
  *(v41 + 32) = 0;
  *&v74 = sub_24E347D18();
  v62 = v43;

  v44 = v69;
  v45 = v78;
  v46 = v71;
  (*(v69 + 16))(v78, v32, v71);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
  v47 = type metadata accessor for ChallengeListAction(0);
  v79[3] = v47;
  v79[4] = sub_24E164524(&qword_27F1E59E0, type metadata accessor for ChallengeListAction, &unk_24E388900);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
  v49 = v65;
  (*(v65 + 16))(boxed_opaque_existential_1 + *(v47 + 20), v27, v76);
  v50 = v66;
  *boxed_opaque_existential_1 = v66;
  v51 = v50;
  v52 = v67;
  sub_24E343398();
  v54 = v72;
  v53 = v73;
  (*(v72 + 16))(v68, v52, v73);
  v55 = type metadata accessor for JetDashboardSectionData(0);
  v56 = v70;
  v70[3] = v55;
  v56[4] = sub_24E164524(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData, &unk_24E376D28);
  v57 = __swift_allocate_boxed_opaque_existential_1(v56);
  sub_24E164524(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v54 + 8))(v52, v53);
  v57[13] = 0;
  *(v57 + 11) = 0u;
  *(v57 + 9) = 0u;
  v58 = *(v55 + 40);
  __swift_storeEnumTagSinglePayload(v57 + v58, 1, 1, v46);
  v59 = v63;
  v57[5] = v64;
  v57[6] = v59;
  v60 = v62;
  v57[7] = v74;
  v57[8] = v60;
  *(v57 + 112) = 3;
  v57[15] = 0;
  sub_24DF95BE4(v79, (v57 + 9), &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF95BE4(v78, v57 + v58, &qword_27F1E58A0, &unk_24E36BF80);
  memcpy(v57 + *(v55 + 44), __dst, 0x70uLL);
  (*(v44 + 8))(v77, v46);
  return (*(v49 + 8))(v75, v76);
}

uint64_t sub_24E163AF4()
{
  v1 = sub_24E347458();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v3 = sub_24E347478();
  v4 = OUTLINED_FUNCTION_4_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v7 = OUTLINED_FUNCTION_3_41(inited, xmmword_24E369E30);
  v8 = OUTLINED_FUNCTION_15_25(v7);
  v11 = OUTLINED_FUNCTION_14_26(v8, v9, v10);
  v11[11] = v12;
  v11[12] = v5;
  OUTLINED_FUNCTION_3_75(v11, v13);
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v14 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v14);
  sub_24E347488();
  sub_24E3474B8();
  OUTLINED_FUNCTION_22_1();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_24E163C90@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v101 = v5 - v4;
  OUTLINED_FUNCTION_18_1();
  v6 = sub_24E347478();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v100 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v102 = &v93 - v12;
  OUTLINED_FUNCTION_18_1();
  v98 = sub_24E3433A8();
  OUTLINED_FUNCTION_2_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050, &unk_24E36B8D0);
  v20 = OUTLINED_FUNCTION_4_5(v19);
  MEMORY[0x28223BE20](v20);
  v104 = &v93 - v21;
  v22 = OUTLINED_FUNCTION_18_1();
  v23 = type metadata accessor for TitleHeaderView.Style(v22);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v27 = v26 - v25;
  v28 = type metadata accessor for HeaderData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_1();
  v32 = v31 - v30;
  v99 = *(v1 + 24);
  v33 = [v99 name];
  v34 = sub_24E347CF8();
  v95 = v35;
  v96 = v34;

  sub_24E098FB8();
  sub_24E099550();
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for PlayerCardTheme(0);
  v41 = *(__swift_project_value_buffer(v40, qword_27F20BF00) + *(v40 + 40));
  v42 = v23[8];
  *(v27 + v23[6]) = 0;
  *(v27 + v23[7]) = 1;
  *(v27 + v42) = 0;
  *(v27 + v23[9]) = 1;
  *(v27 + v23[11]) = 0;
  *(v27 + v23[13]) = v41;
  *(v27 + v23[10]) = 0;
  *(v27 + v23[12]) = 0;
  memset(v111, 0, sizeof(v111));
  v112 = -1;
  memset(v109, 0, sizeof(v109));
  v110 = -1;
  sub_24E3444F8();
  memset(v107, 0, sizeof(v107));
  v108 = 0;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = v41;
  sub_24E343398();
  v48 = sub_24E343378();
  v93 = v49;
  v94 = v48;
  (*(v14 + 8))(v18, v98);
  v50 = v32 + v28[7];
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *(v50 + 64) = -1;
  v51 = v32 + v28[9];
  *(v51 + 32) = 0u;
  *(v51 + 48) = 0u;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 64) = -1;
  v52 = (v32 + v28[10]);
  v53 = v32 + v28[11];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v54 = v28[12];
  v55 = v32 + v28[13];
  *(v55 + 32) = 0;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  v98 = v28[14];
  v97 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v105 = v94;
  v106 = v93;
  sub_24E348918();
  sub_24E164470(v27, v32 + v28[5], type metadata accessor for TitleHeaderView.Style);
  v60 = (v32 + v28[6]);
  *v60 = 0;
  v60[1] = 0xE000000000000000;
  sub_24DF95B4C(v111, v50, &qword_27F1DEE88, &unk_24E36BF90);
  v61 = (v32 + v28[8]);
  v62 = v95;
  *v61 = v96;
  v61[1] = v62;
  sub_24DF95B4C(v109, v51, &qword_27F1DEE88, &unk_24E36BF90);
  v96 = v54;
  *(v32 + v54) = 0;
  *v52 = 0;
  v52[1] = 0;
  sub_24DF95B4C(v107, v53, &qword_27F1DEE90, &unk_24E369E90);
  v63 = v104;
  sub_24DF95B98(v104, v32 + v28[17], &qword_27F1DF050, &unk_24E36B8D0);
  v64 = v32 + v28[16];
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v32 + v28[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v66 = OUTLINED_FUNCTION_3_41(inited, xmmword_24E369E30);
  v67 = OUTLINED_FUNCTION_15_25(v66);
  v69 = OUTLINED_FUNCTION_14_26(v67, MEMORY[0x277D837D0], v68);
  v69[11] = v70;
  v69[12] = 0;
  OUTLINED_FUNCTION_3_75(v69, v71);
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v72 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v72);
  v73 = v102;
  sub_24E347488();
  sub_24DF8BFF4(v63, &qword_27F1DF050, &unk_24E36B8D0);
  sub_24DF8BFF4(v107, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF8BFF4(v109, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DF8BFF4(v111, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24E1644CC(v27, type metadata accessor for TitleHeaderView.Style);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v97);
  sub_24DF95BE4(v73, v32 + v98, &qword_27F1E58A0, &unk_24E36BF80);
  v77 = sub_24E22A3C4();
  if (v77)
  {
    *(v32 + v96) = v77;
  }

  v78 = v103;
  sub_24E164470(v32, v103, type metadata accessor for HeaderData);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v28);
  v82 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v87 = v78 + v82[11];
  *v87 = 0u;
  *(v87 + 16) = 0u;
  *(v87 + 32) = 1;
  v88 = v78 + v82[12];
  *v88 = 0;
  *(v88 + 8) = 1;
  v89 = (v78 + v82[13]);
  v90 = (v78 + v82[14]);
  v91 = (v78 + v82[15]);
  *(v78 + v82[6]) = 1;
  *v89 = 0;
  v89[1] = 0;
  *v90 = 0;
  v90[1] = 0;
  *v91 = 0;
  v91[1] = 0;
  *(v78 + v82[7]) = 1;
  *(v78 + v82[8]) = 1;
  *(v78 + v82[9]) = 1;
  *(v78 + v82[10]) = 0;
  return sub_24E1644CC(v32, type metadata accessor for HeaderData);
}

uint64_t sub_24E164414()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_24E164470(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E1644CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E164524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_3_75(void *result, uint64_t a2)
{
  result[15] = v2;
  result[16] = 0x657079546469;
  result[17] = 0xE600000000000000;
  result[18] = 0x636974617473;
  result[19] = 0xE600000000000000;
  result[21] = a2;
  result[22] = 1701667182;
  result[27] = a2;
  result[23] = 0xE400000000000000;
  result[24] = 0;
  result[25] = 0xE000000000000000;
  return result;
}

void OUTLINED_FUNCTION_8_49()
{

  sub_24E076EE4();
}

uint64_t OUTLINED_FUNCTION_9_40()
{

  return sub_24E078F8C(v1, v4, (v0 + 384), v2, v3);
}

void OUTLINED_FUNCTION_10_39()
{

  sub_24E076EE4();
}

uint64_t OUTLINED_FUNCTION_14_26@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 72) = a2;
  *(result + 80) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_25(uint64_t result)
{
  *(result + 48) = 0x666C656873;
  *(result + 56) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_26(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = 0xEE00657079546E6FLL;
  return result;
}

void *OUTLINED_FUNCTION_18_27()
{

  return memcpy((v0 + 392), (v0 + 1224), 0x199uLL);
}

uint64_t OUTLINED_FUNCTION_19_22()
{
  v2 = *(v0 + 296);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 272, v2);
}

uint64_t sub_24E1646F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 64))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_24E164748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

double *sub_24E1647C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = v6;
  sub_24E09B300(v1, v2, v3);
  if (qword_27F1DD8F0 != -1)
  {
    swift_once();
  }

  v10 = byte_27F20AFF8;
  v7 = objc_allocWithZone(type metadata accessor for AchievementBadge());
  v8 = sub_24E2C06F0(&v11, &v10, 0.0, 0.0, v4, v5);
  *&v11 = v1;
  *(&v11 + 1) = v2;
  v12 = v3;
  AchievementBadge.status.setter(&v11);
  return v8;
}

uint64_t sub_24E1648A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1649EC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E164908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1649EC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E16496C(uint64_t a1)
{
  sub_24E1649EC();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E164998()
{
  result = qword_27F1E5D48;
  if (!qword_27F1E5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D48);
  }

  return result;
}

unint64_t sub_24E1649EC()
{
  result = qword_27F1E5D50;
  if (!qword_27F1E5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D50);
  }

  return result;
}

uint64_t sub_24E164A40(uint64_t a1)
{
  v2 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  OUTLINED_FUNCTION_4_5(v11);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  sub_24DFAE87C(a1, v14, &qword_27F1DF018, &qword_24E372030);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_24DF8BFF4(v14, &qword_27F1DF018, &qword_24E372030);
    return 0;
  }

  sub_24E0EF370(v14, v19);
  if (*(v19 + v15[9]) == 1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_118();
    sub_24E165DB8(v19, v72);
    return 0;
  }

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v20 = *(v19 + v15[10]);
  if (v20)
  {
    *&v83 = *(v19 + v15[10]);
    v21 = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30, &unk_24E36E840);
    sub_24DF88A8C(0, &qword_27F1DFD38, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v23 = v82;
      if ([v82 gkIsNotConnectedToInternetError])
      {
        v81 = v4;
        v24 = sub_24E347CB8();
        v25 = GKGameCenterUIFrameworkBundle();
        v26 = OUTLINED_FUNCTION_5_67(v25);

        v27 = sub_24E347CF8();
        v79 = v28;
        v80 = v27;

        [objc_opt_self() wapiCapability];
        v29 = sub_24E347CB8();
        v30 = GKGameCenterUIFrameworkBundle();
        v31 = OUTLINED_FUNCTION_5_67(v30);

        v32 = sub_24E347CF8();
        v77 = v33;
        v78 = v32;

        v34 = sub_24E347CB8();
        v35 = GKGameCenterUIFrameworkBundle();
        v36 = OUTLINED_FUNCTION_5_67(v35);

        v37 = sub_24E347CF8();
        v75 = v38;
        v76 = v37;

        if (qword_27F1DD628 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for ExternalUrlAction(0);
        v40 = __swift_project_value_buffer(v39, qword_27F20A950);
        *(&v84 + 1) = v39;
        v85 = sub_24DFCED48(&qword_27F1DF0A8, type metadata accessor for ExternalUrlAction, &unk_24E36D6C0);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
        sub_24DFCED90(v40, boxed_opaque_existential_1, type metadata accessor for ExternalUrlAction);

        sub_24DF8BFF4(&v86, &qword_27F1DEE90, &unk_24E369E90);
        v86 = v83;
        v87 = v84;
        v88 = v85;
        v42 = "_INTERNET_CONNECTION_MESSAGE";
        v43 = 0xD000000000000014;
        goto LABEL_20;
      }
    }
  }

  v44 = *(v19 + v15[8]);
  if (!v44 || (v45 = [v44 sections]) == 0)
  {
LABEL_24:
    sub_24DF8BFF4(&v86, &qword_27F1DEE90, &unk_24E369E90);
    goto LABEL_25;
  }

  v46 = v45;
  sub_24DF88A8C(0, &qword_280BDFA80, 0x277D0C1B0);
  v47 = sub_24E347F08();

  if (!sub_24DFD8654())
  {

    goto LABEL_24;
  }

  sub_24DFFA844();
  if ((v47 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x25303F560](0, v47);
  }

  else
  {
    v48 = *(v47 + 32);
  }

  v49 = v48;

  v50 = sub_24E165CD8(v49);
  if (!v50)
  {
    goto LABEL_24;
  }

  v51 = *(v50 + 16);

  if (v51)
  {
    goto LABEL_24;
  }

  v81 = v4;
  v43 = 0xD000000000000013;
  v52 = sub_24E347CB8();
  v53 = GKGameCenterUIFrameworkBundle();
  v54 = GKGetLocalizedStringFromTableInBundle();

  v55 = sub_24E347CF8();
  v77 = v56;
  v78 = v55;

  v75 = 0;
  v76 = 0;
  v42 = "ErrorProfileSection";
  v79 = 0xE000000000000000;
  v80 = 0;
LABEL_20:
  v57 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:30.0];
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  v58 = v57;
  v59 = sub_24E1A5748(v43, v42 | 0x8000000000000000, v57);
  v74 = v58;

  if (!v59)
  {
    v59 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_24E367D20;
  sub_24DFAE87C(&v86, &v83, &qword_27F1DEE90, &unk_24E369E90);
  *(v60 + 56) = type metadata accessor for EmptyStateData(0);
  *(v60 + 64) = sub_24DFCED48(&qword_27F1DFD30, type metadata accessor for EmptyStateData, &protocol conformance descriptor for EmptyStateData);
  v61 = __swift_allocate_boxed_opaque_existential_1((v60 + 32));
  *(v61 + 19) = 0u;
  v61[21] = 0;
  *(v61 + 17) = 0u;
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  v61[5] = v59;
  v61[6] = 0;
  *(v61 + 56) = 1;
  v66 = v79;
  v61[8] = v80;
  v61[9] = v66;
  v67 = v77;
  v61[10] = v78;
  v61[11] = v67;
  v68 = v75;
  v61[12] = v76;
  v61[13] = v68;
  v61[14] = 0;
  v61[15] = 0;
  *(v61 + 128) = 1;
  v69 = v59;
  sub_24DFAE710(&v83, (v61 + 17), &qword_27F1DEE90, &unk_24E369E90);
  sub_24E343398();
  v70 = v81;
  (*(v81 + 16))(v7, v10, v2);
  sub_24DFCED48(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v70 + 8))(v10, v2);
  sub_24DF8BFF4(&v83, &qword_27F1DEE90, &unk_24E369E90);

  sub_24DF8BFF4(&v86, &qword_27F1DEE90, &unk_24E369E90);
  OUTLINED_FUNCTION_0_118();
  sub_24E165DB8(v19, v71);
  return v60;
}

void sub_24E1652C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E347458();
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v112 = v7 - v6;
  OUTLINED_FUNCTION_18_1();
  v8 = sub_24E347478();
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v111 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v113 = &v103 - v14;
  OUTLINED_FUNCTION_18_1();
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v109 = v16;
  v110 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050, &unk_24E36B8D0);
  OUTLINED_FUNCTION_4_5(v20);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  v116 = &v103 - v22;
  v23 = OUTLINED_FUNCTION_18_1();
  v24 = type metadata accessor for HeaderData(v23);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_1();
  v114 = v27 - v26;
  v28 = OUTLINED_FUNCTION_18_1();
  v29 = type metadata accessor for TitleHeaderView.Style(v28);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v30);
  v115 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v103 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  OUTLINED_FUNCTION_4_5(v35);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v103 - v37;
  sub_24DFAE87C(a1, &v103 - v37, &qword_27F1DF018, &qword_24E372030);
  v39 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    sub_24DF8BFF4(v38, &qword_27F1DF018, &qword_24E372030);
LABEL_13:
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v24);
    v95 = type metadata accessor for Shelf.Presentation(0);
    type metadata accessor for FooterData(0);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
    OUTLINED_FUNCTION_5_17();
    *(v100 + 32) = 1;
    v101 = a2 + v95[12];
    *v101 = 0;
    *(v101 + 8) = 1;
    OUTLINED_FUNCTION_1_26();
    *(a2 + v102) = 1;
    *(a2 + v95[8]) = 1;
    *(a2 + v95[9]) = 1;
    *(a2 + v95[10]) = 0;
    return;
  }

  v40 = *&v38[*(v39 + 32)];
  v41 = v40;
  OUTLINED_FUNCTION_0_118();
  sub_24E165DB8(v38, v42);
  if (!v40)
  {
    goto LABEL_13;
  }

  v43 = sub_24E165D40(v41);
  if (!v43)
  {
    goto LABEL_13;
  }

  v44 = v43;
  if (!sub_24DFD8654())
  {

    goto LABEL_13;
  }

  sub_24DFFA844();
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x25303F560](0, v44);
  }

  else
  {
    v45 = *(v44 + 32);
  }

  v46 = v45;

  v47 = sub_24E165C68(v46);
  if (!v48)
  {
    goto LABEL_13;
  }

  v107 = v48;
  v108 = v47;
  sub_24E099B2C(v34);
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for PlayerCardTheme(0);
  v54 = *(__swift_project_value_buffer(v53, qword_27F20BF00) + *(v53 + 40));
  v55 = v29[8];
  v34[v29[6]] = 0;
  v34[v29[7]] = 0;
  v34[v55] = 0;
  v34[v29[9]] = 0;
  *&v34[v29[11]] = 0;
  *&v34[v29[13]] = v54;
  v34[v29[10]] = 1;
  v34[v29[12]] = 0;
  v105 = type metadata accessor for TitleHeaderView.Style;
  sub_24DFCED90(v34, v115, type metadata accessor for TitleHeaderView.Style);
  memset(v123, 0, sizeof(v123));
  v124 = -1;
  memset(v121, 0, sizeof(v121));
  v122 = -1;
  sub_24E3444F8();
  memset(v119, 0, sizeof(v119));
  v120 = 0;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = v54;
  sub_24E343398();
  v103 = sub_24E343378();
  v106 = v34;
  v62 = v61;
  (*(v109 + 8))(v19, v110);
  v63 = v114;
  v64 = v114 + v24[7];
  *(v64 + 32) = 0u;
  *(v64 + 48) = 0u;
  *v64 = 0u;
  *(v64 + 16) = 0u;
  *(v64 + 64) = -1;
  v65 = v63 + v24[9];
  *(v65 + 32) = 0u;
  *(v65 + 48) = 0u;
  *v65 = 0u;
  *(v65 + 16) = 0u;
  *(v65 + 64) = -1;
  v66 = (v63 + v24[10]);
  v67 = v63 + v24[11];
  *(v67 + 32) = 0;
  *v67 = 0u;
  *(v67 + 16) = 0u;
  v68 = v24[13];
  v104 = v24[12];
  v69 = v63 + v68;
  *(v69 + 32) = 0;
  *v69 = 0u;
  *(v69 + 16) = 0u;
  v110 = v24[14];
  v109 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  v117 = v103;
  v118 = v62;
  sub_24E348918();
  sub_24DFCED90(v115, v63 + v24[5], v105);
  v74 = (v63 + v24[6]);
  v75 = v107;
  *v74 = v108;
  v74[1] = v75;

  sub_24DFAE710(v123, v64, &qword_27F1DEE88, &unk_24E36BF90);
  v76 = (v63 + v24[8]);
  *v76 = 0;
  v76[1] = 0;
  sub_24DFAE710(v121, v65, &qword_27F1DEE88, &unk_24E36BF90);
  *(v63 + v104) = 0;
  *v66 = 0;
  v66[1] = 0;
  sub_24DFAE710(v119, v67, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DFAE87C(v116, v63 + v24[17], &qword_27F1DF050, &unk_24E36B8D0);
  v77 = v63 + v24[16];
  *v77 = 0;
  *(v77 + 8) = 0;
  *(v63 + v24[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  v79 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = 0x6973736572706D69;
  v80 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v80;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v79;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v79;
  v81 = v108;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v81;
  *(inited + 200) = v75;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v82 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v82);
  v83 = v113;
  sub_24E347488();
  sub_24DF8BFF4(v116, &qword_27F1DF050, &unk_24E36B8D0);
  sub_24DF8BFF4(v119, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF8BFF4(v121, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DF8BFF4(v123, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24E165DB8(v115, type metadata accessor for TitleHeaderView.Style);
  sub_24E165DB8(v106, type metadata accessor for TitleHeaderView.Style);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v109);
  sub_24DF8BEB4(v83, v63 + v110);
  sub_24DFCED90(v63, a2, type metadata accessor for HeaderData);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v24);
  v84 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  OUTLINED_FUNCTION_5_17();
  *(v89 + 32) = 1;
  v90 = a2 + v84[12];
  *v90 = 0;
  *(v90 + 8) = 1;
  OUTLINED_FUNCTION_1_26();
  *(a2 + v91) = 1;
  *(a2 + v84[8]) = 1;
  *(a2 + v84[9]) = 1;
  *(a2 + v84[10]) = 0;
  sub_24E165DB8(v63, type metadata accessor for HeaderData);
}

uint64_t sub_24E165C68(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

uint64_t sub_24E165CD8(void *a1)
{
  v2 = [a1 items];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347F08();

  return v3;
}

uint64_t sub_24E165D40(void *a1)
{
  v2 = [a1 sections];

  if (!v2)
  {
    return 0;
  }

  sub_24DF88A8C(0, &qword_280BDFA80, 0x277D0C1B0);
  v3 = sub_24E347F08();

  return v3;
}

uint64_t sub_24E165DB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_67(uint64_t a1)
{

  return GKGetLocalizedStringFromTableInBundle();
}

unint64_t sub_24E165E4C()
{
  result = qword_27F1E5D58;
  if (!qword_27F1E5D58)
  {
    type metadata accessor for SmallLockupData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D58);
  }

  return result;
}

uint64_t type metadata accessor for SmallLockupData(uint64_t a1)
{
  result = qword_27F1E5D60;
  if (!qword_27F1E5D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E165F84(uint64_t a1)
{
  sub_24E1660C8(319, &qword_27F1E5D70, type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    sub_24E0ADC44();
    if (v2 <= 0x3F)
    {
      sub_24E1660C8(319, &qword_27F1E5D78, sub_24DFEA770);
      if (v3 <= 0x3F)
      {
        sub_24DF9E07C(319);
        if (v4 <= 0x3F)
        {
          sub_24E1660C8(319, &qword_280BE0650, MEMORY[0x277D21F70]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E1660C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_24E16611C()
{
  result = [objc_opt_self() sharedTheme];
  if (result)
  {
    v1 = result;
    v2 = [result eventIconImage];

    v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v4 = v3;
    [v4 setContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *AchievementBannerImageContainerView.init(achievementImage:)(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_gameCenterImageView;
  *&v1[v5] = sub_24E16611C();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AchievementBannerImageContainerView();
  v6 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = *&v6[OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView];
  v8 = v6;
  [v7 setImage_];
  sub_24E166530();

  return v8;
}

void sub_24E166358()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setContentMode_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_gameCenterImageView;
  *(v0 + v3) = sub_24E16611C();
  sub_24E348AE8();
  __break(1u);
}

id sub_24E166440()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AchievementBannerImageContainerView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView];
  v2 = [v1 layer];
  [v1 bounds];
  [v2 setCornerRadius_];

  return [v1 setClipsToBounds_];
}

void sub_24E166530()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_gameCenterImageView];
  [v0 addSubview_];
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E37D8E0;
  v5 = [v1 topAnchor];
  v6 = [v2 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = OUTLINED_FUNCTION_0_61([v2 leadingAnchor]);

  *(v4 + 40) = v9;
  v10 = [v1 trailingAnchor];
  v11 = OUTLINED_FUNCTION_0_61([v2 trailingAnchor]);

  *(v4 + 48) = v11;
  v12 = [v1 bottomAnchor];
  v13 = OUTLINED_FUNCTION_0_61([v2 bottomAnchor]);

  *(v4 + 56) = v13;
  v14 = [v2 heightAnchor];
  v15 = OUTLINED_FUNCTION_0_61([v2 widthAnchor]);

  *(v4 + 64) = v15;
  v16 = [v1 trailingAnchor];
  v17 = OUTLINED_FUNCTION_0_61([v3 trailingAnchor]);

  *(v4 + 72) = v17;
  v18 = [v1 bottomAnchor];
  v19 = [v3 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v4 + 80) = v20;
  v21 = [v3 widthAnchor];
  v22 = [v2 widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 multiplier:0.4];

  *(v4 + 88) = v23;
  v24 = [v3 heightAnchor];
  v25 = [v2 heightAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 multiplier:0.4];

  *(v4 + 96) = v26;
  sub_24DFE83EC();
  v28 = sub_24E347EE8();

  [v27 activateConstraints_];
}

id AchievementBannerImageContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AchievementBannerImageContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementBannerImageContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AppStoreContentMetadataPresenter.highlightsPublisher()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5D90, &qword_24E37D938);
  swift_allocObject();

  sub_24E344E18();
  sub_24E166BF4();
  v0 = sub_24E344E88();

  return v0;
}

uint64_t sub_24E166B38(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24E166C58;
  *(v5 + 24) = v4;

  sub_24E0E9444(0, sub_24E166C64, v5);
}

unint64_t sub_24E166BF4()
{
  result = qword_27F1E5D98;
  if (!qword_27F1E5D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5D90, &qword_24E37D938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s5Error_pSgIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_24E166D0C(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_119();
  WitnessTable = swift_getWitnessTable();
  sub_24E2D41CC(ObjectType, WitnessTable, v8);
  if (sub_24E2541B4(*(v8[9] + 16), v8, a1, a2) < 1)
  {
    a2 = *MEMORY[0x277D22A78];
  }

  sub_24DF97F28(v8);
  return a2;
}

id sub_24E166DF4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[qword_27F1E5DA0] = 0;
  v10 = qword_27F1E5DA8;
  swift_getAssociatedTypeWitness();
  *&v4[v10] = sub_24E347F58();
  v11 = qword_27F1E5DB0;
  *&v4[v11] = sub_24E347F58();
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setLayoutMargins_];
  return v12;
}

void sub_24E166F48()
{
  *(v0 + qword_27F1E5DA0) = 0;
  v1 = qword_27F1E5DA8;
  swift_getAssociatedTypeWitness();
  *(v0 + v1) = sub_24E347F58();
  v2 = qword_27F1E5DB0;
  *(v0 + v2) = sub_24E347F58();
  sub_24E348AE8();
  __break(1u);
}

double sub_24E167058(uint64_t a1, uint64_t a2)
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  result = 8.0;
  if (ShouldUsePadUI)
  {
    return 2.0;
  }

  return result;
}

uint64_t sub_24E1670A8()
{
  ObjectType = swift_getObjectType();
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [v0 layoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v3 - v8 - v10;
  v13 = v5 - v6 - v12;
  OUTLINED_FUNCTION_0_119();
  WitnessTable = swift_getWitnessTable();
  return sub_24E2D4058(v0, ObjectType, WitnessTable, v9, v7, v11, v13);
}

void sub_24E167168(void *a1)
{
  v1 = a1;
  sub_24E1670A8();
}

double sub_24E1671B8(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = sub_24E166D0C(a5, a2, a3);
  swift_unknownObjectRelease();

  return v10;
}

void sub_24E167240(void *a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v3 = ObjectType;
    v4 = [a1 view];
    if (v4)
    {
      v8 = v4;
      v5 = swift_dynamicCastUnknownClass();
      if (v5)
      {
        v6 = v5;
        WitnessTable = swift_getWitnessTable();
        sub_24E2D4298(v6, v3, WitnessTable);
      }
    }
  }
}

void sub_24E16733C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_24E167240(a3);
}

uint64_t sub_24E1673A8()
{
}

uint64_t sub_24E167484(unsigned __int8 *a1, char a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  result = a3;
  if (a4)
  {
    if (__OFADD__(a3, 1))
    {
      __break(1u);
      return result;
    }

    if (a3 + 1 >= 10)
    {
      result = 10;
    }

    else
    {
      result = a3 + 1;
    }
  }

  switch(v7)
  {
    case 1:
      type metadata accessor for GameCenter();
      swift_initStaticObject();
      sub_24E2F0F0C(1, 0, 0, v9, v10, v11, v12, v13, v22, v23[0], v23[1], v23[2], v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
      break;
    case 2:
      sub_24E1683CC(result, *MEMORY[0x277CEC200]);
      break;
    case 3:
      sub_24E168510(result, *MEMORY[0x277CEC200]);
      break;
    default:
      sub_24E16813C();
      break;
  }

  OUTLINED_FUNCTION_21_2();
  *(swift_allocObject() + 16) = a4;
  v24 = sub_24E3474D8();
  v25 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v23);
  v14 = a4;

  sub_24E3474C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E21E8, &qword_24E372BA0);
  v15 = sub_24E347A58();

  __swift_destroy_boxed_opaque_existential_1(v23);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAA0, &qword_24E37DAC0);
    v16 = sub_24E347AD8();
    OUTLINED_FUNCTION_21_2();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a4;
    *(v18 + 32) = v7;
    *(v18 + 40) = a3;
    *(v18 + 48) = v16;
    v19 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    swift_retain_n();
    v20 = v14;
    v21 = sub_24E348368();
    v24 = v19;
    v25 = MEMORY[0x277D225C0];
    v23[0] = v21;
    sub_24E347A78();

    __swift_destroy_boxed_opaque_existential_1(v23);
    return v16;
  }

  else
  {
  }

  return v15;
}

void sub_24E167748(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (a2)
  {
    v15 = MEMORY[0x277D84F90];
    v6 = sub_24DFD8654();
    v7 = a2;
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        v4 = v15;
        a3 = v14;
        goto LABEL_15;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25303F560](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v11 = [v7 adamID];
      v12 = [v10 numberValue];
      sub_24DF88A8C(0, &qword_27F1E50D0, 0x277CCABB0);
      v13 = sub_24E348628();

      if (v13)
      {
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {

LABEL_15:
    *a3 = v4;
  }
}

void sub_24E1678EC(uint64_t *a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a3)
    {
      v20 = a5;
      v21[0] = MEMORY[0x277D84F90];
      v10 = sub_24DFD8654();
      v11 = a3;
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {

          v9 = v21[0];
          a5 = v20;
          goto LABEL_16;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x25303F560](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v13 = *(v9 + 8 * i + 32);
        }

        v14 = v13;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v15 = [v11 adamID];
        v16 = [v14 numberValue];
        sub_24DF88A8C(0, &qword_27F1E50D0, 0x277CCABB0);
        v17 = sub_24E348628();

        if (v17)
        {
        }

        else
        {
          sub_24E348A48();
          sub_24E348A78();
          sub_24E348A88();
          sub_24E348A58();
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {

LABEL_16:
      LOBYTE(v21[0]) = a4;
      sub_24E168834(v21, v9);

      sub_24E25D0F4(a5);
      v18 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
      swift_retain_n();
      v19 = sub_24E348368();
      v21[3] = v18;
      v21[4] = MEMORY[0x277D225C0];
      v21[0] = v19;
      sub_24E347A78();

      __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }
}

uint64_t sub_24E167BCC(char *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E40, qword_24E37DAC8);
  v6 = sub_24E347AD8();
  LOBYTE(v11[0]) = v5;
  sub_24E167484(v11, 1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  swift_retain_n();
  v9 = sub_24E348368();
  v11[3] = v8;
  v11[4] = MEMORY[0x277D225C0];
  v11[0] = v9;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v6;
}

void sub_24E167D0C(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_24DFD8654();
  if (v6)
  {
    v7 = v6;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24E348A68();
    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    v17 = a3;
    v8 = a2;
    sub_24DF88A8C(0, &qword_27F1DEFE0, 0x277CEC290);
    v9 = 0;
    v10 = *MEMORY[0x277CEC230];
    v11 = MEMORY[0x277CEC1F8];
    if ((v8 - 1) < 3)
    {
      v11 = MEMORY[0x277CEC200];
    }

    v12 = *v11;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25303F560](v9, v5);
      }

      else
      {
        v13 = *(v5 + 8 * v9 + 32);
      }

      ++v9;
      sub_24E1C69D4(v13, v10, v12);
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    while (v7 != v9);
    a3 = v17;
  }

  if (qword_27F1DDB50 != -1)
  {
    swift_once();
  }

  v14 = qword_27F20B218;
  sub_24DF88A8C(0, &qword_27F1DEFE0, 0x277CEC290);
  v15 = sub_24E347EE8();

  aBlock[4] = sub_24E168C10;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E1680B8;
  aBlock[3] = &block_descriptor_11_1;
  v16 = _Block_copy(aBlock);

  [v14 _prefetchLockupsWithRequests_withCompletionBlock_];
  _Block_release(v16);
}

void sub_24E167F70(uint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  v2 = sub_24DFD8654();
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      sub_24E347AC8();

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25303F560](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = [v4 lockup];

    ++v3;
    if (v7)
    {
      MEMORY[0x25303EA30]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v3 = v6;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_24E1680B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24DF88A8C(0, &qword_27F1E5E48, 0x277CEC2C8);
  v3 = sub_24E347F08();

  v2(v3);
}

uint64_t sub_24E16813C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAA0, &qword_24E37DAC0);
  v1 = sub_24E347AD8();
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  sub_24E2F07F8(*(v0 + 16), 0);
  v2 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  swift_retain_n();
  v3 = sub_24E348368();
  v5[3] = v2;
  v5[4] = MEMORY[0x277D225C0];
  v5[0] = v3;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

void sub_24E16824C(uint64_t *a1)
{
  v1 = *a1;
  v9 = MEMORY[0x277D84F90];
  v2 = sub_24DFD8654();
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      sub_24E347AC8();

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25303F560](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = [v4 adamID];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x277CEC258]) initWithNumberValue_];

      if (!v8)
      {
        goto LABEL_13;
      }

      MEMORY[0x25303EA30]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      ++v3;
    }

    else
    {

LABEL_13:
      ++v3;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

id sub_24E1683F4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithID:a1 kind:a2 context:a3 limit:a4];

  return v7;
}

uint64_t sub_24E16846C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24DF88A8C(0, &qword_27F1DEFE0, 0x277CEC290);
    v4 = sub_24E347F08();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_24E168538(uint64_t a1, void *a2, id *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAA0, &qword_24E37DAC0);
  v10 = sub_24E347AD8();
  if (qword_27F1DDB50 != -1)
  {
    OUTLINED_FUNCTION_0_120(&qword_27F1DDB50);
  }

  v11 = qword_27F20B218;
  sub_24DF88A8C(0, &qword_27F1E5E38, 0x277CEC270);
  v12 = sub_24E1683F4(*a3, *MEMORY[0x277CEC230], a2, a1);
  v15[4] = a4;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E16846C;
  v15[3] = a5;
  v13 = _Block_copy(v15);

  [v11 _cacheLockupsWithCollectionRequest_withCompletionBlock_];
  _Block_release(v13);

  return v10;
}

void sub_24E1686B8(uint64_t a1, id a2)
{
  if (!a2)
  {
    if (a1)
    {
      v5 = sub_24DFD8654();
      if (v5)
      {
        v6 = v5;
        sub_24E348A68();
        if (v6 < 0)
        {
          __break(1u);
          return;
        }

        v7 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x25303F560](v7, a1);
          }

          else
          {
            v8 = *(a1 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          v10 = [v8 id];

          sub_24E348A48();
          sub_24E348A78();
          sub_24E348A88();
          sub_24E348A58();
        }

        while (v6 != v7);
      }
    }

    sub_24E347AC8();

    return;
  }

  v3 = a2;
  sub_24E347AB8();
}

uint64_t sub_24E168834(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v17[0] = *a1;
  v5 = sub_24E1689F4(v17, a2);
  v7 = v6;
  swift_beginAccess();

  v8 = sub_24E130ED4();

  if (v8)
  {
  }

  else
  {
    v9 = MEMORY[0x277CEC200];
    if ((v4 - 1) >= 3)
    {
      v9 = MEMORY[0x277CEC1F8];
    }

    v10 = *v9;
    if (qword_27F1DDB50 != -1)
    {
      OUTLINED_FUNCTION_0_120(&qword_27F1DDB50);
    }

    v11 = qword_27F20B218;
    type metadata accessor for ASCLockupBatchPresenter();
    swift_allocObject();
    v12 = v11;

    v8 = sub_24E25C424(v13, 20, v12, v10);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 24);
    sub_24E058AEC(v8, v5, v7, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v16;

    swift_endAccess();
  }

  return v8;
}

uint64_t sub_24E1689F4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 0xEE00646579616C50;
  v4 = 0x796C746E65636572;
  switch(v2)
  {
    case 1:
      v3 = 0x800000024E39CCA0;
      v4 = 0xD000000000000011;
      break;
    case 2:
      v3 = 0xEE0073656D614765;
      v4 = 0x646163724177656ELL;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x756F59726F66;
      break;
    default:
      break;
  }

  MEMORY[0x25303E950](v4, v3);

  MEMORY[0x25303E950](95, 0xE100000000000000);
  sub_24DF88A8C(0, &qword_27F1E3560, 0x277CEC258);
  sub_24DFAE910();
  sub_24E347FD8();
  v5 = sub_24E348BA8();
  MEMORY[0x25303E950](v5);

  return 0;
}

uint64_t sub_24E168B70()
{
  sub_24E168B48();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

double block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t OUTLINED_FUNCTION_0_120(uint64_t a1)
{

  return swift_once();
}

id sub_24E168C88()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E78, &qword_24E37DB90);
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_74();
  v6 = type metadata accessor for ProfileHeaderData(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  [objc_msgSend(v2 container)];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28();
  sub_24E348538();
  v14 = v13;
  v16 = v15;
  if ((ShouldUsePadUI & 1) == 0)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
    }

    v17 = type metadata accessor for PlayerCardTheme(0);
    __swift_project_value_buffer(v17, qword_27F20BF00);
    v18 = [v2 traitCollection];
    sub_24E336638(v18, v19);

    sub_24E348538();
    v14 = v20;
    v16 = v21;
  }

  sub_24E16985C(v11, v8);
  sub_24E169814(&qword_27F1E5E68, type metadata accessor for ProfileHeaderData, &protocol conformance descriptor for ProfileHeaderData);
  sub_24E347158();
  type metadata accessor for PlayerProfileHeaderView();
  sub_24E2CA150(v14, v16, v0, v2);
  v23 = v22;
  (*(v4 + 8))(v0, v3);
  v24 = objc_opt_self();
  v25 = [v24 fractionalWidthDimension_];
  v26 = [v24 fractionalHeightDimension_];
  v27 = objc_opt_self();
  v28 = [v27 sizeWithWidthDimension:v25 heightDimension:v26];

  v29 = [objc_opt_self() itemWithLayoutSize_];
  v30 = [v24 fractionalWidthDimension_];
  v31 = [v24 absoluteDimension_];
  v32 = [v27 sizeWithWidthDimension:v30 heightDimension:v31];

  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_24E369990;
  *(v34 + 32) = v29;
  sub_24E1698C0();
  v35 = v29;
  v36 = sub_24E347EE8();

  v37 = [v33 verticalGroupWithLayoutSize:v32 subitems:v36];

  v38 = [objc_opt_self() sectionWithGroup_];
  sub_24E169904(v11);
  return v38;
}

double sub_24E1691A0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  OUTLINED_FUNCTION_4_55();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_74();
  sub_24E120A58(a1, v4);
  sub_24E120A58(a2, v4 + *(v3 + 56));
  sub_24E120AC8(v4);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 3;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  return result;
}

double sub_24E169270(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  OUTLINED_FUNCTION_4_55();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_74();
  sub_24E120A58(a2, v5);
  sub_24E120A58(a3, v5 + *(v4 + 56));
  [objc_msgSend(a4 container)];
  v11 = v10;
  swift_unknownObjectRelease();
  sub_24E120AC8(v5);
  return v11;
}

double sub_24E169358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  OUTLINED_FUNCTION_4_55();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24E120A58(a2, &v13 - v7);
  sub_24E120A58(a3, &v8[*(v3 + 56)]);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v9 = sub_24E3444F8();
  __swift_project_value_buffer(v9, qword_27F20B4E8);
  sub_24E3444E8();
  v11 = v10;
  sub_24E120AC8(v8);
  return v11;
}

id sub_24E16944C()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for PlayerProfileHeaderCollectionViewCell(0);
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

double sub_24E169560()
{
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v0 = type metadata accessor for PlayerCardTheme(0);
  return *(__swift_project_value_buffer(v0, qword_27F20BF00) + *(v0 + 76));
}

id sub_24E1695C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerProfileHeaderCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PlayerProfileHeaderCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E5E50;
  if (!qword_27F1E5E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1696D4(uint64_t a1)
{
  result = sub_24E169814(&qword_27F1E5E60, type metadata accessor for PlayerProfileHeaderCollectionViewCell, &unk_24E37DB08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1697BC(uint64_t a1)
{
  result = sub_24E169814(&qword_27F1E5E70, type metadata accessor for PlayerProfileHeaderCollectionViewCell, &unk_24E37DB48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E169814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E16985C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileHeaderData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E1698C0()
{
  result = qword_27F1EA590;
  if (!qword_27F1EA590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1EA590);
  }

  return result;
}

uint64_t sub_24E169904(uint64_t a1)
{
  v2 = type metadata accessor for ProfileHeaderData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_24E169970(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_progressBarView;
  type metadata accessor for ProgressBarView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkSize];
  v12 = type metadata accessor for ProgressLockupView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v12;
  v13 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v16 = *(MEMORY[0x277D768C8] + 16);
  v17 = *(MEMORY[0x277D768C8] + 24);
  v18 = v13;
  [v18 setLayoutMargins_];
  [v18 addSubview_];
  [v18 addSubview_];

  return v18;
}

void sub_24E169AD8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_progressBarView;
  type metadata accessor for ProgressBarView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkSize);
  *v3 = 0;
  v3[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

double sub_24E169BB4(double a1, double a2)
{
  [v2 layoutMargins];
  sub_24E348538();
  [*&v2[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_progressBarView] sizeThatFits_];
  [v2 layoutMargins];

  sub_24E348558();
  return result;
}

id sub_24E169CC0()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for ProgressLockupView();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkView];
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v2, v3);
  OUTLINED_FUNCTION_0_33();
  MinX = CGRectGetMinX(v27);
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v5, v6);
  OUTLINED_FUNCTION_0_33();
  MidY = CGRectGetMidY(v28);
  v8 = &v0[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkSize];
  [v1 setFrame_];
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v9, v10);
  OUTLINED_FUNCTION_0_33();
  v11 = CGRectGetWidth(v29) + -20.0 - *v8;
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v12, v13);
  OUTLINED_FUNCTION_0_33();
  Height = CGRectGetHeight(v30);
  v15 = *&v0[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_progressBarView];
  [v15 measurementsWithFitting:v0 in:{v11, Height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v1 frame];
  v22 = CGRectGetMaxX(v31) + 20.0;
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v23, v24);
  OUTLINED_FUNCTION_0_33();
  return [v15 setFrame_];
}

id sub_24E169F08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_2_75()
{

  return [v0 (v1 + 3448)];
}

id OUTLINED_FUNCTION_3_76()
{

  return [v0 (v1 + 3832)];
}

uint64_t sub_24E169FDC(uint64_t a1, unint64_t a2)
{
  v5 = sub_24E348DA8();
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = HIBYTE(a2) & 0xF;
  v31 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v13;
  if (v13)
  {
    v14 = 0;
    v26 = a2 & 0xFFFFFFFFFFFFFFLL;
    v27 = a2;
    v24 = v2;
    v25 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v15 = (v10 + 8);
    v29 = v9;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_24E348988();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
          v16 = v25;
          if ((v31 & 0x1000000000000000) == 0)
          {
            v16 = sub_24E348A28();
          }

          if (*(v16 + v14) < 0)
          {
            switch(__clz(*(v16 + v14) ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }

LABEL_13:
          v18 = 1;
          goto LABEL_14;
        }

        v30[0] = v31;
        v30[1] = v26;
        if ((*(v30 + v14) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        switch(__clz(*(v30 + v14) ^ 0xFF))
        {
          case 0x1Au:
LABEL_19:
            v18 = 2;
            break;
          case 0x1Bu:
LABEL_20:
            v18 = 3;
            break;
          case 0x1Cu:
LABEL_21:
            v18 = 4;
            break;
          default:
            goto LABEL_13;
        }
      }

LABEL_14:
      sub_24E348DB8();
      v19 = sub_24E348D78();
      v20 = *v15;
      v21 = v29;
      (*v15)(v12, v29);
      if (v19)
      {
        return 1;
      }

      sub_24E348DB8();
      v22 = sub_24E348D98();
      v20(v7, v21);
      if (v22)
      {
        return 1;
      }

      v14 += v18;
      a2 = v27;
      if (v14 >= v28)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL sub_24E16A2D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24E348DA8();
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  v17[2] = a1;
  v17[3] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v17[4] = 0;
  v17[5] = v8;
  v9 = (v5 + 8);

  while (1)
  {
    v10 = sub_24E347E08();
    v12 = v11;
    if (!v11)
    {
      break;
    }

    v13 = v10;
    if (OUTLINED_FUNCTION_0_121() == 1 && (sub_24E002B38(v13, v12) & 0x100000000) == 0)
    {
      sub_24E348DB8();
      v14 = sub_24E348D88();
      (*v9)(v7, v4);
      if (v14)
      {

        break;
      }
    }

    if (OUTLINED_FUNCTION_0_121() < 2)
    {
    }

    else
    {

      v15 = sub_24E169FDC(v13, v12);
      swift_bridgeObjectRelease_n();
      if (v15)
      {
        break;
      }
    }
  }

  return v12 != 0;
}

unint64_t sub_24E16A4A8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_24E16A548(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_24E004AB4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_24E16A548(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_24E00FC14(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24E16A5B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_24E16A4A8(a1, a3, a4);
  result = sub_24E16A4A8(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_24E347D98();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_24E348A28();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_24E347DA8();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_24E348A28();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t OUTLINED_FUNCTION_0_121()
{

  return sub_24E16A5B8(0xFuLL, v2, v1, v0);
}

uint64_t sub_24E16A7F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_24E16A830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24E16A8AC@<D0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_24E346958();
  v4 = sub_24E3469B8();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  result = 14.0;
  *(a1 + 32) = xmmword_24E37DBF0;
  *(a1 + 48) = xmmword_24E37DC00;
  *(a1 + 64) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_24E16A928@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19E0, &qword_24E37DD00);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_3();
  v81 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E98, &qword_24E37DD08);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v68 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EA0, &qword_24E37DD10);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v80 = v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EA8, &qword_24E37DD18);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v12);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EB0, &qword_24E37DD20);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v14);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EB8, &qword_24E37DD28);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v16);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EC0, &qword_24E37DD30);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v18);
  v19 = sub_24E345B68();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v1 + 8);
  v82 = v1;
  v23 = *v1;
  v84 = *v1;
  if (v85 == 1)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_24E348268();
    v24 = sub_24E346198();
    v69 = v8;
    v25 = v7;
    v26 = v24;
    sub_24E343EA8();

    v7 = v25;
    v8 = v69;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DF8BFF4(&v84, &qword_27F1E5EC8, &qword_24E37DD38);
    (*(v20 + 8))(v22, v19);
    if (__src[0] != 1)
    {
LABEL_6:
      v27 = sub_24E3469C8();
      v28 = sub_24E3469C8();
      goto LABEL_8;
    }
  }

  if (sub_24E345F98())
  {
    goto LABEL_6;
  }

  v28 = v82[2];
  v27 = v82[3];

LABEL_8:
  v29 = v81;
  sub_24E345F88();
  v30 = sub_24E346288();
  KeyPath = swift_getKeyPath();
  v32 = &v7[*(v4 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  sub_24E3462E8();
  sub_24E16B0D8();
  v33 = v80;
  sub_24E346558();
  sub_24DF8BFF4(v7, &qword_27F1E5E98, &qword_24E37DD08);
  v34 = v82[6];
  v35 = swift_getKeyPath();
  v36 = (v33 + *(v8 + 36));
  *v36 = v35;
  v36[1] = v34;
  v37 = *MEMORY[0x277CDF998];
  v38 = sub_24E345658();
  OUTLINED_FUNCTION_5_2();
  (*(v39 + 104))(v29, v37, v38);
  sub_24E16B1C0(&qword_27F1E1A18, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24E347CA8();
  if (result)
  {
    sub_24E16B208();
    sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0, &qword_24E37DD00, MEMORY[0x277D84470]);
    v41 = v27;
    v42 = v78;
    sub_24E346678();
    sub_24DF8BFF4(v29, &qword_27F1E19E0, &qword_24E37DD00);
    sub_24DE65DBC(v33);
    v43 = sub_24E346248();
    v44 = v82;
    sub_24E3451B8();
    OUTLINED_FUNCTION_3_77();
    v46 = v42 + v45;
    *v46 = v43;
    *(v46 + 8) = v47;
    *(v46 + 16) = v48;
    *(v46 + 24) = v49;
    *(v46 + 32) = v50;
    *(v46 + 40) = 0;
    sub_24E346E28();
    sub_24E3457F8();
    v51 = v79;
    sub_24E0A8D84(v42, v79, &qword_27F1E5EA8, &qword_24E37DD18);
    OUTLINED_FUNCTION_3_77();
    memcpy((v51 + v52), __src, 0x70uLL);
    v53 = swift_getKeyPath();
    v54 = v51;
    v55 = v76;
    sub_24E0A8D84(v54, v76, &qword_27F1E5EB0, &qword_24E37DD20);
    OUTLINED_FUNCTION_3_77();
    v57 = (v55 + v56);
    *v57 = v53;
    v57[1] = v41;
    LOBYTE(v53) = sub_24E3461E8();
    v58 = v71;
    sub_24E0A8D84(v55, v71, &qword_27F1E5EB8, &qword_24E37DD28);
    OUTLINED_FUNCTION_3_77();
    v60 = v58 + v59;
    *v60 = v28;
    *(v60 + 8) = v53;
    v61 = v44[4];
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EF8, &unk_24E37DDE0);
    v63 = v72;
    v64 = (v72 + *(v62 + 36));
    v65 = *(sub_24E3457C8() + 20);
    v66 = *MEMORY[0x277CE0118];
    sub_24E345C68();
    OUTLINED_FUNCTION_5_2();
    (*(v67 + 104))(&v64[v65], v66);
    *v64 = v61;
    *(v64 + 1) = v61;
    *&v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0, &qword_24E36BC00) + 36)] = 256;
    return sub_24E0A8D84(v58, v63, &qword_27F1E5EC0, &qword_24E37DD30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24E16B0D8()
{
  result = qword_27F1E5ED0;
  if (!qword_27F1E5ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5E98, &qword_24E37DD08);
    sub_24E16B1C0(&qword_27F1E5ED8, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_24DFB4C28(&qword_27F1DF648, &qword_27F1DF650, &qword_24E379BD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5ED0);
  }

  return result;
}

uint64_t sub_24E16B1C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E16B208()
{
  result = qword_27F1E5EE0;
  if (!qword_27F1E5EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EA0, &qword_24E37DD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5E98, &qword_24E37DD08);
    sub_24E16B0D8();
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1E5EE8, &qword_27F1E5EF0, &qword_24E37DDA8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5EE0);
  }

  return result;
}

unint64_t sub_24E16B2FC()
{
  result = qword_27F1E5F00;
  if (!qword_27F1E5F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EF8, &unk_24E37DDE0);
    sub_24E16B3B4();
    sub_24DFB4C28(&qword_27F1DF820, &qword_27F1DF7E0, &qword_24E36BC00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F00);
  }

  return result;
}

unint64_t sub_24E16B3B4()
{
  result = qword_27F1E5F08;
  if (!qword_27F1E5F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EC0, &qword_24E37DD30);
    sub_24E16B46C();
    sub_24DFB4C28(&unk_27F1DF810, &qword_27F1DF4A0, &unk_24E36B290, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F08);
  }

  return result;
}

unint64_t sub_24E16B46C()
{
  result = qword_27F1E5F10;
  if (!qword_27F1E5F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EB8, &qword_24E37DD28);
    sub_24E16B524();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048, &unk_24E37DE20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F10);
  }

  return result;
}

unint64_t sub_24E16B524()
{
  result = qword_27F1E5F18;
  if (!qword_27F1E5F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EB0, &qword_24E37DD20);
    sub_24E16B5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F18);
  }

  return result;
}

unint64_t sub_24E16B5B0()
{
  result = qword_27F1E5F20;
  if (!qword_27F1E5F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EA8, &qword_24E37DD18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EA0, &qword_24E37DD10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E19E0, &qword_24E37DD00);
    sub_24E16B208();
    sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0, &qword_24E37DD00, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F20);
  }

  return result;
}

uint64_t sub_24E16B6E4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  (*(v7 + 16))(v10 - v9, a1, v5);
  type metadata accessor for GKLogTimer(0);
  swift_allocObject();
  v12 = sub_24E16B7EC(v11, a2, 1);
  (*(v7 + 8))(a1, v5);
  return v12;
}

uint64_t sub_24E16B7EC(uint64_t a1, uint64_t a2, char a3)
{
  sub_24E343358();
  v7 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  v8 = sub_24E343368();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_children) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_level;
  v10 = sub_24E347358();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_messages) = a2;
  *(v3 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_isRoot) = a3;
  return v3;
}

uint64_t sub_24E16B8CC()
{
  v1 = v0;
  v2 = sub_24E347018();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = sub_24E343368();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  swift_beginAccess();
  sub_24E1578C4(v1 + v13, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_24DFA9298(v8, &unk_27F1E5890, qword_24E377010);
  }

  (*(v10 + 32))(v12, v8, v9);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  MEMORY[0x25303E950](40, 0xE100000000000000);
  sub_24E343318();
  sub_24E343318();
  sub_24E348118();
  MEMORY[0x25303E950](41, 0xE100000000000000);
  v19[3] = MEMORY[0x277D837D0];
  sub_24E346FE8();
  sub_24DFA9298(v19, &qword_27F1E0370, &unk_24E369A10);
  v15 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_messages;
  swift_beginAccess();
  sub_24E011200();
  v16 = *(*(v1 + v15) + 16);
  sub_24E1242E8(v16);
  v17 = *(v1 + v15);
  *(v17 + 16) = v16 + 1;
  (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5, v2);
  *(v1 + v15) = v17;
  swift_endAccess();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24E16BC04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  swift_beginAccess();
  sub_24E16C89C(a1, v1 + v3);
  swift_endAccess();
  sub_24E16B8CC();
  return sub_24DFA9298(a1, &unk_27F1E5890, qword_24E377010);
}

uint64_t sub_24E16BC80(uint64_t a1, __n128 a2)
{
  v3 = v2;
  sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6, v3 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_level);
  type metadata accessor for GKLogTimer(0);
  swift_allocObject();

  v10 = sub_24E16B7EC(v8, a1, 0);
  sub_24E16BEA8(v10);
  return v10;
}

uint64_t sub_24E16BD78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5 - 8];
  v7 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime, v12);
  sub_24E1578C4(v0 + v7, v6);
  v8 = sub_24E343368();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  result = sub_24DFA9298(v6, &unk_27F1E5890, qword_24E377010);
  if (EnumTagSinglePayload == 1)
  {
    sub_24E343358();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
    return sub_24E16BC04(v3);
  }

  return result;
}

uint64_t sub_24E16BEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3 + 22;
  v5 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  OUTLINED_FUNCTION_5_16(v1 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime, v10);
  sub_24E1578C4(v1 + v5, v4);
  v6 = sub_24E343368();
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v4, 1, v6);
  result = sub_24DFA9298(v4, &unk_27F1E5890, qword_24E377010);
  if (v5 == 1)
  {
    swift_beginAccess();

    MEMORY[0x25303EA30](v8);
    sub_24E12448C();
    sub_24E347F88();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24E16BFE8()
{
  v1 = v0;
  v2 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  sub_24E343C98();
  v9 = sub_24E347348();
  v10 = sub_24E343F78();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    v13 = sub_24E16C1BC(0, 0xE000000000000000);
    v15 = sub_24E1C2BE0(v13, v14, v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24DE53000, v10, v9, "GKLogTimer\n%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x253040EE0](v12, -1, -1);
    MEMORY[0x253040EE0](v11, -1, -1);
  }

  (*(v4 + 8))(v8, v2);
  v16 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_children;
  swift_beginAccess();
  *(v1 + v16) = MEMORY[0x277D84F90];
}

uint64_t sub_24E16C1BC(uint64_t a1, unint64_t a2)
{
  v35 = a1;
  v4 = sub_24E347018();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_messages;
  OUTLINED_FUNCTION_5_16(v2 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_messages, v43);
  v15 = *(v2 + v14);
  v16 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  OUTLINED_FUNCTION_5_16(v2 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime, v42);
  sub_24E1578C4(v2 + v16, v13);
  v17 = sub_24E343368();
  LODWORD(v16) = __swift_getEnumTagSinglePayload(v13, 1, v17);

  sub_24DFA9298(v13, &unk_27F1E5890, qword_24E377010);
  if (v16 != 1 || (*(v2 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_isRoot) & 1) != 0)
  {
    goto LABEL_7;
  }

  v41[3] = MEMORY[0x277D837D0];
  v41[0] = 0xD000000000000010;
  v41[1] = 0x800000024E3A9A10;
  sub_24E346FE8();
  sub_24DFA9298(v41, &qword_27F1E0370, &unk_24E369A10);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v18 = *(v15 + 16);
    if (v18 >= *(v15 + 24) >> 1)
    {
      sub_24E0776BC();
      v15 = v32;
    }

    *(v15 + 16) = v18 + 1;
    (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v10, v4);
LABEL_7:
    sub_24E346FC8();
    v19 = sub_24E346FF8();
    v21 = v20;

    v39 = v19;
    v40 = v21;
    v6 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_children;
    OUTLINED_FUNCTION_5_16(v2 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_children, v41);
    v36 = *(v2 + v6);
    v22 = sub_24DFD8654();
    if (!v22)
    {
      break;
    }

    v4 = v22;
    if (v22 >= 1)
    {
      v34 = v36 & 0xC000000000000001;

      v23 = 0;
      do
      {
        if (v34)
        {
          MEMORY[0x25303F560](v23, v36);
        }

        else
        {
        }

        ++v23;
        v37 = 10;
        v38 = 0xE100000000000000;
        v24 = v35;
        MEMORY[0x25303E950](v35, a2);

        MEMORY[0x25303E950](538976288, 0xE400000000000000);

        v25 = v37;
        v26 = v38;
        v37 = v24;
        v38 = a2;

        MEMORY[0x25303E950](538976288, 0xE400000000000000);
        v27 = sub_24E16C1BC(v37, v38);
        v29 = v28;

        v37 = v25;
        v38 = v26;

        MEMORY[0x25303E950](v27, v29);

        MEMORY[0x25303E950](v37, v38);
      }

      while (v4 != v23);

      return v39;
    }

    __break(1u);
LABEL_17:
    sub_24E0776BC();
    v15 = v31;
  }

  return v19;
}

uint64_t sub_24E16C5B4(__n128 a1)
{
  v2 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_level;
  sub_24E347358();
  OUTLINED_FUNCTION_0_26();
  (*(v3 + 8))(v1 + v2);

  v4 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_startTime;
  sub_24E343368();
  OUTLINED_FUNCTION_0_26();
  (*(v5 + 8))(v1 + v4);
  sub_24DFA9298(v1 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime, &unk_27F1E5890, qword_24E377010);

  return v1;
}

uint64_t sub_24E16C67C(__n128 a1)
{
  sub_24E16C5B4(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t type metadata accessor for GKLogTimer(uint64_t a1)
{
  result = qword_27F1E5F40;
  if (!qword_27F1E5F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E16C728(uint64_t a1, __n128 a2)
{
  sub_24E347358();
  if (v2 <= 0x3F)
  {
    sub_24E343368();
    if (v3 <= 0x3F)
    {
      sub_24E16C844(319);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24E16C844(uint64_t a1)
{
  if (!qword_280BE0C18)
  {
    sub_24E343368();
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE0C18);
    }
  }
}

uint64_t sub_24E16C89C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_24E16C930()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage;
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage, v3);
  return *(v0 + v1);
}

uint64_t sub_24E16C990(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage;
  result = OUTLINED_FUNCTION_5_68(v3 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage, a3);
  *(v3 + v5) = a1;
  return result;
}

id OverlappingPlayersPhotoView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

id OverlappingPlayersPhotoView.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_78(OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews) = MEMORY[0x277D84F90];
  __asm { FMOV            V0.2D, #24.0 }

  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace) = 0;
  v10 = type metadata accessor for OverlappingPlayersPhotoView();
  v6 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v7, v8, v6, v0, v10);
}

id OverlappingPlayersPhotoView.__allocating_init(frame:layoutStyle:enableKnockoutSpace:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_29();
  v5 = objc_allocWithZone(v2);
  OUTLINED_FUNCTION_28();
  return OverlappingPlayersPhotoView.init(frame:layoutStyle:enableKnockoutSpace:)(a1, v3);
}

id OverlappingPlayersPhotoView.init(frame:layoutStyle:enableKnockoutSpace:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_29();
  v5 = *v4;
  OUTLINED_FUNCTION_3_78(OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage);
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews) = MEMORY[0x277D84F90];
  __asm { FMOV            V0.2D, #24.0 }

  *(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize) = _Q0;
  v11 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle) = 0;
  v12 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace) = 0;
  swift_beginAccess();
  *(v2 + v11) = v5;
  swift_beginAccess();
  *(v2 + v12) = a2;
  v18 = type metadata accessor for OverlappingPlayersPhotoView();
  v13 = OUTLINED_FUNCTION_28();
  v16 = objc_msgSendSuper2(v14, v15, v13, v2, v18);
  [v16 setLayoutMargins_];
  return v16;
}

void sub_24E16CCB0()
{
  OUTLINED_FUNCTION_3_78(OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews) = MEMORY[0x277D84F90];
  __asm { FMOV            V0.2D, #24.0 }

  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E16CE70(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews) = a1;
  sub_24E16CEB8(v2);
}

uint64_t sub_24E16CEB8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews;

  sub_24E12D790(v4, a1);
  v6 = v5;

  if (v6)
  {
    return result;
  }

  result = sub_24DFD8654();
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_21;
    }

    for (i = 0; i != v8; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25303F560](i, a1);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      [v10 removeFromSuperview];
    }
  }

  v12 = *&v1[v3];
  result = sub_24DFD8654();
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (result < 1)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  for (j = 0; j != v13; ++j)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x25303F560](j, v12);
    }

    else
    {
      v15 = *(v12 + 8 * j + 32);
    }

    v16 = v15;
    [v1 addSubview_];
  }
}

void *sub_24E16D024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E16D098(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_24E16D098@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle;
  result = OUTLINED_FUNCTION_5_16(v1 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle, v5);
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24E16D0E4(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle;
  result = OUTLINED_FUNCTION_5_68(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle, a2);
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_24E16D1B0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace;
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace, v3);
  return *(v0 + v1);
}

uint64_t sub_24E16D214(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace;
  result = OUTLINED_FUNCTION_5_68(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace, a2);
  *(v2 + v4) = a1;
  return result;
}

double sub_24E16D2FC(double a1, double a2)
{
  [v2 layoutMargins];
  sub_24E348538();
  v3 = *&v2[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize];
  v4 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage;
  OUTLINED_FUNCTION_5_16(&v2[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage], v13);
  v5 = *&v2[v4];
  OUTLINED_FUNCTION_5_16(&v2[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle], &v12);

  sub_24E07A310();
  v7 = v6;

  v8 = *(v7 + 16);

  [v2 layoutMargins];
  return v3 * v8 - floor(v3 * v5) * (v8 + -1.0) + v9 + v10;
}

uint64_t sub_24E16D49C()
{
  v1 = v0;
  v2 = sub_24E344048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OverlappingPlayersPhotoView();
  v29.receiver = v0;
  v29.super_class = v6;
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize];
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize + 8];
  v9 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage;
  OUTLINED_FUNCTION_5_16(&v1[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage], v28);
  v10 = *&v1[v9];
  v11 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle;
  OUTLINED_FUNCTION_5_16(&v1[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle], v27);
  v12 = v1[v11];

  sub_24E07A310();
  v14 = v13;

  v24[1] = v7;
  v24[2] = v8;
  v24[3] = v10;
  v25 = v12;
  v26 = v14;
  [v1 bounds];
  v16 = v15;
  v18 = v17;
  [v1 layoutMargins];
  sub_24E1FB2E4(v22, v21, v16 - v22 - v19, v18 - v21 - v20);
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E16D6B0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_24DFD8654();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    result = sub_24E348A68();
    if ((v4 & 0x8000000000000000) == 0)
    {
      result = sub_24DFD8654();
      v7 = 0;
      v8 = result & ~(result >> 63);
      while (v8 != v7)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25303F560](v7, a1);
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(a1 + 8 * v7 + 32);
        }

        v10 = v9;
        sub_24E16D830(v7, v9, v2);

        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        result = sub_24E348A58();
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }

        if (v4 == ++v7)
        {
          v5 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_24E16CE70(v5);

    return [v2 setNeedsLayout];
  }

  return result;
}

id sub_24E16D830(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
  [v6 setPlayer_];
  v7 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace;
  swift_beginAccess();
  if (a3[v7] != 1)
  {
    return v6;
  }

  result = sub_24DFD8654();
  if (!__OFSUB__(result, 1))
  {
    if (result - 1 > a1)
    {
      v9 = &a3[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize];
      v10 = *&a3[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize];
      v11 = *&a3[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize + 8];
      v12 = objc_opt_self();
      v13 = 0.0;
      v14 = [v12 bezierPathWithRect_];
      v15 = [a3 effectiveUserInterfaceLayoutDirection];
      if (v15 == 1)
      {
        v13 = *v9;
      }

      v16 = [v12 bezierPathWithArcCenter:v15 != 1 radius:v13 startAngle:v9[1] * 0.5 endAngle:v10 * 0.5 + 2.0 clockwise:{1.57079633, 4.71238898}];
      [v16 closePath];
      [v14 setUsesEvenOddFillRule_];
      [v14 appendPath_];
      v17 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
      v18 = v6;
      [v18 bounds];
      [v17 setFrame_];
      v19 = [v14 CGPath];
      [v17 setPath_];

      v20 = [v18 layer];
      [v20 setMask_];

      v21 = [v18 layer];
      [v21 setMasksToBounds_];
    }

    return v6;
  }

  __break(1u);
  return result;
}

id OverlappingPlayersPhotoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlappingPlayersPhotoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_5_68(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_24E16DE00()
{
  type metadata accessor for PrivateProfileDescriptionProfileSection();
  result = swift_allocObject();
  *(result + 16) = 2577;
  return result;
}

uint64_t sub_24E16DE2C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E3433A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  memcpy(v42, __src, sizeof(v42));
  v9 = 0;
  if (sub_24DF8BF80(v42) != 1)
  {
    v34 = v5;
    memcpy(v43, v42, sizeof(v43));
    v10 = objc_opt_self();
    memcpy(v41, __dst, sizeof(v41));
    sub_24DF8BF98(v41, v39);
    v11 = [v10 configurationWithPointSize:5 weight:3 scale:30.0];
    sub_24DFC2C38();
    v12 = v11;
    v13 = sub_24E1A5748(0x73616C732E657965, 0xEE006C6C69662E68, v11);
    v33 = v12;

    v37 = v2;
    v38 = __src;
    v35 = v8;
    v36 = v3;
    if (!v13)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24E367D20;
    v32 = v13;
    v14 = sub_24E347CB8();
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();

    v17 = sub_24E347CF8();
    v31 = v18;

    v19 = sub_24E16E26C(v43);
    v21 = v20;
    v22 = type metadata accessor for EmptyStateData(0);
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    *(v9 + 56) = v22;
    *(v9 + 64) = sub_24E16E440(&qword_27F1DFD30, type metadata accessor for EmptyStateData, &protocol conformance descriptor for EmptyStateData);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
    *(boxed_opaque_existential_1 + 19) = 0u;
    boxed_opaque_existential_1[21] = 0;
    *(boxed_opaque_existential_1 + 17) = 0u;
    v24 = *(v22 + 52);
    v25 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v24, 1, 1, v25);
    boxed_opaque_existential_1[5] = v13;
    boxed_opaque_existential_1[6] = 0;
    *(boxed_opaque_existential_1 + 56) = 1;
    v26 = v31;
    boxed_opaque_existential_1[8] = v17;
    boxed_opaque_existential_1[9] = v26;
    boxed_opaque_existential_1[10] = v19;
    boxed_opaque_existential_1[11] = v21;
    *(boxed_opaque_existential_1 + 6) = 0u;
    *(boxed_opaque_existential_1 + 7) = 0u;
    *(boxed_opaque_existential_1 + 128) = 1;
    sub_24DF8BDF0(v39, (boxed_opaque_existential_1 + 17));
    v27 = v35;
    sub_24E343398();
    v29 = v36;
    v28 = v37;
    (*(v36 + 16))(v34, v27, v37);
    sub_24E16E440(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24E348918();
    (*(v29 + 8))(v27, v28);
    sub_24DF8C95C(v39, &qword_27F1DEE90, &unk_24E369E90);

    sub_24DF8C95C(v38, &qword_27F1DEEA0, qword_24E369EA0);
  }

  return v9;
}

uint64_t sub_24E16E26C(id *a1)
{
  [*a1 achievementsVisibility];
  v1 = sub_24E347CB8();
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  v4 = sub_24E347CF8();
  return v4;
}

double sub_24E16E33C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HeaderData(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Shelf.Presentation(0);
  v4 = v3[5];
  v5 = type metadata accessor for FooterData(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[11];
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v8 = a1 + v3[12];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v3[13]);
  v10 = (a1 + v3[14]);
  v11 = (a1 + v3[15]);
  *(a1 + v3[6]) = 0;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v3[7]) = 1;
  *(a1 + v3[8]) = 1;
  *(a1 + v3[9]) = 1;
  *(a1 + v3[10]) = 0;
  return result;
}

uint64_t sub_24E16E440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24E16E498()
{
  sub_24DFEA770();
  OUTLINED_FUNCTION_0_122();
  v0 = sub_24E3485B8();
  OUTLINED_FUNCTION_0_122();
  v1 = sub_24E3485B8();
  v2 = [objc_opt_self() gk:v0 dynamicColorWithLightColor:v1 darkColor:?];

  qword_27F20AF10 = v2;
  result = 6.0;
  unk_27F20AF18 = xmmword_24E3792C0;
  qword_27F20AF28 = 0x4014000000000000;
  return result;
}

double sub_24E16E544()
{
  sub_24DFEA770();
  OUTLINED_FUNCTION_0_122();
  qword_27F20AF30 = sub_24E3485B8();
  result = 5.0;
  *algn_27F20AF38 = xmmword_24E37C4E0;
  qword_27F20AF48 = 0x4008000000000000;
  return result;
}

double sub_24E16E59C()
{
  sub_24DFEA770();
  OUTLINED_FUNCTION_0_122();
  qword_27F20AF50 = sub_24E3485B8();
  result = 6.0;
  *algn_27F20AF58 = xmmword_24E3792C0;
  qword_27F20AF68 = 0x4014000000000000;
  return result;
}

double sub_24E16E5F4()
{
  sub_24DFEA770();
  OUTLINED_FUNCTION_0_122();
  qword_27F20AF70 = sub_24E3485B8();
  result = 6.0;
  *algn_27F20AF78 = xmmword_24E3792C0;
  qword_27F20AF88 = 0x4000000000000000;
  return result;
}

id sub_24E16E684()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2820, &qword_24E3731D0);
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  type metadata accessor for TitledParagraphData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  [objc_msgSend(v1 container)];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28();
  sub_24E348538();
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v14 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v14, qword_27F20BF00);
  v15 = [v1 traitCollection];
  sub_24E336638(v15, v16);

  sub_24E348538();
  v18 = v17.n128_f64[0];
  v20 = v19;
  sub_24E16F614(v13, v10, v17);
  sub_24E16F5CC(&qword_27F1E2818, type metadata accessor for TitledParagraphData, &unk_24E37F7A0);
  sub_24E347158();
  type metadata accessor for TitledParagraphView();
  v21 = sub_24E0879D0(v18, v20, v7, v1);
  v23 = v22;
  (*(v4 + 8))(v7, v2, v21);
  v24 = objc_opt_self();
  v25 = [v24 fractionalWidthDimension_];
  v26 = [v24 absoluteDimension_];
  v27 = objc_opt_self();
  v28 = [v27 sizeWithWidthDimension:v25 heightDimension:v26];

  v29 = [objc_opt_self() itemWithLayoutSize_];
  v30 = [v28 widthDimension];
  v31 = [v28 heightDimension];
  v32 = [v27 sizeWithWidthDimension:v30 heightDimension:v31];

  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_24E369990;
  *(v34 + 32) = v29;
  sub_24E1698C0();
  v35 = v29;
  v36 = sub_24E347EE8();

  v37 = [v33 verticalGroupWithLayoutSize:v32 subitems:v36];

  v38 = [objc_opt_self() sectionWithGroup_];
  sub_24E16F678(v13, v39);
  return v38;
}

double sub_24E16EB84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = a4;
  v60 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  sub_24DF8BD90(a2, &v52 - v15, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8BD90(a3, &v16[*(v11 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8BD90(v16, v13, &unk_27F1E1CA0, &unk_24E36C0D0);
  v17 = *(v11 + 56);
  sub_24E16EF44(v13, &v13[v17], v61);
  sub_24DF8BFF4(&v13[v17], &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8BFF4(v13, &unk_27F1E1CB0, &unk_24E36D160);
  v18 = v61[0];
  v19 = v61[1];
  v20 = v61[2];
  v21 = v61[3];
  v22 = v61[4];
  v23 = v61[5];
  v24 = v62;
  if (v62 > 2u)
  {
    v45 = OUTLINED_FUNCTION_0_123();
    sub_24DFEC8B4(v45, v46, v47, v48, v49, v50, 3);
    OUTLINED_FUNCTION_3_79();
    v41 = *MEMORY[0x277D768C8];
  }

  else
  {
    v25 = OUTLINED_FUNCTION_0_123();
    sub_24DFD7E3C(v25, v26, v27, v28, v29, v30, v24);
    v31 = OUTLINED_FUNCTION_0_123();
    sub_24DFEC8B4(v31, v32, v33, v34, v35, v36, v24);
    OUTLINED_FUNCTION_3_79();
    v53 = v18;
    v54 = v19;
    v55 = v20;
    v56 = v21;
    v57 = v23;
    if (qword_27F1DDC40 != -1)
    {
      swift_once();
    }

    v37 = sub_24E3444F8();
    __swift_project_value_buffer(v37, qword_27F20B4D0);
    v38 = v58;
    v39 = [v58 traitCollection];
    sub_24E343F98();
    sub_24E3444C8();
    v41 = v40;

    v42 = *(v59 + 8);
    v43 = v60;
    v42(v9, v60);
    v44 = [v38 traitCollection];
    sub_24E343F98();
    sub_24E3444C8();

    sub_24DFEC8B4(v53, v54, v55, v56, v22, v57, v24);
    v42(v9, v43);
  }

  sub_24DF8BFF4(v16, &unk_27F1E1CA0, &unk_24E36C0D0);
  return v41;
}

uint64_t sub_24E16EF44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  sub_24DF8BD90(a1, &v14[-v8], &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8BD90(a2, &v9[*(v7 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  sub_24DF8BFF4(v9, &unk_27F1E1CA0, &unk_24E36C0D0);
  v10 = type metadata accessor for PlayerCardTheme(0);
  v11 = __swift_project_value_buffer(v10, qword_27F20BF00);
  v12 = *(v10 + 68);
  memcpy(v15, (v11 + v12), 0x89uLL);
  memcpy(a3, (v11 + v12), 0x89uLL);
  return sub_24E15063C(v15, v14);
}

double sub_24E16F0A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  sub_24DF8BD90(a2, &v22 - v15, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8BD90(a3, &v16[*(v14 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v17 = sub_24E3444F8();
  __swift_project_value_buffer(v17, qword_27F20B4E8);
  v18 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v20 = v19;

  (*(v9 + 8))(v12, v7);
  sub_24DF8BFF4(v16, &unk_27F1E1CA0, &unk_24E36C0D0);
  return v20;
}

id sub_24E16F2AC()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_24E16F320(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E16F3B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledParagraphCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TitledParagraphCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E5F78;
  if (!qword_27F1E5F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E16F48C(uint64_t a1)
{
  result = sub_24E16F5CC(&qword_27F1E5F88, type metadata accessor for TitledParagraphCollectionViewCell, &unk_24E37DFA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E16F574(uint64_t a1)
{
  result = sub_24E16F5CC(&unk_27F1E5F90, type metadata accessor for TitledParagraphCollectionViewCell, &unk_24E37DFD4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E16F5CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E16F614(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TitledParagraphData(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E16F678(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TitledParagraphData(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void OUTLINED_FUNCTION_3_79()
{

  sub_24DFEC8B4(0, 0, 0, 0, 0, 0, 3);
}

uint64_t sub_24E16F758(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar) = a1;
  return sub_24E16FAE0(v2);
}

uint64_t sub_24E16F770(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver) = a1;

  sub_24E16FC9C(v2);
}

void sub_24E16F7D0()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    [v2 setDelegate_];
  }

  v4 = v1();
  if (v4)
  {
    v5 = v4;
    sub_24E010F0C(v4);
  }
}

id BaseViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseViewController.init()()
{
  v0[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar] = 2;
  v0[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenTitle] = 0;
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_manualScrollEdgeAppearanceProgress];
  *v1 = 0;
  v1[8] = 1;
  v2 = OBJC_IVAR____TtC12GameCenterUI18BaseViewController_scrollObserver;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for ScrollViewDelegateObserver()) init];
  *&v0[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24E16FA00()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar) = 2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenTitle) = 0;
  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_manualScrollEdgeAppearanceProgress;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC12GameCenterUI18BaseViewController_scrollObserver;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ScrollViewDelegateObserver()) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E16FAE0(uint64_t result)
{
  v2 = v1;
  v3 = v1[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar];
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else
  {
    if (result != 2 && ((v3 ^ result) & 1) == 0)
    {
      return result;
    }

    if (v3)
    {
      v4 = [v1 navigationItem];
      [v4 _setManualScrollEdgeAppearanceEnabled_];

      v5 = [v2 navigationItem];
      [v5 _setAutoScrollEdgeTransitionDistance_];

      v6 = [v2 navigationItem];
      [v6 _setManualScrollEdgeAppearanceEnabled_];

      goto LABEL_9;
    }
  }

  v7 = [v1 navigationItem];
  [v7 _setManualScrollEdgeAppearanceEnabled_];

  sub_24E16F770(0);
LABEL_9:
  v8 = [v2 navigationItem];
  type metadata accessor for NavigationBarVisibilityScrollObserver();
  swift_allocObject();
  v9 = sub_24DFEA1D8(v8);
  result = sub_24E16F770(v9);
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver])
  {
    v10 = v2[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenTitle];

    sub_24DFEA410(v10);
  }

  return result;
}

uint64_t sub_24E16FC9C(uint64_t result)
{
  v2 = v1;
  if (result)
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenTitle);

    sub_24DFEA410(v3);

    sub_24E2261D8(v4);
  }

  if (*(v2 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver))
  {

    sub_24E226244(v5, &off_286115AA0);
  }

  return result;
}

void sub_24E16FDC4()
{
  v1 = v0;
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(type metadata accessor for InsetViewControllerContentView()) initWithFrame_];
    [v11 setAutoresizingMask_];
    [v11 setLayoutMargins_];
    v12 = v11;
    sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for PlayerCardTheme(0);
    v14 = __swift_project_value_buffer(v13, qword_27F20BF00);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);
    v18 = *(v14 + 40);
    v19 = *(v14 + 48);
    v20 = *(v14 + 56);
    v30[0] = *(v14 + 8);
    v30[1] = v15;
    v30[2] = v16;
    v30[3] = v17;
    v30[4] = v18;
    v30[5] = v19;
    v31 = v20;
    sub_24DFD7E3C(v30[0], v15, v16, v17, v18, v19, v20);
    sub_24DFEB8F4(v30);

    [v1 setView_];
    v21 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680, qword_24E36E390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E367D20;
    v23 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 labelColor];
    v27 = [v26 colorWithAlphaComponent_];

    *(inited + 64) = sub_24DFEA770();
    *(inited + 40) = v27;
    type metadata accessor for Key(0);
    sub_24DFEA7B4();
    sub_24E347C28();
    v28 = sub_24E347BE8();

    [v21 setTitleTextAttributes_];

    v29 = [v1 navigationItem];
    [v29 setStandardAppearance_];
  }
}

double sub_24E17012C(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for BaseViewController();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 transitionCoordinator];
  if (v3)
  {
    v5 = v3;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_24E17053C;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_24DFFFA1C;
    v8[3] = &block_descriptor_57;
    v7 = _Block_copy(v8);

    [v5 animateAlongsideTransition:v7 completion:0];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_24E170250(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x88))();
    if (v4)
    {
      v5 = v4;
      v6 = *&v3[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_scrollObserver];
      sub_24E010F0C(v5);

      v3 = v6;
    }
  }
}

id BaseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_24E1704B4(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

double block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E1705B0()
{
  type metadata accessor for DeviceRestrictedProfileSection();
  result = swift_allocObject();
  *(result + 16) = 5404;
  return result;
}

uint64_t sub_24E1705DC()
{
  v0 = sub_24E347458();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24E347478();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_24E3433A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  type metadata accessor for PrivacyAndSettingsProfileSection();
  v16 = 0;
  if (sub_24E2EE0CC())
  {
    v40 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24E367D20;
    v17 = sub_24E347CB8();
    v39 = v5;
    v18 = v17;
    v19 = GKGameCenterUIFrameworkBundle();
    v20 = GKGetLocalizedStringFromTableInBundle();
    v38 = v2;
    v21 = v20;

    v22 = sub_24E347CF8();
    v24 = v23;

    memset(v44, 0, 64);
    v44[64] = -1;
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    sub_24E343398();
    (*(v10 + 16))(v12, v15, v9);
    sub_24DF9D4DC(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24E348918();
    (*(v10 + 8))(v15, v9);
    v25 = type metadata accessor for DetailData(0);
    *(v16 + 56) = v25;
    *(v16 + 64) = sub_24DF9D4DC(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
    *(boxed_opaque_existential_1 + 25) = 0u;
    boxed_opaque_existential_1[27] = 0;
    *(boxed_opaque_existential_1 + 23) = 0u;
    v27 = *(v25 + 56);
    v37 = v27;
    v28 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v27, 1, 1, v28);
    v29 = boxed_opaque_existential_1 + *(v25 + 60);
    sub_24DF8BD34(v41, boxed_opaque_existential_1);
    *(boxed_opaque_existential_1 + 40) = 6;
    boxed_opaque_existential_1[6] = v22;
    boxed_opaque_existential_1[7] = v24;
    boxed_opaque_existential_1[9] = 0;
    boxed_opaque_existential_1[10] = 0;
    boxed_opaque_existential_1[8] = 0;
    sub_24DF8C8EC(v44, (boxed_opaque_existential_1 + 11));
    boxed_opaque_existential_1[20] = 0;
    boxed_opaque_existential_1[21] = 0;
    *(boxed_opaque_existential_1 + 88) = 0;
    *v29 = 0;
    v29[8] = 0;

    sub_24DF8BDF0(v42, (boxed_opaque_existential_1 + 23));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E369E30;
    strcpy((inited + 32), "impressionType");
    *(inited + 47) = -18;
    v31 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x74656C63696863;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v31;
    *(inited + 80) = 0x6973736572706D69;
    v32 = MEMORY[0x277D83B88];
    *(inited + 88) = 0xEF7865646E496E6FLL;
    *(inited + 96) = 0;
    *(inited + 120) = v32;
    *(inited + 128) = 0x657079546469;
    *(inited + 136) = 0xE600000000000000;
    *(inited + 144) = 0x636974617473;
    *(inited + 152) = 0xE600000000000000;
    *(inited + 168) = v31;
    *(inited + 176) = 1701667182;
    *(inited + 216) = v31;
    *(inited + 184) = 0xE400000000000000;
    *(inited + 192) = v22;
    *(inited + 200) = v24;

    sub_24E347C28();
    sub_24E347468();
    sub_24E347448();
    v33 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v33);
    v34 = v40;
    sub_24E347488();
    sub_24DF8BE60(v41);
    sub_24DF8C95C(v42, &qword_27F1DEE90, &unk_24E369E90);
    sub_24DF8C95C(v44, &qword_27F1DEE88, &unk_24E36BF90);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v28);
    sub_24DF8BEB4(v34, boxed_opaque_existential_1 + v37);
  }

  return v16;
}

uint64_t sub_24E170BC8()
{
  type metadata accessor for ProfileSettingsProfileSection();
  result = swift_allocObject();
  *(result + 16) = 279;
  return result;
}

uint64_t sub_24E170BF4(uint64_t a1, void *a2)
{
  v4 = sub_24E347458();
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v80 = v7 - v6;
  v8 = sub_24E347478();
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v78 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v13 = OUTLINED_FUNCTION_4_5(v12);
  MEMORY[0x28223BE20](v13);
  v79 = &v73 - v14;
  v15 = sub_24E3433A8();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v75 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v74 = type metadata accessor for AlertAction(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v23 = (v22 - v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24E36BFC0;
  sub_24E05C1FC();
  v25 = sub_24E347CB8();
  v26 = GKGameCenterUIFrameworkBundle();
  v27 = OUTLINED_FUNCTION_1_94(v26);

  v28 = sub_24E347CF8();
  v30 = v29;

  *(v24 + 32) = sub_24E3190AC(v28, v30, 1, 0, 0);
  v31 = sub_24E347CB8();
  v32 = GKGameCenterUIFrameworkBundle();
  v33 = OUTLINED_FUNCTION_1_94(v32);

  v34 = sub_24E347CF8();
  v36 = v35;

  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  v38 = a2;
  *(v24 + 40) = sub_24E3190AC(v34, v36, 0, sub_24E171B3C, v37);
  v39 = sub_24E347CB8();
  v40 = GKGameCenterUIFrameworkBundle();
  v41 = GKGetLocalizedStringFromTableInBundle();

  v42 = sub_24E347CF8();
  v44 = v43;

  v45 = sub_24E347CB8();
  v46 = GKGameCenterUIFrameworkBundle();
  v47 = OUTLINED_FUNCTION_1_94(v46);

  v48 = sub_24E347CF8();
  v50 = v49;

  v51 = v74;
  sub_24E3471C8();
  *v23 = v42;
  v23[1] = v44;
  v23[2] = v48;
  v23[3] = v50;
  v23[4] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_24E367D20;
  v53 = sub_24E347CB8();
  v54 = GKGameCenterUIFrameworkBundle();
  v55 = GKGetLocalizedStringFromTableInBundle();

  v56 = sub_24E347CF8();
  v58 = v57;

  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 2;
  v87 = 0;
  v88 = 7;
  v82[3] = v51;
  v82[4] = sub_24E171B9C(&qword_27F1E39A8, type metadata accessor for AlertAction, &unk_24E371BAC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  v74 = type metadata accessor for AlertAction;
  sub_24E171BE4(v23, boxed_opaque_existential_1, type metadata accessor for AlertAction);
  sub_24E343398();
  v60 = v76;
  v61 = v77;
  (*(v76 + 16))(v75, v19, v77);
  sub_24E171B9C(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v60 + 8))(v19, v61);
  v62 = type metadata accessor for DetailData(0);
  *(v52 + 56) = v62;
  *(v52 + 64) = sub_24E171B9C(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
  v63 = __swift_allocate_boxed_opaque_existential_1((v52 + 32));
  *(v63 + 25) = 0u;
  v63[27] = 0;
  *(v63 + 23) = 0u;
  v64 = *(v62 + 56);
  v77 = v64;
  v65 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v63 + v64, 1, 1, v65);
  v66 = v63 + *(v62 + 60);
  sub_24DF8BD34(v81, v63);
  *(v63 + 40) = 0;
  v63[6] = v56;
  v63[7] = v58;
  v63[9] = 0;
  v63[10] = 0;
  v63[8] = 0;
  sub_24DF8BD90(&v83, (v63 + 11), &qword_27F1DEE88, &unk_24E36BF90);
  v63[20] = 0;
  v63[21] = 0;
  *(v63 + 88) = 256;
  *v66 = 0;
  v66[8] = 0;

  sub_24DF8BDF0(v82, (v63 + 23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v68 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x74656C63696863;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = v68;
  *(inited + 80) = 0x6973736572706D69;
  v69 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v69;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v68;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v68;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v56;
  *(inited + 200) = v58;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v70 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v70);
  v71 = v79;
  sub_24E347488();
  sub_24DF8BE60(v81);
  sub_24DF8BFF4(&v83, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DF8BFF4(v82, &qword_27F1DEE90, &unk_24E369E90);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v65);
  sub_24DF8BEB4(v71, v63 + v77);
  sub_24E171B44(v23, v74);
  return v52;
}

void sub_24E171488(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26[-1] - v11;
  v13 = type metadata accessor for ExternalUrlAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph))
  {
    v25 = v4;

    sub_24E343268();
    v16 = sub_24E343288();
    if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
    {
      __break(1u);
    }

    else
    {
      v17 = sub_24E347CF8();
      v19 = v18;
      v20 = sub_24E347CF8();
      ActionMetrics.init(domain:eventType:)(v17, v19, v20, v21);
      (*(*(v16 - 8) + 32))(v15, v12, v16);
      v15[*(v13 + 20)] = 1;
      v15[*(v13 + 24)] = 0;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
      sub_24E347328();
      if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
      {
        sub_24E171B44(v15, type metadata accessor for ExternalUrlAction);

        sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
      }

      else
      {
        v26[3] = v13;
        v26[4] = sub_24E171B9C(&qword_27F1DF0A8, type metadata accessor for ExternalUrlAction, &unk_24E36D6C0);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
        sub_24E171BE4(v15, boxed_opaque_existential_1, type metadata accessor for ExternalUrlAction);
        v24 = v25;
        (*(v25 + 104))(v6, *MEMORY[0x277D21E18], v3);
        sub_24E3473B8();

        (*(v24 + 8))(v6, v3);
        sub_24E171B44(v15, type metadata accessor for ExternalUrlAction);
        __swift_destroy_boxed_opaque_existential_1(v26);
        (*(*(v22 - 8) + 8))(v9, v22);
      }
    }
  }
}

double sub_24E1718C4@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70, &unk_24E369E70);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - v4;
  v6 = type metadata accessor for HeaderData(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  v7 = type metadata accessor for Shelf.Presentation(0);
  v8 = (a1 + v7[5]);
  v9 = sub_24E347CB8();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v14 = v13;

  v15 = type metadata accessor for FooterData.Attachment(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
  memset(v24, 0, 57);
  *v8 = v12;
  v8[1] = v14;
  sub_24DF8BBD0(v24, (v8 + 3));
  v16 = type metadata accessor for FooterData(0);
  sub_24DF8BD90(v5, v8 + *(v16 + 28), &qword_27F1DEE70, &unk_24E369E70);
  v17 = [objc_opt_self() labelColor];
  sub_24DF8BC2C(v24);
  sub_24DF8BFF4(v5, &qword_27F1DEE70, &unk_24E369E70);
  v8[2] = v17;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  v18 = a1 + v7[11];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  v20 = a1 + v7[12];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (a1 + v7[13]);
  v22 = (a1 + v7[14]);
  v23 = (a1 + v7[15]);
  *(a1 + v7[6]) = 1;
  *v21 = 0;
  v21[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  *(a1 + v7[7]) = 1;
  *(a1 + v7[8]) = 1;
  *(a1 + v7[9]) = 1;
  *(a1 + v7[10]) = 0;
  return result;
}

uint64_t sub_24E171B44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E171B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E171BE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_94(uint64_t a1)
{

  return GKGetLocalizedStringFromTableInBundle();
}

void sub_24E171C64()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v5 = sub_24E3476F8();
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView) = 0;
  v7 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator) = 0;
  v8 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_leftPaneBackgroundView;
  v9 = objc_allocWithZone(type metadata accessor for GradientView());
  v10 = OUTLINED_FUNCTION_1_38();
  *(v0 + v8) = [v11 v12];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_currentLayoutType) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_shouldDisplayCustomHeader) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCompositionalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource) = 0;
  v13 = (v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController____lazy_storage___updateCollectionViewConstraintOnce);
  *v13 = 0;
  v13[1] = 0;
  if (v2)
  {
    sub_24E347748();
    swift_unknownObjectRetain();
    sub_24E3476E8();
    *(v0 + v7) = sub_24E347708();
  }

  else
  {
    *(v0 + v7) = 0;
  }

  sub_24DFAE87C(v4, &v14, &qword_27F1E1B70, qword_24E3756A0);
  sub_24E137668();
  sub_24DF8BFF4(v4, &qword_27F1E1B70, qword_24E3756A0);
  OUTLINED_FUNCTION_18();
}

void sub_24E171E14()
{
  OUTLINED_FUNCTION_32();
  v1 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  sub_24DFFE8A4();
  v8 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_5_16(&v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView], &v18);
  v17 = v0;
  v9 = *&v0[v8];
  if (v9)
  {
    v10 = sub_24E0002EC(v9);
    if (!v10)
    {
LABEL_9:
      OUTLINED_FUNCTION_18();
      return;
    }

    v11 = v10;
    v12 = 0;
    v13 = *(v10 + 16);
    while (1)
    {
      if (v13 == v12)
      {

        goto LABEL_9;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      (*(v3 + 16))(v7, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v1);
      v14 = [v17 collectionView];
      if (!v14)
      {
        goto LABEL_11;
      }

      v15 = v14;
      ++v12;
      v16 = sub_24E343488();
      [v15 deselectItemAtIndexPath:v16 animated:1];

      (*(v3 + 8))(v7, v1);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
}

void sub_24E171FBC()
{
  if (GKIsPadUIIdiom() || GKIsXRUIIdiomShouldUsePadUI())
  {
    if ((*((*MEMORY[0x277D85000] & *v0) + 0x370))())
    {
      v1 = [v0 view];
      if (v1)
      {
        v2 = v1;
        [v1 frame];
        OUTLINED_FUNCTION_8_2();

        v4.origin.x = OUTLINED_FUNCTION_7_2();
        CGRectGetWidth(v4);
        GKIsXRUIIdiomShouldUsePadUI();
        OUTLINED_FUNCTION_34_9();
        OUTLINED_FUNCTION_42_6();
        if (qword_27F1DD8E0 != -1)
        {
          OUTLINED_FUNCTION_1_95(&qword_27F1DD8E0);
        }

        GKIsXRUIIdiomShouldUsePadUI();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v3 = [v0 safeAreaLayoutGuide];
      [v3 layoutFrame];
      OUTLINED_FUNCTION_8_2();

      v5.origin.x = OUTLINED_FUNCTION_7_2();
      CGRectGetWidth(v5);
      if (qword_27F1DD8E0 != -1)
      {
        OUTLINED_FUNCTION_1_95(&qword_27F1DD8E0);
      }
    }
  }
}

void *sub_24E172184(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_17_28(v2 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void sub_24E1721C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_22_6(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24E17226C()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x370))();
  if (result)
  {
    result = GKIsPadUIIdiom();
    if (result)
    {
      result = [v0 view];
      if (result)
      {
        v2 = result;
        [result frame];
        OUTLINED_FUNCTION_8_2();

        v3.origin.x = OUTLINED_FUNCTION_7_2();
        CGRectGetWidth(v3);
        GKIsXRUIIdiomShouldUsePadUI();
        OUTLINED_FUNCTION_34_9();
        OUTLINED_FUNCTION_42_6();
        if (qword_27F1DD8E0 != -1)
        {
          OUTLINED_FUNCTION_1_95(&qword_27F1DD8E0);
        }

        return GKIsXRUIIdiomShouldUsePadUI();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_24E1723A4()
{
  if (v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_currentLayoutType] != 1)
  {
    v1 = OUTLINED_FUNCTION_19_16();
    if (v1)
    {
      v2 = v1;
      [v1 setScrollsToTop_];

      v3 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
      OUTLINED_FUNCTION_17_28(&v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView], v4);
      v5 = *&v0[v3];
      if (v5)
      {
        [v5 setScrollsToTop_];
        v6 = OUTLINED_FUNCTION_19_16();
        if (v6)
        {
          v7 = v6;
          [v6 _gkRemoveAllConstraints];

          v8 = *&v0[v3];
          if (v8)
          {
            [v8 _gkRemoveAllConstraints];
            if (v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_shouldDisplayCustomHeader])
            {
              v9 = 165.0;
            }

            else
            {
              v9 = 0.0;
            }

            v10 = [v0 traitCollection];
            v11 = [v10 userInterfaceIdiom];

            v12 = &unk_24E36D000;
            v13 = &selRef_applyTextStyle_;
            if (v11 == 1 || GKIsXRUIIdiomShouldUsePadUI())
            {
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
              v15 = OUTLINED_FUNCTION_26_18(v14);
              *(v15 + 16) = xmmword_24E36D5F0;
              v16 = OUTLINED_FUNCTION_19_16();
              if (!v16)
              {
LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

              v17 = OUTLINED_FUNCTION_55_2(v16);

              v18 = OUTLINED_FUNCTION_24_14();
              if (!v18)
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }

              v19 = OUTLINED_FUNCTION_55_2(v18);

              v20 = OUTLINED_FUNCTION_22_20();
              v22 = [v20 v21];

              *(v15 + 32) = v22;
              v23 = OUTLINED_FUNCTION_19_16();
              if (!v23)
              {
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

              v24 = v23;
              v25 = [v23 topAnchor];

              v26 = OUTLINED_FUNCTION_24_14();
              if (!v26)
              {
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              v27 = v26;
              v28 = [v26 topAnchor];

              v29 = OUTLINED_FUNCTION_22_20();
              v31 = [v29 v30];

              *(v15 + 40) = v31;
              v32 = OUTLINED_FUNCTION_19_16();
              if (!v32)
              {
LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

              v33 = v32;
              v34 = [v32 bottomAnchor];

              v35 = OUTLINED_FUNCTION_24_14();
              if (!v35)
              {
LABEL_55:
                __break(1u);
                goto LABEL_56;
              }

              v36 = v35;
              v37 = &selRef_applyTextStyle_;
              v38 = [v35 bottomAnchor];

              v39 = OUTLINED_FUNCTION_22_20();
              v41 = [v39 v40];

              *(v15 + 48) = v41;
              v42 = OUTLINED_FUNCTION_19_16();
              if (!v42)
              {
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              v12 = v42;
              v13 = &selRef_trailingAnchor;
              v43 = [v42 trailingAnchor];

              v44 = OUTLINED_FUNCTION_24_14();
              if (v44)
              {
LABEL_28:
                v73 = v44;
                v74 = objc_opt_self();
                v75 = [v73 *v13];

                v76 = OUTLINED_FUNCTION_13_36();
                v78 = [v76 v77];

                *(v15 + 56) = v78;
                sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
                v79 = sub_24E347EE8();

                [v74 activateConstraints_];

                v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
                v81 = OUTLINED_FUNCTION_26_18(v80);
                *(v81 + 16) = xmmword_24E36D5F0;
                v82 = *&v0[v3];
                if (v82)
                {
                  v83 = [v82 trailingAnchor];
                  v84 = OUTLINED_FUNCTION_24_14();
                  if (v84)
                  {
                    v85 = v84;
                    v86 = [v84 trailingAnchor];

                    v87 = OUTLINED_FUNCTION_11_32();
                    v89 = [v87 v88];

                    *(v81 + 32) = v89;
                    v90 = *&v0[v3];
                    if (v90)
                    {
                      v91 = [v90 topAnchor];
                      v92 = OUTLINED_FUNCTION_24_14();
                      if (v92)
                      {
                        v93 = OUTLINED_FUNCTION_53_3(v92);

                        v94 = OUTLINED_FUNCTION_11_32();
                        v96 = [v94 v95];

                        *(v81 + 40) = v96;
                        v97 = *&v0[v3];
                        if (v97)
                        {
                          v98 = [v97 v37 + 3365];
                          v99 = OUTLINED_FUNCTION_24_14();
                          if (v99)
                          {
                            v100 = v99;
                            v101 = [v99 v37 + 3365];

                            v102 = OUTLINED_FUNCTION_11_32();
                            v104 = [v102 v103];

                            *(v81 + 48) = v104;
                            v105 = *&v0[v3];
                            if (v105)
                            {
                              v106 = objc_opt_self();
                              v107 = [v105 widthAnchor];
                              v108 = [v107 constraintEqualToConstant_];

                              *(v81 + 56) = v108;
                              v109 = sub_24E347EE8();

                              [v106 activateConstraints_];

                              v110 = OUTLINED_FUNCTION_24_14();
                              if (v110)
                              {
                                v111 = v110;
                                [v110 setNeedsLayout];

                                return;
                              }

                              goto LABEL_49;
                            }

LABEL_48:
                            __break(1u);
LABEL_49:
                            __break(1u);
                            goto LABEL_50;
                          }

LABEL_47:
                          __break(1u);
                          goto LABEL_48;
                        }

LABEL_46:
                        __break(1u);
                        goto LABEL_47;
                      }

LABEL_45:
                      __break(1u);
                      goto LABEL_46;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

              __break(1u);
            }

            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
            v15 = OUTLINED_FUNCTION_26_18(v45);
            *(v15 + 16) = v12[95];
            v46 = OUTLINED_FUNCTION_19_16();
            if (!v46)
            {
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v47 = OUTLINED_FUNCTION_55_2(v46);

            v48 = OUTLINED_FUNCTION_24_14();
            if (!v48)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v49 = OUTLINED_FUNCTION_55_2(v48);

            v50 = OUTLINED_FUNCTION_22_20();
            v52 = [v50 v51];

            *(v15 + 32) = v52;
            v53 = OUTLINED_FUNCTION_19_16();
            if (!v53)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v54 = v53;
            v55 = [v53 topAnchor];

            v56 = OUTLINED_FUNCTION_24_14();
            if (!v56)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v57 = v56;
            v58 = [v56 topAnchor];

            v59 = OUTLINED_FUNCTION_22_20();
            v61 = [v59 v60];

            *(v15 + 40) = v61;
            v62 = OUTLINED_FUNCTION_19_16();
            if (!v62)
            {
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v63 = v62;
            v64 = [v62 v13[119]];

            v65 = OUTLINED_FUNCTION_24_14();
            if (!v65)
            {
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

            v66 = v65;
            v37 = v13;
            v67 = [v65 v13[119]];

            v68 = OUTLINED_FUNCTION_22_20();
            v70 = [v68 v69];

            *(v15 + 48) = v70;
            v71 = OUTLINED_FUNCTION_19_16();
            if (!v71)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

            v72 = v71;
            v13 = &selRef_widthAnchor;
            v43 = [v71 widthAnchor];

            v44 = OUTLINED_FUNCTION_24_14();
            if (!v44)
            {
LABEL_64:
              __break(1u);
              return;
            }

            goto LABEL_28;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_40;
  }
}

void sub_24E172BF4()
{
  if (v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_currentLayoutType] != 2)
  {
    v2 = OUTLINED_FUNCTION_18_28();
    if (v2)
    {
      v3 = v2;
      [v2 setScrollsToTop_];

      v4 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
      OUTLINED_FUNCTION_5_16(&v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView], v298);
      v5 = *&v0[v4];
      if (v5)
      {
        [v5 setScrollsToTop_];
        v6 = OUTLINED_FUNCTION_18_28();
        if (v6)
        {
          v7 = v6;
          [v6 _gkRemoveAllConstraints];

          v8 = *&v0[v4];
          if (v8)
          {
            [v8 _gkRemoveAllConstraints];
            if (v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_shouldDisplayCustomHeader])
            {
              v9 = 165.0;
            }

            else
            {
              v9 = 0.0;
            }

            v10 = [v0 view];
            if (v10)
            {
              v11 = v10;
              v12 = [v10 traitCollection];

              v13 = [v12 userInterfaceIdiom];
              if (v13 == 2)
              {
                v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
                v93 = OUTLINED_FUNCTION_26_18(v92);
                *(v93 + 16) = xmmword_24E36D5F0;
                v94 = OUTLINED_FUNCTION_18_28();
                if (!v94)
                {
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
                  goto LABEL_111;
                }

                v95 = v94;
                v96 = [v94 topAnchor];

                v97 = [v0 view];
                if (!v97)
                {
LABEL_111:
                  __break(1u);
                  goto LABEL_112;
                }

                v98 = v97;
                v99 = [v97 topAnchor];

                v100 = [v96 constraintEqualToAnchor:v99 constant:v9];
                *(v93 + 32) = v100;
                v101 = OUTLINED_FUNCTION_18_28();
                if (!v101)
                {
LABEL_113:
                  __break(1u);
                  goto LABEL_114;
                }

                v102 = v101;
                v103 = [v101 bottomAnchor];

                v104 = [v0 view];
                if (!v104)
                {
LABEL_115:
                  __break(1u);
                  goto LABEL_116;
                }

                v105 = v104;
                v106 = [v104 bottomAnchor];

                v107 = [v103 constraintEqualToAnchor_];
                *(v93 + 40) = v107;
                v108 = OUTLINED_FUNCTION_18_28();
                if (!v108)
                {
LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

                v109 = v108;
                v110 = [v108 trailingAnchor];

                v111 = *&v0[v4];
                if (!v111)
                {
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }

                v112 = [v111 leadingAnchor];
                ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
                v114 = -44.0;
                if (ShouldUsePadUI)
                {
                  v114 = -24.0;
                }

                v115 = [v110 constraintEqualToAnchor:v112 constant:{v114, 4, 9}];

                *(v93 + 48) = v115;
                v116 = OUTLINED_FUNCTION_18_28();
                if (!v116)
                {
                  goto LABEL_121;
                }

                v117 = v116;
                v118 = objc_opt_self();
                v119 = [v117 widthAnchor];

                v120 = [v119 constraintEqualToConstant_];
                *(v93 + 56) = v120;
                sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
                v121 = sub_24E347EE8();

                [v118 activateConstraints_];

                v122 = [v0 view];
                if (!v122)
                {
LABEL_123:
                  __break(1u);
                  goto LABEL_124;
                }

                v123 = v122;
                [v122 frame];
                OUTLINED_FUNCTION_14_27();

                if (OUTLINED_FUNCTION_19_23() <= 0.0)
                {
                  v125 = [objc_opt_self() mainScreen];
                  [v125 bounds];
                }

                else
                {
                  v124 = [v0 view];
                  if (!v124)
                  {
LABEL_154:
                    __break(1u);
                    goto LABEL_155;
                  }

                  v125 = v124;
                  [v124 frame];
                }

                OUTLINED_FUNCTION_14_27();

                v265 = OUTLINED_FUNCTION_19_23();
                if (GKIsXRUIIdiomShouldUsePadUI())
                {
                  v266 = 1244.0;
                }

                else
                {
                  v266 = 1264.0;
                }

                v267 = OUTLINED_FUNCTION_21_22();
                v275 = OUTLINED_FUNCTION_8_50(v267, v268, v269, v270, v271, v272, v273, v274, v297);
                if (!v275)
                {
                  goto LABEL_125;
                }

                v276 = [v275 topAnchor];
                v277 = [v0 view];
                if (!v277)
                {
LABEL_127:
                  __break(1u);
                  goto LABEL_128;
                }

                v278 = v277;
                v279 = [v277 &selRef_updateNavHeaderHeightAndOpacity];

                v280 = [v276 constraintEqualToAnchor:v279 constant:v9];
                v281 = OUTLINED_FUNCTION_46_5();
                if (!v281)
                {
LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

                v282 = OUTLINED_FUNCTION_56_2(v281);
                v283 = [v0 view];
                if (!v283)
                {
LABEL_131:
                  __break(1u);
                  goto LABEL_132;
                }

                v284 = OUTLINED_FUNCTION_50_3(v283);

                v285 = [v282 constraintEqualToAnchor_];
                v286 = OUTLINED_FUNCTION_45_5();
                if (!v286)
                {
LABEL_133:
                  __break(1u);
                  goto LABEL_134;
                }

                v287 = [v286 widthAnchor];
                v288 = [v287 constraintEqualToConstant_];

                v289 = OUTLINED_FUNCTION_43_5();
                if (!v289)
                {
LABEL_135:
                  __break(1u);
                  goto LABEL_136;
                }

                v290 = OUTLINED_FUNCTION_52_2(v289);
                v291 = [v0 view];
                if (!v291)
                {
LABEL_137:
                  __break(1u);
                  goto LABEL_138;
                }

                v292 = v291;
                v293 = [v291 v284[197]];

                v294 = [v290 constraintEqualToAnchor:v293 constant:(v265 - v266) * -0.5];
                *(v92 + 56) = v294;
                v264 = sub_24E347EE8();

                [v118 &selRef:v264 :? gkModifyTopConstraintToLayoutGuideForSubview:? + 3];
              }

              else
              {
                if (v13 == 1)
                {
                  v14 = [v0 view];
                  if (!v14)
                  {
LABEL_108:
                    __break(1u);
                    goto LABEL_109;
                  }

                  v15 = v14;
                  [v14 frame];
                  OUTLINED_FUNCTION_14_27();

                  v16 = OUTLINED_FUNCTION_19_23();
                  GKIsXRUIIdiomShouldUsePadUI();
                  OUTLINED_FUNCTION_34_9();
                  if (v18)
                  {
                    v19 = v17;
                  }

                  else
                  {
                    v19 = 24.0;
                  }

                  if (qword_27F1DD8E0 != -1)
                  {
                    OUTLINED_FUNCTION_1_95(&qword_27F1DD8E0);
                  }

                  v20 = *&qword_27F1E5FD8;
                  v21 = 22.0;
                  if (GKIsXRUIIdiomShouldUsePadUI())
                  {
                    v22 = 12.0;
                  }

                  else
                  {
                    v22 = 22.0;
                  }

                  v23 = *&qword_27F1E5FD8;
                  if (GKIsXRUIIdiomShouldUsePadUI())
                  {
                    v21 = 12.0;
                  }

                  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
                  v25 = OUTLINED_FUNCTION_26_18(v24);
                  *(v25 + 16) = xmmword_24E36D5F0;
                  v26 = OUTLINED_FUNCTION_18_28();
                  if (!v26)
                  {
                    goto LABEL_110;
                  }

                  v27 = OUTLINED_FUNCTION_39_4(v26);

                  v28 = [v0 view];
                  if (!v28)
                  {
LABEL_112:
                    __break(1u);
                    goto LABEL_113;
                  }

                  v29 = OUTLINED_FUNCTION_53_3(v28);

                  v30 = OUTLINED_FUNCTION_11_32();
                  v32 = [v30 v31];

                  *(v25 + 32) = v32;
                  v33 = OUTLINED_FUNCTION_18_28();
                  if (!v33)
                  {
LABEL_114:
                    __break(1u);
                    goto LABEL_115;
                  }

                  v34 = OUTLINED_FUNCTION_38_7(v33);

                  v35 = [v0 view];
                  if (!v35)
                  {
LABEL_116:
                    __break(1u);
                    goto LABEL_117;
                  }

                  v36 = v35;
                  v37 = [v35 v29 + 3365];

                  v38 = OUTLINED_FUNCTION_11_32();
                  v40 = [v38 v39];

                  *(v25 + 40) = v40;
                  v41 = OUTLINED_FUNCTION_18_28();
                  if (!v41)
                  {
LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }

                  v42 = OUTLINED_FUNCTION_54_2(v41);

                  v43 = [v0 view];
                  if (!v43)
                  {
LABEL_120:
                    __break(1u);
LABEL_121:
                    __break(1u);
                    goto LABEL_122;
                  }

                  v44 = OUTLINED_FUNCTION_54_2(v43);

                  v45 = OUTLINED_FUNCTION_11_32();
                  v47 = [v45 v46];

                  *(v25 + 48) = v47;
                  v48 = OUTLINED_FUNCTION_18_28();
                  if (!v48)
                  {
LABEL_122:
                    __break(1u);
                    goto LABEL_123;
                  }

                  v49 = v48;
                  v50 = (v16 + -320.0 - v19 - v20) * 0.5;
                  v51 = objc_opt_self();
                  v52 = [v49 widthAnchor];

                  v53 = [v52 constraintEqualToConstant_];
                  *(v25 + 56) = v53;
                  v54 = sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
                  v55 = OUTLINED_FUNCTION_40_7(v54);

                  v56 = OUTLINED_FUNCTION_11_32();
                  [v56 v57];

                  v58 = OUTLINED_FUNCTION_21_22();
                  v66 = OUTLINED_FUNCTION_8_50(v58, v59, v60, v61, v62, v63, v64, v65, xmmword_24E36D5F0);
                  if (!v66)
                  {
LABEL_124:
                    __break(1u);
LABEL_125:
                    __break(1u);
                    goto LABEL_126;
                  }

                  v67 = [v66 topAnchor];
                  v68 = [v0 view];
                  if (!v68)
                  {
LABEL_126:
                    __break(1u);
                    goto LABEL_127;
                  }

                  v69 = v68;
                  v70 = [v68 topAnchor];

                  v71 = OUTLINED_FUNCTION_13_36();
                  v73 = [v71 v72];

                  v74 = OUTLINED_FUNCTION_46_5();
                  if (!v74)
                  {
LABEL_128:
                    __break(1u);
                    goto LABEL_129;
                  }

                  v75 = OUTLINED_FUNCTION_56_2(v74);
                  v76 = [v0 view];
                  if (!v76)
                  {
LABEL_130:
                    __break(1u);
                    goto LABEL_131;
                  }

                  v77 = OUTLINED_FUNCTION_50_3(v76);

                  v78 = OUTLINED_FUNCTION_13_36();
                  v80 = [v78 v79];

                  v81 = OUTLINED_FUNCTION_45_5();
                  if (!v81)
                  {
LABEL_132:
                    __break(1u);
                    goto LABEL_133;
                  }

                  v82 = OUTLINED_FUNCTION_52_2(v81);
                  v83 = [v0 view];
                  if (!v83)
                  {
LABEL_134:
                    __break(1u);
                    goto LABEL_135;
                  }

                  v84 = v83;
                  v85 = [v83 v77[197]];

                  v86 = OUTLINED_FUNCTION_13_36();
                  v88 = [v86 v87];

                  v89 = OUTLINED_FUNCTION_43_5();
                  if (!v89)
                  {
LABEL_136:
                    __break(1u);
                    goto LABEL_137;
                  }

                  v90 = [v89 widthAnchor];
                  v91 = [v90 constraintEqualToConstant_];
                }

                else
                {
                  v126 = GKIsXRUIIdiomShouldUsePadUI();
                  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
                  v127 = OUTLINED_FUNCTION_26_18(v24);
                  *(v127 + 16) = xmmword_24E36D5F0;
                  v128 = OUTLINED_FUNCTION_18_28();
                  v129 = v128;
                  if (v126)
                  {
                    if (!v128)
                    {
LABEL_138:
                      __break(1u);
                      goto LABEL_139;
                    }

                    v130 = [v128 leadingAnchor];

                    v131 = [v0 view];
                    if (!v131)
                    {
LABEL_140:
                      __break(1u);
                      goto LABEL_141;
                    }

                    v132 = OUTLINED_FUNCTION_54_2(v131);

                    v133 = OUTLINED_FUNCTION_11_32();
                    v135 = [v133 v134];

                    *(v127 + 32) = v135;
                    v136 = OUTLINED_FUNCTION_18_28();
                    if (!v136)
                    {
LABEL_142:
                      __break(1u);
                      goto LABEL_143;
                    }

                    v137 = OUTLINED_FUNCTION_39_4(v136);

                    v138 = [v0 view];
                    if (!v138)
                    {
LABEL_144:
                      __break(1u);
                      goto LABEL_145;
                    }

                    v139 = OUTLINED_FUNCTION_53_3(v138);

                    v140 = OUTLINED_FUNCTION_11_32();
                    v142 = [v140 v141];

                    *(v127 + 40) = v142;
                    v143 = OUTLINED_FUNCTION_18_28();
                    if (!v143)
                    {
LABEL_146:
                      __break(1u);
                      goto LABEL_147;
                    }

                    v144 = OUTLINED_FUNCTION_38_7(v143);

                    v145 = [v0 view];
                    if (!v145)
                    {
LABEL_148:
                      __break(1u);
                      goto LABEL_149;
                    }

                    v146 = v145;
                    v147 = [v145 v139 + 3365];

                    v148 = OUTLINED_FUNCTION_11_32();
                    v150 = [v148 v149];

                    *(v127 + 48) = v150;
                    v151 = OUTLINED_FUNCTION_18_28();
                    if (!v151)
                    {
LABEL_150:
                      __break(1u);
                      goto LABEL_151;
                    }

                    v152 = v151;
                    v153 = [v151 widthAnchor];

                    v154 = [v0 view];
                    if (!v154)
                    {
LABEL_152:
                      __break(1u);
                      goto LABEL_153;
                    }

                    v155 = v154;
                    v51 = objc_opt_self();
                    v156 = [v155 widthAnchor];

                    v157 = [v153 constraintEqualToAnchor:v156 multiplier:0.387755102];
                    *(v127 + 56) = v157;
                    v158 = sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
                    v159 = OUTLINED_FUNCTION_40_7(v158);

                    v160 = OUTLINED_FUNCTION_11_32();
                    [v160 v161];

                    v162 = OUTLINED_FUNCTION_21_22();
                    v170 = OUTLINED_FUNCTION_8_50(v162, v163, v164, v165, v166, v167, v168, v169, xmmword_24E36D5F0);
                    if (!v170)
                    {
LABEL_155:
                      __break(1u);
                      goto LABEL_156;
                    }

                    v171 = OUTLINED_FUNCTION_52_2(v170);
                    v172 = [v0 view];
                    if (!v172)
                    {
LABEL_157:
                      __break(1u);
                      goto LABEL_158;
                    }

                    v173 = v172;
                    v174 = [v172 MEMORY[0x277CCB0F8]];

                    v175 = OUTLINED_FUNCTION_13_36();
                    v177 = [v175 v176];

                    v178 = OUTLINED_FUNCTION_46_5();
                    if (!v178)
                    {
LABEL_159:
                      __break(1u);
                      goto LABEL_160;
                    }

                    v179 = [v178 topAnchor];
                    v180 = [v0 view];
                    if (!v180)
                    {
LABEL_161:
                      __break(1u);
                      goto LABEL_162;
                    }

                    v181 = v180;
                    v182 = [v180 topAnchor];

                    v183 = OUTLINED_FUNCTION_13_36();
                    v185 = [v183 v184];

                    v186 = OUTLINED_FUNCTION_45_5();
                    if (!v186)
                    {
LABEL_163:
                      __break(1u);
                      goto LABEL_164;
                    }

                    v187 = OUTLINED_FUNCTION_56_2(v186);
                    v188 = [v0 view];
                    if (!v188)
                    {
LABEL_165:
                      __break(1u);
                      goto LABEL_166;
                    }

                    v189 = OUTLINED_FUNCTION_50_3(v188);

                    v190 = OUTLINED_FUNCTION_13_36();
                    v192 = [v190 v191];

                    v193 = OUTLINED_FUNCTION_43_5();
                    if (!v193)
                    {
LABEL_167:
                      __break(1u);
                      goto LABEL_168;
                    }

                    v194 = [v193 widthAnchor];
                    v195 = [v0 view];
                    if (!v195)
                    {
LABEL_169:
                      __break(1u);
                      goto LABEL_170;
                    }
                  }

                  else
                  {
                    if (!v128)
                    {
LABEL_139:
                      __break(1u);
                      goto LABEL_140;
                    }

                    v196 = [v128 leadingAnchor];

                    v197 = [v0 view];
                    if (!v197)
                    {
LABEL_141:
                      __break(1u);
                      goto LABEL_142;
                    }

                    v198 = OUTLINED_FUNCTION_54_2(v197);

                    v199 = OUTLINED_FUNCTION_11_32();
                    v201 = [v199 v200];

                    *(v127 + 32) = v201;
                    v202 = OUTLINED_FUNCTION_18_28();
                    if (!v202)
                    {
LABEL_143:
                      __break(1u);
                      goto LABEL_144;
                    }

                    v203 = OUTLINED_FUNCTION_39_4(v202);

                    v204 = [v0 view];
                    if (!v204)
                    {
LABEL_145:
                      __break(1u);
                      goto LABEL_146;
                    }

                    v205 = OUTLINED_FUNCTION_53_3(v204);

                    v206 = OUTLINED_FUNCTION_11_32();
                    v208 = [v206 v207];

                    *(v127 + 40) = v208;
                    v209 = OUTLINED_FUNCTION_18_28();
                    if (!v209)
                    {
LABEL_147:
                      __break(1u);
                      goto LABEL_148;
                    }

                    v210 = OUTLINED_FUNCTION_38_7(v209);

                    v211 = [v0 view];
                    if (!v211)
                    {
LABEL_149:
                      __break(1u);
                      goto LABEL_150;
                    }

                    v212 = v211;
                    v213 = [v211 v205 + 3365];

                    v214 = OUTLINED_FUNCTION_11_32();
                    v216 = [v214 v215];

                    *(v127 + 48) = v216;
                    v217 = OUTLINED_FUNCTION_18_28();
                    if (!v217)
                    {
LABEL_151:
                      __break(1u);
                      goto LABEL_152;
                    }

                    v218 = v217;
                    v219 = [v217 widthAnchor];

                    v220 = [v0 view];
                    if (!v220)
                    {
LABEL_153:
                      __break(1u);
                      goto LABEL_154;
                    }

                    v221 = v220;
                    v51 = objc_opt_self();
                    v222 = [v221 widthAnchor];

                    v223 = [v219 constraintEqualToAnchor:v222 multiplier:0.5];
                    *(v127 + 56) = v223;
                    v224 = sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
                    v225 = OUTLINED_FUNCTION_40_7(v224);

                    v226 = OUTLINED_FUNCTION_11_32();
                    [v226 v227];

                    v228 = OUTLINED_FUNCTION_21_22();
                    v236 = OUTLINED_FUNCTION_8_50(v228, v229, v230, v231, v232, v233, v234, v235, xmmword_24E36D5F0);
                    if (!v236)
                    {
LABEL_156:
                      __break(1u);
                      goto LABEL_157;
                    }

                    v237 = OUTLINED_FUNCTION_52_2(v236);
                    v238 = [v0 view];
                    if (!v238)
                    {
LABEL_158:
                      __break(1u);
                      goto LABEL_159;
                    }

                    v239 = v238;
                    v240 = [v238 MEMORY[0x277CCB0F8]];

                    v241 = OUTLINED_FUNCTION_13_36();
                    v243 = [v241 v242];

                    v244 = OUTLINED_FUNCTION_46_5();
                    if (!v244)
                    {
LABEL_160:
                      __break(1u);
                      goto LABEL_161;
                    }

                    v245 = [v244 topAnchor];
                    v246 = [v0 view];
                    if (!v246)
                    {
LABEL_162:
                      __break(1u);
                      goto LABEL_163;
                    }

                    v247 = v246;
                    v248 = [v246 topAnchor];

                    v249 = OUTLINED_FUNCTION_13_36();
                    v251 = [v249 v250];

                    v252 = OUTLINED_FUNCTION_45_5();
                    if (!v252)
                    {
LABEL_164:
                      __break(1u);
                      goto LABEL_165;
                    }

                    v253 = OUTLINED_FUNCTION_56_2(v252);
                    v254 = [v0 view];
                    if (!v254)
                    {
LABEL_166:
                      __break(1u);
                      goto LABEL_167;
                    }

                    v255 = OUTLINED_FUNCTION_50_3(v254);

                    v256 = OUTLINED_FUNCTION_13_36();
                    v258 = [v256 v257];

                    v259 = OUTLINED_FUNCTION_43_5();
                    if (!v259)
                    {
LABEL_168:
                      __break(1u);
                      goto LABEL_169;
                    }

                    v194 = [v259 widthAnchor];
                    v195 = [v0 view];
                    if (!v195)
                    {
LABEL_170:
                      __break(1u);
                      return;
                    }
                  }

                  v260 = v195;
                  v261 = [v195 widthAnchor];

                  v262 = OUTLINED_FUNCTION_13_36();
                  v91 = [v262 v263];
                }

                *(v24 + 56) = v91;
                v264 = sub_24E347EE8();

                [v51 activateConstraints_];
              }

              v295 = [v0 view];
              if (v295)
              {
                v296 = v295;
                [v295 setNeedsLayout];

                return;
              }

LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_104;
  }
}