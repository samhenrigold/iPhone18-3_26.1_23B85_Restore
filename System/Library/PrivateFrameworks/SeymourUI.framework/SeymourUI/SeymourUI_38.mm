void sub_20B950908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20C13C4C4();
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    (*(a5 + 80))(a3, a5, v11);
    v22 = v21;

    sub_20B95191C(v22);

    v23 = (*(a5 + 96))(v69, a3, a5);
    *(v24 + 16) = 0;

    v23(v69, 0);
    v25 = (*(a5 + 192))(a3, a5);
    if (v25)
    {
      v26 = v25;
      [v25 removeFromSuperview];
    }

    (*(a5 + 200))(0, a3, a5);
    goto LABEL_14;
  }

  v68 = v10;
  v14 = *(a5 + 192);

  v15 = v14(a3, a5);
  if (!v15)
  {
    v28 = objc_allocWithZone(type metadata accessor for RecencyIconView());
    v29 = sub_20B7219DC(1, a1, a2, 0.0, 0.0, 0.0, 0.0);
    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
    type metadata accessor for UILayoutPriority(0);
    v73 = 1144750080;
    v72 = 1065353216;
    sub_20B60B184();
    sub_20C13BB94();
    LODWORD(v30) = v69[0];
    [v29 setContentHuggingPriority:0 forAxis:v30];
    v67 = *(a5 + 104);
    v31 = v67(a3, a5);
    [v31 addSubview_];

    v32 = (*(a5 + 112))(a3, a5);
    if (v32)
    {
      v33 = v32;
      v34 = swift_allocObject();
      *(v34 + 16) = v29;
      v35 = v68;
      (*(v68 + 104))(v13, *MEMORY[0x277D851C0], v9);
      v36 = v29;
      sub_20BD519D8(v33, v13, sub_20B95199C, v34);

      (*(v35 + 8))(v13, v9);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_20C151490;
    v37 = [v29 leadingAnchor];
    v38 = v67(a3, a5);
    v39 = [v38 leadingAnchor];

    v64 = *(a5 + 136);
    v64(v69, a3, a5);
    v66 = v29;
    v63 = a5 + 104;
    v40 = v70;
    v41 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v42 = (*(v41 + 32))(v40, v41);
    v65 = *(a5 + 240);
    v65(a3, a5);
    v44 = v42 + v43;
    __swift_destroy_boxed_opaque_existential_1(v69);
    v45 = [v37 constraintEqualToAnchor:v39 constant:v44];

    *(v68 + 32) = v45;
    v46 = v66;
    v47 = [v66 bottomAnchor];

    v48 = v67(a3, a5);
    v49 = [v48 bottomAnchor];

    v64(v69, a3, a5);
    v50 = v70;
    v51 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v52 = -(*(v51 + 40))(v50, v51);
    __swift_destroy_boxed_opaque_existential_1(v69);
    v65(a3, a5);
    v54 = [v47 constraintEqualToAnchor:v49 constant:v52 - v53];

    v55 = v68;
    *(v68 + 40) = v54;
    v56 = objc_opt_self();
    sub_20B5E29D0();
    v57 = sub_20C13CC54();
    [v56 activateConstraints_];

    v58 = (*(a5 + 96))(v69, a3, a5);
    *(v59 + 16) = v55;

    v58(v69, 0);
    v60 = *(a5 + 200);
    v61 = v66;
    v62 = v66;
    v60(v61, a3, a5);

LABEL_14:
    sub_20B9510A8(a3, v27, a5);
    return;
  }

  v16 = v14(a3, a5);
  if (v16)
  {
    v17 = (v16 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title);
    *v17 = a1;
    v17[1] = a2;
    v18 = v16;

    v19 = *&v18[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label];

    v20 = sub_20C13C914();
    [v19 setText_];

    [v18 invalidateIntrinsicContentSize];
  }
}

id sub_20B9510A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 80);
  v7(a1, a3);
  v9 = v8;

  if (v9)
  {
    v10 = objc_opt_self();
    sub_20B5E29D0();
    v11 = sub_20C13CC54();

    [v10 deactivateConstraints_];

    v12 = (*(a3 + 96))(v66, a1, a3);
    *(v13 + 8) = 0;

    v12(v66, 0);
  }

  v14 = *(a3 + 192);
  v15 = v14(a1, a3);
  v65 = v7;
  if (v15)
  {
    v16 = v15;
    v17 = (*(a3 + 32))(a1, a3);
    if (v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_20C14F580;
      v20 = [v16 trailingAnchor];
      v64 = v18;
      v21 = [v18 leadingAnchor];
      (*(a3 + 136))(v66, a1, a3);
      v23 = v67;
      v22 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v24 = -(*(v22 + 24))(v23, v22);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v25 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:v24];

      *(v19 + 32) = v25;
      v26 = (*(a3 + 96))(v66, a1, a3);
      *(v27 + 8) = v19;

      v26(v66, 0);

      goto LABEL_14;
    }
  }

  v28 = v14(a1, a3);
  if (v28)
  {
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20C14F580;
    v64 = v29;
    v31 = [v29 leadingAnchor];
    v32 = (*(a3 + 104))(a1, a3);
    v33 = [v32 leadingAnchor];

    (*(a3 + 136))(v66, a1, a3);
    v34 = v67;
    v35 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v36 = (*(v35 + 32))(v34, v35);
    (*(a3 + 240))(a1, a3);
    v38 = v36 + v37;
    __swift_destroy_boxed_opaque_existential_1(v66);
    v39 = [v31 constraintLessThanOrEqualToAnchor:v33 constant:v38];
  }

  else
  {
    v40 = (*(a3 + 32))(a1, a3);
    if (v40)
    {
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_20C14F580;
      v64 = v41;
      v31 = [v41 leadingAnchor];
      v42 = (*(a3 + 104))(a1, a3);
      v33 = [v42 leadingAnchor];

      (*(a3 + 136))(v66, a1, a3);
      v43 = v67;
      v44 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v45 = (*(v44 + 8))(v43, v44);
      (*(a3 + 240))(a1, a3);
      v47 = v45 + v46;
      __swift_destroy_boxed_opaque_existential_1(v66);
      v39 = [v31 constraintGreaterThanOrEqualToAnchor:v33 constant:v47];
    }

    else
    {
      v48 = (*(a3 + 216))(a1, a3);
      if (!v48)
      {
        goto LABEL_15;
      }

      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_20C14F580;
      v64 = v49;
      v31 = [v49 leadingAnchor];
      v50 = (*(a3 + 104))(a1, a3);
      v33 = [v50 leadingAnchor];

      (*(a3 + 136))(v66, a1, a3);
      v51 = v67;
      v52 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v53 = (*(v52 + 48))(v51, v52);
      (*(a3 + 240))(a1, a3);
      v55 = v53 + v54;
      __swift_destroy_boxed_opaque_existential_1(v66);
      v39 = [v31 constraintGreaterThanOrEqualToAnchor:v33 constant:v55];
    }
  }

  v56 = v39;

  *(v30 + 32) = v56;
  v57 = (*(a3 + 96))(v66, a1, a3);
  *(v58 + 8) = v30;

  v57(v66, 0);
LABEL_14:

  v7 = v65;
LABEL_15:
  v7(a1, a3);
  v60 = v59;

  if (v60)
  {
    v61 = objc_opt_self();
    sub_20B5E29D0();
    v62 = sub_20C13CC54();

    [v61 activateConstraints_];
  }

  return [v4 setNeedsLayout];
}

id sub_20B951894(uint64_t a1, char *a2, void *a3)
{
  [*&a2[*a3] setImage_];

  return [a2 setNeedsLayout];
}

void sub_20B95191C(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_self();
    sub_20B5E29D0();
    v2 = sub_20C13CC54();
    [v1 deactivateConstraints_];
  }
}

id sub_20B9519B4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  [*&v3[*a2] setImage_];

  return [v3 setNeedsLayout];
}

id sub_20B951A08()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v2 = *MEMORY[0x277D74368];
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize_];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithDesign_];
  if (v6)
  {
    v7 = v6;

    v5 = v7;
  }

  v8 = [v3 fontWithDescriptor:v5 size:0.0];

  v9 = [v1 scaledFontForFont_];
  return v9;
}

double sub_20B951B74()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI10IndexLabel_label);
  [v1 intrinsicContentSize];
  v3 = v2;
  v4 = objc_opt_self();
  v5 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle;
  v6 = [v4 preferredFontForTextStyle_];
  [v6 smu:13.0 scaledValueForValue:?];
  v8 = v7;

  v9 = [v4 preferredFontForTextStyle_];
  v10 = v9;
  if (v8 >= v3)
  {
    [v9 smu:13.0 scaledValueForValue:?];
    v14 = v15;
  }

  else
  {
    [v9 smu:4.0 scaledValueForValue:?];
    v12 = v11;

    [v1 intrinsicContentSize];
    v14 = v12 + v12 + v13;
  }

  v16 = [v4 preferredFontForTextStyle_];
  [v16 smu:13.0 scaledValueForValue:?];

  return v14;
}

char *sub_20B951D00(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI10IndexLabel_layout];
  *v9 = xmmword_20C164270;
  *(v9 + 2) = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_label;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = [objc_opt_self() blackColor];
  [v11 setTextColor_];

  [v11 setTextAlignment_];
  *&v4[v10] = v11;
  v13 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_background;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v14 setBackgroundColor_];

  [v14 setClipsToBounds_];
  *&v4[v13] = v14;
  v16 = *MEMORY[0x277D769D0];
  *&v4[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle] = *MEMORY[0x277D769D0];
  v17 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_labelCenterYConstraint;
  v18 = objc_allocWithZone(MEMORY[0x277CCAAD0]);
  v19 = v16;
  *&v4[v17] = [v18 init];
  *&v4[OBJC_IVAR____TtC9SeymourUI10IndexLabel_index] = 1;
  v72.receiver = v4;
  v72.super_class = type metadata accessor for IndexLabel();
  v20 = objc_msgSendSuper2(&v72, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_background;
  v22 = *&v20[OBJC_IVAR____TtC9SeymourUI10IndexLabel_background];
  v23 = v20;
  [v23 addSubview_];
  v24 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_label;
  [v23 addSubview_];
  v25 = *&v23[v24];
  v26 = *&v23[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle];
  v27 = objc_allocWithZone(MEMORY[0x277D75520]);
  v28 = v25;
  v29 = [v27 initForTextStyle_];
  v30 = *MEMORY[0x277D74368];
  v31 = objc_opt_self();
  v32 = [v31 systemFontOfSize_];
  v33 = [v32 fontDescriptor];
  v34 = [v33 fontDescriptorWithDesign_];
  if (v34)
  {
    v35 = v34;

    v33 = v35;
  }

  v36 = [v31 fontWithDescriptor:v33 size:0.0];

  v37 = [v29 scaledFontForFont_];
  [v28 setFont_];

  v39 = *MEMORY[0x277D768C8];
  v38 = *(MEMORY[0x277D768C8] + 8);
  v40 = *(MEMORY[0x277D768C8] + 16);
  v41 = *(MEMORY[0x277D768C8] + 24);
  v42 = *&v20[v21];
  v43 = [v42 leadingAnchor];
  v44 = [v23 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v38];

  LODWORD(v46) = 1148846080;
  [v45 setPriority_];
  v47 = v45;
  v48 = [v42 trailingAnchor];
  v49 = [v23 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:-v41];

  LODWORD(v51) = 1148846080;
  [v50 setPriority_];
  v52 = v50;
  v53 = [v42 topAnchor];
  v54 = [v23 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:v39];

  LODWORD(v56) = 1148846080;
  [v55 setPriority_];
  v57 = [v42 bottomAnchor];
  v58 = [v23 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:-v40];

  LODWORD(v60) = 1148846080;
  [v59 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_20C14FE90;
  *(v61 + 32) = v47;
  *(v61 + 40) = v52;
  *(v61 + 48) = v55;
  *(v61 + 56) = v59;
  v62 = v55;

  v63 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v64 = sub_20C13CC54();

  [v63 activateConstraints_];

  v65 = [objc_opt_self() defaultCenter];
  [v65 addObserver:v23 selector:sel_textSizeUpdated_ name:*MEMORY[0x277D76810] object:0];

  LODWORD(v66) = 1148846080;
  [v23 setContentHuggingPriority:0 forAxis:v66];
  LODWORD(v67) = 1148846080;
  [v23 setContentHuggingPriority:1 forAxis:v67];
  v68 = v23;
  LODWORD(v69) = 1148846080;
  [v68 setContentCompressionResistancePriority:0 forAxis:v69];
  LODWORD(v70) = 1148846080;
  [v68 setContentCompressionResistancePriority:1 forAxis:v70];

  return v68;
}

id sub_20B952400(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for IndexLabel();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v2 = [*&v1[OBJC_IVAR____TtC9SeymourUI10IndexLabel_background] layer];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 smu:13.0 scaledValueForValue:?];
  v5 = v4;

  [v2 setCornerRadius_];
  v6 = *&v1[OBJC_IVAR____TtC9SeymourUI10IndexLabel_label];
  [v6 sizeToFit];
  v7 = [v6 attributedText];
  if (v7)
  {
    v8 = v7;
    [v7 boundingRectWithSize:3 options:0 context:{9.22337204e18, 9.22337204e18}];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v6 setFrame_];
  }

  [v1 bounds];
  sub_20C13D4E4();
  return [v6 setCenter_];
}

void sub_20B952710()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI10IndexLabel_index];
  if (qword_27C760830 != -1)
  {
    swift_once();
  }

  v2 = qword_27C768308;
  [qword_27C768308 setRoundingMode_];
  [v2 setMaximumFractionDigits_];
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v4 = [v2 stringFromNumber_];

  if (v4)
  {
    sub_20C13C954();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F320;
    v6 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v7 = *&v0[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle];
    v8 = objc_allocWithZone(MEMORY[0x277D75520]);
    v9 = v6;
    v10 = [v8 initForTextStyle_];
    v11 = *MEMORY[0x277D74368];
    v12 = objc_opt_self();
    v13 = [v12 systemFontOfSize_];
    v14 = [v13 fontDescriptor];
    v15 = [v14 fontDescriptorWithDesign_];
    if (v15)
    {
      v16 = v15;

      v14 = v16;
    }

    v17 = [v12 fontWithDescriptor:v14 size:0.0];

    v18 = [v10 scaledFontForFont_];
    v19 = sub_20B51C88C(0, &qword_27C767A60, 0x277D74300);
    *(inited + 40) = v18;
    v20 = *MEMORY[0x277D740C0];
    *(inited + 64) = v19;
    *(inited + 72) = v20;
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 blackColor];
    *(inited + 104) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
    *(inited + 80) = v23;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978, &unk_20C163AF0);
    swift_arrayDestroy();
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v25 = sub_20C13C914();

    type metadata accessor for Key(0);
    sub_20B76322C();
    v26 = sub_20C13C744();

    v27 = [v24 initWithString:v25 attributes:v26];

    [*&v0[OBJC_IVAR____TtC9SeymourUI10IndexLabel_label] setAttributedText_];
    [v0 setNeedsLayout];
    [v0 invalidateIntrinsicContentSize];
  }
}

id sub_20B952AE4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IndexLabel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20B952BB8()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI10IndexLabel_layout;
  *v1 = xmmword_20C164270;
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_label;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v4 = [objc_opt_self() blackColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  *(v0 + v2) = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_background;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v6 setBackgroundColor_];

  [v6 setClipsToBounds_];
  *(v0 + v5) = v6;
  v8 = *MEMORY[0x277D769D0];
  *(v0 + OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle) = *MEMORY[0x277D769D0];
  v9 = OBJC_IVAR____TtC9SeymourUI10IndexLabel_labelCenterYConstraint;
  v10 = objc_allocWithZone(MEMORY[0x277CCAAD0]);
  v11 = v8;
  *(v0 + v9) = [v10 init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI10IndexLabel_index) = 1;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B952DDC(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_20C13C7E4())
  {
    return 1;
  }

  result = sub_20B952ED8(v1, v2, v3);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = (result - 8232) < 2 || result == 133;
    return (result - 14) > 0xFFFFFFFB || v5;
  }

  return result;
}

uint64_t sub_20B952E64()
{
  sub_20B7B8B84();
  sub_20C13D054();
  return v1;
}

unint64_t sub_20B952ED8(unint64_t a1, unint64_t a2, __n128 a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v6 = sub_20B953028(0xFuLL, a1, a2, a3);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_20C13DC84();
    }

    else
    {
      v7 = v6 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v7;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v7);
      }

      else
      {
        v8 = (sub_20C13DD04() + v7);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v3 == 0;
  return v9 | ((v3 == 0) << 32);
}

unint64_t sub_20B953028(unint64_t result, unint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v4)
  {
    goto LABEL_9;
  }

  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_20B9530C0(result, a2, a3, a4);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_20B953134(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_20B9530C0(unint64_t result, unint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result & 0xC) == 4 << v4)
  {
    v6 = a2;
    v7 = a3;
    result = sub_20C0B6BD0(result, a2, a3);
    a2 = v6;
    a3 = v7;
  }

  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_20B953134(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_20C13DD04();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

void sub_20B953258(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C135914();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v11, v4);
  v12 = sub_20C1358D4();
  (*(v5 + 8))(v7, v4);
  v15 = a1;
  sub_20B6B7110(sub_20B959FC8, v12, v10);

  v13 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterConfiguration;
  swift_beginAccess();
  sub_20B959FE8(v10, v2 + v13);
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_hasValidModality) = 1;
  sub_20B953568();
}

BOOL sub_20B953438()
{
  v0 = sub_20C134734();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135CB4();
  v4 = sub_20C1346F4();
  (*(v1 + 8))(v3, v0);
  v5 = sub_20C1355F4();
  v6 = *(v4 + 16);
  v7 = 32;
  do
  {
    v8 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v10 = *(v4 + v7);
    v7 += 8;
  }

  while (v10 != v5);
  v11 = v8 != 0;

  return v11;
}

void sub_20B953568()
{
  v1 = sub_20C13C554();
  v109 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v108 = (&v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_20C132EE4();
  v111 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v125 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v113 = *(v5 - 8);
  v114 = v5;
  MEMORY[0x28223BE20](v5);
  v112 = &v105 - v6;
  v7 = sub_20C135C84();
  v123 = *(v7 - 8);
  v124 = v7;
  MEMORY[0x28223BE20](v7);
  v122 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = &v105 - v10;
  v118 = sub_20C133E24();
  v11 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v105 - v14;
  v16 = sub_20C13BB84();
  v119 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v115 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v105 - v19;
  sub_20C13B534();

  v21 = sub_20C13BB74();
  v22 = sub_20C13D1F4();

  LODWORD(v116) = v22;
  v23 = os_log_type_enabled(v21, v22);
  v110 = v1;
  v121 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v140[0] = v106;
    *v24 = 141558274;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2080;
    v107 = v16;
    v25 = v0;
    v26 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filter;
    swift_beginAccess();
    v27 = *(v11 + 16);
    v105 = v21;
    v28 = v118;
    v27(v15, v25 + v26, v118);
    sub_20B959F80(&qword_27C769C00, MEMORY[0x277D504B0], MEMORY[0x277D504B8]);
    v29 = sub_20C13DFA4();
    v31 = v30;
    (*(v11 + 8))(v15, v28);
    v32 = sub_20B51E694(v29, v31, v140);

    *(v24 + 14) = v32;
    v0 = v25;
    v16 = v107;
    v33 = v105;
    _os_log_impl(&dword_20B517000, v105, v116, "SelectedFilterShelf - updating with %{mask.hash}s", v24, 0x16u);
    v34 = v106;
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x20F2F6A40](v34, -1, -1);
    MEMORY[0x20F2F6A40](v24, -1, -1);

    v35 = *(v119 + 8);
    v35(v20, v16);
  }

  else
  {

    v35 = *(v119 + 8);
    v35(v20, v16);
    v28 = v118;
  }

  v36 = v0;
  v37 = v120;
  sub_20C134E84();
  if ((*(v123 + 48))(v37, 1, v124) == 1)
  {
    sub_20B520158(v37, &unk_27C7629B0, &unk_20C1510C0);
    v38 = v121;
    v39 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20B959E54(v37, MEMORY[0x277D52060]);
    v38 = v121;
    v39 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
    if (EnumCaseMultiPayload == 4 && (*(v36 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_hasValidModality) & 1) == 0)
    {
      v97 = v115;
      sub_20C13B534();
      v98 = sub_20C13BB74();
      v99 = sub_20C13D1F4();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_20B517000, v98, v99, "[SelectedFilterShelf] Aborting row creation due to missing modality", v100, 2u);
        MEMORY[0x20F2F6A40](v100, -1, -1);
      }

      v35(v97, v16);
      return;
    }
  }

  v41 = v39[427];
  swift_beginAccess();
  v42 = *(v38 + 16);
  v124 = v36;
  v43 = v36 + v41;
  v44 = v117;
  v42(v117, v43, v28);
  v45 = sub_20C133E04();
  (*(v38 + 8))(v44, v28);
  v46 = 1 << *(v45 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v45 + 56);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v51 = 0;
  v121 = MEMORY[0x277D84F90];
  while (v48)
  {
    v52 = v124;
    v53 = v122;
LABEL_18:
    sub_20B747A04(*(v45 + 48) + *(v123 + 72) * (__clz(__rbit64(v48)) | (v50 << 6)), v53);
    sub_20B9543BC(v53, v52, v140);
    v48 &= v48 - 1;
    sub_20B959E54(v53, MEMORY[0x277D52060]);
    v55 = *&v140[0];
    if ((~*&v140[0] & 0xF000000000000007) != 0)
    {
      v56 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_20BC05D3C(0, *(v56 + 2) + 1, 1, v56);
      }

      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v121 = v58 + 1;
        v60 = v56;
        v61 = v58;
        v62 = sub_20BC05D3C((v57 > 1), v58 + 1, 1, v60);
        v59 = v121;
        v58 = v61;
        v56 = v62;
      }

      *(v56 + 2) = v59;
      v121 = v56;
      *&v56[8 * v58 + 32] = v55;
    }
  }

  v52 = v124;
  v53 = v122;
  while (1)
  {
    v54 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v54 >= v49)
    {
      break;
    }

    v48 = *(v45 + 56 + 8 * v54);
    ++v50;
    if (v48)
    {
      v50 = v54;
      goto LABEL_18;
    }
  }

  v131 = 0uLL;
  LOBYTE(v132) = 1;
  *(&v132 + 1) = 0;
  *&v133 = 0;
  WORD4(v133) = 128;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  LOBYTE(v137) = 0;
  *(&v137 + 1) = v121;
  *&v138[0] = MEMORY[0x277D84F90];
  *(v138 + 8) = 0u;
  *(&v138[1] + 8) = 0u;
  *(&v138[2] + 1) = 0;
  v139 = 2;
  nullsub_1();
  v63 = v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row;
  v64 = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 144);
  v140[8] = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 128);
  v140[9] = v64;
  v141 = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 160);
  v65 = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 80);
  v140[4] = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 64);
  v140[5] = v65;
  v66 = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 112);
  v140[6] = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 96);
  v140[7] = v66;
  v67 = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 16);
  v140[0] = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row);
  v140[1] = v67;
  v68 = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 48);
  v140[2] = *(v52 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 32);
  v140[3] = v68;
  v69 = v138[2];
  *(v63 + 8) = v138[1];
  *(v63 + 9) = v69;
  *(v63 + 20) = v139;
  v70 = v136;
  *(v63 + 4) = v135;
  *(v63 + 5) = v70;
  v71 = v138[0];
  *(v63 + 6) = v137;
  *(v63 + 7) = v71;
  v72 = v132;
  *v63 = v131;
  *(v63 + 1) = v72;
  v73 = v134;
  *(v63 + 2) = v133;
  *(v63 + 3) = v73;
  sub_20B520158(v140, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    goto LABEL_47;
  }

  v107 = Strong;
  if (![*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_46:
    sub_20C0C2D50(0);
LABEL_47:
    swift_unknownObjectRelease();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v75 = v112;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v76 = v114;
  v77 = sub_20C13BE74();
  (*(v113 + 8))(v75, v76);
  v53 = v111;
  v120 = *(v77 + 16);
  v121 = v77;
  if (!v120)
  {
LABEL_44:

    goto LABEL_46;
  }

  v78 = 0;
  v118 = v121 + 32;
  v119 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_identifier;
  v116 = (v111 + 8);
  v117 = (v111 + 16);
  while (2)
  {
    if (v78 < *(v121 + 16))
    {
      v79 = (v118 + 24 * v78);
      v115 = *v79;
      v80 = v52;
      v82 = v79[1];
      v81 = v79[2];
      v122 = (v78 + 1);
      (*v117)(v125, v80 + v119, v3);
      v83 = *(v82 + 16);

      v123 = v81;

      v84 = 0;
      do
      {
        if (v83 == v84)
        {
          (*v116)(v125, v3);
          goto LABEL_31;
        }

        v85 = v84 + 1;
        sub_20B959F80(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v86 = sub_20C13C894();
        v84 = v85;
      }

      while ((v86 & 1) == 0);
      (*v116)(v125, v3);
      v87 = *(v63 + 9);
      v128 = *(v63 + 8);
      v129 = v87;
      v130 = *(v63 + 20);
      v88 = *(v63 + 5);
      v127[4] = *(v63 + 4);
      v127[5] = v88;
      v89 = *(v63 + 7);
      v127[6] = *(v63 + 6);
      v127[7] = v89;
      v90 = *(v63 + 1);
      v127[0] = *v63;
      v127[1] = v90;
      v91 = *(v63 + 3);
      v127[2] = *(v63 + 2);
      v127[3] = v91;
      v92 = sub_20B5EAF8C(v127);
      if (v92 == 1)
      {
        v93 = 0;
        v94 = 0;
      }

      else
      {
        v93 = *(&v128 + 1);
        v94 = v129;
      }

      v95 = v123;
      v114 = &v105;
      v126[0] = v93;
      v126[1] = v94;
      MEMORY[0x28223BE20](v92);
      *(&v105 - 2) = v126;
      v96 = sub_20B796758(sub_20B5EAFA4, &(&v105)[-4], v95);

      if ((v96 & 1) == 0)
      {
LABEL_31:

        v78 = v122;
        v52 = v124;
        if (v122 == v120)
        {
          goto LABEL_44;
        }

        continue;
      }

      sub_20B5E2E18();
      v101 = sub_20C13D374();
      v103 = v108;
      v102 = v109;
      *v108 = v101;
      v51 = v110;
      (*(v102 + 104))(v103, *MEMORY[0x277D85200], v110);
      v104 = sub_20C13C584();
      (*(v102 + 8))(v103, v51);
      if ((v104 & 1) == 0)
      {
        goto LABEL_53;
      }

      sub_20B61E0A8(v115, v82, v123, v124, 1, v107);

      goto LABEL_47;
    }

    break;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);

  sub_20B959E54(v53, MEMORY[0x277D52060]);

  __break(1u);
}

void sub_20B9543BC(uint64_t a1@<X0>, void (**a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v463 = a3;
  v440 = sub_20C134E04();
  v450 = *(v440 - 8);
  MEMORY[0x28223BE20](v440);
  v395 = &v389 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v458 = &v389 - v7;
  MEMORY[0x28223BE20](v8);
  v434 = &v389 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78, &qword_20C156788);
  MEMORY[0x28223BE20](v10 - 8);
  v413 = &v389 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v414 = &v389 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0, &unk_20C1643D0);
  MEMORY[0x28223BE20](v14 - 8);
  v410 = &v389 - v15;
  v439 = sub_20C1370C4();
  v449 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v457 = &v389 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v433 = &v389 - v18;
  MEMORY[0x28223BE20](v19);
  v394 = &v389 - v20;
  v438 = sub_20C133A74();
  v448 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v393 = &v389 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v456 = &v389 - v23;
  MEMORY[0x28223BE20](v24);
  v432 = &v389 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600, &unk_20C175400);
  MEMORY[0x28223BE20](v26 - 8);
  v407 = &v389 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v409 = &v389 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v30 - 8);
  v408 = &v389 - v31;
  v397 = sub_20C135654();
  v396 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v412 = &v389 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_20C1334D4();
  v447 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v411 = &v389 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v455 = &v389 - v35;
  MEMORY[0x28223BE20](v36);
  v431 = &v389 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758, &unk_20C176700);
  MEMORY[0x28223BE20](v38 - 8);
  v406 = &v389 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v423 = &v389 - v41;
  v441 = sub_20C1333E4();
  v446 = *(v441 - 8);
  MEMORY[0x28223BE20](v441);
  v392 = &v389 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v454 = &v389 - v44;
  MEMORY[0x28223BE20](v45);
  v430 = &v389 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0, &unk_20C1643E0);
  MEMORY[0x28223BE20](v47 - 8);
  v404 = &v389 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v405 = &v389 - v50;
  v437 = sub_20C1365F4();
  v445 = *(v437 - 8);
  MEMORY[0x28223BE20](v437);
  v391 = &v389 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v453 = &v389 - v53;
  MEMORY[0x28223BE20](v54);
  v429 = &v389 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v56 - 8);
  v402 = &v389 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v403 = &v389 - v59;
  v426 = sub_20C1341A4();
  v425 = *(v426 - 8);
  MEMORY[0x28223BE20](v426);
  v424 = &v389 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = sub_20C1382B4();
  v444 = *(v436 - 8);
  MEMORY[0x28223BE20](v436);
  v390 = &v389 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v452 = &v389 - v63;
  MEMORY[0x28223BE20](v64);
  v428 = &v389 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8, &unk_20C1643F0);
  MEMORY[0x28223BE20](v66 - 8);
  v400 = &v389 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v401 = &v389 - v69;
  v435 = sub_20C138244();
  v443 = *(v435 - 8);
  MEMORY[0x28223BE20](v435);
  v389 = &v389 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v451 = &v389 - v72;
  MEMORY[0x28223BE20](v73);
  v427 = &v389 - v74;
  v75 = sub_20C135914();
  v76 = *(v75 - 8);
  v459 = v75;
  v460 = v76;
  MEMORY[0x28223BE20](v75);
  v422 = &v389 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v421 = &v389 - v79;
  MEMORY[0x28223BE20](v80);
  v420 = &v389 - v81;
  MEMORY[0x28223BE20](v82);
  v419 = &v389 - v83;
  MEMORY[0x28223BE20](v84);
  v418 = &v389 - v85;
  MEMORY[0x28223BE20](v86);
  v417 = &v389 - v87;
  MEMORY[0x28223BE20](v88);
  v416 = &v389 - v89;
  MEMORY[0x28223BE20](v90);
  v415 = &v389 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710, &qword_20C176710);
  MEMORY[0x28223BE20](v92 - 8);
  v398 = &v389 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v399 = &v389 - v95;
  v96 = sub_20C135C84();
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v99 = (&v389 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v100 - 8);
  v102 = &v389 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v105 = &v389 - v104;
  v461 = a2;
  sub_20C134E84();
  v462 = a1;
  sub_20B85D4A8();
  sub_20B52F9E8(v105, v102, &unk_27C7629B0, &unk_20C1510C0);
  if ((*(v97 + 48))(v102, 1, v96) == 1)
  {
    sub_20B520158(v105, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B520158(v102, &unk_27C7629B0, &unk_20C1510C0);
LABEL_3:
    sub_20B747A04(v462, v99);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v196 = v99[1];
        v458 = *v99;
        v197 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
        v198 = v461;
        swift_beginAccess();
        v200 = v459;
        v199 = v460;
        v201 = v198 + v197;
        v202 = v415;
        (*(v460 + 16))(v415, v201, v459);
        v203 = sub_20C135894();
        (*(v199 + 8))(v202, v200);
        v204 = 1 << *(v203 + 32);
        v205 = -1;
        if (v204 < 64)
        {
          v205 = ~(-1 << v204);
        }

        v206 = v205 & *(v203 + 56);
        v207 = (v204 + 63) >> 6;
        v457 = (v443 + 16);
        v460 = v443 + 8;
        v461 = (v443 + 32);

        v208 = 0;
        v209 = v435;
        v459 = v196;
        if (v206)
        {
          goto LABEL_59;
        }

        while (1)
        {
LABEL_60:
          v210 = v208 + 1;
          if (__OFADD__(v208, 1))
          {
            goto LABEL_191;
          }

          if (v210 >= v207)
          {
            break;
          }

          v206 = *(v203 + 56 + 8 * v210);
          ++v208;
          if (v206)
          {
            while (1)
            {
              v211 = v443;
              v212 = v427;
              (*(v443 + 16))(v427, *(v203 + 48) + *(v443 + 72) * (__clz(__rbit64(v206)) | (v210 << 6)), v209);
              v213 = *(v211 + 32);
              v213(v451, v212, v209);
              if (sub_20C138224() == v458 && v214 == v459)
              {

                goto LABEL_148;
              }

              v215 = sub_20C13DFF4();

              if (v215)
              {
                break;
              }

              v206 &= v206 - 1;
              v209 = v435;
              (*v460)(v451, v435);
              v208 = v210;
              if (!v206)
              {
                goto LABEL_60;
              }

LABEL_59:
              v210 = v208;
            }

            v209 = v435;
LABEL_148:

            v297 = v399;
            v213(v399, v451, v209);
            v301 = 0;
            goto LABEL_149;
          }
        }

        v301 = 1;
        v297 = v399;
LABEL_149:
        v309 = v398;
        v338 = v443;
        (*(v443 + 56))(v297, v301, 1, v209);

        sub_20B52F9E8(v297, v309, &qword_27C762710, &qword_20C176710);
        if ((*(v338 + 48))(v309, 1, v209) == 1)
        {
          v311 = &qword_27C762710;
          v312 = &qword_20C176710;
          goto LABEL_176;
        }

        v339 = v389;
        (*v461)(v389, v309, v209);
        v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v315 = swift_allocBox();
        v317 = v341;
        v342 = v209;
        v319 = *(v340 + 48);
        v320 = sub_20C138234();
        v322 = v343;
        (*v460)(v339, v342);
        v323 = &qword_27C762710;
        v324 = &qword_20C176710;
        goto LABEL_182;
      case 3u:
        v216 = v99[1];
        v458 = *v99;
        v217 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
        v218 = v461;
        swift_beginAccess();
        v220 = v459;
        v219 = v460;
        v221 = v218 + v217;
        v222 = v416;
        (*(v460 + 16))(v416, v221, v459);
        v223 = sub_20C135904();
        (*(v219 + 8))(v222, v220);
        v224 = 1 << *(v223 + 32);
        v225 = -1;
        if (v224 < 64)
        {
          v225 = ~(-1 << v224);
        }

        v226 = v225 & *(v223 + 56);
        v227 = (v224 + 63) >> 6;
        v457 = (v444 + 16);
        v460 = v444 + 8;
        v461 = (v444 + 32);

        v228 = 0;
        v229 = v436;
        v459 = v216;
        if (v226)
        {
          goto LABEL_71;
        }

        while (1)
        {
LABEL_72:
          v230 = v228 + 1;
          if (__OFADD__(v228, 1))
          {
            goto LABEL_192;
          }

          if (v230 >= v227)
          {
            break;
          }

          v226 = *(v223 + 56 + 8 * v230);
          ++v228;
          if (v226)
          {
            while (1)
            {
              v231 = v444;
              v232 = v428;
              (*(v444 + 16))(v428, *(v223 + 48) + *(v444 + 72) * (__clz(__rbit64(v226)) | (v230 << 6)), v229);
              v233 = *(v231 + 32);
              v233(v452, v232, v229);
              if (sub_20C138294() == v458 && v234 == v459)
              {

                goto LABEL_153;
              }

              v235 = sub_20C13DFF4();

              if (v235)
              {
                break;
              }

              v226 &= v226 - 1;
              v229 = v436;
              (*v460)(v452, v436);
              v228 = v230;
              if (!v226)
              {
                goto LABEL_72;
              }

LABEL_71:
              v230 = v228;
            }

            v229 = v436;
LABEL_153:

            v297 = v401;
            v233(v401, v452, v229);
            v302 = 0;
            goto LABEL_154;
          }
        }

        v302 = 1;
        v297 = v401;
LABEL_154:
        v309 = v400;
        v344 = v444;
        (*(v444 + 56))(v297, v302, 1, v229);

        sub_20B52F9E8(v297, v309, &qword_27C7627E8, &unk_20C1643F0);
        if ((*(v344 + 48))(v309, 1, v229) == 1)
        {
          v311 = &qword_27C7627E8;
          v312 = &unk_20C1643F0;
          goto LABEL_176;
        }

        v345 = v390;
        (*v461)(v390, v309, v229);
        v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v315 = swift_allocBox();
        v317 = v347;
        v348 = v229;
        v319 = *(v346 + 48);
        v320 = sub_20C1382A4();
        v322 = v349;
        (*v460)(v345, v348);
        v323 = &qword_27C7627E8;
        v324 = &unk_20C1643F0;
        goto LABEL_182;
      case 4u:
        v136 = *v99;
        v457 = v99[1];
        v458 = v136;
        v137 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
        v138 = v461;
        swift_beginAccess();
        v140 = v459;
        v139 = v460;
        v141 = v138 + v137;
        v142 = v417;
        (*(v460 + 16))(v417, v141, v459);
        v143 = sub_20C135874();
        (*(v139 + 8))(v142, v140);
        v144 = 1 << *(v143 + 32);
        v145 = -1;
        if (v144 < 64)
        {
          v145 = ~(-1 << v144);
        }

        v146 = v145 & *(v143 + 56);
        v147 = (v144 + 63) >> 6;
        v461 = (v445 + 32);
        v459 = (v445 + 16);
        v460 = v445 + 8;

        v148 = 0;
        v149 = v437;
        if (v146)
        {
          goto LABEL_23;
        }

        do
        {
LABEL_24:
          v150 = v148 + 1;
          if (__OFADD__(v148, 1))
          {
            __break(1u);
            goto LABEL_189;
          }

          if (v150 >= v147)
          {

            v296 = 1;
            v297 = v403;
            goto LABEL_134;
          }

          v146 = *(v143 + 56 + 8 * v150);
          ++v148;
        }

        while (!v146);
        while (1)
        {
          v151 = v445;
          v152 = v429;
          (*(v445 + 16))(v429, *(v143 + 48) + *(v445 + 72) * (__clz(__rbit64(v146)) | (v150 << 6)), v149);
          v153 = *(v151 + 32);
          v153(v453, v152, v149);
          if (sub_20C1365A4() == v458 && v154 == v457)
          {

            goto LABEL_133;
          }

          v155 = sub_20C13DFF4();

          if (v155)
          {
            break;
          }

          v146 &= v146 - 1;
          v149 = v437;
          (*v460)(v453, v437);
          v148 = v150;
          if (!v146)
          {
            goto LABEL_24;
          }

LABEL_23:
          v150 = v148;
        }

        v149 = v437;
LABEL_133:

        v297 = v403;
        v153(v403, v453, v149);
        v296 = 0;
LABEL_134:
        v309 = v402;
        v310 = v445;
        (*(v445 + 56))(v297, v296, 1, v149);

        sub_20B52F9E8(v297, v309, &qword_27C771090, &qword_20C15A040);
        if ((*(v310 + 48))(v309, 1, v149) == 1)
        {
          v311 = &qword_27C771090;
          v312 = &qword_20C15A040;
          goto LABEL_176;
        }

        v313 = v391;
        (*v461)(v391, v309, v149);
        v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v315 = swift_allocBox();
        v317 = v316;
        v318 = v149;
        v319 = *(v314 + 48);
        v320 = sub_20C1365E4();
        v322 = v321;
        (*v460)(v313, v318);
        v323 = &qword_27C771090;
        v324 = &qword_20C15A040;
        goto LABEL_182;
      case 5u:
        v156 = v99[1];
        v458 = *v99;
        v157 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
        v158 = v461;
        swift_beginAccess();
        v160 = v459;
        v159 = v460;
        v161 = v158 + v157;
        v162 = v418;
        (*(v460 + 16))(v418, v161, v459);
        v163 = sub_20C1358A4();
        (*(v159 + 8))(v162, v160);
        v164 = 1 << *(v163 + 32);
        v165 = -1;
        if (v164 < 64)
        {
          v165 = ~(-1 << v164);
        }

        v166 = v165 & *(v163 + 56);
        v167 = (v164 + 63) >> 6;
        v457 = (v446 + 16);
        v460 = v446 + 8;
        v461 = (v446 + 32);

        v168 = 0;
        v169 = v441;
        v459 = v156;
        if (v166)
        {
          goto LABEL_35;
        }

        do
        {
LABEL_36:
          v170 = v168 + 1;
          if (__OFADD__(v168, 1))
          {
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          if (v170 >= v167)
          {

            v298 = 1;
            v297 = v405;
            goto LABEL_139;
          }

          v166 = *(v163 + 56 + 8 * v170);
          ++v168;
        }

        while (!v166);
        while (1)
        {
          v171 = v446;
          v172 = v430;
          (*(v446 + 16))(v430, *(v163 + 48) + *(v446 + 72) * (__clz(__rbit64(v166)) | (v170 << 6)), v169);
          v173 = *(v171 + 32);
          v173(v454, v172, v169);
          if (sub_20C1333B4() == v458 && v174 == v459)
          {

            goto LABEL_138;
          }

          v175 = sub_20C13DFF4();

          if (v175)
          {
            break;
          }

          v166 &= v166 - 1;
          v169 = v441;
          (*v460)(v454, v441);
          v168 = v170;
          if (!v166)
          {
            goto LABEL_36;
          }

LABEL_35:
          v170 = v168;
        }

LABEL_138:

        v297 = v405;
        v169 = v441;
        v173(v405, v454, v441);
        v298 = 0;
LABEL_139:
        v325 = v404;
        v326 = v446;
        (*(v446 + 56))(v297, v298, 1, v169);

        sub_20B52F9E8(v297, v325, &qword_27C764AA0, &unk_20C1643E0);
        if ((*(v326 + 48))(v325, 1, v169) == 1)
        {
          v311 = &qword_27C764AA0;
          v312 = &unk_20C1643E0;
          sub_20B520158(v297, &qword_27C764AA0, &unk_20C1643E0);
          v112 = v325;
          goto LABEL_177;
        }

        v327 = v392;
        (*v461)(v392, v325, v169);
        v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v315 = swift_allocBox();
        v317 = v329;
        v319 = *(v328 + 48);
        v330 = v169;
        v320 = sub_20C1333D4();
        v322 = v331;
        (*v460)(v327, v330);
        v323 = &qword_27C764AA0;
        v324 = &unk_20C1643E0;
        goto LABEL_182;
      case 6u:
        (*(v425 + 32))(v424, v99, v426);
        sub_20C134194();
        v115 = v114 / 60.0;
        if ((*&v115 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_196;
        }

        if (v115 <= -9.22337204e18)
        {
          goto LABEL_197;
        }

        if (v115 >= 9.22337204e18)
        {
          goto LABEL_198;
        }

        v116 = v115;
        v117 = (v461 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_storefrontLocalizer);
        __swift_project_boxed_opaque_existential_1((v461 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_storefrontLocalizer), *(v461 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_storefrontLocalizer + 24));
        v464 = v116;
        v118 = sub_20C138CA4();
        if (v119)
        {
          v120 = v118;
        }

        else
        {
          v120 = 0;
        }

        if (v119)
        {
          v121 = v119;
        }

        else
        {
          v121 = 0xE000000000000000;
        }

        __swift_project_boxed_opaque_existential_1(v117, v117[3]);
        v122 = sub_20C138D34();
        v124 = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_20C14F320;
        v126 = MEMORY[0x277D837D0];
        *(v125 + 56) = MEMORY[0x277D837D0];
        v127 = sub_20B5D91B8();
        *(v125 + 32) = v120;
        *(v125 + 40) = v121;
        *(v125 + 96) = v126;
        *(v125 + 104) = v127;
        *(v125 + 64) = v127;
        *(v125 + 72) = v122;
        *(v125 + 80) = v124;
        v128 = sub_20C13C924();
        v130 = v129;

        (*(v425 + 8))(v424, v426);
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v132 = swift_allocBox();
        v133 = *(v131 + 48);
        *v134 = v128;
        v134[1] = v130;
        sub_20B747A04(v462, v134 + v133);
        v135 = v132 | 0x6000000000000006;
        goto LABEL_180;
      case 7u:
        v236 = v99[1];
        v458 = *v99;
        v237 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
        v238 = v461;
        swift_beginAccess();
        v239 = v460;
        v240 = v238 + v237;
        v241 = v419;
        v242 = v459;
        (*(v460 + 16))(v419, v240, v459);
        v243 = sub_20C1358B4();
        (*(v239 + 8))(v241, v242);
        v244 = 1 << *(v243 + 32);
        v245 = -1;
        if (v244 < 64)
        {
          v245 = ~(-1 << v244);
        }

        v246 = v245 & *(v243 + 56);
        v247 = (v244 + 63) >> 6;
        v456 = (v447 + 16);
        v459 = (v447 + 8);
        v460 = v447 + 32;

        v248 = 0;
        v249 = v442;
        v457 = v236;
        if (v246)
        {
          goto LABEL_83;
        }

        do
        {
LABEL_84:
          v250 = v248 + 1;
          if (__OFADD__(v248, 1))
          {
            goto LABEL_193;
          }

          if (v250 >= v247)
          {

            v303 = 1;
            v304 = v412;
            v305 = v411;
            v306 = v423;
            goto LABEL_159;
          }

          v246 = *(v243 + 56 + 8 * v250);
          ++v248;
        }

        while (!v246);
        while (1)
        {
          v251 = v447;
          v252 = v431;
          (*(v447 + 16))(v431, *(v243 + 48) + *(v447 + 72) * (__clz(__rbit64(v246)) | (v250 << 6)), v249);
          v253 = *(v251 + 32);
          v253(v455, v252, v249);
          if (sub_20C1334A4() == v458 && v254 == v457)
          {

            goto LABEL_158;
          }

          v255 = sub_20C13DFF4();

          if (v255)
          {
            break;
          }

          v246 &= v246 - 1;
          v249 = v442;
          (*v459)(v455, v442);
          v248 = v250;
          if (!v246)
          {
            goto LABEL_84;
          }

LABEL_83:
          v250 = v248;
        }

LABEL_158:

        v306 = v423;
        v249 = v442;
        v253(v423, v455, v442);
        v303 = 0;
        v304 = v412;
        v305 = v411;
LABEL_159:
        v350 = v408;
        v351 = v406;
        v352 = v447;
        (*(v447 + 56))(v306, v303, 1, v249);

        sub_20B52F9E8(v306, v351, &qword_27C762758, &unk_20C176700);
        if ((*(v352 + 48))(v351, 1, v249) == 1)
        {
          v311 = &qword_27C762758;
          v312 = &unk_20C176700;
          sub_20B520158(v306, &qword_27C762758, &unk_20C176700);
          v112 = v351;
          goto LABEL_177;
        }

        (*v460)(v305, v351, v249);
        v353 = v249;
        v354 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterConfiguration;
        v355 = v461;
        swift_beginAccess();
        sub_20B52F9E8(v355 + v354, v350, &qword_27C762AE0, &unk_20C151420);
        v356 = v396;
        v357 = v397;
        if ((*(v396 + 48))(v350, 1, v397) == 1)
        {
          (*v459)(v305, v353);
          sub_20B520158(v306, &qword_27C762758, &unk_20C176700);
          v110 = &qword_27C762AE0;
          v111 = &unk_20C151420;
          v112 = v350;
          goto LABEL_178;
        }

        (*(v356 + 32))(v304, v350, v357);
        v358 = sub_20C1334B4();
        if (!v359)
        {
          (*(v356 + 8))(v304, v357);
          (*v459)(v305, v442);
          v110 = &qword_27C762758;
          v111 = &unk_20C176700;
          v112 = v306;
          goto LABEL_178;
        }

        v360 = v359;
        v361 = v358;
        v362 = sub_20C135624();
        if (*(v362 + 16))
        {
          v363 = sub_20B65AA60(v361, v360);
          v365 = v364;

          if (v365)
          {
            v366 = (*(v362 + 56) + 16 * v363);
            v368 = *v366;
            v367 = v366[1];

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
            v369 = swift_allocBox();
            v371 = v370;
            (*(v396 + 8))(v304, v397);
            (*v459)(v305, v442);
            v372 = v306;
LABEL_187:
            sub_20B520158(v372, &qword_27C762758, &unk_20C176700);
            *v371 = v368;
            v371[1] = v367;
            v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
            v388 = swift_projectBox();
            sub_20B747A04(v462, v388 + *(v387 + 48));
            v135 = v369 | 0x6000000000000006;
            goto LABEL_180;
          }
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v369 = swift_allocBox();
        v371 = v385;
        __swift_project_boxed_opaque_existential_1((v461 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_storefrontLocalizer), *(v461 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_storefrontLocalizer + 24));
        sub_20C1334C4();
        v368 = sub_20C138D34();
        v367 = v386;

        (*(v396 + 8))(v304, v397);
        (*v459)(v305, v442);
        v372 = v423;
        goto LABEL_187;
      case 8u:
        v256 = *v99;
        v457 = v99[1];
        v458 = v256;
        v257 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
        v258 = v461;
        swift_beginAccess();
        v259 = v460;
        v260 = v258 + v257;
        v261 = v420;
        v262 = v459;
        (*(v460 + 16))(v420, v260, v459);
        sub_20C135864();
        (*(v259 + 8))(v261, v262);
        v263 = sub_20C13CFB4();

        v264 = 1 << *(v263 + 32);
        v265 = -1;
        if (v264 < 64)
        {
          v265 = ~(-1 << v264);
        }

        v266 = v265 & *(v263 + 56);
        v267 = (v264 + 63) >> 6;
        v461 = (v448 + 32);
        v459 = (v448 + 16);
        v460 = v448 + 8;

        v268 = 0;
        v269 = v438;
        if (v266)
        {
          goto LABEL_95;
        }

        while (1)
        {
LABEL_96:
          v270 = v268 + 1;
          if (__OFADD__(v268, 1))
          {
            goto LABEL_194;
          }

          if (v270 >= v267)
          {
            break;
          }

          v266 = *(v263 + 56 + 8 * v270);
          ++v268;
          if (v266)
          {
            while (1)
            {
              v271 = v448;
              v272 = v432;
              (*(v448 + 16))(v432, *(v263 + 48) + *(v448 + 72) * (__clz(__rbit64(v266)) | (v270 << 6)), v269);
              v273 = *(v271 + 32);
              v273(v456, v272, v269);
              if (sub_20C133A34() == v458 && v274 == v457)
              {

                goto LABEL_168;
              }

              v275 = sub_20C13DFF4();

              if (v275)
              {
                break;
              }

              v266 &= v266 - 1;
              v269 = v438;
              (*v460)(v456, v438);
              v268 = v270;
              if (!v266)
              {
                goto LABEL_96;
              }

LABEL_95:
              v270 = v268;
            }

            v269 = v438;
LABEL_168:

            v297 = v409;
            v273(v409, v456, v269);
            v307 = 0;
            goto LABEL_169;
          }
        }

        v307 = 1;
        v297 = v409;
LABEL_169:
        v309 = v407;
        v373 = v448;
        (*(v448 + 56))(v297, v307, 1, v269);

        sub_20B52F9E8(v297, v309, &unk_27C767600, &unk_20C175400);
        if ((*(v373 + 48))(v309, 1, v269) == 1)
        {
          v311 = &unk_27C767600;
          v312 = &unk_20C175400;
          goto LABEL_176;
        }

        v374 = v393;
        (*v461)(v393, v309, v269);
        v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v315 = swift_allocBox();
        v317 = v376;
        v377 = v269;
        v319 = *(v375 + 48);
        v320 = sub_20C133A54();
        v322 = v378;
        (*v460)(v374, v377);
        v323 = &unk_27C767600;
        v324 = &unk_20C175400;
        goto LABEL_182;
      case 9u:
        v176 = v99[1];
        v458 = *v99;
        v456 = v176;
        v177 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
        v178 = v461;
        swift_beginAccess();
        v180 = v459;
        v179 = v460;
        v181 = v178 + v177;
        v182 = v421;
        (*(v460 + 16))(v421, v181, v459);
        v183 = sub_20C1358C4();
        (*(v179 + 8))(v182, v180);
        v184 = 1 << *(v183 + 32);
        v185 = -1;
        if (v184 < 64)
        {
          v185 = ~(-1 << v184);
        }

        v186 = v185 & *(v183 + 56);
        v187 = (v184 + 63) >> 6;
        v461 = (v449 + 32);
        v459 = (v449 + 16);
        v460 = v449 + 8;

        v188 = 0;
        v189 = v439;
        if (v186)
        {
          goto LABEL_47;
        }

        do
        {
LABEL_48:
          v190 = v188 + 1;
          if (__OFADD__(v188, 1))
          {
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          if (v190 >= v187)
          {

            v299 = 1;
            v300 = v410;
            goto LABEL_144;
          }

          v186 = *(v183 + 56 + 8 * v190);
          ++v188;
        }

        while (!v186);
        while (1)
        {
          v191 = v449;
          v192 = v433;
          (*(v449 + 16))(v433, *(v183 + 48) + *(v449 + 72) * (__clz(__rbit64(v186)) | (v190 << 6)), v189);
          v193 = *(v191 + 32);
          v193(v457, v192, v189);
          if (sub_20C1370A4() == v458 && v194 == v456)
          {

            goto LABEL_143;
          }

          v195 = sub_20C13DFF4();

          if (v195)
          {
            break;
          }

          v186 &= v186 - 1;
          v189 = v439;
          (*v460)(v457, v439);
          v188 = v190;
          if (!v186)
          {
            goto LABEL_48;
          }

LABEL_47:
          v190 = v188;
        }

        v189 = v439;
LABEL_143:

        v300 = v410;
        v193(v410, v457, v189);
        v299 = 0;
LABEL_144:
        v332 = v449;
        (*(v449 + 56))(v300, v299, 1, v189);

        if ((*(v332 + 48))(v300, 1, v189) == 1)
        {
          v110 = &qword_27C764AE0;
          v111 = &unk_20C1643D0;
          v112 = v300;
          goto LABEL_178;
        }

        v333 = v394;
        (*v461)(v394, v300, v189);
        v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v315 = swift_allocBox();
        v317 = v335;
        v336 = v189;
        v319 = *(v334 + 48);
        v320 = sub_20C1370B4();
        v322 = v337;
        (*v460)(v333, v336);
        goto LABEL_183;
      case 0xAu:
        v276 = *v99;
        v456 = v99[1];
        v457 = v276;
        v277 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
        v278 = v461;
        swift_beginAccess();
        v280 = v459;
        v279 = v460;
        v281 = v278 + v277;
        v282 = v422;
        (*(v460 + 16))(v422, v281, v459);
        v283 = sub_20C1358E4();
        (*(v279 + 8))(v282, v280);
        v284 = 1 << *(v283 + 32);
        v285 = -1;
        if (v284 < 64)
        {
          v285 = ~(-1 << v284);
        }

        v286 = v285 & *(v283 + 56);
        v287 = (v284 + 63) >> 6;
        v461 = (v450 + 32);
        v459 = (v450 + 16);
        v460 = v450 + 8;

        v288 = 0;
        v289 = v440;
        if (v286)
        {
          goto LABEL_107;
        }

        do
        {
LABEL_108:
          v290 = v288 + 1;
          if (__OFADD__(v288, 1))
          {
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
            return;
          }

          if (v290 >= v287)
          {

            v308 = 1;
            v297 = v414;
            goto LABEL_174;
          }

          v286 = *(v283 + 56 + 8 * v290);
          ++v288;
        }

        while (!v286);
        while (1)
        {
          v291 = v450;
          v292 = v434;
          (*(v450 + 16))(v434, *(v283 + 48) + *(v450 + 72) * (__clz(__rbit64(v286)) | (v290 << 6)), v289);
          v293 = *(v291 + 32);
          v293(v458, v292, v289);
          if (sub_20C134DD4() == v457 && v294 == v456)
          {

            goto LABEL_173;
          }

          v295 = sub_20C13DFF4();

          if (v295)
          {
            break;
          }

          v286 &= v286 - 1;
          v289 = v440;
          (*v460)(v458, v440);
          v288 = v290;
          if (!v286)
          {
            goto LABEL_108;
          }

LABEL_107:
          v290 = v288;
        }

        v289 = v440;
LABEL_173:

        v297 = v414;
        v293(v414, v458, v289);
        v308 = 0;
LABEL_174:
        v309 = v413;
        v379 = v450;
        (*(v450 + 56))(v297, v308, 1, v289);

        sub_20B52F9E8(v297, v309, &qword_27C764A78, &qword_20C156788);
        if ((*(v379 + 48))(v309, 1, v289) == 1)
        {
          v311 = &qword_27C764A78;
          v312 = &qword_20C156788;
LABEL_176:
          sub_20B520158(v297, v311, v312);
          v112 = v309;
LABEL_177:
          v110 = v311;
          v111 = v312;
          goto LABEL_178;
        }

        v380 = v395;
        (*v461)(v395, v309, v289);
        v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
        v315 = swift_allocBox();
        v317 = v382;
        v383 = v289;
        v319 = *(v381 + 48);
        v320 = sub_20C134DF4();
        v322 = v384;
        (*v460)(v380, v383);
        v323 = &qword_27C764A78;
        v324 = &qword_20C156788;
LABEL_182:
        sub_20B520158(v297, v323, v324);
LABEL_183:
        *v317 = v320;
        v317[1] = v322;
        sub_20B747A04(v462, v317 + v319);
        v135 = v315 | 0x6000000000000006;
        goto LABEL_180;
      default:
        sub_20B959E54(v99, MEMORY[0x277D52060]);
        goto LABEL_179;
    }
  }

  sub_20B85D4A8();
  sub_20B959E54(v102, MEMORY[0x277D52060]);
  v106 = sub_20C1368B4();
  v108 = v107;
  if (v106 == sub_20C1368B4() && v108 == v109)
  {

    v110 = &unk_27C7629B0;
    v111 = &unk_20C1510C0;
    v112 = v105;
LABEL_178:
    sub_20B520158(v112, v110, v111);
  }

  else
  {
    v113 = sub_20C13DFF4();

    sub_20B520158(v105, &unk_27C7629B0, &unk_20C1510C0);
    if ((v113 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_179:
  v135 = 0xF000000000000007;
LABEL_180:
  *v463 = v135;
}

uint64_t sub_20B957548()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filter;
  v4 = sub_20C133E24();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 144);
  v15[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 128);
  v15[9] = v5;
  v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 80);
  v15[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 64);
  v15[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 112);
  v15[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 96);
  v15[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 16);
  v15[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row);
  v15[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 48);
  v15[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 32);
  v15[3] = v9;
  sub_20B520158(v15, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_catalogClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_storefrontLocalizer));

  v10 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
  v11 = sub_20C134EC4();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterConfiguration, &qword_27C762AE0, &unk_20C151420);
  v12 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
  v13 = sub_20C135914();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t sub_20B95772C()
{
  sub_20B957548();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SelectedFilterShelf(uint64_t a1)
{
  result = qword_27C767F50;
  if (!qword_27C767F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9577D8(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C133E24();
    if (v2 <= 0x3F)
    {
      sub_20C134EC4();
      if (v3 <= 0x3F)
      {
        sub_20B957994(319);
        if (v4 <= 0x3F)
        {
          sub_20C135914();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_20B957994(uint64_t a1)
{
  if (!qword_27C765B48)
  {
    sub_20C135654();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C765B48);
    }
  }
}

void sub_20B9579EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764310, &unk_20C17CD00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  v22 = v9;
  v23 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_catalogClient), *(v0 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_catalogClient + 24));
  sub_20C13A014();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20B959EB4;
  *(v13 + 24) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B881054;
  *(v14 + 24) = v13;
  (*(v3 + 16))(v5, v8, v2);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v15, v5, v2);
  v17 = (v16 + ((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_20B849590;
  v17[1] = v14;

  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v18 = v22;
  v19 = sub_20C137CB4();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v19(sub_20B52347C, v20);

  (*(v23 + 8))(v12, v18);
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B959F80(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_20B953568();
}

uint64_t sub_20B957E14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions;
  swift_beginAccess();
  v5 = sub_20C135914();
  (*(*(v5 - 8) + 24))(a2 + v4, a1, v5);
  return swift_endAccess();
}

double sub_20B957EA8(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_20C134EC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8, &unk_20C1566E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  swift_beginAccess();
  v35 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(v4 + 16);
    v18(v16, Strong + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot, v3);

    v19 = *(v4 + 56);
    v19(v16, 0, 1, v3);
  }

  else
  {
    v19 = *(v4 + 56);
    v19(v16, 1, 1, v3);
    v18 = *(v4 + 16);
  }

  v18(v13, v37, v3);
  v19(v13, 0, 1, v3);
  v20 = *(v6 + 48);
  sub_20B52F9E8(v16, v8, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B52F9E8(v13, &v8[v20], &qword_27C7649E0, &unk_20C1643C0);
  v21 = *(v4 + 48);
  if (v21(v8, 1, v3) != 1)
  {
    v22 = v36;
    sub_20B52F9E8(v8, v36, &qword_27C7649E0, &unk_20C1643C0);
    if (v21(&v8[v20], 1, v3) != 1)
    {
      v24 = &v8[v20];
      v25 = v34;
      (*(v4 + 32))(v34, v24, v3);
      sub_20B959F80(&qword_27C7649E8, MEMORY[0x277D512A8], MEMORY[0x277D512B0]);
      v26 = sub_20C13C894();
      v27 = *(v4 + 8);
      v27(v25, v3);
      sub_20B520158(v13, &qword_27C7649E0, &unk_20C1643C0);
      sub_20B520158(v16, &qword_27C7649E0, &unk_20C1643C0);
      v27(v22, v3);
      sub_20B520158(v8, &qword_27C7649E0, &unk_20C1643C0);
      if ((v26 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_20B520158(v13, &qword_27C7649E0, &unk_20C1643C0);
    sub_20B520158(v16, &qword_27C7649E0, &unk_20C1643C0);
    (*(v4 + 8))(v22, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C7649D8, &unk_20C1566E0);
    return result;
  }

  sub_20B520158(v13, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B520158(v16, &qword_27C7649E0, &unk_20C1643C0);
  if (v21(&v8[v20], 1, v3) != 1)
  {
    goto LABEL_9;
  }

  sub_20B520158(v8, &qword_27C7649E0, &unk_20C1643C0);
LABEL_11:
  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = *(type metadata accessor for FilterResultUpdated(0) + 20);
    v31 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filter;
    swift_beginAccess();
    v32 = sub_20C133E24();
    (*(*(v32 - 8) + 24))(v29 + v31, v37 + v30, v32);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B953568();
  }

  return result;
}

uint64_t sub_20B95846C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B9584E4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B9585A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = sub_20C133E24();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C135914();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v11 = v2 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_row;
  sub_20B5D8060(v30);
  v12 = v30[9];
  *(v11 + 128) = v30[8];
  *(v11 + 144) = v12;
  *(v11 + 160) = v31;
  v13 = v30[5];
  *(v11 + 64) = v30[4];
  *(v11 + 80) = v13;
  v14 = v30[7];
  *(v11 + 96) = v30[6];
  *(v11 + 112) = v14;
  v15 = v30[1];
  *v11 = v30[0];
  *(v11 + 16) = v15;
  v16 = v30[3];
  *(v11 + 32) = v30[2];
  *(v11 + 48) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterConfiguration;
  v18 = sub_20C135654();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  *(v2 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_hasValidModality) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v29, v2 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_eventHub) = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v29, v2 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_subscriptionToken) = sub_20C13A914();
  v19 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
  v20 = sub_20C134EC4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v3 + v19, a2, v20);
  sub_20C135884();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterOptions, v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30, &unk_20C16A140);
  v22 = *(sub_20C135C84() - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14F980;
  v25 = v24 + v23;
  *v25 = xmmword_20C15AF00;
  *(v25 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  sub_20BE8C0B0(v24);
  swift_setDeallocating();
  sub_20B959E54(v24 + v23, MEMORY[0x277D52060]);
  swift_deallocClassInstance();
  sub_20C134EB4();
  sub_20C133DE4();
  (*(v21 + 8))(a2, v20);
  (*(v27 + 32))(v3 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filter, v6, v28);
  return v3;
}

uint64_t sub_20B958AD0(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v134 = *(v2 - 8);
  v135 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v128);
  v129 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for TrainerFilterUpdated(0);
  MEMORY[0x28223BE20](v126);
  ObjectType = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TipCategoryFilterUpdated(0);
  MEMORY[0x28223BE20](v124);
  v123 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ThemeFilterUpdated(0);
  MEMORY[0x28223BE20](v122);
  v121 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for SkillLevelFilterUpdated(0);
  MEMORY[0x28223BE20](v120);
  v119 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for GenreFilterUpdated(0);
  MEMORY[0x28223BE20](v118);
  v117 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for ModalityFilterUpdated(0);
  MEMORY[0x28223BE20](v116);
  v115 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DurationFilterUpdated(0);
  MEMORY[0x28223BE20](v114);
  v112 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_20C1341A4();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v127 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for EquipmentFilterUpdated(0);
  MEMORY[0x28223BE20](v110);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BodyFocusFilterUpdated(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C135ED4();
  v131 = *(v19 - 8);
  v132 = v19;
  MEMORY[0x28223BE20](v19);
  v130 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0);
  MEMORY[0x28223BE20](v21);
  v23 = &v109 - v22;
  v24 = sub_20C135C84();
  MEMORY[0x28223BE20](v24);
  v26 = (&v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v29 = &v109 - v28;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x36)
  {
    v30 = swift_projectBox();
    sub_20B52F9E8(v30, v23, &unk_27C767F60, &unk_20C1643B0);

    sub_20B7479A0(&v23[*(v21 + 48)], v29);
    sub_20B747A04(v29, v26);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v47 = v26[1];
        v134 = *v26;
        v135 = v47;
        v48 = *MEMORY[0x277D52430];
        v49 = v131;
        v41 = v132;
        v50 = *(v131 + 104);
        v127 = v29;
        v51 = v130;
        v50(v130, v48, v132);
        v42 = v133;
        swift_getObjectType();
        v52 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v53 = sub_20C134EC4();
        (*(*(v53 - 8) + 16))(v18, v42 + v52, v53);
        v54 = &v18[*(v16 + 20)];
        sub_20B959F80(&qword_27C7667A8, type metadata accessor for BodyFocusFilterUpdated, &unk_20C183CD0);
        *v54 = 0;
        *(v54 + 1) = 0;
        v40 = v49;
        sub_20C13A764();
        v55 = type metadata accessor for BodyFocusFilterUpdated;
        v56 = v18;
        v39 = v51;
        v29 = v127;
        goto LABEL_16;
      case 3u:
        v69 = v26[1];
        v134 = *v26;
        v135 = v69;
        v70 = *MEMORY[0x277D52438];
        v40 = v131;
        v41 = v132;
        v71 = *(v131 + 104);
        v127 = v29;
        v72 = v130;
        v71(v130, v70, v132);
        v42 = v133;
        swift_getObjectType();
        v73 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v74 = sub_20C134EC4();
        (*(*(v74 - 8) + 16))(v15, v42 + v73, v74);
        v75 = &v15[*(v110 + 20)];
        sub_20B959F80(&qword_27C7667B0, type metadata accessor for EquipmentFilterUpdated, &unk_20C1602F0);
        *v75 = 0;
        *(v75 + 1) = 0;
        v39 = v72;
        v29 = v127;
        sub_20C13A764();
        v46 = type metadata accessor for EquipmentFilterUpdated;
        goto LABEL_15;
      case 4u:
        v76 = v26[1];
        v134 = *v26;
        v135 = v76;
        v39 = v130;
        v40 = v131;
        v41 = v132;
        (*(v131 + 104))(v130, *MEMORY[0x277D52420], v132);
        v42 = v133;
        v127 = *(v133 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_eventHub + 8);
        swift_getObjectType();
        v77 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v78 = sub_20C134EC4();
        v15 = v115;
        (*(*(v78 - 8) + 16))(v115, v42 + v77, v78);
        v79 = &v15[*(v116 + 20)];
        sub_20B959F80(&unk_27C765CE0, type metadata accessor for ModalityFilterUpdated, &unk_20C17F640);
        *v79 = 0;
        *(v79 + 1) = 0;
        sub_20C13A764();
        v46 = type metadata accessor for ModalityFilterUpdated;
        goto LABEL_15;
      case 5u:
        v65 = v26[1];
        v134 = *v26;
        v135 = v65;
        v39 = v130;
        v40 = v131;
        v41 = v132;
        (*(v131 + 104))(v130, *MEMORY[0x277D523E0], v132);
        v42 = v133;
        v127 = *(v133 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_eventHub + 8);
        swift_getObjectType();
        v66 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v67 = sub_20C134EC4();
        v15 = v117;
        (*(*(v67 - 8) + 16))(v117, v42 + v66, v67);
        v68 = &v15[*(v118 + 20)];
        sub_20B959F80(&qword_27C7667B8, type metadata accessor for GenreFilterUpdated, &unk_20C167170);
        *v68 = 0;
        *(v68 + 1) = 0;
        sub_20C13A764();
        v46 = type metadata accessor for GenreFilterUpdated;
        goto LABEL_15;
      case 6u:
        v103 = v111;
        v104 = v113;
        (*(v111 + 32))(v127, v26, v113);
        v134 = sub_20C134154();
        v135 = v105;
        v39 = v130;
        v40 = v131;
        v41 = v132;
        (*(v131 + 104))(v130, *MEMORY[0x277D52410], v132);
        v42 = v133;
        v126 = *(v133 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_eventHub + 8);
        ObjectType = swift_getObjectType();
        v106 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v107 = sub_20C134EC4();
        v108 = v112;
        (*(*(v107 - 8) + 16))(v112, v42 + v106, v107);
        (*(v103 + 56))(v108 + *(v114 + 20), 1, 1, v104);
        sub_20B959F80(&qword_27C764990, type metadata accessor for DurationFilterUpdated, &unk_20C18AEE0);
        sub_20C13A764();
        sub_20B959E54(v108, type metadata accessor for DurationFilterUpdated);
        (*(v103 + 8))(v127, v104);
        goto LABEL_17;
      case 7u:
        v61 = v26[1];
        v134 = *v26;
        v135 = v61;
        v39 = v130;
        v40 = v131;
        v41 = v132;
        (*(v131 + 104))(v130, *MEMORY[0x277D52398], v132);
        v42 = v133;
        v127 = *(v133 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_eventHub + 8);
        swift_getObjectType();
        v62 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v63 = sub_20C134EC4();
        v15 = v119;
        (*(*(v63 - 8) + 16))(v119, v42 + v62, v63);
        v64 = &v15[*(v120 + 20)];
        sub_20B959F80(&qword_27C765B58, type metadata accessor for SkillLevelFilterUpdated, &unk_20C161900);
        *v64 = 0;
        *(v64 + 1) = 0;
        sub_20C13A764();
        v46 = type metadata accessor for SkillLevelFilterUpdated;
        goto LABEL_15;
      case 8u:
        v80 = v26[1];
        v134 = *v26;
        v135 = v80;
        v39 = v130;
        v40 = v131;
        v41 = v132;
        (*(v131 + 104))(v130, *MEMORY[0x277D523E8], v132);
        v42 = v133;
        v127 = *(v133 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_eventHub + 8);
        swift_getObjectType();
        v81 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v82 = sub_20C134EC4();
        v15 = v121;
        (*(*(v82 - 8) + 16))(v121, v42 + v81, v82);
        v83 = &v15[*(v122 + 20)];
        sub_20B959F80(&qword_27C7667C0, type metadata accessor for ThemeFilterUpdated, &unk_20C18B110);
        *v83 = 0;
        *(v83 + 1) = 0;
        sub_20C13A764();
        v46 = type metadata accessor for ThemeFilterUpdated;
        goto LABEL_15;
      case 9u:
        v38 = v26[1];
        v134 = *v26;
        v135 = v38;
        v39 = v130;
        v40 = v131;
        v41 = v132;
        (*(v131 + 104))(v130, *MEMORY[0x277D523C0], v132);
        v42 = v133;
        v127 = *(v133 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_eventHub + 8);
        swift_getObjectType();
        v43 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v44 = sub_20C134EC4();
        v15 = v123;
        (*(*(v44 - 8) + 16))(v123, v42 + v43, v44);
        v45 = &v15[*(v124 + 20)];
        sub_20B959F80(&qword_27C7667C8, type metadata accessor for TipCategoryFilterUpdated, &unk_20C18F5B0);
        *v45 = 0;
        *(v45 + 1) = 0;
        sub_20C13A764();
        v46 = type metadata accessor for TipCategoryFilterUpdated;
        goto LABEL_15;
      case 0xAu:
        v57 = v26[1];
        v134 = *v26;
        v135 = v57;
        v39 = v130;
        v40 = v131;
        v41 = v132;
        (*(v131 + 104))(v130, *MEMORY[0x277D523F8], v132);
        v42 = v133;
        v127 = *(v133 + OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_eventHub + 8);
        swift_getObjectType();
        v58 = OBJC_IVAR____TtC9SeymourUI19SelectedFilterShelf_filterRoot;
        v59 = sub_20C134EC4();
        v15 = ObjectType;
        (*(*(v59 - 8) + 16))(ObjectType, v42 + v58, v59);
        v60 = &v15[*(v126 + 20)];
        sub_20B959F80(&qword_27C7667D0, type metadata accessor for TrainerFilterUpdated, &unk_20C17D0E0);
        *v60 = 0;
        *(v60 + 1) = 0;
        sub_20C13A764();
        v46 = type metadata accessor for TrainerFilterUpdated;
LABEL_15:
        v55 = v46;
        v56 = v15;
LABEL_16:
        sub_20B959E54(v56, v55);
LABEL_17:
        v84 = sub_20C136664();
        v85 = v129;
        (*(*(v84 - 8) + 56))(v129, 1, 1, v84);
        v86 = v128;
        v87 = *(v128 + 20);
        v88 = *MEMORY[0x277D51440];
        v89 = sub_20C134F24();
        (*(*(v89 - 8) + 104))(v85 + v87, v88, v89);
        v90 = v86[6];
        v91 = sub_20C132C14();
        (*(*(v91 - 8) + 56))(v85 + v90, 1, 1, v91);
        v92 = v86[8];
        (*(v40 + 16))(v85 + v92, v39, v41);
        (*(v40 + 56))(v85 + v92, 0, 1, v41);
        v93 = v86[10];
        v94 = *MEMORY[0x277D51768];
        v95 = sub_20C1352E4();
        (*(*(v95 - 8) + 104))(v85 + v93, v94, v95);
        v96 = v86[11];
        v97 = sub_20C136E94();
        (*(*(v97 - 8) + 56))(v85 + v96, 1, 1, v97);
        v98 = sub_20B6B29D4(MEMORY[0x277D84F90]);
        v99 = (v85 + v86[7]);
        v100 = v135;
        *v99 = v134;
        v99[1] = v100;
        v101 = (v85 + v86[9]);
        *v101 = 0;
        v101[1] = 0;
        *(v85 + v86[12]) = v98;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_20BFA0110(v42, v85, Strong);
          swift_unknownObjectRelease();
        }

        sub_20B959E54(v85, type metadata accessor for ShelfMetricAction);
        (*(v40 + 8))(v39, v41);
        v33 = MEMORY[0x277D52060];
        v32 = v29;
        break;
      default:
        v31 = MEMORY[0x277D52060];
        sub_20B959E54(v29, MEMORY[0x277D52060]);
        v32 = v26;
        v33 = v31;
        break;
    }

    return sub_20B959E54(v32, v33);
  }

  else
  {
    sub_20C13B534();
    v34 = sub_20C13BB74();
    v35 = sub_20C13D1D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20B517000, v34, v35, "Selected filter selected incorrect item", v36, 2u);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    return (*(v134 + 8))(v4, v135);
  }
}

uint64_t sub_20B959E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B959EBC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764310, &unk_20C17CD00) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E0738(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20B959F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B959FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B95A070(uint64_t a1)
{
  v1 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B484();
    sub_20C13BB64();
    (*(v5 + 8))(v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_20B95B2D8(v3);

    return sub_20B95B9C8(v3);
  }

  return result;
}

uint64_t sub_20B95A274()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  v12 = OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor_state;
  swift_beginAccess();
  sub_20B95B964(v1 + v12, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20B95B9C8(v7);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  swift_storeEnumTagMultiPayload();
  sub_20B95B2D8(v4);
  return sub_20B95B9C8(v4);
}

uint64_t sub_20B95A488()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B484();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  v15 = OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor_state;
  swift_beginAccess();
  sub_20B95B964(v1 + v15, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20B95B9C8(v10);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    sub_20C13AE44();
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_20B95BA54(v7, v1 + v15);
    swift_endAccess();
  }

  sub_20B95B964(v1 + v15, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20B95B9C8(v4);
  if (EnumCaseMultiPayload == 2)
  {
    sub_20C132E84();
    swift_storeEnumTagMultiPayload();
    sub_20B95B2D8(v7);
    return sub_20B95B9C8(v7);
  }

  return result;
}

uint64_t sub_20B95A730()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_20C132E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v29 = &v29 - v13;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v15 + 8))(v17, v14);
  v18 = OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor_state;
  swift_beginAccess();
  sub_20B95B964(v1 + v18, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_20B95B9C8(v7);
  }

  v19 = v29;
  (*(v9 + 32))(v29, v7, v8);
  swift_storeEnumTagMultiPayload();
  sub_20B95B2D8(v4);
  sub_20B95B9C8(v4);
  sub_20C132E84();
  sub_20C132DC4();
  v21 = v20;
  v22 = *(v9 + 8);
  v22(v11, v8);
  v23 = [objc_opt_self() standardUserDefaults];
  sub_20C1363A4();
  v24 = sub_20C13C914();

  [v23 doubleForKey_];
  v26 = v25;

  if (v26 <= 0.0)
  {
    sub_20C136384();
    v26 = v27;
  }

  if (v26 <= v21)
  {
    sub_20B95B090();
  }

  return (v22)(v19, v8);
}

uint64_t sub_20B95AAAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767FD0, &qword_20C164480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  v16 = OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor_state;
  swift_beginAccess();
  sub_20B95B964(v1 + v16, v11);
  LODWORD(v16) = swift_getEnumCaseMultiPayload();
  result = sub_20B95B9C8(v11);
  if (v16 == 2)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor__applicationIdleTimeout, v2);
    sub_20C13A344();
    (*(v3 + 8))(v5, v2);
    sub_20B5E2E18();
    v18 = sub_20C13D374();
    swift_allocObject();
    swift_weakInit();

    v19 = sub_20C13AE34();

    *v8 = v19;
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();
    sub_20B95B2D8(v8);
    swift_unknownObjectRelease();
    return sub_20B95B9C8(v8);
  }

  return result;
}

double sub_20B95AE24(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

uint64_t sub_20B95AE84()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  v12 = OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor_state;
  swift_beginAccess();
  sub_20B95B964(v1 + v12, v7);
  if (!swift_getEnumCaseMultiPayload())
  {
    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    sub_20C13AE44();
    swift_storeEnumTagMultiPayload();
    sub_20B95B2D8(v4);
    swift_unknownObjectRelease();
    v7 = v4;
  }

  return sub_20B95B9C8(v7);
}

uint64_t sub_20B95B090()
{
  v0 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13A654();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  swift_getObjectType();
  sub_20C13A644();
  sub_20C13A764();
  (*(v4 + 8))(v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_20B95B2D8(v2);
  return sub_20B95B9C8(v2);
}

uint64_t sub_20B95B2D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor_state;
  swift_beginAccess();
  sub_20B95B900(a1, v2 + v11);
  swift_endAccess();
  sub_20C13B484();

  v12 = sub_20C13BB74();
  v13 = sub_20C13D1F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136446210;
    sub_20B95B964(v2 + v11, v6);
    v17 = sub_20C13C9D4();
    v19 = sub_20B51E694(v17, v18, v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_20B517000, v12, v13, "Transitioning to Idle State: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F2F6A40](v16, -1, -1);
    MEMORY[0x20F2F6A40](v15, -1, -1);

    return (*(v8 + 8))(v10, v21);
  }

  else
  {

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_20B95B534()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  sub_20B95B9C8(v0 + OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor_state);
  v1 = OBJC_IVAR____TtC9SeymourUI25RemoteBrowsingIdleMonitor__applicationIdleTimeout;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767FD0, &qword_20C164480);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_20B95B634(uint64_t a1)
{
  type metadata accessor for RemoteBrowsingIdleMonitor.State(319);
  if (v1 <= 0x3F)
  {
    sub_20B95B744();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20B95B744()
{
  if (!qword_27C767F90)
  {
    v0 = sub_20C13A374();
    if (!v1)
    {
      atomic_store(v0, &qword_27C767F90);
    }
  }
}

void sub_20B95B7A4(uint64_t a1)
{
  sub_20B95B8B4(319, &qword_27C767FB0, sub_20B95B850);
  if (v1 <= 0x3F)
  {
    sub_20B95B8B4(319, &unk_27C767FC0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_20B95B850()
{
  result = qword_27C767FB8;
  if (!qword_27C767FB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C767FB8);
  }

  return result;
}

void sub_20B95B8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20B95B900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B95B964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B95B9C8(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B95BA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AMSBagProtocol.makeNavigationRequest(with:annotation:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v53 = a4;
  v49 = type metadata accessor for NavigationSource(0);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v46 - v8;
  v48 = type metadata accessor for NavigationSharingURLInfo(0);
  MEMORY[0x28223BE20](v48);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C132C14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v47 = *a2;
  v22 = [a1 activityType];
  v23 = sub_20C13C954();
  v25 = v24;

  if (v23 == sub_20C13C954() && v25 == v26)
  {
  }

  else
  {
    v27 = sub_20C13DFF4();

    if ((v27 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v28 = [a1 webpageURL];
  if (v28)
  {
    v29 = v28;
    sub_20C132B94();

    v30 = *(v12 + 32);
    v30(v21, v17, v11);
    (*(v12 + 16))(v14, v21, v11);
    v31 = [a1 referrerURL];
    if (v31)
    {
      v32 = v52;
      v33 = v31;
      sub_20C132B94();

      v34 = 0;
    }

    else
    {
      v34 = 1;
      v32 = v52;
    }

    (*(v12 + 56))(v32, v34, 1, v11);
    v38 = [a1 smu_sourceApplication];
    if (v38)
    {
      v39 = v38;
      v40 = sub_20C13C954();
      v42 = v41;

      v32 = v52;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v30(v10, v14, v11);
    v43 = v48;
    sub_20B6A69B4(v32, &v10[*(v48 + 20)]);
    v44 = &v10[*(v43 + 24)];
    *v44 = v40;
    v44[1] = v42;
    v54 = v47;
    v45 = v50;
    sub_20B95DFC8(v10, v50, type metadata accessor for NavigationSharingURLInfo);
    swift_storeEnumTagMultiPayload();
    AMSBagProtocol.makeNavigationRequest(with:annotation:source:)(v21, &v54, v45, v51, v53);
    sub_20B95E098(v45, type metadata accessor for NavigationSource);
    sub_20B95E098(v10, type metadata accessor for NavigationSharingURLInfo);
    return (*(v12 + 8))(v21, v11);
  }

LABEL_8:
  sub_20B5D9BA8();
  v35 = swift_allocError();
  *v36 = 10;
  *(swift_allocObject() + 16) = v35;
  type metadata accessor for NavigationRequest(0);

  return sub_20C137CA4();
}

{
  v39 = a3;
  v38 = a4;
  v37 = type metadata accessor for NavigationSource(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_20C132C14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = type metadata accessor for NavigationSharingURLInfo(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a2;
  v22 = [a1 URL];
  sub_20C132B94();

  v23 = *(v12 + 56);
  v35 = v10;
  v24 = v10;
  v25 = v11;
  v23(v24, 1, 1, v11);
  v36 = a1;
  v26 = [a1 options];
  v27 = [v26 sourceApplication];

  if (v27)
  {
    v28 = sub_20C13C954();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  (*(v12 + 32))(v21, v17, v25);
  sub_20B6A69B4(v35, &v21[*(v18 + 20)]);
  v31 = &v21[*(v18 + 24)];
  *v31 = v28;
  v31[1] = v30;
  v32 = [v36 URL];
  sub_20C132B94();

  v40 = v34;
  sub_20B95DFC8(v21, v7, type metadata accessor for NavigationSharingURLInfo);
  swift_storeEnumTagMultiPayload();
  AMSBagProtocol.makeNavigationRequest(with:annotation:source:)(v14, &v40, v7, v39, v38);
  sub_20B95E098(v7, type metadata accessor for NavigationSource);
  (*(v12 + 8))(v14, v25);
  return sub_20B95E098(v21, type metadata accessor for NavigationSharingURLInfo);
}

uint64_t AMSBagProtocol.makeNavigationRequest(with:annotation:source:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v77 = a5;
  v78 = a3;
  v7 = type metadata accessor for NavigationSource(0);
  v72 = *(v7 - 8);
  v71 = *(v72 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C132C14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v14 = *(v70 - 8);
  v68 = *(v14 + 64);
  MEMORY[0x28223BE20](v70);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v75 = *(v18 - 8);
  v76 = v18;
  v74 = *(v75 + 64);
  MEMORY[0x28223BE20](v18);
  v73 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v66 = &v54 - v21;
  v55 = *a2;
  v67 = a1;
  sub_20C13D234();
  v22 = *(v11 + 16);
  v63 = v11 + 16;
  v69 = v22;
  v58 = v13;
  v59 = v10;
  v22(v13, a1, v10);
  v65 = type metadata accessor for NavigationSource;
  v23 = v9;
  v57 = v9;
  sub_20B95DFC8(v78, v9, type metadata accessor for NavigationSource);
  v24 = *(v11 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = *(v72 + 80);
  v27 = (v12 + v26 + v25) & ~v26;
  v28 = v27 + v71;
  v60 = v27;
  v61 = v25;
  v71 = v24 | v26;
  v72 = v28;
  v29 = (v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = *(v11 + 32);
  v62 = v11 + 32;
  v31(v30 + v25, v13, v10);
  sub_20B95E030(v23, v30 + v27, type metadata accessor for NavigationSource);
  *(v30 + v29) = v55;
  v32 = v64;
  v33 = v56;
  v34 = v70;
  (*(v14 + 16))(v64, v56, v70);
  v35 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v36 = (v68 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v14 + 32))(v37 + v35, v32, v34);
  v38 = (v37 + v36);
  *v38 = sub_20B95DCB8;
  v38[1] = v30;
  type metadata accessor for NavigationRequest(0);
  v39 = v66;
  sub_20C137C94();
  (*(v14 + 8))(v33, v34);
  v41 = v58;
  v40 = v59;
  v69(v58, v67, v59);
  v42 = v57;
  sub_20B95DFC8(v78, v57, v65);
  v43 = swift_allocObject();
  v31(v43 + v61, v41, v40);
  sub_20B95E030(v42, v43 + v60, type metadata accessor for NavigationSource);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_20B95DDF0;
  *(v44 + 24) = v43;
  v45 = v75;
  v46 = v76;
  v47 = v73;
  (*(v75 + 16))(v73, v39, v76);
  v48 = v45;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v50 = (v74 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v47, v46);
  v52 = (v51 + v50);
  *v52 = sub_20B95DED0;
  v52[1] = v44;
  sub_20C137C94();
  return (*(v48 + 8))(v39, v46);
}

uint64_t AMSBagProtocol.makeNavigationRequest(with:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20C132C14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationSource(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  (*(v9 + 16))(v11, a1, v8, v13);
  v17 = type metadata accessor for NavigationSharingURLInfo(0);
  (*(v9 + 56))(&v15[*(v17 + 20)], 1, 1, v8);
  (*(v9 + 32))(v15, v11, v8);
  v18 = &v15[*(v17 + 24)];
  *v18 = 0;
  *(v18 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v21 = v16;
  AMSBagProtocol.makeNavigationRequest(with:annotation:source:)(a1, &v21, v15, a3, a4);
  return sub_20B95E098(v15, type metadata accessor for NavigationSource);
}

uint64_t sub_20B95CB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v69 = a5;
  v66 = a3;
  v58 = a2;
  v63 = a1;
  v5 = type metadata accessor for NavigationRequest(0);
  v67 = *(v5 - 1);
  v65 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v55 - v11;
  v12 = sub_20C1388F4();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v55 - v24;
  v26 = sub_20C1333A4();
  v56 = *(v26 - 8);
  v57 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v70 = &v55 - v30;
  v55 = "handleSessionDeactivated()";
  v31 = *MEMORY[0x277D51860];
  v32 = sub_20C1352F4();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v25, v31, v32);
  (*(v33 + 56))(v25, 0, 1, v32);
  v34 = sub_20C132C14();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v22, v58, v34);
  (*(v35 + 56))(v22, 0, 1, v34);
  v36 = sub_20C135ED4();
  (*(*(v36 - 8) + 56))(v19, 1, 1, v36);
  v37 = sub_20C136914();
  (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
  v38 = v70;
  sub_20C133384();
  v40 = v56;
  v39 = v57;
  (*(v56 + 16))(v28, v38, v57);
  v41 = v59;
  sub_20C134F94();
  v42 = sub_20C134FB4();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = MEMORY[0x277D84F90];
  sub_20B531620(MEMORY[0x277D84F90]);
  sub_20B531620(v43);
  v44 = v60;
  sub_20C1388E4();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290);
  v46 = *(v45 + 48);
  v47 = *(v45 + 64);
  v48 = sub_20C1387E4();
  (*(*(v48 - 8) + 16))(v9, v63, v48);
  v50 = v61;
  v49 = v62;
  (*(v61 + 16))(&v9[v46], v44, v62);
  v9[v47] = 0;
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v9[v5[5]] = 1;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  sub_20B95DFC8(v66, &v9[v5[6]], type metadata accessor for NavigationSource);
  v9[v5[7]] = 0;
  v9[v5[8]] = 2;
  *&v9[v5[9]] = v68;
  v51 = v64;
  sub_20B95DFC8(v9, v64, type metadata accessor for NavigationRequest);
  v52 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v53 = swift_allocObject();
  sub_20B95E030(v51, v53 + v52, type metadata accessor for NavigationRequest);
  sub_20C137CA4();
  sub_20B95E098(v9, type metadata accessor for NavigationRequest);
  (*(v50 + 8))(v44, v49);
  return (*(v40 + 8))(v70, v39);
}

uint64_t sub_20B95D350@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v84 = a2;
  v83 = a1;
  v78 = a3;
  v87 = type metadata accessor for NavigationSource(0);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v77 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v70 - v5;
  MEMORY[0x28223BE20](v6);
  v86 = &v70 - v7;
  MEMORY[0x28223BE20](v8);
  v82 = &v70 - v9;
  v81 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v81);
  v75 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v70 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800, &unk_20C15EC70);
  MEMORY[0x28223BE20](v16 - 8);
  v79 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = sub_20C132C14();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  v32 = *(v22 + 16);
  v32(&v70 - v30, v83, v21, v29);
  sub_20B95DFC8(v84, v20, type metadata accessor for NavigationSource);
  (*(v88 + 56))(v20, 0, 1, v87);
  (v32)(v27, v31, v21);
  v33 = v85;
  sub_20BBD6CD8(v27, v15);
  if (v33)
  {
    sub_20B610A98(v20);
    return (*(v22 + 8))(v31, v21);
  }

  v83 = v15;
  v84 = 0;
  v35 = v78;
  v73 = v31;
  v71 = v32;
  (v32)(v24, v31, v21);
  v36 = type metadata accessor for NavigationSharingURLInfo(0);
  v37 = v82;
  (*(v22 + 56))(v82 + *(v36 + 20), 1, 1, v21);
  v85 = v22;
  v38 = *(v22 + 32);
  v72 = v24;
  v39 = v21;
  v38(v37, v24, v21);
  v40 = (v37 + *(v36 + 24));
  *v40 = 0;
  v40[1] = 0;
  v41 = v87;
  swift_storeEnumTagMultiPayload();
  v74 = v20;
  v42 = v79;
  sub_20B610B00(v20, v79);
  v43 = *(v88 + 48);
  if (v43(v42, 1, v41) == 1)
  {
    v44 = v37;
    v45 = v86;
    sub_20B95DFC8(v44, v86, type metadata accessor for NavigationSource);
    v46 = v43(v42, 1, v41);
    v47 = v45;
    v48 = v83;
    v49 = v80;
    if (v46 != 1)
    {
      sub_20B610A98(v42);
    }
  }

  else
  {
    v47 = v86;
    sub_20B95E030(v42, v86, type metadata accessor for NavigationSource);
    v48 = v83;
    v49 = v80;
  }

  sub_20B95DFC8(v47, v49, type metadata accessor for NavigationSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = v49;
  v52 = v39;
  if (EnumCaseMultiPayload)
  {
    v53 = v48;
    sub_20B95E098(v51, type metadata accessor for NavigationSource);
    v54 = v85;
    v55 = v73;
    goto LABEL_12;
  }

  v88 = v39;
  sub_20B95E098(v51, type metadata accessor for NavigationSharingURLInfo);
  v56 = v76;
  sub_20B95DFC8(v48, v76, type metadata accessor for NavigationResource);
  v57 = swift_getEnumCaseMultiPayload();
  v54 = v85;
  v53 = v48;
  v55 = v73;
  if (v57 != 10)
  {
    sub_20B95E098(v56, type metadata accessor for NavigationResource);
    v52 = v88;
LABEL_12:
    v62 = v77;
    sub_20B95DFC8(v86, v77, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20B95E098(v62, type metadata accessor for NavigationSource);
      v64 = v71;
      v63 = v72;
    }

    else
    {
      sub_20B95E098(v62, type metadata accessor for NavigationSharingURLInfo);
      v65 = v75;
      sub_20B95DFC8(v53, v75, type metadata accessor for NavigationResource);
      v66 = swift_getEnumCaseMultiPayload();
      v64 = v71;
      v63 = v72;
      if (v66 == 1)
      {
        sub_20B95E098(v82, type metadata accessor for NavigationSource);
        sub_20B610A98(v74);
        v67 = *(v54 + 8);
        v67(v55, v52);
        v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00) + 48);
        v69 = sub_20C1388F4();
        (*(*(v69 - 8) + 8))(v65 + v68, v69);
        v67(v65, v52);
        sub_20B95E030(v53, v35, type metadata accessor for NavigationResource);
        v58 = type metadata accessor for NavigationRequest(0);
        *(v35 + v58[5]) = 1;
        type metadata accessor for NavigationIntent(0);
        swift_storeEnumTagMultiPayload();
        v59 = 2;
LABEL_18:
        v61 = v86;
        goto LABEL_19;
      }

      sub_20B95E098(v65, type metadata accessor for NavigationResource);
    }

    sub_20B95DFC8(v53, v35, type metadata accessor for NavigationResource);
    v64(v63, v55, v52);
    v58 = type metadata accessor for NavigationRequest(0);
    sub_20BB7F2E8(v63, 1, v35 + v58[5]);
    sub_20B95E098(v82, type metadata accessor for NavigationSource);
    sub_20B95E098(v53, type metadata accessor for NavigationResource);
    sub_20B610A98(v74);
    (*(v85 + 8))(v55, v52);
    v59 = 0;
    goto LABEL_18;
  }

  sub_20B95E098(v82, type metadata accessor for NavigationSource);
  sub_20B610A98(v74);
  (*(v54 + 8))(v55, v88);
  sub_20B95E030(v53, v35, type metadata accessor for NavigationResource);
  v58 = type metadata accessor for NavigationRequest(0);
  *(v35 + v58[5]) = 0;
  type metadata accessor for NavigationIntent(0);
  v59 = 2;
  v60 = v86;
  swift_storeEnumTagMultiPayload();
  v61 = v60;
LABEL_19:
  result = sub_20B95E030(v61, v35 + v58[6], type metadata accessor for NavigationSource);
  *(v35 + v58[7]) = 0;
  *(v35 + v58[8]) = v59;
  *(v35 + v58[9]) = 0;
  return result;
}

uint64_t sub_20B95DCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C132C14() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NavigationSource(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20B95CB80(a1, v2 + v6, v2 + v9, v10, a2);
}

uint64_t sub_20B95DDF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_20C132C14() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for NavigationSource(0) - 8);
  return sub_20B95D350((v1 + v4), v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_20B95DF00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B95DFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B95E030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B95E098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20B95E0F8(unint64_t result, unint64_t a2)
{
  if ((*v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = result;
  result = sub_20C13D934();
  if (v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  if (v6 >> 14 < v4 >> 14)
  {
    goto LABEL_10;
  }

  return sub_20C13D974();
}

uint64_t type metadata accessor for WorkoutPlanScheduleUpdated(uint64_t a1)
{
  result = qword_27C767FD8;
  if (!qword_27C767FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B95E218(uint64_t a1)
{
  result = sub_20C1357B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_20B95E284(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  sub_20B52F9E8(a1, v26 - v8, &qword_27C771090, &qword_20C15A040);
  v10 = sub_20C1365F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v9, 1, v10);
  v26[1] = v2;
  if (v13 == 1)
  {
    sub_20B520158(v9, &qword_27C771090, &qword_20C15A040);
    v15 = (v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier);
    v16 = v15 + 1;
    if (!v15[1])
    {
      return result;
    }

    goto LABEL_15;
  }

  v26[0] = a1;
  v17 = sub_20C1365A4();
  v19 = v18;
  (*(v11 + 8))(v9, v10);
  v15 = (v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier);
  v16 = v15 + 1;
  v20 = v15[1];
  if (!v19)
  {
    a1 = v26[0];
    if (!v20)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!v20)
  {

    a1 = v26[0];
LABEL_15:
    sub_20B52F9E8(a1, v6, &qword_27C771090, &qword_20C15A040);
    if (v12(v6, 1, v10) == 1)
    {
      sub_20B520158(v6, &qword_27C771090, &qword_20C15A040);
      v23 = 0;
      v24 = 0;
    }

    else
    {
      v23 = sub_20C1365A4();
      v24 = v25;
      (*(v11 + 8))(v6, v10);
    }

    *v15 = v23;
    *v16 = v24;

    sub_20B95E7EC(0);
    return result;
  }

  if (v17 == *v15 && v20 == v19)
  {

    return result;
  }

  v22 = sub_20C13DFF4();

  a1 = v26[0];
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

char *sub_20B95E538(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1365F4();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v31[0] = v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier;
  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v34 = *(v10 + 56);
  v35 = v11;
  v33 = (v10 - 8);
  v13 = MEMORY[0x277D84F90];
  v31[1] = v10;
  v32 = v4;
  v11(v8, v12, v4, v6);
  while (1)
  {
    v15 = sub_20C1365C4();
    if (*(v15 + 16))
    {
      v37 = *(v15 + 32);

      v16 = *v31[0];
      v17 = *(v31[0] + 8);

      v18 = sub_20C1365A4();
      if (v17)
      {
        v20 = v16 == v18 && v17 == v19 ? 1 : sub_20C13DFF4();
      }

      else
      {
        v20 = 0;
      }

      v36 = sub_20C1365A4();
      v22 = v21;
      v23 = sub_20C1365E4();
      v25 = v24;
      (*v33)(v8, v4);
      v26 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_20BC057DC(0, *(v13 + 2) + 1, 1, v13);
      }

      v28 = *(v13 + 2);
      v27 = *(v13 + 3);
      if (v28 >= v27 >> 1)
      {
        v13 = sub_20BC057DC((v27 > 1), v28 + 1, 1, v13);
      }

      *(v13 + 2) = v28 + 1;
      v29 = &v13[48 * v28];
      *(v29 + 4) = v37;
      v29[40] = v26 & 1;
      *(v29 + 6) = v36;
      *(v29 + 7) = v22;
      *(v29 + 8) = v23;
      *(v29 + 9) = v25;
      v4 = v32;
    }

    else
    {
      (*v33)(v8, v4);
    }

    v12 += v34;
    if (!--v9)
    {
      break;
    }

    v35(v8, v12, v4, v14);
  }

  return v13;
}

void sub_20B95E7EC(int a1)
{
  v2 = v1;
  HIDWORD(v41) = a1;
  v3 = sub_20C13C554();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20B95E538(*(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_modalityReferences));
  *&v54[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_preferredModalityReferences);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10, &qword_20C1542C0);
  sub_20B69851C();
  v7 = sub_20C13CBF4();

  v8 = sub_20B95E538(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14F980;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_workoutPlanStringBuilder);
  v12 = v11[9];
  v13 = v11[10];
  __swift_project_boxed_opaque_existential_1(v11 + 6, v12);
  *(v10 + 24) = sub_20B5E107C(0x4C4C415F57454956, 0xE800000000000000, v12, v13);
  *(v10 + 32) = v14;
  *(v10 + 40) = v8;
  *(v9 + 32) = v10 | 4;
  v15 = v11[9];
  v16 = v11[10];
  __swift_project_boxed_opaque_existential_1(v11 + 6, v15);
  v17 = sub_20B5E107C(0x5954495649544341, 0xE800000000000000, v15, v16);
  v44 = 0uLL;
  LOBYTE(v45) = 1;
  *(&v45 + 1) = 0;
  *&v46 = 0;
  WORD4(v46) = 128;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  LOBYTE(v50) = 0;
  *(&v50 + 1) = v9;
  v51 = MEMORY[0x277D84F90];
  *&v52 = 0;
  *(&v52 + 1) = v17;
  *v53 = v18;
  *&v53[8] = xmmword_20C150190;
  nullsub_1();
  v19 = v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row;
  v20 = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 144);
  v54[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 128);
  v54[9] = v20;
  v55 = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 160);
  v21 = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 80);
  v54[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 64);
  v54[5] = v21;
  v22 = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 112);
  v54[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 96);
  v54[7] = v22;
  v23 = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 16);
  v54[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row);
  v54[1] = v23;
  v24 = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 48);
  v54[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 32);
  v54[3] = v24;
  v25 = *v53;
  *(v19 + 128) = v52;
  *(v19 + 144) = v25;
  *(v19 + 160) = *&v53[16];
  v26 = v49;
  *(v19 + 64) = v48;
  *(v19 + 80) = v26;
  v27 = v51;
  *(v19 + 96) = v50;
  *(v19 + 112) = v27;
  v28 = v45;
  *v19 = v44;
  *(v19 + 16) = v28;
  v29 = v47;
  *(v19 + 32) = v46;
  *(v19 + 48) = v29;
  sub_20B520158(v54, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D078(v2, Strong);
      if (v33)
      {
        v35 = v32;
        v36 = v33;
        v37 = v34;
        sub_20B5E2E18();
        *v5 = sub_20C13D374();
        v39 = v42;
        v38 = v43;
        (*(v42 + 104))(v5, *MEMORY[0x277D85200], v43);
        v40 = sub_20C13C584();
        (*(v39 + 8))(v5, v38);
        if ((v40 & 1) == 0)
        {
          __break(1u);
          return;
        }

        if ((v41 & 0x8000000000) != 0)
        {
          sub_20C10A858(v2, v35, BYTE4(v41) & 1, v31);
        }

        else
        {
          sub_20B62071C(v35, v36, v37, v2, BYTE4(v41) & 1, v31);
        }
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20B95EC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  v6[7] = swift_task_alloc();
  v7 = sub_20C1352E4();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  v6[12] = swift_task_alloc();
  v8 = sub_20C134F24();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = sub_20C1365F4();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B95EEC4, 0, 0);
}

void sub_20B95EEC4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_modalityReferences);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[17];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[4];
      v5 = v0[5];
      (*(v4 + 16))(v0[18], v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[16]);
      if (sub_20C1365A4() == v6 && v7 == v5)
      {

LABEL_12:
        (*(v0[17] + 32))(v0[20], v0[18], v0[16]);
        v10 = 0;
        goto LABEL_13;
      }

      v9 = sub_20C13DFF4();

      if (v9)
      {
        goto LABEL_12;
      }

      ++v3;
      (*(v4 + 8))(v0[18], v0[16]);
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v10 = 1;
LABEL_13:
    v11 = v0[20];
    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[14];
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v44 = v0[10];
    v45 = v0[19];
    v18 = v0[9];
    v40 = v0[11];
    v42 = v0[8];
    v19 = v0[3];
    (*(v13 + 56))(v11, v10, 1, v12);
    v0[2] = v19;
    (*(v14 + 104))(v15, *MEMORY[0x277D51450], v16);
    v20 = *MEMORY[0x277D52B38];
    v21 = sub_20C136664();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v17, v20, v21);
    (*(v22 + 56))(v17, 0, 1, v21);
    v23 = sub_20C132C14();
    (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
    (*(v18 + 104))(v44, *MEMORY[0x277D51768], v42);
    sub_20B52F9E8(v11, v45, &qword_27C771090, &qword_20C15A040);
    v24 = (*(v13 + 48))(v45, 1, v12);
    v25 = v0[19];
    if (v24 == 1)
    {
      sub_20B520158(v0[19], &qword_27C771090, &qword_20C15A040);
    }

    else
    {
      v26 = v0[16];
      v27 = v0[17];
      sub_20C1365E4();
      (*(v27 + 8))(v25, v26);
    }

    v43 = v0[20];
    v28 = v0[15];
    v39 = v0[14];
    v29 = v0[12];
    v41 = v0[13];
    v30 = v0[11];
    v31 = v0[9];
    v37 = v0[10];
    v38 = v0[8];
    v32 = v0[6];
    v33 = v0[7];
    v34 = sub_20C135ED4();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    v35 = sub_20C136E94();
    (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
    type metadata accessor for WorkoutPlanActivityPickerShelf(0);
    sub_20B960210();
    sub_20C138DA4();

    sub_20B520158(v32, &unk_27C76BC90, &unk_20C1586D0);
    sub_20B520158(v33, &unk_27C7621D0, &unk_20C14D9B0);
    (*(v31 + 8))(v37, v38);
    sub_20B520158(v30, &unk_27C7617F0, &unk_20C151A10);
    sub_20B520158(v29, &unk_27C7622E0, &unk_20C14FCF0);
    (*(v39 + 8))(v28, v41);
    sub_20B520158(v43, &qword_27C771090, &qword_20C15A040);

    v36 = v0[1];

    v36();
  }
}

void sub_20B95F454()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_20C1352E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C134F24();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1365F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v13 - 8);
  v38 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_modalityReferences);
  v45 = *(v19 + 16);
  v40 = &v33 - v17;
  if (v45)
  {
    v34 = v6;
    v35 = v1;
    v36 = v4;
    v37 = v5;
    v20 = 0;
    v21 = (v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier);
    v44 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    while (v20 < *(v19 + 16))
    {
      (*(v10 + 16))(v12, v44 + *(v10 + 72) * v20, v9, v16);
      v22 = sub_20C1365A4();
      v24 = v21[1];
      if (v24)
      {
        if (v22 == *v21 && v24 == v23)
        {

LABEL_16:
          v18 = v40;
          (*(v10 + 32))(v40, v12, v9);
          v27 = 0;
          v4 = v36;
          v5 = v37;
          v6 = v34;
          v1 = v35;
          goto LABEL_17;
        }

        v26 = sub_20C13DFF4();

        if (v26)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      ++v20;
      (*(v10 + 8))(v12, v9);
      if (v45 == v20)
      {
        v27 = 1;
        v4 = v36;
        v5 = v37;
        v6 = v34;
        v1 = v35;
        v18 = v40;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = 1;
LABEL_17:
    (*(v10 + 56))(v18, v27, 1, v9, v16);
    v46 = v1;
    v28 = v39;
    (*(v42 + 104))(v41, *MEMORY[0x277D51450], v39);
    (*(v6 + 104))(v43, *MEMORY[0x277D51768], v5);
    v29 = v38;
    sub_20B52F9E8(v18, v38, &qword_27C771090, &qword_20C15A040);
    if ((*(v10 + 48))(v29, 1, v9) == 1)
    {
      sub_20B520158(v29, &qword_27C771090, &qword_20C15A040);
      if (*(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier + 8))
      {
      }
    }

    else
    {
      sub_20C1365E4();
      (*(v10 + 8))(v29, v9);
    }

    v30 = sub_20C135ED4();
    (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
    type metadata accessor for WorkoutPlanActivityPickerShelf(0);
    sub_20B960210();
    v31 = v41;
    v32 = v43;
    sub_20C138D94();

    sub_20B520158(v4, &unk_27C7621D0, &unk_20C14D9B0);
    (*(v6 + 8))(v32, v5);
    (*(v42 + 8))(v31, v28);
    sub_20B520158(v40, &qword_27C771090, &qword_20C15A040);
  }
}

uint64_t sub_20B95FA68()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  swift_unknownObjectRelease();

  v8 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return v0;
}

uint64_t sub_20B95FBC0()
{
  sub_20B95FA68();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanActivityPickerShelf(uint64_t a1)
{
  result = qword_27C768008;
  if (!qword_27C768008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B95FC6C(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C1333A4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20B95FD7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B95FDF4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20B95FEF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 16)
  {
    sub_20B95F454();
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20B5E2760(v8);
  }

  else
  {
    v11 = *(v8 + 2);
    v10 = *(v8 + 3);

    v12 = (v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier);
    v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier + 8);
    if (v13 && (*v12 == v11 ? (v14 = v13 == v10) : (v14 = 0), v14 || (sub_20C13DFF4() & 1) != 0))
    {
    }

    else
    {
      *v12 = v11;
      v12[1] = v10;

      v15 = sub_20C13CDF4();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v1;
      v16[5] = v11;
      v16[6] = v10;

      sub_20B6383D0(0, 0, v5, &unk_20C164608, v16);

      swift_getObjectType();
      sub_20B7D3810();
      sub_20C13A764();
      sub_20B95E7EC(128);
    }
  }
}

uint64_t sub_20B960148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20B95EC24(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_20B960210()
{
  result = qword_27C768018;
  if (!qword_27C768018)
  {
    type metadata accessor for WorkoutPlanActivityPickerShelf(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768018);
  }

  return result;
}

char *sub_20B960268(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_artworkView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v12 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_stackView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v14 = [objc_opt_self() whiteColor];
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];
  if (v16)
  {
    v17 = v16;

    v15 = v17;
  }

  v18 = &v4[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_styleProvider];
  v19 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];

  *v18 = v14;
  *(v18 + 1) = v19;
  *(v18 + 1) = xmmword_20C157C20;
  *(v18 + 2) = xmmword_20C164640;
  *(v18 + 3) = xmmword_20C164650;
  v20 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_titleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  *&v4[v20] = v21;
  v90.receiver = v4;
  v90.super_class = type metadata accessor for WorkoutPlanHeaderCell(0);
  v22 = objc_msgSendSuper2(&v90, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = *&v22[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_stackView];
  v24 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_stackView;
  v25 = v22;
  v26 = v22;
  [v23 setAlignment_];
  [*&v25[v24] setAxis_];
  v88 = &v26[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_styleProvider];
  [*&v25[v24] setSpacing_];
  v27 = [v26 contentView];
  v28 = v24;
  [v27 addSubview_];

  sub_20C1380F4();
  sub_20C138104();
  sub_20C138104();
  v29 = *&v26[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_artworkView];
  v30 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_artworkView;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = objc_opt_self();
  v33 = v29;
  v34 = [v32 bundleForClass_];
  v35 = sub_20C13C914();

  v36 = [objc_opt_self() imageNamed:v35 inBundle:v34 withConfiguration:0];

  [v33 setImage_];
  [*&v26[v30] setContentMode_];
  [*&v25[v28] addArrangedSubview_];
  v37 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_titleLabel;
  v86 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_titleLabel;
  [*&v26[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_titleLabel] setFont_];
  [*&v26[v37] setTextAlignment_];
  [*&v26[v37] setTextColor_];
  [*&v26[v37] setNumberOfLines_];
  [*&v25[v28] addArrangedSubview_];
  sub_20C1380F4();
  v38 = sub_20C138104();
  v39 = sub_20C138104();
  v40 = 40;
  if (v38 == v39)
  {
    v40 = 48;
  }

  v41 = *&v88[v40];
  v87 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C152A00;
  v43 = [*&v25[v28] leadingAnchor];
  v44 = [v26 contentView];
  v45 = [v44 leadingAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v42 + 32) = v46;
  v47 = [*&v25[v28] trailingAnchor];
  v48 = [v26 contentView];
  v49 = [v48 trailingAnchor];

  v50 = [v47 &selRef:v49 alertControllerReleasedDictationButton:? + 5];
  *(v42 + 40) = v50;
  v51 = [*&v25[v28] topAnchor];
  v52 = [v26 contentView];
  v53 = [v52 &selRef_setLineBreakMode_];

  v54 = [v51 constraintEqualToAnchor:v53 constant:*(v88 + 7)];
  *(v42 + 48) = v54;
  v55 = [*&v25[v28] bottomAnchor];
  v56 = [v26 contentView];

  v57 = [v56 &selRef_secondaryLabel + 5];
  v58 = [v55 &selRef_passwordEntryCancelledHandler + 6];

  *(v42 + 56) = v58;
  v59 = [*&v26[v30] leadingAnchor];
  v60 = [*&v25[v28] leadingAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v42 + 64) = v61;
  v62 = [*&v26[v30] trailingAnchor];
  v63 = [*&v25[v28] trailingAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v42 + 72) = v64;
  v65 = [*&v26[v30] topAnchor];
  v66 = [*&v25[v28] topAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v42 + 80) = v67;
  v68 = [*&v26[v30] heightAnchor];
  v69 = [*&v26[v30] widthAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 multiplier:v41];

  *(v42 + 88) = v70;
  v71 = [*&v26[v86] leadingAnchor];
  v72 = [*&v25[v28] leadingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:*(v88 + 3)];

  *(v42 + 96) = v73;
  v74 = [*&v26[v86] trailingAnchor];
  v75 = [*&v25[v28] trailingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:-*(v88 + 3)];

  *(v42 + 104) = v76;
  v77 = [*&v26[v86] topAnchor];
  v78 = [*&v25[v28] topAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v80) = v89;
  [v79 setPriority_];
  *(v42 + 112) = v79;
  v81 = [*&v26[v86] bottomAnchor];
  v82 = [*&v25[v28] bottomAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v42 + 120) = v83;
  sub_20B5E29D0();
  v84 = sub_20C13CC54();

  [v87 activateConstraints_];

  return v26;
}

id sub_20B960F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutPlanHeaderCell(uint64_t a1)
{
  result = qword_27C768048;
  if (!qword_27C768048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B961060(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B961128(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B961174@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B9611CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B961230(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x46)
  {
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_titleLabel];
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    return [v8 setAttributedText_];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_titleLabel] setAttributedText_];
    sub_20C13B534();

    v11 = v1;
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a1;
      v25 = v23;
      *v14 = 138543874;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2080;
      v16 = sub_20B5F66D0();
      v17 = v11;
      v18 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v16);
      v20 = sub_20B51E694(v18, v19, &v25);

      *(v14 + 24) = v20;
      _os_log_impl(&dword_20B517000, v12, v13, "Attempted to configure %{public}@ with item: %{mask.hash}s", v14, 0x20u);
      sub_20B520158(v15, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v15, -1, -1);
      v21 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_20B9614E8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_artworkView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_stackView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v6 = [objc_opt_self() whiteColor];
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = v0 + OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_styleProvider;
  v11 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

  *v10 = v6;
  *(v10 + 8) = v11;
  *(v10 + 16) = xmmword_20C157C20;
  *(v10 + 32) = xmmword_20C164640;
  *(v10 + 48) = xmmword_20C164650;
  v12 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanHeaderCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  *(v0 + v12) = v13;
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for FilterActionSelected(uint64_t a1)
{
  result = qword_27C768058;
  if (!qword_27C768058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B9617C8(uint64_t a1)
{
  result = sub_20C134EC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_20B961834()
{
  v1 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController____lazy_storage___collectionViewDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController____lazy_storage___collectionViewDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController____lazy_storage___collectionViewDataSource);
  }

  else
  {
    v4 = sub_20B962D54();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_20B961894(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_backgroundView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v4 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_collectionView;
  v5 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v5 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v1[v4] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_collectionBlurView;
  v8 = [objc_opt_self() effectWithStyle_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v1[v7] = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_headerView;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for SessionRoutePickerHeaderView()) initWithFrame_];
  v11 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_footerView;
  *&v1[v11] = [objc_allocWithZone(type metadata accessor for SessionRoutePickerFooterView()) initWithFrame_];
  v12 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_containerView;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController____lazy_storage___collectionViewDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_presenter] = a1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SessionRoutePickerViewController();
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id sub_20B961AA8()
{
  v108.receiver = v0;
  v108.super_class = type metadata accessor for SessionRoutePickerViewController();
  objc_msgSendSuper2(&v108, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  v5 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_onTapBackground];
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_backgroundView];
  [v6 addGestureRecognizer_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v106 = v5;
  [result addSubview_];

  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_containerView];
  v9 = [v8 layer];
  v10 = [v0 traitCollection];
  [v10 displayCornerRadius];
  v12 = v11;

  [v9 setCornerRadius_];
  v13 = [v3 clearColor];
  [v8 setBackgroundColor_];

  [v8 setClipsToBounds_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAlpha_];
  CGAffineTransformMakeScale(&v107, 0.8, 0.8);
  [v8 setTransform_];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  [result addSubview_];

  v15 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_headerView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v104 = v15;
  [v8 addSubview_];
  v16 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_collectionBlurView];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v105 = v16;
  [v8 addSubview_];
  v17 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_collectionView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setDelegate_];
  v18 = [v3 clearColor];
  [v17 &:v18 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  [v17 setShowsVerticalScrollIndicator_];
  type metadata accessor for SessionRoutePickerCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = sub_20C13C914();
  [v17 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v20];

  type metadata accessor for SessionRoutePickerSectionHeaderView();
  v21 = swift_getObjCClassFromMetadata();
  v22 = *MEMORY[0x277D767D8];
  v23 = sub_20C13C914();
  [v17 registerClass:v21 forSupplementaryViewOfKind:v22 withReuseIdentifier:v23];

  [v8 addSubview_];
  v24 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_footerView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C1647C0;
  v26 = [v6 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = result;
  v28 = [result leadingAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v25 + 32) = v29;
  v30 = [v6 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = result;
  v32 = [result trailingAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v25 + 40) = v33;
  v34 = [v6 topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = result;
  v36 = [result topAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v25 + 48) = v37;
  v38 = [v6 bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = result;
  v40 = [result bottomAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v25 + 56) = v41;
  v42 = [v8 centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = result;
  v103 = v24;
  v44 = [result centerXAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v25 + 64) = v45;
  v46 = [v8 centerYAnchor];
  result = [v0 view];
  if (result)
  {
    v47 = result;
    v102 = objc_opt_self();
    v48 = [v47 centerYAnchor];

    v49 = [v46 constraintEqualToAnchor_];
    *(v25 + 72) = v49;
    v50 = [v8 widthAnchor];
    SMUCCUIDefaultExpandedContentModuleWidth();
    v51 = [v50 constraintEqualToConstant_];

    *(v25 + 80) = v51;
    v52 = [v8 heightAnchor];
    SMUCCUISliderExpandedContentModuleHeight();
    v53 = [v52 constraintEqualToConstant_];

    *(v25 + 88) = v53;
    v54 = [v104 leadingAnchor];
    v55 = [v8 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor_];

    *(v25 + 96) = v56;
    v57 = [v104 trailingAnchor];
    v58 = [v8 trailingAnchor];
    v59 = [v57 constraintEqualToAnchor_];

    *(v25 + 104) = v59;
    v60 = [v104 topAnchor];
    v61 = [v8 &selRef_setLineBreakMode_];
    v62 = [v60 constraintEqualToAnchor_];

    *(v25 + 112) = v62;
    v63 = [v104 heightAnchor];
    v64 = [v63 constraintEqualToConstant_];

    *(v25 + 120) = v64;
    v65 = [v17 leadingAnchor];
    v66 = [v8 leadingAnchor];
    v67 = [v65 constraintEqualToAnchor_];

    *(v25 + 128) = v67;
    v68 = [v17 trailingAnchor];
    v69 = [v8 trailingAnchor];
    v70 = [v68 constraintEqualToAnchor_];

    *(v25 + 136) = v70;
    v71 = [v17 topAnchor];
    v72 = [v104 bottomAnchor];
    v73 = [v71 &selRef:v72 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 144) = v73;
    v74 = [v17 bottomAnchor];
    v75 = [v103 topAnchor];
    v76 = [v74 &selRef:v75 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 152) = v76;
    v77 = [v105 leadingAnchor];
    v78 = [v17 leadingAnchor];
    v79 = [v77 &selRef:v78 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 160) = v79;
    v80 = [v105 trailingAnchor];
    v81 = [v17 trailingAnchor];
    v82 = [v80 &selRef:v81 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 168) = v82;
    v83 = [v105 &selRef_setLineBreakMode_];
    v84 = [v17 &selRef_setLineBreakMode_];
    v85 = [v83 &selRef:v84 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 176) = v85;
    v86 = [v105 bottomAnchor];
    v87 = [v103 &selRef_setLineBreakMode_];
    v88 = [v86 &selRef:v87 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 184) = v88;
    v89 = [v103 bottomAnchor];
    v90 = [v8 bottomAnchor];
    v91 = [v89 &selRef:v90 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 192) = v91;
    v92 = [v103 &selRef_setLineBreakMode_];
    v93 = [v8 bottomAnchor];
    v94 = [v92 constraintEqualToAnchor:v93 constant:-18.0];

    *(v25 + 200) = v94;
    v95 = [v103 leadingAnchor];
    v96 = [v8 leadingAnchor];
    v97 = [v95 &selRef:v96 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 208) = v97;
    v98 = [v103 trailingAnchor];
    v99 = [v8 trailingAnchor];
    v100 = [v98 &selRef:v99 alertControllerReleasedDictationButton:? + 5];

    *(v25 + 216) = v100;
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v101 = sub_20C13CC54();

    [v102 activateConstraints_];

    *(*&v0[OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_presenter] + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_display + 8) = &off_2822B8EE0;
    return swift_unknownObjectWeakAssign();
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_20B962B00(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for SessionRoutePickerViewController();
  v8 = *a4;
  v9 = v11.receiver;
  v10 = objc_msgSendSuper2(&v11, v8, a3);
  a5(v10);
}

void sub_20B962BA4()
{
  v0 = sub_20C13C554();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v3 = sub_20C13D374();
    (*(v1 + 104))(v3, *MEMORY[0x277D85200], v0);
    v6 = sub_20C13C584();
    (*(v1 + 8))(v3, v0);
    if (v6)
    {
      [v5 dismissViewControllerAnimated:0 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_20B962D54()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_collectionView);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_20B963DE4;
  *(v3 + 24) = v1;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7680B8, &unk_20C164820));
  v5 = v2;

  v6 = sub_20C13BF14();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13BF24();

  return v6;
}

uint64_t sub_20B962E90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = sub_20C13C914();
  v8 = sub_20C1331B4();
  v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8];

  type metadata accessor for SessionRoutePickerCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    sub_20C0FDCD4(a3);
    return v11;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B962FD4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  v11 = sub_20B96306C(a1, a2, a3, a4);

  return v11;
}

uint64_t sub_20B96306C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7680B0, &qword_20C164818);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = sub_20C13C914();
  v11 = sub_20C13C914();
  v12 = sub_20C1331B4();
  v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12];

  type metadata accessor for SessionRoutePickerSectionHeaderView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = sub_20B961834();
  sub_20C13BFA4();

  v17 = sub_20C13BE74();
  (*(v7 + 8))(v9, v6);
  v13 = a4;
  v18 = sub_20C133234();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v18 >= *(v17 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:

    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  v19 = *(v17 + 16 * v18 + 40);

  v20 = *(v15 + OBJC_IVAR____TtC9SeymourUI35SessionRoutePickerSectionHeaderView_titleLabel);
  if (v19)
  {
    v21 = sub_20C13C914();
  }

  else
  {
    v21 = 0;
  }

  [v20 setText_];

  return v15;
}

id sub_20B963320(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SessionRoutePickerViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20B963424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  *v9 = sub_20C13D374();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_20C13C584();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v11 = sub_20C13C914();
    v12 = sub_20C13C914();
    v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

    v14 = sub_20C13C914();
    v15 = [objc_opt_self() actionWithTitle:v14 style:1 handler:0];

    [v13 addAction_];
    [v16[1] presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_20B9638C8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_collectionView;
  v3 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v3 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *(v0 + v2) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_collectionBlurView;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v5) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_headerView;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for SessionRoutePickerHeaderView()) initWithFrame_];
  v9 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_footerView;
  *(v0 + v9) = [objc_allocWithZone(type metadata accessor for SessionRoutePickerFooterView()) initWithFrame_];
  v10 = OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_containerView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController____lazy_storage___collectionViewDataSource) = 0;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B963AB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7680B0, &qword_20C164818);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-v2 - 8];
  v4 = sub_20B961834();
  sub_20C13BFA4();

  v5 = sub_20C13BE74();
  result = sub_20C133234();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v5 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v5 + 16 * result;
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);

  *&v17[0] = v8;
  *(&v17[0] + 1) = v9;
  v10 = sub_20C13BE44();

  result = sub_20C133204();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < *(v10 + 16))
  {
    v11 = v10 + 56 * result;
    v12 = *(v11 + 32);
    v13 = *(v11 + 48);
    v14 = *(v11 + 64);
    v18 = *(v11 + 80);
    v17[1] = v13;
    v17[2] = v14;
    v17[0] = v12;
    sub_20B79AACC(v17, v16);

    sub_20BBB6D50(v17);
    sub_20B79AB28(v17);
    return (*(v1 + 8))(v3, v0);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_20B963C78(void *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7680B0, &qword_20C164818);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = sub_20B961834();
  sub_20C13BFA4();

  result = sub_20C13BE74();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = *(result + 16 * a2 + 40);

  if (v10)
  {

    [a1 bounds];
    CGRectGetWidth(v12);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20B963DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v7[2] = *(a3 + 32);
  v8 = *(a3 + 48);
  return v4(a1, a2, v7);
}

id sub_20B963E40()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI32SessionRoutePickerViewController_containerView);
  [v1 setAlpha_];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

uint64_t getEnumTagSinglePayload for SessionOverlayElement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionOverlayElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20B964000()
{
  result = qword_27C7680C0;
  if (!qword_27C7680C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7680C8, qword_20C164848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7680C0);
  }

  return result;
}

uint64_t sub_20B964064(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x7261426E727562;
      break;
    case 2:
      result = 0x65636E65646163;
      break;
    case 3:
      result = 0x65636E6174736964;
      break;
    case 4:
      result = 0x796772656E65;
      break;
    case 5:
      result = 0x7461527472616568;
      break;
    case 6:
      result = 0x6867696C68676968;
      break;
    case 7:
      result = 0x7469736E65746E69;
      break;
    case 8:
      result = 0x656E696C636E69;
      break;
    case 9:
      result = 7172210;
      break;
    case 10:
      result = 0x6F74617261706573;
      break;
    case 11:
      result = 7172211;
      break;
    case 12:
      result = 0x73736572676F7270;
      break;
    case 13:
      result = 0x72656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20B9641EC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_20B964064(*a1);
  v5 = v4;
  if (v3 == sub_20B964064(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  return v8 & 1;
}

uint64_t sub_20B964274()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20B964064(v1);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20B9642D8(uint64_t a1)
{
  sub_20B964064(*v1);
  sub_20C13CA64();

  return result;
}

uint64_t sub_20B96432C(uint64_t a1)
{
  v2 = *v1;
  sub_20C13E164();
  sub_20B964064(v2);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

unint64_t sub_20B96438C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20B964450(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_20B9643BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20B964064(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_20B9643FC()
{
  result = qword_27C7680D0;
  if (!qword_27C7680D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7680D0);
  }

  return result;
}

unint64_t sub_20B964450(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

id sub_20B9644C4(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PhoneSessionHeartRateDiscoveryView();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = v1;
  [v4 bounds];
  v9 = sub_20BF6C784(v3, v5, v6, v7, v8);
  if (v9)
  {
    v10 = 14.0;
  }

  else
  {
    v10 = 50.0;
  }

  sub_20C0789F8(v9, MEMORY[0x277D84F90], a1);
  [*&v4[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton] setContentEdgeInsets_];

  return [v4 setNeedsUpdateConstraints];
}

id sub_20B964620(uint64_t a1, double a2, double a3)
{
  v7 = *&v3[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton];
  [v3 convertPoint:v7 toCoordinateSpace:?];
  v9 = v8;
  v11 = v10;
  [v7 frame];
  v14.x = v9;
  v14.y = v11;
  if (CGRectContainsPoint(v15, v14))
  {
    return v7;
  }

  v13 = *&v3[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackView];
  [v3 convertPoint:v13 toCoordinateSpace:{a2, a3}];
  return [v13 hitTest:a1 withEvent:?];
}

id sub_20B964844(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhoneSessionHeartRateDiscoveryView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20B964998(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_imageView);
  if (a1[1])
  {
    type metadata accessor for RemoteBrowsingDiscoveryPresenter(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = *(a1 + 64);
    v7 = sub_20C13C914();
    v8 = objc_opt_self();
    if (v6)
    {
      v9 = [v8 smm:v7 systemImageNamed:?];
    }

    else
    {
      v9 = [v8 imageNamed:v7 inBundle:v5 compatibleWithTraitCollection:0];
    }

    v13 = v9;

    [v3 setImage_];
    v10 = &selRef_stopAnimating;
    v11 = 0.0;
    v12 = 1.0;
  }

  else
  {
    v10 = &selRef_startAnimating;
    v11 = 1.0;
    v12 = 0.0;
  }

  [v3 setAlpha_];
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_spinnerView);
  [v14 setAlpha_];
  [v14 *v10];
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_connectingView);
  v16 = [v3 image];
  if (v16)
  {

    v17 = 0;
  }

  else
  {
    v17 = [v14 isAnimating] ^ 1;
  }

  [v15 setHidden_];
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_lookingLabel);
  v19 = sub_20C13C914();
  [v18 setText_];

  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_checkLabel);
  v21 = sub_20C13C914();
  [v20 setText_];

  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton);
  v23 = sub_20C13C914();
  [v22 setTitle:v23 forState:0];

  return [v22 setContentEdgeInsets_];
}

void sub_20B964C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v18 = sub_20B966EDC;
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B7B548C;
  v17 = &block_descriptor_39_1;
  v11 = _Block_copy(&v14);

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v18 = sub_20B5E4150;
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B5E3874;
  v17 = &block_descriptor_45_1;
  v13 = _Block_copy(&v14);

  [v8 animateWithDuration:v11 animations:v13 completion:0.25];
  _Block_release(v13);
  _Block_release(v11);
}

void sub_20B964DE4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setAlpha_];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton);

    [v7 setUserInteractionEnabled_];
  }
}

void sub_20B964EA4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  *(v4 + 88) = v3;
  aBlock[4] = sub_20B966EC8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_28_2;
  v7 = _Block_copy(aBlock);
  sub_20B5E40E0(a1, v10);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_20B966ED4;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20B5E3874;
  v10[3] = &block_descriptor_32_1;
  v9 = _Block_copy(v10);

  [v2 animateWithDuration:v7 animations:v9 completion:0.25];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_20B965080(uint64_t *a1, uint64_t a2)
{
  if (a1[1])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_imageView);

      v5 = sub_20C13C914();
      v6 = [objc_opt_self() systemImageNamed_];

      [v4 setImage_];
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_lookingLabel);

    v10 = sub_20C13C914();
    [v9 setText_];
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_checkLabel);

    v14 = sub_20C13C914();
    [v13 setText_];
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton);

    v18 = sub_20C13C914();
    [v17 setTitle:v18 forState:0];
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton);

    [v21 setContentEdgeInsets_];
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24 = *(v22 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_spinnerView);

    [v24 setAlpha_];
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = *(v25 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_imageView);

    [v27 setAlpha_];
  }
}

void sub_20B965390(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_spinnerView);

    [v4 stopAnimating];
  }
}

void sub_20B965408(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_messageStackView;
    v3 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_lookingLabel;
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_messageStackView) removeArrangedSubview_];
    [*&v4[v3] removeFromSuperview];
    [*&v4[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackViewCenterYConstraint] setConstant_];
    [*&v4[v2] setCustomSpacing:*&v4[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_connectingView] afterView:10.0];
    v5 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackView;
    [*&v4[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackView] setCustomSpacing:*&v4[v2] afterView:10.0];
    [*&v4[v5] setCustomSpacing:*&v4[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton] afterView:15.0];
    [*&v4[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_productPlacementView] setHidden_];
    [v4 layoutIfNeeded];
  }
}

double sub_20B965548()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_productPlacementView;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_productPlacementView);
  v3 = *(v1 + 8);
  v4 = v2;
  return sub_20B7F9F58(v2, v3);
}

void sub_20B965594()
{
  [v0 layoutIfNeeded];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_20B966EC0;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20B7B548C;
  v4[3] = &block_descriptor_57;
  v3 = _Block_copy(v4);

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

char *sub_20B965698(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_landscapeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_portraitConstraints] = v3;
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_previousBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_spinnerView;
  v6 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v192 = v5;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_lookingLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v190 = *MEMORY[0x277D76918];
  v9 = *MEMORY[0x277D74420];
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v12 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v13 = swift_initStackObject();
  v14 = MEMORY[0x277D74430];
  *(v13 + 16) = xmmword_20C14F980;
  v15 = *v14;
  *(v13 + 32) = *v14;
  *(v13 + 40) = v9;
  v16 = v12;
  v17 = v15;
  v18 = sub_20B6B134C(v13);
  swift_setDeallocating();
  sub_20B520158(v13 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v18;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v19 = sub_20C13C744();

  v20 = [v10 fontDescriptorByAddingAttributes_];

  v21 = objc_opt_self();
  v22 = [v21 fontWithDescriptor:v20 size:0.0];

  [v8 setFont_];
  v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v8 setTextColor_];

  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  [v8 setTextAlignment_];
  v24 = v8;
  LODWORD(v25) = 1148846080;
  [v24 setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v26];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  v193 = v7;
  *&v2[v7] = v24;
  v27 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_checkLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v29 = [v21 preferredFontForTextStyle_];
  [v28 setFont_];

  v30 = objc_opt_self();
  v31 = [v30 labelColor];
  [v28 setTextColor_];

  [v28 setTextAlignment_];
  v32 = v28;
  LODWORD(v33) = 1132068864;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v2[v27] = v32;
  v34 = [v30 whiteColor];
  type metadata accessor for RoundedButton();
  v35 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v35 setTitle:0 forState:0];
  v36 = v35;
  v37 = [v36 titleLabel];
  if (v37)
  {
    v38 = v37;
    [v37 setAdjustsFontForContentSizeCategory_];
  }

  v39 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton;
  sub_20BD4F054(0, 0, 1, 0);
  [v36 setTintColor_];

  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = [v30 systemBackgroundColor];
  [v36 setTintColor_];

  v189 = v39;
  *&v2[v39] = v36;
  v41 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_imageView;
  v42 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v43) = 1148846080;
  [v42 setContentCompressionResistancePriority:0 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [v42 setContentCompressionResistancePriority:1 forAxis:v44];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v2[v41] = v42;
  v45 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_connectingView;
  v46 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v45] = v46;
  v47 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackViewCenterYConstraint;
  *&v2[v47] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v2[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_presenter] = a1;
  sub_20C0134C0(*(a1 + OBJC_IVAR____TtC9SeymourUI34SessionHeartRateDiscoveryPresenter_platform), v197);
  v48 = v198;
  v49 = v199;
  __swift_project_boxed_opaque_existential_1(v197, v198);
  v50 = *(v49 + 136);

  v51 = v50(v48, v49);
  v52 = &v2[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_productPlacementView];
  *v52 = v51;
  *(v52 + 1) = v53;
  __swift_destroy_boxed_opaque_existential_1(v197);
  v188 = v52;
  [*v52 setHidden_];
  v54 = *&v2[v41];
  v55 = sub_20C13C914();
  v56 = [objc_opt_self() systemImageNamed_];

  [v54 setImage_];
  v57 = *&v2[v41];
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 configurationWithPointSize:4 weight:47.0];
  [v59 setPreferredSymbolConfiguration_];

  v61 = *&v2[v41];
  v62 = sub_20C1344B4();
  if (v64)
  {
    if (v62 == 2)
    {
      v65 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.419607843 green:0.984313725 blue:0.97254902 alpha:1.0];
      goto LABEL_8;
    }
  }

  else
  {
    sub_20B583F4C(v62, v63, 0);
  }

  v65 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
LABEL_8:
  v66 = v65;
  [v61 setTintColor_];

  v67 = v45;
  [*&v2[v45] addSubview_];
  [*&v2[v45] addSubview_];
  [*&v2[v41] setAlpha_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20C150040;
  v69 = *&v2[v45];
  v70 = *&v2[v193];
  *(v68 + 32) = v69;
  *(v68 + 40) = v70;
  v71 = *&v2[v27];
  *(v68 + 48) = v71;
  v72 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B5E5C28();
  v73 = v69;
  v74 = v70;
  v75 = v71;
  v76 = sub_20C13CC54();

  v77 = [v72 initWithArrangedSubviews_];

  [v77 setAlignment_];
  [v77 setAxis_];
  [v77 setTranslatesAutoresizingMaskIntoConstraints_];
  v78 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_messageStackView;
  *&v2[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_messageStackView] = v77;
  v79 = swift_allocObject();
  v80 = *&v2[v189];
  *(v79 + 16) = xmmword_20C150040;
  *(v79 + 32) = v77;
  *(v79 + 40) = v80;
  v81 = *v188;
  *(v79 + 48) = *v188;
  v82 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v83 = v77;
  v84 = v80;
  v85 = v81;
  v86 = sub_20C13CC54();

  v87 = [v82 initWithArrangedSubviews_];

  [v87 setAlignment_];
  [v87 setAxis_];
  [v87 setTranslatesAutoresizingMaskIntoConstraints_];
  v88 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackView;
  *&v2[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackView] = v87;
  [*&v2[v78] setCustomSpacing:*&v2[v67] afterView:13.0];
  [*&v2[v78] setCustomSpacing:*&v2[v193] afterView:8.0];
  [*&v2[v88] setCustomSpacing:*&v2[v78] afterView:23.0];
  v196.receiver = v2;
  v196.super_class = type metadata accessor for PhoneSessionHeartRateDiscoveryView();
  v89 = objc_msgSendSuper2(&v196, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  LOBYTE(v88) = *(a1 + 48);
  v90 = v89;
  sub_20B590BD0(v88, 4, v197);
  v91 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_lookingLabel;
  v92 = *&v90[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_lookingLabel];
  v93 = sub_20C13C914();
  [v92 setText_];

  v94 = *&v90[v91];
  v95 = sub_20C1344B4();
  if (v97)
  {
    if (v95 == 2)
    {
      v98 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.419607843 green:0.984313725 blue:0.97254902 alpha:{1.0, 3, 7}];
      goto LABEL_13;
    }
  }

  else
  {
    sub_20B583F4C(v95, v96, 0);
  }

  v98 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, 3, 7}];
LABEL_13:
  v99 = v98;
  [v94 setTextColor_];

  v100 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_checkLabel;
  v101 = *&v90[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_checkLabel];
  v102 = sub_20C13C914();
  [v101 setText_];

  [*&v90[v100] setNumberOfLines_];
  [*&v90[v100] setAdjustsFontSizeToFitWidth_];
  [*&v90[v100] setAllowsDefaultTighteningForTruncation_];
  [*&v90[v100] setMinimumScaleFactor_];
  v103 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton;
  v104 = *&v90[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton];
  v105 = sub_20C1344B4();
  if (v107)
  {
    if (v105 == 2)
    {
      v108 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.419607843 green:0.984313725 blue:0.97254902 alpha:1.0];
      goto LABEL_18;
    }
  }

  else
  {
    sub_20B583F4C(v105, v106, 0);
  }

  v108 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
LABEL_18:
  v109 = v108;
  [v104 setBackgroundColor_];

  v110 = *&v90[v103];
  v111 = sub_20C13C914();
  sub_20B5E5C74(v197);
  [v110 setTitle:v111 forState:0];

  [*&v90[v103] addTarget:v90 action:sel_didTapContinueButton_ forControlEvents:64];
  v112 = *&v90[v103];
  sub_20BD4F054(0, 0, 1, 0);

  [*&v90[v103] setContentEdgeInsets_];
  v194 = v103;
  [*&v90[v103] setUserInteractionEnabled_];
  v191 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_spinnerView;
  [*&v90[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_spinnerView] startAnimating];
  v113 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackView;
  v114 = *&v90[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackView];
  v115 = v90;
  [v115 addSubview_];
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_20C14FE90;
  v117 = [*&v115[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_messageStackView] widthAnchor];
  v118 = [v115 widthAnchor];
  v119 = [v117 constraintLessThanOrEqualToAnchor:v118 multiplier:0.5];

  *(v116 + 32) = v119;
  v120 = [*&v90[v113] leadingAnchor];
  v121 = [v115 safeAreaLayoutGuide];

  v122 = [v121 leadingAnchor];
  v123 = [v120 constraintGreaterThanOrEqualToAnchor_];

  *(v116 + 40) = v123;
  v124 = [*&v90[v113] trailingAnchor];
  v125 = [v115 safeAreaLayoutGuide];

  v126 = [v125 trailingAnchor];
  v127 = [v124 constraintLessThanOrEqualToAnchor_];

  *(v116 + 48) = v127;
  v128 = [*&v90[v113] centerYAnchor];
  v129 = [v115 centerYAnchor];

  v130 = [v128 constraintEqualToAnchor_];
  *(v116 + 56) = v130;
  *&v115[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_landscapeConstraints] = v116;

  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_20C14FE90;
  v132 = [*&v90[v113] leadingAnchor];
  v133 = [v115 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v134 = [v132 constraintEqualToAnchor:v133 constant:*&qword_27C799F40];

  *(v131 + 32) = v134;
  v135 = [*&v90[v113] trailingAnchor];
  v136 = [v115 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v137 = [v135 constraintEqualToAnchor:v136 constant:-*&qword_27C799F50];

  *(v131 + 40) = v137;
  v138 = [*&v90[v103] leadingAnchor];
  v139 = [*&v90[v113] leadingAnchor];
  v140 = [v138 constraintEqualToAnchor_];

  *(v131 + 48) = v140;
  v141 = [*&v90[v103] trailingAnchor];
  v142 = [*&v90[v113] trailingAnchor];
  v143 = [v141 constraintEqualToAnchor_];

  *(v131 + 56) = v143;
  *&v115[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_portraitConstraints] = v131;

  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_20C14FF90;
  v145 = [*&v90[v113] centerXAnchor];
  v146 = [v115 &selRef_handleMenuButtonTapped + 2];

  v147 = [v145 constraintEqualToAnchor_];
  *(v144 + 32) = v147;
  v148 = [*&v90[v113] centerYAnchor];
  v149 = [v115 centerYAnchor];

  v150 = [v148 &selRef:v149 alertControllerReleasedDictationButton:? + 5];
  *(v144 + 40) = v150;
  v151 = [*&v90[v113] topAnchor];
  v152 = [v115 safeAreaLayoutGuide];

  v153 = [v152 topAnchor];
  v154 = [v151 constraintGreaterThanOrEqualToAnchor:v153 constant:4.0];

  *(v144 + 48) = v154;
  v155 = [*&v90[v113] bottomAnchor];
  v156 = [v115 safeAreaLayoutGuide];

  v157 = [v156 bottomAnchor];
  v158 = [v155 constraintLessThanOrEqualToAnchor:v157 constant:-4.0];

  *(v144 + 56) = v158;
  v159 = [*&v90[v191] &selRef_handleMenuButtonTapped + 2];
  v160 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_connectingView;
  v161 = [*&v115[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_connectingView] &selRef_handleMenuButtonTapped + 2];
  v162 = [v159 constraintEqualToAnchor_];

  *(v144 + 64) = v162;
  v163 = [*&v90[v191] centerYAnchor];
  v164 = [*&v115[v160] centerYAnchor];
  v165 = [v163 constraintEqualToAnchor_];

  *(v144 + 72) = v165;
  v166 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_imageView;
  v167 = [*&v115[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_imageView] &selRef_handleMenuButtonTapped + 2];
  v168 = [*&v115[v160] &selRef_handleMenuButtonTapped + 2];
  v169 = [v167 constraintEqualToAnchor_];

  *(v144 + 80) = v169;
  v170 = [*&v115[v166] centerYAnchor];
  v171 = [*&v115[v160] centerYAnchor];
  v172 = [v170 constraintEqualToAnchor_];

  *(v144 + 88) = v172;
  v173 = [*&v115[v160] heightAnchor];
  v174 = [*&v115[v166] heightAnchor];
  v175 = [v173 constraintEqualToAnchor_];

  *(v144 + 96) = v175;
  v176 = [*&v115[OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_productPlacementView] widthAnchor];
  v177 = [v176 constraintEqualToConstant_];

  *(v144 + 104) = v177;
  v178 = [v115 traitCollection];
  v179 = v115;
  [v179 bounds];
  v184 = sub_20BF6C784(v178, v180, v181, v182, v183);
  if (v184)
  {
    v185 = 14.0;
  }

  else
  {
    v185 = 50.0;
  }

  if (v184)
  {
    v186 = 8.0;
  }

  else
  {
    v186 = 50.0;
  }

  sub_20C0789F8(v184, v144, 0);

  [*&v90[v194] setContentEdgeInsets_];

  [v179 setAlpha_];
  *(a1 + 24) = &off_2822B9088;
  swift_unknownObjectWeakAssign();

  return v179;
}

void sub_20B966EE8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_landscapeConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_portraitConstraints) = v2;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_previousBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_spinnerView;
  v5 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v5;
  v46 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_lookingLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = *MEMORY[0x277D76918];
  v8 = *MEMORY[0x277D74420];
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D74430];
  *(v12 + 32) = *MEMORY[0x277D74430];
  *(v12 + 40) = v8;
  v14 = v11;
  v15 = v13;
  v16 = sub_20B6B134C(v12);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v16;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v9 fontDescriptorByAddingAttributes_];

  v19 = objc_opt_self();
  v20 = [v19 fontWithDescriptor:v18 size:0.0];

  [v6 setFont_];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  [v6 setTextAlignment_];
  v22 = v6;
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v24];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v46) = v22;
  v25 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_checkLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v27 = [v19 preferredFontForTextStyle_];
  [v26 setFont_];

  v28 = objc_opt_self();
  v29 = [v28 labelColor];
  [v26 setTextColor_];

  [v26 setTextAlignment_];
  v30 = v26;
  LODWORD(v31) = 1132068864;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v25) = v30;
  v32 = [v28 whiteColor];
  type metadata accessor for RoundedButton();
  v33 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v33 setTitle:0 forState:0];
  v34 = v33;
  v35 = [v34 titleLabel];
  if (v35)
  {
    v36 = v35;
    [v35 setAdjustsFontForContentSizeCategory_];
  }

  v37 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_continueButton;
  sub_20BD4F054(0, 0, 1, 0);
  [v34 setTintColor_];

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [v28 systemBackgroundColor];
  [v34 setTintColor_];

  *(v1 + v37) = v34;
  v39 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_imageView;
  v40 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v41) = 1148846080;
  [v40 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v42];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v39) = v40;
  v43 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_connectingView;
  v44 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v43) = v44;
  v45 = OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_stackViewCenterYConstraint;
  *(v1 + v45) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B967598(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20, &unk_20C15DB90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v44 = sub_20C13BC64();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13BC24();
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_itemInfo;
  v19 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = &v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_appearance];
  v24 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];

  v25 = objc_opt_self();
  v26 = [v25 secondaryLabelColor];
  *v23 = v24;
  *(v23 + 1) = 1937075312;
  *(v23 + 2) = 0xE400000000000000;
  *(v23 + 3) = v26;
  v27 = type metadata accessor for WorkoutPlanPreferenceRowCell(0);
  v47.receiver = v4;
  v47.super_class = v27;
  v28 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = &v28[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_appearance];
  v30 = *&v28[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_appearance];
  v31 = objc_opt_self();
  v43 = v28;
  v32 = [v31 configurationWithFont_];

  v33 = v32;
  v34 = sub_20C13C914();

  v35 = [objc_opt_self() systemImageNamed:v34 withConfiguration:v33];

  [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v36 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768150, &qword_20C164A48) + 48)];
  v37 = *MEMORY[0x277D74A98];
  v38 = sub_20C13BBC4();
  (*(*(v38 - 8) + 104))(v14, v37, v38);
  *v36 = sub_20B8C8EE8;
  v36[1] = 0;
  (*(v12 + 104))(v14, *MEMORY[0x277D74AD8], v44);
  v39 = sub_20C13BBF4();
  (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
  v40 = [v25 secondaryLabelColor];
  sub_20C13BC14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28, &unk_20C15AA40);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v41 = v43;
  sub_20C13BBB4();
  sub_20C13D464();

  [v41 setTintColor_];
  (*(v45 + 8))(v17, v46);
  return v41;
}

id sub_20B967CC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanPreferenceRowCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutPlanPreferenceRowCell(uint64_t a1)
{
  result = qword_281100C68;
  if (!qword_281100C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B967DE4(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B967E98(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B967EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B967F3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B967FAC(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x4B)
  {
    *(&v21 + 1) = sub_20C13BDF4();
    v22 = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(&v20);
    sub_20C13BDE4();

    sub_20C13BDB4();

    sub_20C13BD24();
    return MEMORY[0x20F2F4B60](&v20);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    MEMORY[0x20F2F4B60](&v20);
    sub_20C13B534();

    v8 = v1;
    v9 = sub_20C13BB74();
    v10 = sub_20C13D1D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      v19[1] = a1;
      *&v20 = v19[0];
      *v11 = 138543874;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2080;
      v13 = sub_20B5F66D0();
      v14 = v8;
      v15 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v13);
      v17 = sub_20B51E694(v15, v16, &v20);

      *(v11 + 24) = v17;
      _os_log_impl(&dword_20B517000, v9, v10, "Attempted to configure %{public}@ with item: %{mask.hash}s", v11, 0x20u);
      sub_20B520158(v12, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v12, -1, -1);
      v18 = v19[0];
      __swift_destroy_boxed_opaque_existential_1(v19[0]);
      MEMORY[0x20F2F6A40](v18, -1, -1);
      MEMORY[0x20F2F6A40](v11, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_20B968284()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = (v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_appearance);
  v7 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  v8 = [objc_opt_self() secondaryLabelColor];
  *v6 = v7;
  v6[1] = 1937075312;
  v6[2] = 0xE400000000000000;
  v6[3] = v8;
  sub_20C13DE24();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI9ShelfItemO(void *a1)
{
  v1 = (*a1 >> 57) & 0x78 | *a1 & 7;
  if (v1 <= 0x4C)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 77;
  }
}

uint64_t sub_20B96843C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x33 && *(a1 + 8))
  {
    return (*a1 + 51);
  }

  v3 = ((*a1 >> 57) & 0x78 | *a1 & 7) ^ 0x7F;
  if (v3 >= 0x32)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20B968490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x32)
  {
    *result = a2 - 51;
    if (a3 >= 0x33)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x33)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (-a2 | (-a2 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_20B9684E8(unint64_t *result, unsigned int a2)
{
  if (a2 < 0x4D)
  {
    *result = a2 & 7 | (a2 << 57) & 0xF000000000000007 | (8 * ((*result >> 3) & 0x1FFFFFFFFFFFFFFLL));
  }

  else
  {
    *result = (8 * (a2 - 77)) | 0x9000000000000005;
  }

  return result;
}

uint64_t sub_20B968530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 7172210;
    if (a1 != 6)
    {
      v9 = 7172211;
    }

    v10 = 0xE700000000000000;
    v11 = 0x7363697274656DLL;
    if (a1 != 4)
    {
      v11 = 0xD000000000000013;
      v10 = 0x800000020C191AD0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x57656E696C636E69;
    v5 = 0xEB000000006B6C61;
    if (a1 != 2)
    {
      v4 = 0x7469736E65746E69;
      v5 = 0xE900000000000079;
    }

    v6 = 0x52656E696C636E69;
    if (a1)
    {
      v3 = 0xEA00000000006E75;
    }

    else
    {
      v6 = 0x7261426E727562;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xE300000000000000;
        if (v7 != 7172210)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v7 != 7172211)
        {
LABEL_47:
          v13 = sub_20C13DFF4();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v7 != 0x7363697274656DLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0x800000020C191AD0;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xEB000000006B6C61;
      if (v7 != 0x57656E696C636E69)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0xE900000000000079;
      if (v7 != 0x7469736E65746E69)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xEA00000000006E75;
    if (v7 != 0x52656E696C636E69)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v7 != 0x7261426E727562)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v12)
  {
    goto LABEL_47;
  }

  v13 = 1;
LABEL_48:

  return v13 & 1;
}

uint64_t sub_20B9687B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000317265;
  v3 = a1;
  if (a1 > 3u)
  {
    v10 = 0x800000020C191880;
    v11 = 0xD000000000000016;
    if (a1 == 6)
    {
      v11 = 0xD000000000000015;
    }

    else
    {
      v10 = 0x800000020C1918A0;
    }

    v12 = 0x800000020C191840;
    if (a1 == 4)
    {
      v13 = 0xD000000000000014;
    }

    else
    {
      v13 = 0xD000000000000015;
    }

    if (a1 != 4)
    {
      v12 = 0x800000020C191860;
    }

    if (a1 <= 5u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v3 <= 5)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x800000020C191820;
    if (a1 == 2)
    {
      v5 = 0x6E6E614274736574;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a1 == 2)
    {
      v4 = 0xEB00000000317265;
    }

    v6 = 0x800000020C1917E0;
    v7 = 0xD000000000000016;
    if (a1)
    {
      v7 = 0xD000000000000013;
      v6 = 0x800000020C191800;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x800000020C191800;
        if (v8 != 0xD000000000000013)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      v14 = "Collection_NewWorkouts";
      goto LABEL_50;
    }

    if (a2 == 2)
    {
      if (v8 != 0x6E6E614274736574)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v15 = "testBubbleTipInline1";
LABEL_47:
    v2 = (v15 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000014)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = "testBubbleTipInline2";
      goto LABEL_47;
    }

    v16 = "testBubbleTipOverlay1";
LABEL_44:
    v2 = (v16 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000015)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (a2 == 6)
  {
    v16 = "testBubbleTipOverlay2";
    goto LABEL_44;
  }

  v14 = "testEngagementRequest1";
LABEL_50:
  v2 = (v14 - 32) | 0x8000000000000000;
  if (v8 != 0xD000000000000016)
  {
LABEL_53:
    v17 = sub_20C13DFF4();
    goto LABEL_54;
  }

LABEL_51:
  if (v9 != v2)
  {
    goto LABEL_53;
  }

  v17 = 1;
LABEL_54:

  return v17 & 1;
}

uint64_t sub_20B9689F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6576697463616E69;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x6B63616279616C70;
    if (v3 == 2)
    {
      v5 = 0xED00006E61676542;
    }

    else
    {
      v5 = 0xED00006465646E45;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x657669746361;
    }

    else
    {
      v4 = 0x6576697463616E69;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xED00006E61676542;
  if (a2 != 2)
  {
    v7 = 0xED00006465646E45;
  }

  if (a2)
  {
    v2 = 0x657669746361;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x6B63616279616C70;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20C13DFF4();
  }

  return v10 & 1;
}

uint64_t sub_20B968B5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000676E697ALL;
  v3 = 0x696C616974696E69;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x657669746361;
    }

    else
    {
      v5 = 0x696C616974696E69;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEC000000676E697ALL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x6576697463616E69;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x72696465526C7275;
    }

    else
    {
      v5 = 0x6C706D6F436C7275;
    }

    if (v4 == 3)
    {
      v6 = 0xEE00676E69746365;
    }

    else
    {
      v6 = 0xEB00000000657465;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x6576697463616E69;
  v9 = 0x72696465526C7275;
  v10 = 0xEE00676E69746365;
  if (a2 != 3)
  {
    v9 = 0x6C706D6F436C7275;
    v10 = 0xEB00000000657465;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x657669746361;
    v2 = 0xE600000000000000;
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
    v13 = sub_20C13DFF4();
  }

  return v13 & 1;
}

uint64_t sub_20B968D04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6574656C6564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656D616E6572;
    }

    else
    {
      v4 = 0x61746544776F6873;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000736C69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 6581861;
    }

    else
    {
      v4 = 0x6574656C6564;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656D616E6572;
  if (a2 != 2)
  {
    v8 = 0x61746544776F6873;
    v7 = 0xEB00000000736C69;
  }

  if (a2)
  {
    v2 = 6581861;
    v6 = 0xE300000000000000;
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
    v11 = sub_20C13DFF4();
  }

  return v11 & 1;
}

uint64_t sub_20B968E3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x6E6769736564;
    }

    if (v2)
    {
      v4 = 0x800000020C191770;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x63696C6F626D7973;
    v4 = 0xEE00737469617254;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x746E6169726176;
    }

    else
    {
      v3 = 0x746867696577;
    }

    if (v2 == 3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = 0x6E6769736564;
    }

    if (a2)
    {
      v5 = 0x800000020C191770;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEE00737469617254;
    if (v3 != 0x63696C6F626D7973)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x746E6169726176)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x746867696577)
    {
LABEL_34:
      v7 = sub_20C13DFF4();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_20B969010(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20C13DFF4();
  }

  return v10 & 1;
}

uint64_t sub_20B9690A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0x617A696C61636F4CLL;
    }

    if (v3)
    {
      v5 = 0x800000020C191680;
    }

    else
    {
      v5 = 0xEB00000000656C62;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x800000020C1916A0;
    v4 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 3)
    {
      v5 = 0x800000020C1916C0;
    }

    else
    {
      v5 = 0x800000020C1916E0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = 0x617A696C61636F4CLL;
    }

    if (a2)
    {
      v6 = 0x800000020C191680;
    }

    else
    {
      v6 = 0xEB00000000656C62;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x800000020C1916A0;
    if (v4 != 0xD000000000000012)
    {
LABEL_34:
      v8 = sub_20C13DFF4();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000011;
      v6 = 0x800000020C1916C0;
    }

    else
    {
      v6 = 0x800000020C1916E0;
    }

    if (v4 != v2)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_20B969238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_20C13DFF4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_20B96943C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000020C191C80;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000020C191CA0;
    }

    v5 = 0x800000020C191C40;
    if (a1 != 3)
    {
      v5 = 0x800000020C191C60;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_20C13DFF4();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000020C191C80;
    }

    else
    {
      v10 = 0x800000020C191CA0;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000020C191C40;
    }

    else
    {
      v10 = 0x800000020C191C60;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_20B969614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_20C13DFF4();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_20B96980C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0xE500000000000000;
    v13 = 0x746867696CLL;
    if (a1 != 2)
    {
      v13 = 0x6D756964656DLL;
      v12 = 0xE600000000000000;
    }

    v14 = 1852401780;
    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v14 = 0x746C7561666564;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x7A69736168706D65;
    v4 = 0xEA00000000006465;
    v5 = 0x706D4574726F6873;
    v6 = 0xEF64657A69736168;
    if (a1 != 7)
    {
      v5 = 0x6465646E756F72;
      v6 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE500000000000000;
    v8 = 0x74726F6873;
    if (a1 != 4)
    {
      v8 = 1819042164;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE400000000000000;
        if (v9 != 1852401780)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x746C7561666564)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 != 2)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6D756964656DLL)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v15 = 0xE500000000000000;
    v16 = 1751607660;
LABEL_39:
    if (v9 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x7400000000))
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xEA00000000006465;
      if (v9 != 0x7A69736168706D65)
      {
        goto LABEL_52;
      }
    }

    else if (a2 == 7)
    {
      v15 = 0xEF64657A69736168;
      if (v9 != 0x706D4574726F6873)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6465646E756F72)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v15 = 0xE500000000000000;
    v16 = 1919903859;
    goto LABEL_39;
  }

  v15 = 0xE400000000000000;
  if (v9 != 1819042164)
  {
LABEL_52:
    v17 = sub_20C13DFF4();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

void sub_20B969AA8(uint64_t a1, unint64_t a2)
{
  while (2)
  {
    v1049 = a2;
    v2 = sub_20C135814();
    v1018 = *(v2 - 8);
    v1019 = v2;
    MEMORY[0x28223BE20](v2);
    v986 = &v979 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
    MEMORY[0x28223BE20](v4 - 8);
    v993 = &v979 - v5;
    v1016 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768160, &qword_20C165268);
    MEMORY[0x28223BE20](v1016);
    v1017 = &v979 - v6;
    v983 = type metadata accessor for ButtonAction(0);
    v995 = *(v983 - 8);
    MEMORY[0x28223BE20](v983);
    v980 = &v979 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v982 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768168, &qword_20C165270);
    MEMORY[0x28223BE20](v982);
    v984 = &v979 - v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
    MEMORY[0x28223BE20](v9 - 8);
    v994 = &v979 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v11);
    v1020 = &v979 - v12;
    MEMORY[0x28223BE20](v13);
    v1021 = &v979 - v14;
    v15 = sub_20C135C84();
    MEMORY[0x28223BE20](v15 - 8);
    v1013 = &v979 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v17);
    v1014 = &v979 - v18;
    v19 = type metadata accessor for RootShowcaseItem(0);
    v990 = *(v19 - 8);
    v991 = v19;
    MEMORY[0x28223BE20](v19);
    v981 = &v979 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v989 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768170, &qword_20C165278);
    MEMORY[0x28223BE20](v989);
    v992 = &v979 - v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766270, &qword_20C152E00);
    MEMORY[0x28223BE20](v22 - 8);
    v985 = &v979 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v24);
    v1024 = &v979 - v25;
    MEMORY[0x28223BE20](v26);
    v1025 = &v979 - v27;
    v1043 = sub_20C132924();
    v1044 = *(v1043 - 1);
    MEMORY[0x28223BE20](v1043);
    v1011 = &v979 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v29);
    v1012 = &v979 - v30;
    MEMORY[0x28223BE20](v31);
    v1010 = &v979 - v32;
    MEMORY[0x28223BE20](v33);
    v1036 = &v979 - v34;
    v35 = sub_20C138894();
    v1008 = *(v35 - 8);
    v1009 = v35;
    MEMORY[0x28223BE20](v35);
    v1006 = &v979 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v37);
    v1004 = &v979 - v38;
    v39 = sub_20C132C14();
    v1030 = *(v39 - 8);
    v1031 = v39;
    MEMORY[0x28223BE20](v39);
    v1015 = &v979 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v41);
    v1029 = &v979 - v42;
    v1037 = sub_20C136594();
    v1041 = *(v1037 - 1);
    MEMORY[0x28223BE20](v1037);
    v1001 = &v979 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v44);
    v1002 = &v979 - v45;
    MEMORY[0x28223BE20](v46);
    v1000 = &v979 - v47;
    MEMORY[0x28223BE20](v48);
    v1003 = &v979 - v49;
    v1045 = sub_20C134014();
    v1046 = *(v1045 - 1);
    MEMORY[0x28223BE20](v1045);
    v1042 = &v979 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v51);
    v1038 = &v979 - v52;
    MEMORY[0x28223BE20](v53);
    *&v1039 = &v979 - v54;
    MEMORY[0x28223BE20](v55);
    v1027 = &v979 - v56;
    MEMORY[0x28223BE20](v57);
    v1022 = &v979 - v58;
    MEMORY[0x28223BE20](v59);
    v1023 = &v979 - v60;
    v61 = sub_20C135E74();
    MEMORY[0x28223BE20](v61 - 8);
    v1005 = &v979 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v63);
    v1007 = &v979 - v64;
    v1047 = sub_20C137C24();
    v1048 = *(v1047 - 1);
    MEMORY[0x28223BE20](v1047);
    v997 = &v979 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v66);
    v998 = &v979 - v67;
    MEMORY[0x28223BE20](v68);
    v70 = &v979 - v69;
    MEMORY[0x28223BE20](v71);
    v996 = &v979 - v72;
    MEMORY[0x28223BE20](v73);
    v1026 = &v979 - v74;
    MEMORY[0x28223BE20](v75);
    v1032 = &v979 - v76;
    MEMORY[0x28223BE20](v77);
    v999 = &v979 - v78;
    MEMORY[0x28223BE20](v79);
    v1028 = &v979 - v80;
    MEMORY[0x28223BE20](v81);
    v1033 = &v979 - v82;
    MEMORY[0x28223BE20](v83);
    v1040 = &v979 - v84;
    MEMORY[0x28223BE20](v85);
    v1034 = &v979 - v86;
    MEMORY[0x28223BE20](v87);
    v1035 = &v979 - v88;
    MEMORY[0x28223BE20](v89);
    v91 = &v979 - v90;
    MEMORY[0x28223BE20](v92);
    v94 = &v979 - v93;
    MEMORY[0x28223BE20](v95);
    v988 = &v979 - v96;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
    MEMORY[0x28223BE20](v97 - 8);
    v987 = &v979 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v99);
    v101 = &v979 - v100;
    MEMORY[0x28223BE20](v102);
    v104 = &v979 - v103;
    MEMORY[0x28223BE20](v105);
    v107 = &v979 - v106;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0, &qword_20C161880);
    MEMORY[0x28223BE20](v108);
    v110 = &v979 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v111);
    v114 = &v979 - v113;
    switch((v112 >> 57) & 0x78 | v112 & 7)
    {
      case 1uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 1 && (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) || *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18)))
        {
          sub_20C13DFF4();
        }

        return;
      case 2uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 2)
        {
          sub_20BB808A4(*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10), *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10));
        }

        return;
      case 3uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 3)
        {
          return;
        }

        v383 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v384 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v386 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v385 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v388 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v387 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x40);
        v389 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v390 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v392 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v391 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v393 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v156 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x40);
        if (v383)
        {
          if (!v389)
          {
            return;
          }

          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) || v383 != v389)
          {
            v1049 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
            v394 = v388;
            v395 = v391;
            v396 = v385;
            v397 = v156;
            v398 = v387;
            v399 = sub_20C13DFF4();
            v387 = v398;
            v156 = v397;
            v385 = v396;
            v391 = v395;
            v388 = v394;
            v393 = v1049;
            if ((v399 & 1) == 0)
            {
              return;
            }
          }
        }

        else if (v389)
        {
          return;
        }

        if (v386)
        {
          if (!v392)
          {
            return;
          }

          if (v384 != v390 || v386 != v392)
          {
            v861 = v387;
            v862 = sub_20C13DFF4();
            v387 = v861;
            if ((v862 & 1) == 0)
            {
              return;
            }
          }
        }

        else if (v392)
        {
          return;
        }

        if (v388)
        {
          if (v393)
          {
            if (v385 == v391 && v388 == v393)
            {
              goto LABEL_675;
            }

            v910 = v387;
            v911 = sub_20C13DFF4();
            v387 = v910;
            if (v911)
            {
              goto LABEL_675;
            }
          }
        }

        else if (!v393)
        {
          goto LABEL_675;
        }

        return;
      case 4uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 4)
        {
          v335 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v334 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
          v336 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v337 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v339 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v338 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
          if (sub_20BB80BE0(*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10), *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) & 1) != 0 && (v336 == v337 && v335 == v339 || (sub_20C13DFF4()))
          {

            sub_20BB80BE0(v334, v338);
          }
        }

        return;
      case 5uLL:
        v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B38, &qword_20C1569D8);
        v492 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 5)
        {
          return;
        }

        v493 = v492;
        v494 = *(v491 + 48);
        v495 = *(v492 + v494 + 8);
        v1046 = *(v492 + v494);
        v496 = swift_projectBox();
        v497 = *(v496 + v494);
        v498 = *(v496 + v494 + 8);
        v1049 = v497;
        v499 = *(v108 + 48);
        sub_20B52F9E8(v493, v114, &unk_27C766680, &unk_20C14F920);
        sub_20B52F9E8(v496, &v114[v499], &unk_27C766680, &unk_20C14F920);
        v500 = *(v1048 + 6);
        v501 = v1047;
        if (v500(v114, 1, v1047) == 1)
        {
          if (v500(&v114[v499], 1, v501) == 1)
          {

            sub_20B520158(v114, &unk_27C766680, &unk_20C14F920);
            goto LABEL_544;
          }
        }

        else
        {
          sub_20B52F9E8(v114, v107, &unk_27C766680, &unk_20C14F920);
          if (v500(&v114[v499], 1, v501) != 1)
          {
            v884 = v1048;
            v885 = &v114[v499];
            v886 = v988;
            (*(v1048 + 4))(v988, v885, v501);
            sub_20B976778(&qword_27C7626D8, MEMORY[0x277D53A78], MEMORY[0x277D53A90]);

            v887 = sub_20C13C894();
            v888 = *(v884 + 8);
            v888(v886, v501);
            v888(v107, v501);
            sub_20B520158(v114, &unk_27C766680, &unk_20C14F920);
            if ((v887 & 1) == 0)
            {
              goto LABEL_548;
            }

LABEL_544:
            if (v495)
            {
              if (v498)
              {
                if (v1046 == v1049 && v495 == v498)
                {
                  goto LABEL_548;
                }

                sub_20C13DFF4();
              }
            }

            else if (v498)
            {
              goto LABEL_548;
            }

            return;
          }

          (*(v1048 + 1))(v107, v501);
        }

        sub_20B520158(v114, &qword_27C7626D0, &qword_20C161880);
        return;
      case 6uLL:
        v423 = v1049;
        if (((v423 >> 57) & 0x78 | v423 & 7) == 6)
        {
          goto LABEL_395;
        }

        return;
      case 7uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 7)
        {
          v401 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v400 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v402 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v403 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
          sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
          if ((sub_20C13D5F4() & 1) != 0 && (v401 != v402 || v400 != v403))
          {
            goto LABEL_431;
          }
        }

        return;
      case 8uLL:
        v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E00, &unk_20C15CD70);
        v570 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 8)
        {
          v571 = v570;
          v572 = v569[16];
          v573 = *(v570 + v572 + 8);
          v1045 = *(v570 + v572);
          v1044 = v573;
          v574 = v569[20];
          LODWORD(v1042) = *(v570 + v574);
          v1046 = *v570;
          v575 = v569[12];
          v576 = swift_projectBox();
          v1049 = *v576;
          v577 = *(v576 + v572 + 8);
          v1043 = *(v576 + v572);
          LODWORD(v1041) = *(v576 + v574);
          v578 = *(v1048 + 2);
          v579 = v1047;
          v578(v94, v571 + v575, v1047);
          v578(v91, v576 + v575, v579);
          sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
          v580 = v1049;

          LOBYTE(v571) = sub_20C13D5F4();

          if ((v571 & 1) == 0)
          {

            v854 = *(v1048 + 1);
            v854(v91, v579);
            v855 = v94;
            goto LABEL_567;
          }

          if ((MEMORY[0x20F2EF350](v94, v91) & 1) == 0)
          {

            v879 = *(v1048 + 1);
            v880 = v1047;
            v879(v91, v1047);
            v881 = v94;
            goto LABEL_751;
          }

          v581 = v1048;
          if (v1045 == v1043 && v1044 == v577)
          {

            v582 = *(v581 + 8);
            v583 = v1047;
            v582(v91, v1047);
            v582(v94, v583);
          }

          else
          {
            sub_20C13DFF4();

            v927 = *(v581 + 8);
            v928 = v1047;
            v927(v91, v1047);
            v927(v94, v928);
          }
        }

        return;
      case 9uLL:
        v364 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        *v1075 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *&v1075[16] = v364;
        *&v1075[32] = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 9)
        {
          v365 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
          *v1060 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *&v1060[16] = v365;
          *&v1060[32] = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
          sub_20C094768(v1075, v1060);
        }

        return;
      case 0xAuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0xA)
        {
          if (v555 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10), v556 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18), v558 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20), v557 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), v559 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30), v560 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38), v561 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x48), v1048 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x40), v1047 = v561, v562 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10), v563 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18), v565 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20), v564 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28), v566 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30), v567 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38), v568 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x40), v1049 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x48), v555 == v562) && v556 == v563 || (sub_20C13DFF4())
          {
            if (v558 == v565 && v557 == v564 || (sub_20C13DFF4()) && (v559 == v566 && v560 == v567 || (sub_20C13DFF4()) && (v1048 != v568 || v1047 != v1049))
            {
              goto LABEL_431;
            }
          }
        }

        return;
      case 0xBuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0xB)
        {
          v204 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v206 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v207 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v205 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
          goto LABEL_155;
        }

        return;
      case 0xCuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0xC)
        {
          if (v360 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20), v361 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), v362 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20), v363 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4())
          {
            v204 = v360;
            v205 = v361;
            v206 = v362;
            v207 = v363;
            goto LABEL_155;
          }
        }

        return;
      case 0xDuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0xD && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v536 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v537 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
          v538 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
          v539 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v540 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
          v541 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18))
          {
            goto LABEL_356;
          }

          goto LABEL_357;
        }

        return;
      case 0xEuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0xE)
        {
          return;
        }

        v270 = v112 & 0xFFFFFFFFFFFFFF8;
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        v271 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v272 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v273 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v274 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v275 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x40);
        v277 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x48);
        v276 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x50);
        v279 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x58);
        v278 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x60);
        v280 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v282 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v281 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x40);
        v284 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x48);
        v283 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x50);
        v285 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x58);
        v286 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x60);
        if (v271)
        {
          if (!*((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20))
          {
            return;
          }
        }

        else
        {
          if (*(v270 + 24) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18))
          {
            v874 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
          }

          else
          {
            v874 = 1;
          }

          if (v874)
          {
            return;
          }
        }

        if (v273)
        {
          if (!v280)
          {
            return;
          }

          if (v272 != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28) || v273 != v280)
          {
            v1049 = v279;
            v1048 = v276;
            v1047 = v286;
            v875 = v278;
            v876 = v285;
            v877 = v283;
            v878 = sub_20C13DFF4();
            v283 = v877;
            v285 = v876;
            v278 = v875;
            v286 = v1047;
            v276 = v1048;
            v279 = v1049;
            if ((v878 & 1) == 0)
            {
              return;
            }
          }
        }

        else if (v280)
        {
          return;
        }

        if (v275)
        {
          if (!v281)
          {
            return;
          }

          if (v274 != v282 || v275 != v281)
          {
            v943 = v278;
            v944 = v285;
            v945 = v283;
            v946 = sub_20C13DFF4();
            v283 = v945;
            v285 = v944;
            v278 = v943;
            if ((v946 & 1) == 0)
            {
              return;
            }
          }
        }

        else if (v281)
        {
          return;
        }

        v1046 = v278;
        v1045 = v283;
        if (v277)
        {
          if (!v284)
          {
            return;
          }

          v952 = v285;
          sub_20B51C88C(0, &qword_27C7626E8, 0x277D755B8);
          v953 = v284;
          v954 = v277;
          v955 = sub_20C13D5F4();

          if ((v955 & 1) == 0)
          {
            return;
          }
        }

        else
        {
          v952 = v285;
          if (v284)
          {
            return;
          }
        }

        if (v279)
        {
          if (!v952 || (v276 != v1045 || v279 != v952) && (sub_20C13DFF4() & 1) == 0)
          {
            return;
          }
        }

        else if (v952)
        {
          return;
        }

        if (v1046 && v286)
        {
          sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
          v968 = v286;
          v969 = v1046;
          sub_20C13D5F4();
        }

        return;
      case 0xFuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0xF)
        {
          v377 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v376 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
          v378 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v379 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v381 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v380 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
          sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
          if (sub_20C13D5F4() & 1) != 0 && (v378 == v379 && v377 == v381 || (sub_20C13DFF4()))
          {
            v157 = v376;
            v382 = v380;
            goto LABEL_677;
          }
        }

        return;
      case 0x10uLL:
        v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D58, &unk_20C186C80);
        v243 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x10)
        {
          return;
        }

        v244 = v243;
        v245 = v242[12];
        v246 = v242[16];
        v247 = *(v243 + v246 + 8);
        v1048 = *(v243 + v246);
        v248 = v242[20];
        v249 = *(v243 + v248 + 8);
        v1047 = *(v243 + v248);
        v1046 = v249;
        v250 = swift_projectBox();
        v251 = *(v250 + v245);
        v252 = *(v250 + v246);
        v253 = *(v250 + v246 + 8);
        v254 = *(v250 + v248);
        v255 = *(v250 + v248 + 8);
        v1049 = v254;
        v256 = MEMORY[0x277D52358];
        v257 = v244;
        v258 = v1007;
        sub_20B9767C0(v257, v1007, MEMORY[0x277D52358]);
        v259 = v250;
        v260 = v258;
        v261 = v1005;
        sub_20B9767C0(v259, v1005, v256);
        v262 = v251;
        v263 = v261;
        v264 = v262;

        if (MEMORY[0x20F2ED5C0](v260, v263) & 1) != 0 && (sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8), (sub_20C13D5F4()))
        {
          if (v1048 == v252 && v247 == v253)
          {

LABEL_612:
            if (v1047 != v1049 || v1046 != v255)
            {
              sub_20C13DFF4();
            }

            v732 = MEMORY[0x277D52358];
            sub_20B976828(v263, MEMORY[0x277D52358]);
            v733 = v260;
LABEL_646:
            sub_20B976828(v733, v732);
            return;
          }

          v926 = sub_20C13DFF4();

          if (v926)
          {
            goto LABEL_612;
          }
        }

        else
        {
        }

        v732 = MEMORY[0x277D52358];
        sub_20B976828(v263, MEMORY[0x277D52358]);
        v733 = v260;
        goto LABEL_646;
      case 0x11uLL:
        v423 = v1049;
        if (((v423 >> 57) & 0x78 | v423 & 7) == 0x11)
        {
          goto LABEL_395;
        }

        return;
      case 0x12uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x12)
        {
          return;
        }

        v542 = v112 & 0xFFFFFFFFFFFFFF8;
        v543 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v544 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x21);
        v545 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v546 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v547 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v548 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x40);
        v549 = v1049 & 0xFFFFFFFFFFFFFF8;
        v550 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v551 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x21);
        v553 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v552 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v554 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x40);
        if (*(v542 + 32))
        {
          if ((*((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20) & 1) == 0)
          {
            return;
          }

          v1047 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
          v1049 = v548;
          v1048 = v547;
          if (v543 == v550 && *(v542 + 24) == *(v549 + 24))
          {
            if (v544 != v551)
            {
              return;
            }

            goto LABEL_619;
          }

          v853 = sub_20C13DFF4();
        }

        else
        {
          if (*((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20))
          {
            return;
          }

          v1047 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
          v1049 = v548;
          v1048 = v547;
          sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
          v853 = sub_20C13D5F4();
        }

        if (v853 & 1) == 0 || ((v544 ^ v551))
        {
          return;
        }

LABEL_619:
        if (v545 == v553 && v546 == v552 || (sub_20C13DFF4()) && v1049 && v554 && (v1048 != v1047 || v1049 != v554))
        {
          goto LABEL_626;
        }

        return;
      case 0x13uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x13)
        {
          return;
        }

        v686 = v112 & 0xFFFFFFFFFFFFFF8;
        v687 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v688 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v689 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v690 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v691 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x39);
        v692 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x40);
        v693 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v694 = v1049 & 0xFFFFFFFFFFFFFF8;
        v695 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v696 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v697 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v698 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v699 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x39);
        v700 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x40);
        if (v693)
        {
          if ((*((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20) & 1) == 0)
          {
            return;
          }

          LODWORD(v1049) = v691;
          v1047 = v700;
          v1048 = v692;
          if ((v687 != v695 || *(v686 + 24) != *(v694 + 24)) && (sub_20C13DFF4() & 1) == 0)
          {
            return;
          }
        }

        else
        {
          if (*((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20))
          {
            return;
          }

          LODWORD(v1049) = v691;
          v1047 = v700;
          v1048 = v692;
          sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
          if ((sub_20C13D5F4() & 1) == 0)
          {
            return;
          }
        }

        if (v688 == v696 && v689 == v697)
        {
          if (v690 != v698)
          {
            return;
          }
        }

        else if ((sub_20C13DFF4() & 1) == 0 || v690 != v698)
        {
          return;
        }

        if (v1049 == v699)
        {
          v914 = v1048;
          v915 = v1047;

          sub_20BB80418(v914, v915);
        }

        return;
      case 0x14uLL:
        if ((v1049 >> 57) & 0x78 | v1049 & 7) == 0x14 && (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4()))
        {
          goto LABEL_477;
        }

        return;
      case 0x15uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x15)
        {
          v528 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v529 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
          v530 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v531 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v532 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v533 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v534 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v535 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);

          sub_20B947F40(v530, v531, v528, v529, v532, v533, v534, v535);
        }

        return;
      case 0x16uLL:
        v654 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763170, &qword_20C15CF10);
        v655 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x16)
        {
          return;
        }

        v656 = v655;
        v657 = *(v655 + 24);
        v1044 = *(v655 + 16);
        v1043 = v657;
        v658 = v654[24];
        v659 = *(v655 + v658);
        v1040 = *(v655 + v658 + 8);
        v1041 = v659;
        v660 = v654[28];
        v661 = *(v655 + v660 + 8);
        v1037 = *(v655 + v660);
        v1038 = v661;
        v662 = *v655;
        v1045 = *(v655 + 8);
        v1046 = v662;
        v663 = v654[20];
        v664 = swift_projectBox();
        v665 = *(v664 + 8);
        v1049 = *v664;
        v666 = *(v664 + 24);
        v1042 = *(v664 + 16);
        v667 = *(v664 + v658 + 8);
        *&v1039 = *(v664 + v658);
        v668 = *(v664 + v660 + 8);
        v1036 = *(v664 + v660);
        v669 = *(v1048 + 2);
        v670 = v656 + v663;
        v353 = v1047;
        v669(v1035, v670, v1047);
        v669(v1034, v664 + v663, v353);
        v671 = v668;
        sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);

        v672 = v1049;
        v1049 = v665;
        v673 = v665;

        LOBYTE(v668) = sub_20C13D5F4();

        if ((v668 & 1) == 0)
        {

          v848 = *(v1048 + 1);
          v848(v1034, v353);
          v849 = v1035;
          goto LABEL_460;
        }

        v674 = v673;
        v675 = v666;
        v676 = v667;
        v677 = v1048;
        v678 = v1045;
        if (v1045)
        {
          if (!v1049)
          {
LABEL_573:

            v859 = *(v677 + 8);
            v443 = v1047;
            v859(v1034, v1047);
            v860 = v1035;
            goto LABEL_564;
          }

          v679 = v674;
          sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
          v680 = v679;
          v681 = v678;
          v682 = sub_20C13D5F4();

          v677 = v1048;
          if (v682)
          {
LABEL_320:
            v683 = v671;
            if (v1044 == v1042 && v1043 == v675)
            {

              v684 = v1034;
              v685 = v1035;
            }

            else
            {
              v951 = sub_20C13DFF4();

              v684 = v1034;
              v685 = v1035;
              if ((v951 & 1) == 0)
              {
                goto LABEL_666;
              }
            }

            if (MEMORY[0x20F2EF350](v685, v684))
            {
              if (v1041 == v1039 && v1040 == v676)
              {

LABEL_705:
                if (v1038)
                {
                  if (v683)
                  {
                    if (v1037 == v1036 && v1038 == v683)
                    {

                      v959 = *(v677 + 8);
                      v960 = v1047;
                      v959(v684, v1047);
                      v959(v685, v960);
                    }

                    else
                    {
                      sub_20C13DFF4();

                      v963 = *(v677 + 8);
                      v964 = v684;
                      v965 = v1047;
                      v963(v964, v1047);
                      v963(v685, v965);
                    }

                    return;
                  }

                  v859 = *(v677 + 8);
                  v443 = v1047;
                  v859(v684, v1047);
                  v860 = v685;
LABEL_564:
                  v859(v860, v443);
                  return;
                }

                v961 = *(v677 + 8);
                v962 = v1047;
                v961(v684, v1047);
                v961(v685, v962);
                if (!v683)
                {
                  return;
                }

LABEL_548:

                return;
              }

              v958 = sub_20C13DFF4();

              if (v958)
              {
                goto LABEL_705;
              }

LABEL_667:

              v859 = *(v677 + 8);
              v443 = v1047;
              v859(v684, v1047);
              v860 = v685;
              goto LABEL_564;
            }

LABEL_666:

            goto LABEL_667;
          }
        }

        else
        {
          v679 = v674;
          if (!v1049)
          {
            goto LABEL_320;
          }
        }

        goto LABEL_573;
      case 0x17uLL:
        v269 = v1049;
        if (((v269 >> 57) & 0x78 | v269 & 7) == 0x17)
        {
          goto LABEL_355;
        }

        return;
      case 0x18uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x18)
        {
          return;
        }

        v370 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v371 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v372 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v373 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v374 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v375 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        if (v370)
        {
          if (!v373 || (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) || v370 != v373) && (sub_20C13DFF4() & 1) == 0)
          {
            return;
          }
        }

        else if (v373)
        {
          return;
        }

        if (v372 && v375 && (v371 != v374 || v372 != v375))
        {
LABEL_626:
          sub_20C13DFF4();
        }

        return;
      case 0x19uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x19)
        {
          if (v367 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20), v366 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), v369 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20), v368 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4())
          {
            if (v366 && v368 && (v367 != v369 || v366 != v368))
            {
              goto LABEL_626;
            }
          }
        }

        return;
      case 0x1AuLL:
        v423 = v1049;
        if (((v423 >> 57) & 0x78 | v423 & 7) == 0x1A)
        {
          goto LABEL_395;
        }

        return;
      case 0x1BuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x1B)
        {
          v200 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
          v201 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v202 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v203 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
          sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
          if (sub_20C13D5F4())
          {
            v204 = v201;
            v205 = v200;
            v206 = v202;
            v207 = v203;
LABEL_155:

            sub_20BCFF878(v204, v205, v206, v207);
          }
        }

        return;
      case 0x1CuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x1C)
        {
          return;
        }

        v711 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v712 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v713 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
        if (v711)
        {
          if (!v712 || (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) || v711 != v712) && (sub_20C13DFF4() & 1) == 0)
          {
            return;
          }
        }

        else if (v712)
        {
          return;
        }

        a2 = v713;

        continue;
      case 0x1DuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x1D)
        {
          v714 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v715 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
          v716 = v1049 & 0xFFFFFFFFFFFFFF8;
          v717 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v718 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
          sub_20B51D968((v112 & 0xFFFFFFFFFFFFFF8) + 32, v1060);
          sub_20B51D968(v716 + 32, v1075);
          if (v714 == v717 && v715 == v718 || (sub_20C13DFF4() & 1) != 0)
          {
            MEMORY[0x20F2F5330](v1060, v1075);
            sub_20B51D9C4(v1075);
            sub_20B51D9C4(v1060);
          }

          else
          {
            sub_20B51D9C4(v1075);
            sub_20B51D9C4(v1060);
          }
        }

        return;
      case 0x1EuLL:
        v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0, &unk_20C151840);
        v585 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x1E)
        {
          return;
        }

        v586 = v585;
        v587 = v584[16];
        LODWORD(v1034) = *(v585 + v587);
        v588 = v584[20];
        v589 = *(v585 + v588 + 24);
        v1031 = *(v585 + v588 + 32);
        v1032 = v589;
        v590 = *(v585 + v588 + 40);
        v591 = v584[24];
        v1024 = *(v585 + v591);
        v592 = *(v585 + v591 + 8);
        v1029 = v590;
        v1030 = v592;
        v593 = *(v585 + v591 + 24);
        v1025 = *(v585 + v591 + 16);
        v1028 = v593;
        v1027 = *(v585 + v591 + 32);
        LODWORD(v1026) = *(v585 + v591 + 40);
        v594 = v584[28];
        v1021 = *(v585 + v594);
        v595 = v584[32];
        LODWORD(v1017) = *(v585 + v595);
        LODWORD(v1020) = *(v585 + v594 + 8);
        v596 = v584[36];
        v1015 = *(v585 + v596);
        v1040 = *v585;
        v597 = v584[12];
        v598 = swift_projectBox();
        v599 = *v598;
        LODWORD(v1033) = *(v598 + v587);
        v600 = *(v598 + v588);
        v601 = *(v598 + v588 + 16);
        v1035 = *(v598 + v588 + 8);
        v1036 = v601;
        v602 = *(v598 + v588 + 32);
        v1038 = *(v598 + v588 + 24);
        *&v1039 = v599;
        v1049 = v602;
        v1048 = *(v598 + v588 + 40);
        v603 = *(v598 + v591 + 8);
        v1043 = *(v598 + v591);
        v604 = *(v598 + v591 + 24);
        v1044 = *(v598 + v591 + 16);
        v1041 = v604;
        v1042 = v603;
        v1047 = *(v598 + v591 + 32);
        LODWORD(v1037) = *(v598 + v591 + 40);
        v1019 = *(v598 + v594);
        LODWORD(v1016) = *(v598 + v595);
        LODWORD(v1018) = *(v598 + v594 + 8);
        v605 = *(v598 + v596);
        v606 = v1046;
        v607 = *(v1046 + 2);
        v608 = v586 + v597;
        v449 = v1023;
        v353 = v1045;
        v607(v1023, v608, v1045);
        v609 = v598 + v597;
        v610 = v1022;
        v607(v1022, v609, v353);
        if (v1040 != v1039)
        {
          v848 = v606[1];
          v848(v610, v353);
          v849 = v449;
          goto LABEL_460;
        }

        v611 = v600;
        v612 = v1035;
        v613 = v1036;
        v614 = v1038;

        v615 = v1037;
        sub_20B6543CC(v1043, v1042, v1044, v1041);

        if (MEMORY[0x20F2EB730](v449, v610))
        {
          v1036 = v613;
          *&v1039 = v612;
          v616 = v1041;
          v617 = v1042;
          v1040 = v611;
          v618 = v1047;
          if (sub_20B969010(v1034, v1033, MEMORY[0x277D51600]) & 1) != 0 && (sub_20BB803A0(v1032, v614) & 1) != 0 && (sub_20BB803A0(v1031, v1049) & 1) != 0 && (sub_20BB803A0(v1029, v1048))
          {
            if (v1030 == 1)
            {
              if (v617 == 1)
              {
                goto LABEL_748;
              }
            }

            else
            {
              if (v617 != 1)
              {
                *v1060 = v1043;
                *&v1060[8] = v617;
                *&v1060[16] = v1044;
                *&v1060[24] = v616;
                *&v1060[32] = v618;
                *&v1060[40] = v615 & 0xFF01;
                v971 = v1024;
                v970 = v1025;
                v972 = v1030;
                *v1075 = v1024;
                *&v1075[8] = v1030;
                v973 = v1028;
                *&v1075[16] = v1025;
                *&v1075[24] = v1028;
                *&v1075[32] = v1027;
                *&v1075[40] = v1026 & 0xFF01;
                LODWORD(v1035) = sub_20BAE6B20(v1075, v1060);
                sub_20B6543CC(v1043, v617, v1044, v616);
                sub_20B6543CC(v971, v972, v970, v973);

                sub_20B6222E8(v1043, v617, v1044, v616);
                sub_20B6222E8(v971, v972, v970, v1028);
                if ((v1035 & 1) == 0)
                {
LABEL_752:

                  goto LABEL_753;
                }

LABEL_748:
                if (sub_20BCFF878(v1021, v1020, v1019, v1018) && (sub_20B969010(v1017, v1016, MEMORY[0x277D531C0]) & 1) != 0)
                {
                  sub_20B975DD4(v1015, v605);

                  v879 = *(v1046 + 1);
                  v880 = v1045;
                  v879(v1022, v1045);
                  v881 = v1023;
                  goto LABEL_751;
                }

                goto LABEL_752;
              }
            }

            *v1060 = v1024;
            *&v1060[8] = v1030;
            *&v1060[16] = v1025;
            *&v1060[24] = v1028;
            *&v1060[32] = v1027;
            *&v1060[40] = v1026;
            *&v1060[48] = v1043;
            *&v1060[56] = v617;
            *&v1060[64] = v1044;
            v1061 = v616;
            *&v1062 = v618;
            WORD4(v1062) = v615;
            sub_20B520158(v1060, &qword_27C768178, &qword_20C165280);
LABEL_753:
            v879 = *(v1046 + 1);
            v880 = v1045;
            v879(v1022, v1045);
            v881 = v1023;
            goto LABEL_751;
          }

          v889 = v1043;
          v890 = v617;
          v892 = v1044;
          v891 = v616;
        }

        else
        {

          v889 = v1043;
          v891 = v1041;
          v890 = v1042;
          v892 = v1044;
        }

        sub_20B6222E8(v889, v890, v892, v891);
        v859 = v606[1];
        v443 = v1045;
        v859(v610, v1045);
        goto LABEL_563;
      case 0x1FuLL:
        v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80, &unk_20C165750);
        v405 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x1F)
        {
          return;
        }

        v406 = v405;
        v407 = v404[16];
        LODWORD(v1048) = *(v405 + v407);
        v408 = v404[20];
        LODWORD(v1047) = *(v405 + v408);
        v409 = *v405;
        v410 = v404[12];
        v411 = swift_projectBox();
        LODWORD(v1049) = *(v411 + v407);
        v412 = *v411;
        LODWORD(v1046) = *(v411 + v408);
        v413 = v1041;
        v414 = *(v1041 + 2);
        v415 = v406 + v410;
        v416 = v1003;
        v323 = v1037;
        v414(v1003, v415, v1037);
        v417 = v411 + v410;
        v418 = v1000;
        v414(v1000, v417, v323);
        if (v409 != v412)
        {
          v850 = *(v413 + 1);
          v850(v418, v323);
          v850(v416, v323);
          return;
        }

        if (MEMORY[0x20F2EDCF0](v416, v418))
        {
          v419 = sub_20B969010(v1048, v1049, MEMORY[0x277D51600]);
          v420 = v1041;
          if (v419)
          {
            sub_20B969010(v1047, v1046, MEMORY[0x277D531C0]);
            v421 = *(v420 + 1);
            v421(v418, v323);
            v422 = v416;
            goto LABEL_714;
          }
        }

        else
        {
          v420 = v1041;
        }

        v421 = *(v420 + 1);
        v421(v418, v323);
        v422 = v416;
        goto LABEL_714;
      case 0x20uLL:
        v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
        v620 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x20)
        {
          return;
        }

        v621 = v620;
        v622 = v619[12];
        LODWORD(v1035) = *(v620 + v622);
        v623 = v619[16];
        v624 = *(v620 + v623 + 32);
        v1033 = *(v620 + v623 + 24);
        v1031 = v624;
        v625 = *(v620 + v623 + 40);
        v626 = v619[20];
        v1026 = *(v620 + v626);
        v627 = *(v620 + v626 + 8);
        v1029 = v625;
        v1030 = v627;
        v628 = *(v620 + v626 + 16);
        v1028 = *(v620 + v626 + 24);
        v1025 = *(v620 + v626 + 32);
        LODWORD(v1024) = *(v620 + v626 + 40);
        v629 = v619[24];
        v1022 = *(v620 + v629);
        v1023 = v628;
        LODWORD(v1021) = *(v620 + v629 + 8);
        v630 = v619[28];
        LODWORD(v1018) = *(v620 + v630);
        v631 = v619[32];
        v1016 = *(v620 + v631);
        v632 = swift_projectBox();
        LODWORD(v1034) = *(v632 + v622);
        v633 = *(v632 + v623);
        v1038 = *(v632 + v623 + 8);
        v634 = *(v632 + v623 + 24);
        v1042 = *(v632 + v623 + 16);
        v1040 = v633;
        v1041 = v634;
        v635 = *(v632 + v623 + 32);
        v1043 = *(v632 + v623 + 40);
        v636 = *(v632 + v626 + 8);
        v1047 = *(v632 + v626);
        v1036 = v636;
        v637 = *(v632 + v626 + 24);
        v1048 = *(v632 + v626 + 16);
        v1044 = v637;
        v1049 = *(v632 + v626 + 32);
        LODWORD(v626) = *(v632 + v626 + 40);
        v1020 = *(v632 + v629);
        LODWORD(v1017) = *(v632 + v630);
        LODWORD(v1019) = *(v632 + v629 + 8);
        v638 = *(v632 + v631);
        v639 = *(v1046 + 2);
        v640 = v1027;
        v641 = v621;
        v579 = v1045;
        v639(v1027, v641, v1045);
        v642 = v1039;
        v639(v1039, v632, v579);
        v643 = v1041;
        v1040 = v1040;
        v1038 = v1038;
        v1042 = v1042;

        v644 = v635;

        v645 = v638;
        v646 = v1036;
        LODWORD(v1037) = v626;
        sub_20B6543CC(v1047, v1036, v1048, v1044);

        if ((MEMORY[0x20F2EB730](v640, v642) & 1) == 0)
        {

          v856 = sub_20B6222E8(v1047, v646, v1048, v1044);
          v854 = *(v1046 + 1);
          (v854)(v1039, v579, v856);
          v855 = v640;
LABEL_567:
          v854(v855, v579);
          return;
        }

        v647 = v1042;
        v648 = v1044;
        v649 = v1037;
        v1032 = v644;
        if (sub_20B969010(v1035, v1034, MEMORY[0x277D51600]))
        {
          v650 = v645;
          v651 = sub_20BB803A0(v1033, v643);
          v652 = v1046;
          if (v651 & 1) != 0 && (sub_20BB803A0(v1031, v1032) & 1) != 0 && (sub_20BB803A0(v1029, v1043))
          {
            if (v1030 == 1)
            {
              if (v646 == 1)
              {
                goto LABEL_735;
              }
            }

            else
            {
              if (v646 != 1)
              {
                *v1060 = v1047;
                *&v1060[8] = v646;
                *&v1060[16] = v1048;
                *&v1060[24] = v648;
                *&v1060[32] = v1049;
                *&v1060[40] = v649 & 0xFF01;
                v966 = v1030;
                *v1075 = v1026;
                *&v1075[8] = v1030;
                v967 = v1023;
                *&v1075[16] = v1023;
                *&v1075[24] = v1028;
                *&v1075[32] = v1025;
                *&v1075[40] = v1024 & 0xFF01;
                LODWORD(v1035) = sub_20BAE6B20(v1075, v1060);
                sub_20B6543CC(v1047, v646, v1048, v648);
                sub_20B6543CC(v1026, v966, v967, v1028);

                sub_20B6222E8(v1047, v646, v1048, v648);
                sub_20B6222E8(v1026, v1030, v967, v1028);
                if (v1035)
                {
LABEL_735:
                  if (sub_20BCFF878(v1022, v1021, v1020, v1019) && (sub_20B969010(v1018, v1017, MEMORY[0x277D531C0]) & 1) != 0)
                  {
                    sub_20B975DD4(v1016, v650);

                    v879 = *(v1046 + 1);
                    v880 = v1045;
                    v879(v1039, v1045);
                    v881 = v1027;
                  }

                  else
                  {

                    v879 = *(v1046 + 1);
                    v880 = v1045;
                    v879(v1039, v1045);
                    v881 = v1027;
                  }

                  goto LABEL_751;
                }

                goto LABEL_566;
              }
            }

            *v1060 = v1026;
            *&v1060[8] = v1030;
            *&v1060[16] = v1023;
            *&v1060[24] = v1028;
            *&v1060[32] = v1025;
            *&v1060[40] = v1024;
            *&v1060[48] = v1047;
            *&v1060[56] = v646;
            *&v1060[64] = v1048;
            v1061 = v648;
            *&v1062 = v1049;
            WORD4(v1062) = v649;
            sub_20B520158(v1060, &qword_27C768178, &qword_20C165280);
          }

          else
          {

            v893.n128_f64[0] = sub_20B6222E8(v1047, v646, v1048, v648);
          }
        }

        else
        {

          v893.n128_f64[0] = sub_20B6222E8(v1047, v646, v1048, v648);
          v652 = v1046;
        }

LABEL_566:
        v854 = v652[1];
        (v854)(v1039, v579, v893);
        v855 = v1027;
        goto LABEL_567;
      case 0x21uLL:
        v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28, &unk_20C1713B0);
        v288 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x21)
        {
          v289 = v288;
          v290 = *(v287 + 48);
          v291 = *(v288 + v290);
          v292 = *(v287 + 64);
          LODWORD(v1048) = *(v288 + v292);
          v293 = swift_projectBox();
          v294 = *(v293 + v290);
          LODWORD(v1049) = *(v293 + v292);
          v295 = v1041;
          v296 = *(v1041 + 2);
          v297 = v1002;
          v298 = v289;
          v299 = v1037;
          v296(v1002, v298, v1037);
          v300 = v1001;
          v296(v1001, v293, v299);
          if (MEMORY[0x20F2EDCF0](v297, v300) & 1) != 0 && (sub_20B969010(v291, v294, MEMORY[0x277D51600]))
          {
            sub_20B969010(v1048, v1049, MEMORY[0x277D531C0]);
            v301 = *(v295 + 1);
            v301(v300, v299);
            v301(v297, v299);
          }

          else
          {
            v839 = *(v295 + 1);
            v839(v300, v299);
            v839(v297, v299);
          }
        }

        return;
      case 0x22uLL:
        v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20, &qword_20C152E18);
        v209 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x22)
        {
          v210 = v209;
          v211 = *(v209 + 8);
          v1046 = *v209;
          v1045 = v211;
          v212 = v208[16];
          LODWORD(v1036) = *(v209 + v212);
          v213 = v208[20];
          v214 = *(v209 + v213 + 32);
          v1034 = *(v209 + v213 + 24);
          v1032 = v214;
          v1028 = *(v209 + v213 + 40);
          v215 = v208[12];
          v216 = v208[24];
          v217 = swift_projectBox();
          v218 = *(v217 + 8);
          v1049 = *v217;
          v1044 = v218;
          LODWORD(v1035) = *(v217 + v212);
          v219 = *(v217 + v213 + 8);
          v1037 = *(v217 + v213);
          v1038 = v219;
          v220 = *(v217 + v213 + 24);
          *&v1039 = *(v217 + v213 + 16);
          v1043 = v220;
          v221 = *(v217 + v213 + 32);
          v1041 = *(v217 + v213 + 40);
          v1042 = v221;
          v222 = *(v1048 + 2);
          v223 = v1047;
          v222(v1040, v210 + v215, v1047);
          v224 = *(v1030 + 16);
          v225 = v210 + v216;
          v226 = v1031;
          v224(v1029, v225, v1031);
          v222(v1033, v217 + v215, v223);
          v227 = v1015;
          v224(v1015, v217 + v216, v226);
          if (v1046 == v1049 && v1045 == v1044 || (sub_20C13DFF4() & 1) != 0)
          {
            v228 = v1037;
            v229 = v1038;
            v230 = v1039;
            v231 = v1043;

            v232 = v1042;

            v233 = v1041;

            v234 = v1040;
            v235 = v1033;
            if (MEMORY[0x20F2EF350](v1040, v1033) & 1) != 0 && (sub_20B969010(v1036, v1035, MEMORY[0x277D51600]) & 1) != 0 && (sub_20BB803A0(v1034, v231) & 1) != 0 && (sub_20BB803A0(v1032, v232) & 1) != 0 && (sub_20BB803A0(v1028, v233))
            {
              v236 = v1029;
              sub_20C132B84();

              v237 = v1031;
              v238 = *(v1030 + 8);
              v238(v227, v1031);
              v239 = *(v1048 + 1);
              v240 = v235;
              v241 = v1047;
              v239(v240, v1047);
              v238(v236, v237);
              v239(v1040, v241);
            }

            else
            {

              v840 = v1031;
              v841 = *(v1030 + 8);
              v841(v227, v1031);
              v842 = *(v1048 + 1);
              v843 = v235;
              v844 = v1047;
              v842(v843, v1047);
              v841(v1029, v840);
              v842(v234, v844);
            }
          }

          else
          {
            v871 = v1031;
            v872 = *(v1030 + 8);
            v872(v227, v1031);
            v873 = *(v1048 + 1);
            v873(v1033, v223);
            v872(v1029, v871);
            v873(v1040, v223);
          }
        }

        return;
      case 0x23uLL:
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681B0, &unk_20C173760);
        v169 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x23)
        {
          v170 = v169;
          LODWORD(v1048) = *(v169 + *(v168 + 48));
          v171 = swift_projectBox();
          v173 = v1008;
          v172 = v1009;
          v174 = *(v1008 + 16);
          v175 = v1004;
          v174(v1004, v170, v1009);
          v176 = v1006;
          v174(v1006, v171, v172);
          MEMORY[0x20F2EFFB0](v175, v176);
          v177 = *(v173 + 8);
          v177(v176, v172);
          v177(v175, v172);
        }

        return;
      case 0x24uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x24)
        {
          sub_20BB80CDC(*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10), *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10));
        }

        return;
      case 0x25uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x25)
        {
          if (v158 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20), v159 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4())
          {

            sub_20BB80CDC(v158, v159);
          }
        }

        return;
      case 0x26uLL:
        v423 = v1049;
        if (((v423 >> 57) & 0x78 | v423 & 7) == 0x26)
        {
          goto LABEL_395;
        }

        return;
      case 0x27uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x27 && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) && ((*((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) ^ *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18)) & 1) == 0 && (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x20) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20) || *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28)))
        {
          sub_20C13DFF4();
        }

        return;
      case 0x28uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x28 && (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) || *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18)))
        {
          sub_20C13DFF4();
        }

        return;
      case 0x29uLL:
        v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A80, &unk_20C1624A0);
        v425 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x29)
        {
          return;
        }

        v426 = v425;
        v427 = *v425;
        v1046 = v425[1];
        v428 = v425[3];
        v1045 = v425[2];
        v1044 = v428;
        v429 = v424[20];
        v1039 = *(v425 + v429);
        LODWORD(v1038) = *(v425 + v429 + 16);
        v430 = v424[24];
        v1037 = *(v425 + v430);
        v431 = v424[28];
        LODWORD(v1035) = *(v425 + v431);
        v432 = v424[16];
        v433 = swift_projectBox();
        v434 = *v433;
        v435 = v433[1];
        v436 = v433[3];
        v1049 = v433[2];
        v1043 = v436;
        v437 = *(v433 + v429 + 8);
        v1041 = *(v433 + v429);
        v1042 = v437;
        v1036 = *(v433 + v430);
        LODWORD(v1040) = *(v433 + v429 + 16);
        LODWORD(v1034) = *(v433 + v431);
        v438 = v1048;
        v439 = *(v1048 + 2);
        v440 = v426 + v432;
        v441 = v1047;
        v439(v1028, v440, v1047);
        v442 = v433 + v432;
        v443 = v441;
        v444 = v999;
        v439(v999, v442, v441);
        if (v427 == v434 && v1046 == v435 || (sub_20C13DFF4()) && (v1045 == v1049 && v1044 == v1043 || (sub_20C13DFF4()))
        {
          v446 = v1041;
          v445 = v1042;
          v447 = v1040;
          v448 = sub_20B6A6418(v1041, v1042, v1040);
          v449 = v1028;
          if (MEMORY[0x20F2EF350](v1028, v444, v448))
          {
            *v1060 = v1039;
            v1060[16] = v1038;
            *v1075 = v446;
            *&v1075[8] = v445;
            v1075[16] = v447;
            sub_20B654378();
            sub_20B652F70();
            v450 = sub_20C133BF4();
            sub_20B583F4C(v446, v445, v447);
            if ((v450 & 1) != 0 && v1037 == v1036)
            {
              sub_20B969010(v1035, v1034, MEMORY[0x277D531C0]);
              v451 = *(v438 + 8);
              v451(v444, v443);
              v451(v449, v443);
              return;
            }
          }

          else
          {
            sub_20B583F4C(v446, v445, v447);
          }

          v859 = *(v438 + 8);
          v859(v444, v443);
LABEL_563:
          v860 = v449;
        }

        else
        {
          v859 = *(v438 + 8);
          v859(v444, v441);
          v860 = v1028;
        }

        goto LABEL_564;
      case 0x2AuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x2A)
        {
          if (v707 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20), v708 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), v709 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20), v710 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4())
          {
            if (v707 != v709 || v708 != v710)
            {
              sub_20C13DFF4();
            }
          }
        }

        return;
      case 0x2BuLL:
        v135 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x2B)
        {
          return;
        }

        v136 = v135;
        v137 = *v135;
        v138 = *(v135 + 8);
        v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767100, &qword_20C16C7A0) + 64);
        v140 = swift_projectBox();
        v141 = *v140;
        v142 = *(v140 + 8);
        v143 = *(v1044 + 2);
        v144 = v136 + v139;
        v145 = v1043;
        v143(v1036, v144, v1043);
        v146 = v140 + v139;
        v147 = v1010;
        v143(v1010, v146, v145);
        if (v137)
        {
          if (!v141)
          {
LABEL_475:
            v859 = *(v1044 + 1);
            v443 = v1043;
            v859(v147, v1043);
            goto LABEL_575;
          }

          sub_20B51C88C(0, &qword_27C7626E8, 0x277D755B8);
          v148 = v141;
          v149 = v137;
          v150 = sub_20C13D5F4();

          if ((v150 & 1) == 0)
          {

            goto LABEL_475;
          }
        }

        else if (v141)
        {
          goto LABEL_475;
        }

        v443 = v1043;
        v865 = v1044;
        if (v138 == v142)
        {
          v866 = v1036;
          sub_20C1328A4();

          v867 = *(v865 + 1);
          v867(v147, v443);
          v867(v866, v443);
          return;
        }

        v859 = *(v865 + 1);
        v859(v147, v443);
LABEL_575:
        v860 = v1036;
        goto LABEL_564;
      case 0x2CuLL:
        v269 = v1049;
        if (((v269 >> 57) & 0x78 | v269 & 7) == 0x2C)
        {
          goto LABEL_355;
        }

        return;
      case 0x2DuLL:
        v653 = v1049;
        if (((v653 >> 57) & 0x78 | v653 & 7) == 0x2D)
        {
          goto LABEL_428;
        }

        return;
      case 0x2EuLL:
        v653 = v1049;
        if (((v653 >> 57) & 0x78 | v653 & 7) == 0x2E)
        {
          goto LABEL_428;
        }

        return;
      case 0x2FuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x2F)
        {
          goto LABEL_477;
        }

        return;
      case 0x30uLL:
        v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A8, &qword_20C165298);
        v303 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x30)
        {
          return;
        }

        v304 = v303;
        v1043 = *(v303 + 16);
        v305 = *(v302 + 96);
        v306 = *(v303 + v305);
        v1040 = *(v303 + v305 + 8);
        v1041 = v306;
        v307 = *v303;
        v1044 = *(v303 + 8);
        v1046 = v307;
        v308 = *(v302 + 80);
        v309 = swift_projectBox();
        v310 = *(v309 + 8);
        v1045 = *v309;
        v1049 = v310;
        v311 = *(v309 + 16);
        v312 = *(v309 + v305 + 8);
        *&v1039 = *(v309 + v305);
        v313 = v1048;
        v314 = *(v1048 + 2);
        v315 = v1047;
        v314(v1032, v304 + v308, v1047);
        v316 = v309 + v308;
        v317 = v1026;
        v314(v1026, v316, v315);
        sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
        v1042 = v311;
        v318 = v311;

        v319 = v1045;
        v320 = v1049;
        LOBYTE(v311) = sub_20C13D5F4();

        if ((v311 & 1) == 0)
        {

          v847 = *(v313 + 8);
          v847(v317, v315);
          v847(v1032, v315);
          return;
        }

        v321 = v312;
        if ((sub_20C13D5F4() & 1) == 0)
        {

          v879 = *(v1048 + 1);
          v880 = v1047;
          v879(v1026, v1047);
          v881 = v1032;
          goto LABEL_751;
        }

        v322 = v1048;
        v323 = v1047;
        v324 = v1043;
        if (v1043)
        {
          if (!v1042)
          {
LABEL_656:
            v947 = v1032;
            v948 = v1026;

            v421 = *(v322 + 8);
            v421(v948, v323);
            v422 = v947;
            goto LABEL_714;
          }

          sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
          v325 = v318;
          v326 = v324;
          v327 = sub_20C13D5F4();

          if ((v327 & 1) == 0)
          {
            v318 = v320;
            v320 = v325;
LABEL_655:

            goto LABEL_656;
          }
        }

        else if (v1042)
        {
          goto LABEL_655;
        }

        v949 = v1032;
        v950 = v1026;
        if (MEMORY[0x20F2EF350](v1032, v1026))
        {
          if (v1041 != v1039 || v1040 != v321)
          {
            sub_20C13DFF4();
          }

          v421 = *(v322 + 8);
          v421(v950, v323);
          v422 = v949;
        }

        else
        {

          v421 = *(v322 + 8);
          v421(v950, v323);
          v422 = v949;
        }

LABEL_714:
        v421(v422, v323);
        return;
      case 0x31uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x31)
        {
          return;
        }

        v330 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v331 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
        sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
        if ((sub_20C13D5F4() & 1) == 0)
        {
          return;
        }

        v332 = v330;
        v333 = v331;
        goto LABEL_124;
      case 0x32uLL:
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771D90, &qword_20C152E10);
        v120 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x32)
        {
          return;
        }

        v121 = v120;
        v122 = *(v119 + 64);
        v123 = *(v120 + v122);
        v124 = *v120;
        v125 = *(v119 + 48);
        v126 = swift_projectBox();
        v127 = *v126;
        LODWORD(v1049) = *(v126 + v122);
        v128 = v1025;
        sub_20B52F9E8(v121 + v125, v1025, &qword_27C766270, &qword_20C152E00);
        v129 = v126 + v125;
        v130 = v1024;
        sub_20B52F9E8(v129, v1024, &qword_27C766270, &qword_20C152E00);

        LOBYTE(v121) = sub_20BB80FE4(v124, v127);

        if ((v121 & 1) == 0)
        {
          v523 = &qword_27C766270;
          v845 = &qword_20C152E00;
          sub_20B520158(v130, &qword_27C766270, &qword_20C152E00);
          v846 = v128;
          goto LABEL_702;
        }

        LODWORD(v1048) = v123;
        v131 = *(v989 + 48);
        v132 = v992;
        sub_20B52F9E8(v128, v992, &qword_27C766270, &qword_20C152E00);
        sub_20B52F9E8(v130, v132 + v131, &qword_27C766270, &qword_20C152E00);
        v133 = v991;
        v134 = *(v990 + 48);
        if (v134(v132, 1, v991) == 1)
        {
          sub_20B520158(v130, &qword_27C766270, &qword_20C152E00);
          sub_20B520158(v128, &qword_27C766270, &qword_20C152E00);
          if (v134(v132 + v131, 1, v133) == 1)
          {
            sub_20B520158(v132, &qword_27C766270, &qword_20C152E00);
            return;
          }
        }

        else
        {
          v870 = v985;
          sub_20B52F9E8(v132, v985, &qword_27C766270, &qword_20C152E00);
          if (v134(v132 + v131, 1, v133) != 1)
          {
            v924 = v132 + v131;
            v925 = v981;
            sub_20B9766B4(v924, v981, type metadata accessor for RootShowcaseItem);
            sub_20B653398();
            sub_20B976828(v925, type metadata accessor for RootShowcaseItem);
            sub_20B520158(v1024, &qword_27C766270, &qword_20C152E00);
            sub_20B520158(v1025, &qword_27C766270, &qword_20C152E00);
            sub_20B976828(v870, type metadata accessor for RootShowcaseItem);
            sub_20B520158(v132, &qword_27C766270, &qword_20C152E00);
            return;
          }

          sub_20B520158(v1024, &qword_27C766270, &qword_20C152E00);
          sub_20B520158(v1025, &qword_27C766270, &qword_20C152E00);
          sub_20B976828(v870, type metadata accessor for RootShowcaseItem);
        }

        sub_20B520158(v132, &qword_27C768170, &qword_20C165278);
        return;
      case 0x33uLL:
        v653 = v1049;
        if (((v653 >> 57) & 0x78 | v653 & 7) != 0x33)
        {
          return;
        }

LABEL_428:
        v328 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v329 = *((v653 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v653 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_429;
        }

        goto LABEL_431;
      case 0x34uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x34)
        {
          if (v754 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10), v755 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18), v756 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), v757 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30), v1048 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x40), v758 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28), v759 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30), v760 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x40), v754 == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) && v755 == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4())
          {
            if (sub_20BB82940() & 1) != 0 && (v756 == v758 && v757 == v759 || (sub_20C13DFF4()) && (sub_20BB82940())
            {
              v761 = v1048;

              sub_20BB81298(v761, v760);
            }
          }
        }

        return;
      case 0x35uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x35)
        {
          v160 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v161 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);

          sub_20BB813C4(v160, v161);
        }

        return;
      case 0x36uLL:
        v719 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x36)
        {
          return;
        }

        v720 = v719;
        v721 = *v719;
        v722 = v719[1];
        v723 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767F60, &unk_20C1643B0) + 48);
        v724 = swift_projectBox();
        v725 = *v724;
        v726 = v724[1];
        v727 = MEMORY[0x277D52060];
        v728 = v720 + v723;
        v729 = v1014;
        sub_20B9767C0(v728, v1014, MEMORY[0x277D52060]);
        v730 = v724 + v723;
        v731 = v1013;
        sub_20B9767C0(v730, v1013, v727);
        if (v721 == v725 && v722 == v726 || (sub_20C13DFF4() & 1) != 0)
        {
          MEMORY[0x20F2ED3D0](v729, v731);
          v732 = MEMORY[0x277D52060];
          sub_20B976828(v731, MEMORY[0x277D52060]);
          v733 = v729;
        }

        else
        {
          v732 = MEMORY[0x277D52060];
          sub_20B976828(v731, MEMORY[0x277D52060]);
          v733 = v729;
        }

        goto LABEL_646;
      case 0x37uLL:
        v423 = v1049;
        if (((v423 >> 57) & 0x78 | v423 & 7) == 0x37)
        {
          goto LABEL_395;
        }

        return;
      case 0x38uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x38)
        {
          if (v162 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), v163 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4())
          {
            sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
            if (sub_20C13D5F4())
            {

              sub_20BB814C0(v162, v163);
            }
          }
        }

        return;
      case 0x39uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x39)
        {
          return;
        }

        v701 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v702 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v703 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v704 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v705 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v706 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        if (v701)
        {
          if (!v704 || (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) || v701 != v704) && (sub_20C13DFF4() & 1) == 0)
          {
            return;
          }
        }

        else if (v704)
        {
          return;
        }

        if (sub_20B969AA8(v702, v705))
        {

          sub_20BB80344(v703, v706);
        }

        return;
      case 0x3AuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x3A || *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        v328 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v329 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18))
        {
          goto LABEL_431;
        }

LABEL_429:
        if (v328 == v329)
        {
          return;
        }

        goto LABEL_431;
      case 0x3BuLL:
        v423 = v1049;
        if (((v423 >> 57) & 0x78 | v423 & 7) != 0x3B)
        {
          return;
        }

LABEL_395:
        v753 = v423 & 0xFFFFFFFFFFFFFF8;
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *(v753 + 16) && (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) != *(v753 + 24) || *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20) != *(v753 + 32)))
        {
          goto LABEL_626;
        }

        return;
      case 0x3CuLL:
        v340 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x3C)
        {
          return;
        }

        v341 = v340;
        v342 = *(v340 + 2);
        v1044 = *(v340 + 1);
        v1045 = v342;
        LODWORD(v1046) = *v340;
        v343 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767E58, &qword_20C17E670) + 64);
        v344 = swift_projectBox();
        v345 = *v344;
        v346 = *(v344 + 2);
        v1043 = *(v344 + 1);
        v1049 = v346;
        v347 = v1048;
        v348 = *(v1048 + 2);
        v349 = &v341[v343];
        v350 = v996;
        v351 = v1047;
        v348(v996, v349, v1047);
        v352 = &v344[v343];
        v353 = v351;
        v348(v70, v352, v351);
        if (v1046 == v345)
        {
          if (v1044 == v1043 && v1045 == v1049 || (sub_20C13DFF4() & 1) != 0)
          {
            MEMORY[0x20F2EF350](v350, v70);
            v354 = *(v1048 + 1);
            v354(v70, v351);
            v354(v350, v351);
            return;
          }

          v848 = *(v1048 + 1);
          v848(v70, v351);
          v849 = v350;
        }

        else
        {
          v848 = *(v347 + 8);
          v848(v70, v351);
          v849 = v350;
        }

LABEL_460:
        v848(v849, v353);
        return;
      case 0x3DuLL:
        v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A0, &qword_20C165290);
        v471 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x3D)
        {
          v472 = v471;
          v473 = v470[12];
          v474 = *(v471 + v473 + 8);
          v1045 = *(v471 + v473);
          v1046 = v474;
          v475 = v470[16];
          LODWORD(v1044) = *(v471 + v475);
          v476 = v470[20];
          v1043 = *(v471 + v476);
          v477 = swift_projectBox();
          v478 = v477 + v473;
          LODWORD(v1049) = *(v477 + v475);
          v480 = *(v477 + v473);
          v479 = *(v478 + 8);
          v1042 = *(v477 + v476);
          v481 = v1048;
          v482 = *(v1048 + 2);
          v483 = v998;
          v484 = v472;
          v485 = v1047;
          v482(v998, v484, v1047);
          v486 = v997;
          v487 = v477;
          v488 = v483;
          v482(v997, v487, v485);

          if (MEMORY[0x20F2EF350](v483, v486))
          {
            if (v1045 == v480 && v1046 == v479)
            {

              v489 = *(v1048 + 1);
              v490 = v1047;
              v489(v486, v1047);
              v489(v483, v490);
            }

            else
            {
              sub_20C13DFF4();

              v882 = *(v1048 + 1);
              v883 = v1047;
              v882(v486, v1047);
              v882(v488, v883);
            }
          }

          else
          {

            v852 = *(v481 + 8);
            v852(v486, v485);
            v852(v483, v485);
          }
        }

        return;
      case 0x3EuLL:
        v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768198, &unk_20C166920);
        v510 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x3E)
        {
          return;
        }

        v511 = v510;
        v512 = v510[1];
        v1048 = *v510;
        v1047 = v512;
        v513 = v510[3];
        v1045 = v510[2];
        v1046 = v513;
        v514 = v510[5];
        v1040 = v510[4];
        v1042 = v514;
        v515 = v509[24];
        v1038 = *(v510 + v515);
        LODWORD(v1037) = *(v510 + v509[28]);
        v516 = v509[32];
        LODWORD(v1036) = *(v510 + v516);
        v517 = v509[20];
        v518 = swift_projectBox();
        v519 = *v518;
        v520 = v518[1];
        v521 = v518[3];
        v1044 = v518[2];
        v1049 = v521;
        v522 = v518[5];
        *&v1039 = v518[4];
        v1041 = v522;
        v1043 = *(v518 + v515);
        LODWORD(v1035) = *(v518 + v516);
        v523 = &qword_27C770330;
        v524 = v1021;
        sub_20B52F9E8(v511 + v517, v1021, &qword_27C770330, &qword_20C1875B0);
        v525 = v1020;
        sub_20B52F9E8(v518 + v517, v1020, &qword_27C770330, &qword_20C1875B0);
        if ((v1048 != v519 || v1047 != v520) && (sub_20C13DFF4() & 1) == 0)
        {
          goto LABEL_701;
        }

        if (!v1046)
        {
          v527 = v994;
          v526 = v995;
          if (v1049)
          {
            goto LABEL_701;
          }

LABEL_518:
          if (v1042)
          {
            if (!v1041)
            {
              goto LABEL_700;
            }

            if (v1040 != v1039 || v1042 != v1041)
            {
              v869 = sub_20C13DFF4();

              if ((v869 & 1) == 0)
              {
                goto LABEL_699;
              }

              goto LABEL_634;
            }
          }

          else if (v1041)
          {
            goto LABEL_700;
          }

LABEL_634:
          v932 = *(v982 + 48);
          v933 = v984;
          sub_20B52F9E8(v524, v984, &qword_27C770330, &qword_20C1875B0);
          v934 = v933;
          sub_20B52F9E8(v525, v933 + v932, &qword_27C770330, &qword_20C1875B0);
          v935 = *(v526 + 48);
          v936 = v933;
          v937 = v983;
          if (v935(v936, 1, v983) == 1)
          {
            if (v935(v934 + v932, 1, v937) == 1)
            {
              sub_20B520158(v934, &qword_27C770330, &qword_20C1875B0);
              goto LABEL_698;
            }
          }

          else
          {
            sub_20B52F9E8(v934, v527, &qword_27C770330, &qword_20C1875B0);
            if (v935(v934 + v932, 1, v937) != 1)
            {
              v956 = v980;
              sub_20B9766B4(v934 + v932, v980, type metadata accessor for ButtonAction);
              v957 = sub_20BDA6478(v527, v956);
              sub_20B976828(v956, type metadata accessor for ButtonAction);
              sub_20B976828(v527, type metadata accessor for ButtonAction);
              sub_20B520158(v934, &qword_27C770330, &qword_20C1875B0);
              if ((v957 & 1) == 0)
              {
LABEL_699:

                goto LABEL_700;
              }

LABEL_698:
              sub_20BB81628(v1038, v1043);

              sub_20B520158(v525, &qword_27C770330, &qword_20C1875B0);
              sub_20B520158(v524, &qword_27C770330, &qword_20C1875B0);
              return;
            }

            sub_20B976828(v527, type metadata accessor for ButtonAction);
          }

          sub_20B520158(v934, &qword_27C768168, &qword_20C165270);
LABEL_700:
          v523 = &qword_27C770330;
          goto LABEL_701;
        }

        v527 = v994;
        v526 = v995;
        if (v1049 && (v1045 == v1044 && v1046 == v1049 || (sub_20C13DFF4() & 1) != 0))
        {
          goto LABEL_518;
        }

LABEL_701:
        v845 = &qword_20C1875B0;
        sub_20B520158(v525, &qword_27C770330, &qword_20C1875B0);
        v846 = v524;
LABEL_702:
        sub_20B520158(v846, v523, v845);
        return;
      case 0x3FuLL:
        v269 = v1049;
        if (((v269 >> 57) & 0x78 | v269 & 7) != 0x3F)
        {
          return;
        }

LABEL_355:
        v536 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v537 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v538 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v539 = *((v269 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v540 = *((v269 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v541 = *((v269 & 0xFFFFFFFFFFFFFF8) + 0x28);
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v269 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_357;
        }

LABEL_356:
        if (v536 == v539)
        {
          goto LABEL_358;
        }

LABEL_357:
        if (sub_20C13DFF4())
        {
LABEL_358:
          if (v537 != v540 || v538 != v541)
          {
LABEL_431:

            sub_20C13DFF4();
          }
        }

        return;
      case 0x40uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x40)
        {
          return;
        }

        v355 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v356 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v355)
        {
          if (!v356)
          {
            return;
          }

          sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
          v357 = v356;
          v358 = v355;
          v359 = sub_20C13D5F4();

          if ((v359 & 1) == 0)
          {
            return;
          }
        }

        else if (v356)
        {
          return;
        }

LABEL_477:
        sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
        sub_20C13D5F4();
        return;
      case 0x41uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x41)
        {
          return;
        }

        v502 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v1048 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v503 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v1047 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v504 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v505 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v506 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v507 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v508 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v1049 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
        sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
        if ((sub_20C13D5F4() & 1) == 0)
        {
          return;
        }

        if (v502)
        {
          if (!v506 || (v504 != v505 || v502 != v506) && (sub_20C13DFF4() & 1) == 0)
          {
            return;
          }
        }

        else if (v506)
        {
          return;
        }

        if (sub_20BCFF878(v1048, v503, v507, v508))
        {
          v332 = v1047;
          v333 = v1049;
LABEL_124:

          sub_20BB80B50(v332, v333);
        }

        return;
      case 0x42uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x42)
        {
          sub_20BFD3F60(*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10), *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18), *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20), *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28));
        }

        return;
      case 0x43uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x43)
        {
          if (v265 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20), v266 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), v267 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20), v268 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4())
          {
            if (v265 != v267 || v266 != v268)
            {
              goto LABEL_431;
            }
          }
        }

        return;
      case 0x44uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x44)
        {
          return;
        }

        v823 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v824 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v826 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v825 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v827 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v387 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x40);
        v828 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v829 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v831 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v830 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v832 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v156 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x40);
        if (v823)
        {
          if (!v828)
          {
            return;
          }

          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10) || v823 != v828)
          {
            v1049 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
            v833 = v827;
            v834 = v830;
            v835 = v825;
            v836 = v156;
            v837 = v387;
            v838 = sub_20C13DFF4();
            v387 = v837;
            v156 = v836;
            v825 = v835;
            v830 = v834;
            v827 = v833;
            v832 = v1049;
            if ((v838 & 1) == 0)
            {
              return;
            }
          }
        }

        else if (v828)
        {
          return;
        }

        if (v826)
        {
          if (!v831)
          {
            return;
          }

          if (v824 != v829 || v826 != v831)
          {
            v863 = v387;
            v864 = sub_20C13DFF4();
            v387 = v863;
            if ((v864 & 1) == 0)
            {
              return;
            }
          }
        }

        else if (v831)
        {
          return;
        }

        if (v827)
        {
          if (!v832)
          {
            return;
          }

          if (v825 != v830 || v827 != v832)
          {
            v912 = v387;
            v913 = sub_20C13DFF4();
            v387 = v912;
            if ((v913 & 1) == 0)
            {
              return;
            }
          }
        }

        else if (v832)
        {
          return;
        }

LABEL_675:
        v157 = v387;
LABEL_676:
        v382 = v156;
LABEL_677:

        sub_20BB808A4(v157, v382);
        return;
      case 0x45uLL:
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767B00, &unk_20C15F3C0);
        v179 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x45)
        {
          return;
        }

        v180 = v179;
        v181 = *(v179 + 8);
        v1046 = *v179;
        v1045 = v181;
        v182 = *(v179 + 24);
        v1043 = *(v179 + 16);
        v1042 = v182;
        v183 = v178[20];
        v184 = *(v179 + v183);
        v1036 = *(v179 + v183 + 8);
        v1037 = v184;
        v185 = v178[24];
        v1034 = *(v179 + v185);
        v186 = v178[16];
        v187 = swift_projectBox();
        v188 = *(v187 + 8);
        v1049 = *v187;
        v1044 = v188;
        v189 = *(v187 + 16);
        v1040 = *(v187 + 24);
        v1041 = v189;
        v190 = *(v187 + v183 + 8);
        v1035 = *(v187 + v183);
        v191 = *(v187 + v185);
        v1038 = v190;
        *&v1039 = v191;
        v192 = v180 + v186;
        v193 = v104;
        sub_20B52F9E8(v192, v104, &unk_27C766680, &unk_20C14F920);
        v194 = v101;
        sub_20B52F9E8(v187 + v186, v101, &unk_27C766680, &unk_20C14F920);
        if ((v1046 != v1049 || v1045 != v1044) && (sub_20C13DFF4() & 1) == 0 || (v1043 != v1041 || v1042 != v1040) && (sub_20C13DFF4() & 1) == 0)
        {
          goto LABEL_513;
        }

        v195 = *(v108 + 48);
        sub_20B52F9E8(v193, v110, &unk_27C766680, &unk_20C14F920);
        sub_20B52F9E8(v101, &v110[v195], &unk_27C766680, &unk_20C14F920);
        v196 = v1048;
        v197 = *(v1048 + 6);
        v198 = v1047;
        if (v197(v110, 1, v1047) == 1)
        {
          if (v197(&v110[v195], 1, v198) == 1)
          {
            v199 = v1038;

            sub_20B520158(v110, &unk_27C766680, &unk_20C14F920);
LABEL_598:
            if (v1037 == v1035 && v1036 == v199)
            {

LABEL_639:
              sub_20BB808A4(v1034, v1039);

              sub_20B520158(v194, &unk_27C766680, &unk_20C14F920);
              sub_20B520158(v193, &unk_27C766680, &unk_20C14F920);
              return;
            }

            v940 = sub_20C13DFF4();

            if (v940)
            {
              goto LABEL_639;
            }

LABEL_513:
            v523 = &unk_27C766680;
            v845 = &unk_20C14F920;
            sub_20B520158(v194, &unk_27C766680, &unk_20C14F920);
            v846 = v193;
            goto LABEL_702;
          }
        }

        else
        {
          v868 = v987;
          sub_20B52F9E8(v110, v987, &unk_27C766680, &unk_20C14F920);
          if (v197(&v110[v195], 1, v198) != 1)
          {
            v916 = &v110[v195];
            v917 = v988;
            (*(v196 + 32))(v988, v916, v198);
            sub_20B976778(&qword_27C7626D8, MEMORY[0x277D53A78], MEMORY[0x277D53A90]);

            v918 = sub_20C13C894();
            v919 = *(v196 + 8);
            v919(v917, v198);
            v920 = v868;
            v199 = v1038;
            v919(v920, v198);
            sub_20B520158(v110, &unk_27C766680, &unk_20C14F920);
            if ((v918 & 1) == 0)
            {

              goto LABEL_513;
            }

            goto LABEL_598;
          }

          (*(v196 + 8))(v868, v198);
        }

        sub_20B520158(v110, &qword_27C7626D0, &qword_20C161880);
        goto LABEL_513;
      case 0x46uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x46)
        {
          return;
        }

        goto LABEL_477;
      case 0x47uLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x47 || *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        v151 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v152 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v153 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v154 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v155 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v156 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
        if ((*((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20) != *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20)) && (sub_20C13DFF4() & 1) == 0)
        {
          return;
        }

        if ((v151 != v154 || v152 != v155) && (sub_20C13DFF4() & 1) == 0)
        {
          return;
        }

        v157 = v153;
        goto LABEL_676;
      case 0x48uLL:
        v734 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v735 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v736 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v737 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v738 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v739 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v740 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x70);
        *&v1075[32] = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x60);
        *&v1075[48] = v740;
        *&v1075[64] = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x80);
        v741 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x50);
        *v1075 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x40);
        *&v1075[16] = v741;
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x48)
        {
          return;
        }

        v742 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v743 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v744 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v745 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v746 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v747 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x38);
        v748 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x70);
        *&v1074[32] = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x60);
        *&v1074[48] = v748;
        *&v1074[64] = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x80);
        v749 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x50);
        *v1074 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x40);
        *&v1074[16] = v749;
        if (v734 != v742)
        {
          return;
        }

        if ((v735 != v743 || v736 != v744) && (sub_20C13DFF4() & 1) == 0)
        {
          return;
        }

        if ((v737 != v745 || v738 != v746) && (sub_20C13DFF4() & 1) == 0)
        {
          return;
        }

        if (v739)
        {
          if (!v747)
          {
            return;
          }

          sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
          v750 = v747;
          v751 = v739;
          v752 = sub_20C13D5F4();

          if ((v752 & 1) == 0)
          {
            return;
          }
        }

        else if (v747)
        {
          return;
        }

        v941 = *v1075;
        v1070 = *&v1075[8];
        v1071 = *&v1075[24];
        v1072 = *&v1075[40];
        v1073 = *&v1075[56];
        v942 = *v1074;
        v1066 = *&v1074[8];
        v1067 = *&v1074[24];
        v1068 = *&v1074[40];
        v1069 = *&v1074[56];
        if (*v1075)
        {
          *v1060 = *v1075;
          *&v1060[24] = *&v1075[24];
          *&v1060[8] = *&v1075[8];
          *&v1060[40] = *&v1075[40];
          *&v1060[56] = *&v1075[56];
          v1057 = *&v1060[32];
          v1058 = *&v1060[48];
          v1059 = *&v1075[64];
          v1055 = *v1060;
          v1056 = *&v1060[16];
          if (*v1074)
          {
            *&v1054[8] = *&v1074[8];
            *&v1054[24] = *&v1074[24];
            *&v1054[40] = *&v1074[40];
            *&v1054[56] = *&v1074[56];
            *v1054 = *v1074;
            sub_20B52F9E8(v1075, v1052, &qword_27C765640, &unk_20C158F20);
            sub_20B52F9E8(v1074, v1052, &qword_27C765640, &unk_20C158F20);
            sub_20B52F9E8(v1060, v1052, &qword_27C765640, &unk_20C158F20);
            _s9SeymourUI18WorkoutPlanArtworkV2eeoiySbAC_ACtFZ_0(&v1055, v1054);
            v1050[2] = *&v1054[32];
            v1050[3] = *&v1054[48];
            v1051 = *&v1054[64];
            v1050[0] = *v1054;
            v1050[1] = *&v1054[16];
            sub_20B976660(v1050);
            v1052[2] = v1057;
            v1052[3] = v1058;
            v1053 = v1059;
            v1052[0] = v1055;
            v1052[1] = v1056;
            sub_20B976660(v1052);
            *v1054 = v941;
            *&v1054[8] = v1070;
            *&v1054[24] = v1071;
            *&v1054[40] = v1072;
            *&v1054[56] = v1073;
            sub_20B520158(v1054, &qword_27C765640, &unk_20C158F20);
            return;
          }

          *&v1054[32] = *&v1060[32];
          *&v1054[48] = *&v1060[48];
          *&v1054[64] = *&v1060[64];
          *v1054 = *v1060;
          *&v1054[16] = *&v1060[16];
          sub_20B52F9E8(v1075, v1052, &qword_27C765640, &unk_20C158F20);
          sub_20B52F9E8(v1074, v1052, &qword_27C765640, &unk_20C158F20);
          sub_20B52F9E8(v1060, v1052, &qword_27C765640, &unk_20C158F20);
          sub_20B976660(v1054);
        }

        else
        {
          if (!*v1074)
          {
            *v1060 = 0;
            *&v1060[8] = *&v1075[8];
            *&v1060[24] = *&v1075[24];
            *&v1060[40] = *&v1075[40];
            *&v1060[56] = *&v1075[56];
            sub_20B52F9E8(v1075, &v1055, &qword_27C765640, &unk_20C158F20);
            sub_20B52F9E8(v1074, &v1055, &qword_27C765640, &unk_20C158F20);
            sub_20B520158(v1060, &qword_27C765640, &unk_20C158F20);
            return;
          }

          sub_20B52F9E8(v1075, v1060, &qword_27C765640, &unk_20C158F20);
          sub_20B52F9E8(v1074, v1060, &qword_27C765640, &unk_20C158F20);
        }

        *&v1060[8] = v1070;
        *&v1060[24] = v1071;
        *&v1060[40] = v1072;
        *&v1060[56] = v1073;
        *v1060 = v941;
        v1061 = v942;
        v1062 = v1066;
        v1063 = v1067;
        v1064 = v1068;
        v1065 = v1069;
        sub_20B520158(v1060, &qword_27C768190, &qword_20C165288);
        return;
      case 0x49uLL:
        v762 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768180, &unk_20C177B40);
        v763 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x49)
        {
          return;
        }

        v764 = v763;
        v765 = v762[12];
        v1048 = *(v763 + v765);
        v766 = v762[16];
        v1047 = *(v763 + v766);
        v767 = v762[20];
        v1046 = *(v763 + v767);
        v768 = swift_projectBox();
        v769 = *(v768 + v765);
        v770 = *(v768 + v766);
        v771 = *(v768 + v767);
        v772 = v1017;
        v773 = *(v1016 + 48);
        sub_20B52F9E8(v764, v1017, &unk_27C762300, &unk_20C151350);
        sub_20B52F9E8(v768, v772 + v773, &unk_27C762300, &unk_20C151350);
        v775 = v1018;
        v774 = v1019;
        v776 = *(v1018 + 48);
        if (v776(v772, 1, v1019) == 1)
        {
          if (v776(v772 + v773, 1, v774) == 1)
          {
            v777 = v770;

            v778 = v769;
            sub_20B520158(v772, &unk_27C762300, &unk_20C151350);
            goto LABEL_555;
          }
        }

        else
        {
          v1044 = v771;
          v857 = v993;
          sub_20B52F9E8(v772, v993, &unk_27C762300, &unk_20C151350);
          if (v776(v772 + v773, 1, v774) != 1)
          {
            v894 = *(v775 + 32);
            v1049 = v770;
            v1045 = v769;
            v895 = v857;
            v896 = v986;
            v894(v986, v772 + v773, v774);
            sub_20B976778(&qword_27C768188, MEMORY[0x277D51CF0], MEMORY[0x277D51D00]);
            v1043 = v1045;
            v897 = v774;
            v898 = v1049;
            v771 = v1044;

            v899 = sub_20C13C894();
            v900 = *(v775 + 8);
            v900(v896, v897);
            v901 = v895;
            v769 = v1045;
            v770 = v1049;
            v900(v901, v897);
            sub_20B520158(v772, &unk_27C762300, &unk_20C151350);
            if ((v899 & 1) == 0)
            {

              goto LABEL_548;
            }

LABEL_555:
            v902 = v1048;
            if (v1048)
            {
              if (!v769)
              {
LABEL_559:

                return;
              }

              sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
              v903 = v769;
              v904 = v902;
              v905 = sub_20C13D5F4();

              if ((v905 & 1) == 0)
              {

                goto LABEL_559;
              }
            }

            else if (v769)
            {

              return;
            }

            v921 = v1047;
            if (v1047)
            {
              if (!v770)
              {
LABEL_609:

                return;
              }

              sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
              v770 = v770;
              v922 = v921;
              v923 = sub_20C13D5F4();

              if ((v923 & 1) == 0)
              {

                goto LABEL_609;
              }
            }

            else if (v770)
            {

              return;
            }

            sub_20BB808A4(v1046, v771);

            return;
          }

          (*(v775 + 8))(v857, v774);
        }

        sub_20B520158(v772, &qword_27C768160, &qword_20C165268);
        return;
      case 0x4AuLL:
        v779 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70, &unk_20C1512E0);
        v780 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) != 0x4A)
        {
          return;
        }

        v781 = v780;
        v782 = v779[12];
        LODWORD(v1034) = *(v780 + v782);
        v783 = v779[16];
        v784 = *(v780 + v783);
        v785 = v779[20];
        v1031 = *(v780 + v785 + 24);
        v1032 = v784;
        v786 = *(v780 + v785 + 32);
        v1028 = *(v780 + v785 + 40);
        v787 = v779[24];
        v1026 = *(v780 + v787);
        v1029 = *(v780 + v787 + 8);
        v1030 = v786;
        v788 = *(v780 + v787 + 24);
        v1023 = *(v780 + v787 + 16);
        v1027 = v788;
        v1025 = *(v780 + v787 + 32);
        LODWORD(v1024) = *(v780 + v787 + 40);
        v789 = v779[28];
        LODWORD(v1022) = *(v780 + v789);
        v790 = v779[32];
        LODWORD(v1020) = *(v780 + v790);
        v791 = v779[36];
        LODWORD(v1018) = *(v780 + v791);
        v792 = swift_projectBox();
        LODWORD(v1033) = *(v792 + v782);
        v793 = *(v792 + v783);
        v794 = *(v792 + v785 + 8);
        *&v1039 = *(v792 + v785);
        v796 = *(v792 + v785 + 16);
        v795 = *(v792 + v785 + 24);
        v1036 = v794;
        v1037 = v796;
        v1048 = v795;
        v797 = *(v792 + v785 + 40);
        v1044 = *(v792 + v785 + 32);
        v1043 = v797;
        v798 = *(v792 + v787 + 8);
        v1047 = *(v792 + v787);
        v1041 = v798;
        v799 = *(v792 + v787 + 24);
        v1049 = *(v792 + v787 + 16);
        v800 = *(v792 + v787 + 32);
        LODWORD(v1021) = *(v792 + v789);
        LODWORD(v1019) = *(v792 + v790);
        v801 = *(v792 + v787 + 40);
        LODWORD(v1017) = *(v792 + v791);
        v802 = *(v1046 + 2);
        v803 = v1038;
        v804 = v781;
        v323 = v1045;
        v802(v1038, v804, v1045);
        v802(v1042, v792, v323);
        v1040 = v793;

        *&v1039 = v1039;
        v805 = v1036;
        v806 = v1041;
        v1036 = v805;
        v1035 = v1037;

        v1037 = v799;
        v807 = sub_20B6543CC(v1047, v806, v1049, v799);
        v808 = v1042;
        if ((MEMORY[0x20F2EB730](v803, v1042, v807) & 1) == 0)
        {

          v858 = sub_20B6222E8(v1047, v806, v1049, v1037);
          v421 = *(v1046 + 1);
          (v421)(v808, v323, v858);
          v422 = v1038;
          goto LABEL_714;
        }

        v809 = v1049;
        v810 = v800;
        LODWORD(v1016) = v801;
        v811 = v1036;
        v812 = v1037;
        v813 = v1046;
        v814 = v1035;
        if (sub_20B969010(v1034, v1033, MEMORY[0x277D51600]))
        {
          sub_20B975DD4(v1032, v1040);
          v816 = v815;

          v817 = v812;
          v818 = v810;
          if (v816)
          {
            v819 = sub_20BB803A0(v1031, v1048);
            v820 = v1016;
            v821 = v1045;
            if ((v819 & 1) == 0 || (sub_20BB803A0(v1030, v1044) & 1) == 0 || (sub_20BB803A0(v1028, v1043) & 1) == 0)
            {

              v938 = sub_20B6222E8(v1047, v1041, v1049, v817);
              v939 = v813[1];
              v939(v1042, v821, v938);
              (v939)(v1038, v821);
              return;
            }

            if (v1029 == 1)
            {
              v822 = v1041;
              if (v1041 == 1)
              {
                goto LABEL_756;
              }
            }

            else
            {
              v822 = v1041;
              if (v1041 != 1)
              {
                *v1060 = v1047;
                *&v1060[8] = v1041;
                *&v1060[16] = v1049;
                *&v1060[24] = v817;
                v1015 = v818;
                *&v1060[32] = v818;
                *&v1060[40] = v820 & 0xFF01;
                v974 = v1027;
                v975 = v1029;
                *v1075 = v1026;
                *&v1075[8] = v1029;
                v976 = v1023;
                *&v1075[16] = v1023;
                *&v1075[24] = v1027;
                *&v1075[32] = v1025;
                *&v1075[40] = v1024 & 0xFF01;
                LODWORD(v1040) = sub_20BAE6B20(v1075, v1060);
                sub_20B6543CC(v1047, v822, v1049, v817);
                sub_20B6543CC(v1026, v975, v976, v974);

                sub_20B6222E8(v1047, v822, v1049, v817);
                sub_20B6222E8(v1026, v975, v976, v1027);
                if (v1040)
                {
LABEL_756:
                  sub_20B969010(v1022, v1021, MEMORY[0x277D531C0]);

                  v977 = *(v1046 + 1);
                  v978 = v1045;
                  v977(v1042, v1045);
                  v977(v1038, v978);
                  return;
                }

LABEL_742:
                v879 = *(v1046 + 1);
                v880 = v1045;
                v879(v1042, v1045);
                v881 = v1038;
LABEL_751:
                v879(v881, v880);
                return;
              }
            }

            *v1060 = v1026;
            *&v1060[8] = v1029;
            *&v1060[16] = v1023;
            *&v1060[24] = v1027;
            *&v1060[32] = v1025;
            *&v1060[40] = v1024;
            *&v1060[48] = v1047;
            *&v1060[56] = v822;
            *&v1060[64] = v1049;
            v1061 = v817;
            *&v1062 = v818;
            WORD4(v1062) = v820;
            sub_20B520158(v1060, &qword_27C768178, &qword_20C165280);
            goto LABEL_742;
          }

          v906 = v1047;
          v907 = v1041;
          v908 = v1049;
          v909 = v817;
        }

        else
        {

          v906 = v1047;
          v907 = v1041;
          v908 = v809;
          v909 = v812;
        }

        v929 = sub_20B6222E8(v906, v907, v908, v909);
        v930 = v813[1];
        v931 = v1045;
        v930(v1042, v1045, v929);
        (v930)(v1038, v931);
        return;
      case 0x4BuLL:
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x4B)
        {
          if (v165 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x20), v164 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x28), v167 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x20), v166 = *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x28), *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x10)) && *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) == *((v1049 & 0xFFFFFFFFFFFFFF8) + 0x18) || (sub_20C13DFF4())
          {
            if (v164 && v166 && (v165 != v167 || v164 != v166))
            {
              goto LABEL_626;
            }
          }
        }

        return;
      case 0x4CuLL:
        v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F28, &unk_20C1664F0);
        v453 = swift_projectBox();
        if (((v1049 >> 57) & 0x78 | v1049 & 7) == 0x4C)
        {
          v454 = v453;
          v455 = *(v452 + 48);
          v1048 = *(v453 + v455);
          v456 = *(v452 + 64);
          v1047 = *(v453 + v456);
          v457 = swift_projectBox();
          v458 = *(v457 + v455);
          v459 = *(v457 + v456);
          v460 = v1044;
          v461 = *(v1044 + 2);
          v462 = v1012;
          v463 = v1043;
          v461(v1012, v454, v1043);
          v464 = v1011;
          v465 = v457;
          v466 = v462;
          v461(v1011, v465, v463);
          v467 = v464;
          v468 = v458;

          if (sub_20C1328A4())
          {
            sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
            if (sub_20C13D5F4())
            {
              sub_20BB81A28(v1047, v459);
            }

            v469 = *(v1044 + 1);
            v469(v467, v463);
            v469(v466, v463);
          }

          else
          {

            v851 = *(v460 + 1);
            v851(v467, v463);
            v851(v462, v463);
          }
        }

        return;
      case 0x4DuLL:
        return;
      default:
        if (!((v1049 >> 57) & 0x78 | v1049 & 7))
        {
          v115 = *(v112 + 48);
          v116 = *(v1049 + 48);
          v117 = *(v112 + 32);
          *v1060 = *(v112 + 16);
          *&v1060[16] = v117;
          *&v1060[32] = v115;
          v118 = *(v1049 + 32);
          *v1075 = *(v1049 + 16);
          *&v1075[16] = v118;
          *&v1075[32] = v116;
          _s9SeymourUI14AvatarSettingsV2eeoiySbAC_ACtFZ_0(v1060, v1075);
        }

        return;
    }
  }
}