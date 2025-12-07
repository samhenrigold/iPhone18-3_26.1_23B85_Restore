void sub_20B836F68()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA5A674(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B837040(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA638D0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B8370FC(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F312C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20B8371D0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_layout;
  *v3 = xmmword_20C15CDF0;
  *(v3 + 16) = xmmword_20C15CE00;
  *(v3 + 32) = xmmword_20C15CE10;
  *(v3 + 48) = xmmword_20C15CE20;
  *(v3 + 64) = 0x4054000000000000;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView);
  v5 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *v4 = v5;
  v4[1] = &off_2822B63E8;
  v6 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_floatingView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75F68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  v10 = objc_opt_self();
  v11 = [v10 smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v9 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 blackColor];
  [v9 setTextColor_];

  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v8) = v9;
  v14 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_subtitleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setLineBreakMode_];
  v16 = *MEMORY[0x277D76940];
  v17 = [v10 preferredFontForTextStyle_];
  [v15 setFont_];

  v18 = [v12 blackColor];
  [v15 setTextColor_];

  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v19 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_actionLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21 = [v10 preferredFontForTextStyle_];
  [v20 setFont_];

  [v20 setAdjustsFontForContentSizeCategory_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v19) = v20;
  v22 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackView;
  v23 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v23 setAlignment_];
  [v23 setAxis_];
  [v23 setDistribution_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v22) = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_buttonStackView;
  v25 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v25 setAlignment_];
  [v25 setAxis_];
  [v25 setDistribution_];
  if (qword_27C760790 != -1)
  {
    swift_once();
  }

  [v25 setSpacing_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v24) = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_focusGuide;
  *(v0 + v26) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v27 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackViewTrailingConstraint;
  *(v0 + v27) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B837780()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

void sub_20B837964()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [*(v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_titleLabel) text];
  if (v9)
  {
    v26 = v2;
    v10 = v9;
    v11 = sub_20C13C954();
    v13 = v12;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v25 = v1;
      v16 = [*(v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_subtitleLabel) text];
      if (v16)
      {
        v17 = v16;
        v18 = sub_20C13C954();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      *v8 = v11;
      v8[1] = v13;
      v8[2] = v18;
      v8[3] = v20;
      v21 = swift_storeEnumTagMultiPayload();
      v22 = MEMORY[0x28223BE20](v21);
      *(&v25 - 4) = 0;
      *(&v25 - 24) = 1;
      *(&v25 - 2) = v8;
      *(&v25 - 1) = v15;
      v23 = [*(v15 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v23)
      {
        v24 = v23;
        sub_20C1331E4();

        sub_20C0C1CDC(v4, sub_20B5E275C);
        (*(v26 + 8))(v4, v25);
      }

      swift_unknownObjectRelease();
      sub_20B5E2760(v8);
    }

    else
    {
    }
  }
}

uint64_t CatalogTipSummaryNavigationHandlers.onLearnMoreTapped.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CatalogTipSummaryNavigationHandlers.onSeeMoreTipsTapped.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CatalogTipSummaryNavigationHandlers.init(onLearnMoreTapped:onSeeMoreTipsTapped:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_20B837C7C(uint64_t *a1, int a2)
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

uint64_t sub_20B837CC4(uint64_t result, int a2, int a3)
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

char *sub_20B837D14(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout];
  sub_20BD3E4B4(v83);
  v13 = v83[3];
  *(v12 + 2) = v83[2];
  *(v12 + 3) = v13;
  *(v12 + 4) = v83[4];
  *(v12 + 10) = v84;
  v14 = v83[1];
  *v12 = v83[0];
  *(v12 + 1) = v14;
  *&v5[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_iconLayout] = xmmword_20C15CF80;
  v15 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setClipsToBounds_];
  *&v5[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  [v18 setAdjustsFontSizeToFitWidth_];
  *&v5[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer;
  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setClipsToBounds_];
  *&v5[v19] = v20;
  v21 = &v5[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  v22 = objc_allocWithZone(type metadata accessor for ArtworkView(0));
  v23 = sub_20B91B5FC(1);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setClipsToBounds_];

  *v21 = v23;
  v21[1] = &off_2822B63E8;
  v82.receiver = v5;
  v82.super_class = type metadata accessor for ModalityFilterCell(0);
  v24 = objc_msgSendSuper2(&v82, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = [v24 contentView];
  v76 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter;
  [v25 addSubview_];

  v26 = [v24 &selRef_setMaximumFractionDigits_];
  v78 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel;
  [v26 addSubview_];

  v27 = v24;
  v28 = [v27 &selRef_setMaximumFractionDigits_];
  v29 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer;
  v75 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer;
  [v28 addSubview_];

  v30 = &v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  v31 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  v32 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v34 = *(v32 + 288);
  v35 = v31;
  v34(1, ObjectType, v32);

  [*&v27[v29] addSubview_];
  v36 = [v27 traitCollection];

  v37 = *&v24[v78];
  v38 = &v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout];
  v39 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout + 16];
  v89 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout];
  v90 = v39;
  v91 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout + 32];
  v92 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout + 48];
  v40 = sub_20B7C6A74(v36);
  [v37 setFont_];

  v41 = *&v24[v78];
  v42 = [v36 preferredContentSizeCategory];
  LOBYTE(v21) = sub_20C13D424();

  if (v21)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  [v41 setNumberOfLines_];

  v44 = *(v38 + 1);
  v80[0] = *v38;
  v80[1] = v44;
  v45 = *(v38 + 2);
  v46 = *(v38 + 3);
  v47 = *(v38 + 4);
  v81 = *(v38 + 10);
  v80[3] = v46;
  v80[4] = v47;
  v80[2] = v45;
  v48 = *&v24[v76];
  sub_20B839890(v80, v87);
  v49 = v48;
  v50 = [v27 contentView];
  v77 = sub_20BD3E708(v49, v50);

  sub_20B8398EC(v80);
  v51 = *(v38 + 1);
  v87[0] = *v38;
  v87[1] = v51;
  v53 = *(v38 + 3);
  v52 = *(v38 + 4);
  v54 = *(v38 + 2);
  v88 = *(v38 + 10);
  v87[3] = v53;
  v87[4] = v52;
  v87[2] = v54;
  v55 = *&v27[v75];
  v56 = *v30;
  sub_20B839890(v87, v85);
  v57 = v55;
  v58 = v56;
  v59 = [v27 contentView];
  v60 = sub_20BD3DD68(v57, v58, v59);

  sub_20B8398EC(v87);
  v61 = *(v38 + 1);
  v85[0] = *v38;
  v85[1] = v61;
  v63 = *(v38 + 3);
  v62 = *(v38 + 4);
  v64 = *(v38 + 2);
  v86 = *(v38 + 10);
  v85[3] = v63;
  v85[4] = v62;
  v85[2] = v64;
  v65 = *&v24[v78];
  v66 = *&v27[v75];
  sub_20B839890(v85, &v79);
  v67 = v65;
  v68 = v66;
  v69 = [v27 contentView];

  v70 = sub_20BD3E11C(v67, v68, v69);
  sub_20B8398EC(v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 32) = v77;
  *(inited + 40) = v60;
  *(inited + 48) = v70;
  v72 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B5E29D0();
  v73 = sub_20C13CC54();

  [v72 activateConstraints_];

  return v27;
}

id sub_20B838468()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ModalityFilterCell(0);
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter] layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer];
  v4 = [v3 layer];
  [v4 setCornerRadius_];

  v5 = [v3 layer];
  [v5 setBorderWidth_];

  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  CGAffineTransformMakeScale(&v8, 0.75, 0.75);
  return [v6 setTransform_];
}

uint64_t sub_20B8387B0(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for ModalityFilterCell(0);
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        sub_20B83894C(v13, v15);

        v3 = v13;
      }
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    sub_20B83894C(v3, v15);
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20B83894C(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel;
  v4 = *&Strong[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel];
  v5 = sub_20B7C6A74(a1);
  [v4 setFont_];

  v6 = *&Strong[v3];
  v7 = [a1 preferredContentSizeCategory];
  LOBYTE(v4) = sub_20C13D424();

  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v6 setNumberOfLines_];
}

void sub_20B838AAC(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel];
  v4 = objc_opt_self();
  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    v26 = v4;
    v27 = [v4 darkGrayColor];
    [v3 setTextColor_];

    v28 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
    v29 = [v26 darkGrayColor];
    [v28 setTintColor_];

    v30 = [*&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer] layer];
    v31 = [v26 darkGrayColor];
    v32 = [v31 CGColor];

    [v30 setBorderColor_];
    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter];
    v25 = [v26 systemGray5Color];
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 blackColor];
  [v3 setTextColor_];

  v7 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  v8 = [v5 blackColor];
  [v7 setTintColor_];

  v9 = [*&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer] layer];
  v10 = objc_opt_self();
  v11 = [v10 briskColors];
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v11 nonGradientTextColor];

  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = [v13 CGColor];

  [v9 setBorderColor_];
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter];
  v15 = [v10 briskColors];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 nonGradientTextColor];

  if (!v17)
  {
    __break(1u);
LABEL_8:
    v18 = v4;
    v19 = [v4 whiteColor];
    [v3 setTextColor_];

    v20 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
    v21 = [v18 whiteColor];
    [v20 setTintColor_];

    v22 = [*&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer] layer];
    v23 = [v18 whiteColor];
    v24 = [v23 CGColor];

    [v22 setBorderColor_];
    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter];
    v25 = [v18 systemGray5Color];
LABEL_10:
    v17 = v25;
  }

  [v3 setBackgroundColor_];

  [v1 accessibilityApplyState:a1 == 1 disabled:a1 == 2];
}

id sub_20B838ED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModalityFilterCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ModalityFilterCell(uint64_t a1)
{
  result = qword_281103068;
  if (!qword_281103068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B839030(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B8390FC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B839148@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8391A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B839220(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x26)
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v9 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView + 8];
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    ObjectType = swift_getObjectType();
    sub_20B9C7E94(v8);
    v12 = sub_20C13C914();

    v13 = [objc_opt_self() smm:v12 systemImageNamed:?];

    v14 = [v13 imageWithRenderingMode_];
    (*(v9 + 120))(v14, ObjectType, v9);
    v15 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel];
    v16 = sub_20C13C914();
    [v15 setText_];

    sub_20B838AAC(v10);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel] setText_];
    v17 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView + 8];
    v18 = swift_getObjectType();
    (*(v17 + 120))(0, v18, v17);
    sub_20C13B534();

    v19 = v1;
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = a1;
      v33 = v31;
      *v22 = 138543874;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2160;
      *(v22 + 14) = 1752392040;
      *(v22 + 22) = 2080;
      v24 = sub_20B5F66D0();
      v25 = v19;
      v26 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v24);
      v28 = sub_20B51E694(v26, v27, &v33);

      *(v22 + 24) = v28;
      _os_log_impl(&dword_20B517000, v20, v21, "Attempted to configure %{public}@ with item: %{mask.hash}s", v22, 0x20u);
      sub_20B520158(v23, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      v29 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x20F2F6A40](v29, -1, -1);
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_20B8395F4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout;
  sub_20BD3E4B4(v15);
  v4 = v15[3];
  *(v3 + 32) = v15[2];
  *(v3 + 48) = v4;
  *(v3 + 64) = v15[4];
  *(v3 + 80) = v16;
  v5 = v15[1];
  *v3 = v15[0];
  *(v3 + 16) = v5;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_iconLayout) = xmmword_20C15CF80;
  v6 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setClipsToBounds_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  [v9 setAdjustsFontSizeToFitWidth_];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setClipsToBounds_];
  *(v0 + v10) = v11;
  v12 = (v0 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView);
  v13 = objc_allocWithZone(type metadata accessor for ArtworkView(0));
  v14 = sub_20B91B5FC(1);
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setClipsToBounds_];

  *v12 = v14;
  v12[1] = &off_2822B63E8;
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for SessionSummaryViewModel(uint64_t a1)
{
  result = qword_281102448;
  if (!qword_281102448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8399B4(uint64_t a1)
{
  sub_20B76EC8C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKWorkoutActivityType(319);
    if (v2 <= 0x3F)
    {
      sub_20B652FC4(319, &qword_281102610, &type metadata for SummaryMetricViewModel);
      if (v3 <= 0x3F)
      {
        sub_20B839B34(319, qword_281100650, type metadata accessor for SummaryActivityRingsMetricViewModel);
        if (v4 <= 0x3F)
        {
          sub_20B839B34(319, qword_281100B30, type metadata accessor for SummaryBurnBarMetricViewModel);
          if (v5 <= 0x3F)
          {
            sub_20B652FC4(319, &qword_281100AC8, &type metadata for SummaryUpNextSectionViewModel);
            if (v6 <= 0x3F)
            {
              sub_20B652FC4(319, qword_281100AD0, &type metadata for SummaryQueueCompleteViewModel);
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

void sub_20B839B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20B839B88(uint64_t a1)
{
  if (sub_20C1380F4() != 3)
  {
    v26 = *(v1 + 136);
    if (v26)
    {
      v27 = *(v1 + 120);
      if (v27)
      {
        v28 = *(v1 + 144);
        v29 = *(v1 + 128);
        v30 = *(v1 + 80);
        v147[0] = *(v1 + 72);
        v147[1] = v30;
        v147[2] = v26;
        v147[3] = v28;
        v147[4] = v27;
        v147[5] = v29;
        v31 = *(v1 + 112);
        v148 = *(v1 + 104);
        v149 = v31;
        v32 = *(v1 + 96);
        v150 = *(v1 + 88);
        v151 = v32;
        v125 = *(v1 + 32);
        v152 = *(v1 + 24);
        v153 = v125;
        v33 = *(v1 + 40);
        v34 = *(v1 + 48);
        v129 = v33;
        v154 = v33;
        v155 = v34;
        sub_20B7A3154(v26, v28);
        sub_20B7A3154(v27, v29);
        v35 = v147[0];
        v36 = v30;
        v37 = v26;
        v38 = v28;
        v39 = v27;
        v40 = v29;
        sub_20B7A3154(v148, v31);
        sub_20B7A3154(v150, v32);
        sub_20B7A3154(v152, v125);
        result = sub_20B7A3154(v129, v34);
        v41 = 0;
        v14 = MEMORY[0x277D84F90];
LABEL_18:
        v42 = 7;
        if (v41 > 7)
        {
          v42 = v41;
        }

        v43 = v42 + 1;
        v44 = &v147[2 * v41];
        while (v41 != 7)
        {
          if (v43 == ++v41)
          {
            goto LABEL_79;
          }

          v45 = v44 + 2;
          v46 = *v44;
          v44 += 2;
          if (v46)
          {
            v130 = v40;
            v47 = v39;
            v48 = v37;
            v49 = *(v45 - 1);
            v50 = v46;
            v51 = v49;
            result = swift_isUniquelyReferenced_nonNull_native();
            v52 = v38;
            if ((result & 1) == 0)
            {
              result = sub_20BC0712C(0, *(v14 + 16) + 1, 1, v14);
              v14 = result;
            }

            v54 = *(v14 + 16);
            v53 = *(v14 + 24);
            if (v54 >= v53 >> 1)
            {
              result = sub_20BC0712C((v53 > 1), v54 + 1, 1, v14);
              v14 = result;
            }

            *(v14 + 16) = v54 + 1;
            v55 = v14 + 16 * v54;
            *(v55 + 32) = v50;
            *(v55 + 40) = v51;
            v37 = v48;
            v39 = v47;
            v38 = v52;
            v40 = v130;
            goto LABEL_18;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0, &qword_20C15D0B8);
        swift_arrayDestroy();

        goto LABEL_62;
      }
    }

    else
    {
      v56 = *(v1 + 120);
      if (v56)
      {
        v57 = *(v1 + 128);
        v58 = *(v1 + 80);
        v156[0] = *(v1 + 72);
        v156[1] = v58;
        v156[2] = v56;
        v156[3] = v57;
        v59 = *(v1 + 112);
        v157 = *(v1 + 104);
        v158 = v59;
        v60 = *(v1 + 96);
        v159 = *(v1 + 88);
        v160 = v60;
        v61 = *(v1 + 32);
        v161 = *(v1 + 24);
        v162 = v61;
        v62 = *(v1 + 40);
        v63 = *(v1 + 48);
        v131 = v62;
        v163 = v62;
        v164 = v63;
        sub_20B7A3154(v56, v57);
        v64 = v156[0];
        v65 = v58;
        v124 = v56;
        v66 = v57;
        sub_20B7A3154(v157, v59);
        sub_20B7A3154(v159, v60);
        sub_20B7A3154(v161, v61);
        result = sub_20B7A3154(v131, v63);
        v67 = 0;
        v14 = MEMORY[0x277D84F90];
LABEL_34:
        if (v67 <= 6)
        {
          v68 = 6;
        }

        else
        {
          v68 = v67;
        }

        v69 = v68 + 1;
        v70 = &v156[2 * v67];
        while (v67 != 6)
        {
          if (v69 == ++v67)
          {
            goto LABEL_80;
          }

          v71 = v70 + 2;
          v72 = *v70;
          v70 += 2;
          if (v72)
          {
            v73 = *(v71 - 1);
            v74 = v72;
            v75 = v73;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_20BC0712C(0, *(v14 + 16) + 1, 1, v14);
              v14 = result;
            }

            v77 = *(v14 + 16);
            v76 = *(v14 + 24);
            if (v77 >= v76 >> 1)
            {
              result = sub_20BC0712C((v76 > 1), v77 + 1, 1, v14);
              v14 = result;
            }

            *(v14 + 16) = v77 + 1;
            v78 = v14 + 16 * v77;
            *(v78 + 32) = v74;
            *(v78 + 40) = v75;
            goto LABEL_34;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0, &qword_20C15D0B8);
        swift_arrayDestroy();

        return v14;
      }
    }

    v79 = *(v1 + 56);
    if (!v79)
    {
      v103 = *(v1 + 80);
      v174[0] = *(v1 + 72);
      v174[1] = v103;
      v104 = *(v1 + 112);
      v175 = *(v1 + 104);
      v176 = v104;
      v105 = *(v1 + 96);
      v177 = *(v1 + 88);
      v178 = v105;
      v106 = *(v1 + 32);
      v179 = *(v1 + 24);
      v180 = v106;
      v108 = *(v1 + 40);
      v107 = *(v1 + 48);
      v181 = v108;
      v182 = v107;
      v109 = v174[0];
      v110 = v103;
      sub_20B7A3154(v175, v104);
      sub_20B7A3154(v177, v105);
      sub_20B7A3154(v179, v106);
      result = sub_20B7A3154(v108, v107);
      v111 = 0;
      v14 = MEMORY[0x277D84F90];
LABEL_65:
      if (v111 <= 5)
      {
        v112 = 5;
      }

      else
      {
        v112 = v111;
      }

      v113 = v112 + 1;
      v114 = &v174[2 * v111];
      while (v111 != 5)
      {
        if (v113 == ++v111)
        {
          goto LABEL_82;
        }

        v115 = v114 + 2;
        v116 = *v114;
        v114 += 2;
        if (v116)
        {
          v117 = *(v115 - 1);
          v118 = v116;
          v119 = v117;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_20BC0712C(0, *(v14 + 16) + 1, 1, v14);
            v14 = result;
          }

          v121 = *(v14 + 16);
          v120 = *(v14 + 24);
          if (v121 >= v120 >> 1)
          {
            result = sub_20BC0712C((v120 > 1), v121 + 1, 1, v14);
            v14 = result;
          }

          *(v14 + 16) = v121 + 1;
          v122 = v14 + 16 * v121;
          *(v122 + 32) = v118;
          *(v122 + 40) = v119;
          goto LABEL_65;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0, &qword_20C15D0B8);
LABEL_30:
      swift_arrayDestroy();
      return v14;
    }

    v80 = *(v1 + 64);
    v81 = *(v1 + 80);
    v126 = *(v1 + 88);
    v165[0] = *(v1 + 72);
    v165[1] = v81;
    v165[2] = v79;
    v165[3] = v80;
    v82 = *(v1 + 112);
    v83 = *(v1 + 96);
    v166 = *(v1 + 104);
    v167 = v82;
    v168 = v126;
    v169 = v83;
    v84 = *(v1 + 32);
    v170 = *(v1 + 24);
    v171 = v84;
    v85 = *(v1 + 40);
    v86 = *(v1 + 48);
    v128 = v85;
    v172 = v85;
    v173 = v86;
    sub_20B7A3154(v79, v80);
    v87 = v165[0];
    v88 = v81;
    v39 = v79;
    v89 = v80;
    sub_20B7A3154(v166, v82);
    sub_20B7A3154(v126, v83);
    sub_20B7A3154(v170, v84);
    result = sub_20B7A3154(v128, v86);
    v90 = 0;
    v14 = MEMORY[0x277D84F90];
LABEL_48:
    if (v90 <= 6)
    {
      v91 = 6;
    }

    else
    {
      v91 = v90;
    }

    v92 = v91 + 1;
    v93 = &v165[2 * v90];
    while (v90 != 6)
    {
      if (v92 == ++v90)
      {
        goto LABEL_81;
      }

      v94 = v93 + 2;
      v95 = *v93;
      v93 += 2;
      if (v95)
      {
        v96 = v39;
        v97 = *(v94 - 1);
        v98 = v95;
        v99 = v97;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_20BC0712C(0, *(v14 + 16) + 1, 1, v14);
          v14 = result;
        }

        v101 = *(v14 + 16);
        v100 = *(v14 + 24);
        if (v101 >= v100 >> 1)
        {
          result = sub_20BC0712C((v100 > 1), v101 + 1, 1, v14);
          v14 = result;
        }

        *(v14 + 16) = v101 + 1;
        v102 = v14 + 16 * v101;
        *(v102 + 32) = v98;
        *(v102 + 40) = v99;
        v39 = v96;
        goto LABEL_48;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0, &qword_20C15D0B8);
    swift_arrayDestroy();

LABEL_62:
    return v14;
  }

  v2 = *(v1 + 32);
  v132[0] = *(v1 + 24);
  v132[1] = v2;
  v3 = *(v1 + 48);
  v133 = *(v1 + 40);
  v134 = v3;
  v4 = *(v1 + 64);
  v135 = *(v1 + 56);
  v136 = v4;
  v5 = *(v1 + 80);
  v137 = *(v1 + 72);
  v138 = v5;
  v6 = *(v1 + 112);
  v139 = *(v1 + 104);
  v140 = v6;
  v7 = *(v1 + 96);
  v141 = *(v1 + 88);
  v142 = v7;
  v123 = *(v1 + 144);
  v143 = *(v1 + 136);
  v144 = v123;
  v8 = *(v1 + 120);
  v9 = *(v1 + 128);
  v127 = v8;
  v145 = v8;
  v146 = v9;
  sub_20B7A3154(v132[0], v2);
  sub_20B7A3154(v133, v3);
  sub_20B7A3154(v135, v4);
  v10 = v137;
  v11 = v5;
  sub_20B7A3154(v139, v6);
  sub_20B7A3154(v141, v7);
  sub_20B7A3154(v143, v123);
  result = sub_20B7A3154(v127, v9);
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_3:
  if (v13 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 + 1;
  v17 = &v132[2 * v13];
  while (1)
  {
    if (v13 == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0, &qword_20C15D0B8);
      goto LABEL_30;
    }

    if (v16 == ++v13)
    {
      break;
    }

    v18 = v17 + 2;
    v19 = *v17;
    v17 += 2;
    if (v19)
    {
      v20 = *(v18 - 1);
      v21 = v19;
      v22 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC0712C(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_20BC0712C((v23 > 1), v24 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v24 + 1;
      v25 = v14 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

id sub_20B83A4B0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for PlaybackControl();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_20B83A544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for PlaybackControl();
  objc_msgSendSuper2(&v29, sel_setHighlighted_, v4 & 1);
  v5 = [v2 isHighlighted];
  [v2 layoutIfNeeded];
  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_transitionView];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v9 = v6[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_state];
  v6[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_state] = v5;
  if ((v9 & 1) == 0)
  {
    if (v5)
    {
      v18 = objc_opt_self();
      v19 = swift_allocObject();
      v19[2] = sub_20B83B4C0;
      v19[3] = v7;
      v19[4] = v6;
      v19[5] = sub_20B816234;
      v19[6] = v8;
      v27 = sub_20B83B4E4;
      v28 = v19;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_20B7B548C;
      v26 = &block_descriptor_32_0;
      v16 = _Block_copy(&v23);
      v20 = v3;

      v21 = v6;

      [v18 animateWithDuration:2 delay:v16 options:0 animations:0.2 completion:0.0];
      goto LABEL_6;
    }

LABEL_7:
    v22 = v3;
    goto LABEL_8;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = sub_20B83B4C0;
  v11[3] = v7;
  v11[4] = v6;
  v27 = sub_20B83B4CC;
  v28 = v11;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_20B7B548C;
  v26 = &block_descriptor_24;
  v12 = _Block_copy(&v23);
  v13 = v3;

  v14 = v6;

  [v10 animateWithDuration:2 delay:v12 options:0 animations:0.47 completion:0.0];
  _Block_release(v12);
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_20B816234;
  v15[4] = v8;
  v27 = sub_20B83B4D8;
  v28 = v15;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_20B7B548C;
  v26 = &block_descriptor_26;
  v16 = _Block_copy(&v23);
  v17 = v14;

  [v10 animateWithDuration:2 delay:v16 options:0 animations:0.2 completion:0.0];
LABEL_6:
  _Block_release(v16);
LABEL_8:
}

char *sub_20B83A8FC(char a1, char a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_layout];
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  *v10 = 0x3FE999999999999ALL;
  v10[1] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageViewWidthConstraint;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v14 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_widthConstraint;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_style] = a1 & 1;
  v15 = objc_allocWithZone(type metadata accessor for PlaybackControlTransitionView());
  *&v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_transitionView] = sub_20BAA61EC(a3 + a4);
  v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_type] = a2;
  *&v4[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_width] = a3;
  v61.receiver = v4;
  v61.super_class = type metadata accessor for PlaybackControl();
  v16 = objc_msgSendSuper2(&v61, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v11 whiteColor];
  [v16 setTintColor_];

  v60 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_transitionView;
  [v16 addSubview_];
  v18 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageView;
  [*&v16[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = v16[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_type];
  v20 = *&v16[v18];
  v21 = sub_20B83B118(v19);
  [v20 setImage_];

  [*&v16[v18] setContentMode_];
  [v16 addSubview_];
  v22 = [v16 widthAnchor];
  v23 = [v22 constraintEqualToConstant_];

  v24 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_widthConstraint;
  v25 = *&v16[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_widthConstraint];
  *&v16[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_widthConstraint] = v23;

  v26 = [*&v16[v18] widthAnchor];
  v27 = [v26 constraintEqualToConstant_];

  v28 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageViewWidthConstraint;
  v29 = *&v16[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageViewWidthConstraint];
  *&v16[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageViewWidthConstraint] = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20C151490;
  v31 = *&v16[v28];
  *(v30 + 32) = v31;
  v32 = *&v16[v18];
  v33 = v31;
  v34 = [v32 heightAnchor];
  v35 = [*&v16[v18] widthAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v30 + 40) = v36;
  if (a1)
  {
    v37 = objc_opt_self();
    sub_20B5E29D0();
    v38 = sub_20C13CC54();

    [v37 activateConstraints_];
  }

  else
  {
  }

  v39 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C151850;
  v41 = *&v16[v24];
  *(v40 + 32) = v41;
  v42 = v41;
  v43 = [v16 heightAnchor];
  v44 = [v16 widthAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v40 + 40) = v45;
  v46 = [*&v16[v18] centerXAnchor];
  v47 = [v16 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v40 + 48) = v48;
  v49 = [*&v16[v18] centerYAnchor];
  v50 = [v16 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v40 + 56) = v51;
  v52 = [*&v16[v60] centerXAnchor];
  v53 = [v16 centerXAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v40 + 64) = v54;
  v55 = [*&v16[v60] centerYAnchor];
  v56 = [v16 centerYAnchor];

  v57 = [v55 constraintEqualToAnchor_];
  *(v40 + 72) = v57;
  sub_20B5E29D0();
  v58 = sub_20C13CC54();

  [v39 activateConstraints_];

  return v16;
}

id sub_20B83AF5C(double a1, double a2)
{
  *&v2[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_width] = a1;
  [*&v2[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_widthConstraint] setConstant_];
  [*&v2[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageViewWidthConstraint] setConstant_];
  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_transitionView];
  v6 = v5 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_layout;
  *(v5 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_highlightedWidth) = (a1 + a2) * *(v5 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_layout + 16);
  *(v5 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_maxWidth) = (a1 + a2) * *(v6 + 32);
  [*(v5 + OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_widthConstraint) setConstant_];

  return [v2 invalidateIntrinsicContentSize];
}

id sub_20B83B090(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageView);
  if (a2)
  {
    CGAffineTransformMakeScale(&v7, *(a1 + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_layout), *(a1 + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_layout));
    v4 = *&v7.a;
    v3 = *&v7.c;
    v5 = *&v7.tx;
  }

  else
  {
    v3 = xmmword_20C14FEA0;
    v4 = xmmword_20C14FEB0;
    v5 = 0uLL;
  }

  *&v7.a = v4;
  *&v7.c = v3;
  *&v7.tx = v5;
  return [v2 setTransform_];
}

id sub_20B83B118(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_style);
  v4 = 38.0;
  if ((a1 & 0x80u) == 0)
  {
    v4 = 26.0;
  }

  v5 = 23.0;
  if ((a1 & 0x80u) != 0)
  {
    v6 = 3;
  }

  else
  {
    v5 = 22.0;
    v6 = 2;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = [objc_opt_self() configurationWithPointSize:7 weight:v6 scale:v7];
  sub_20BCFEF94(a1);
  v9 = v8;
  v10 = sub_20C13C914();

  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  return v11;
}

id sub_20B83B254(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaybackControl();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_20B83B32C(uint64_t a1, int a2)
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

uint64_t sub_20B83B374(uint64_t result, int a2, int a3)
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

void sub_20B83B3C0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_layout);
  v3 = [objc_opt_self() whiteColor];
  *v2 = 0x3FE999999999999ALL;
  v2[1] = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_imageViewWidthConstraint;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v5 = OBJC_IVAR____TtC9SeymourUI15PlaybackControl_widthConstraint;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

void sub_20B83B504()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765380, &unk_20C1588B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_20C134B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (v10)
    {

      sub_20B83B868();
      return;
    }

    goto LABEL_16;
  }

  if (v10 != 2)
  {
LABEL_16:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v23 + 8);
        ObjectType = swift_getObjectType();
        (*(v24 + 248))(v22, ObjectType, v24);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return;
  }

  v12 = v8[2];
  v11 = v8[3];
  v27 = *v8;

  sub_20B91F6C4(v12, v7);
  v13 = v27;
  if (v27[2] < v11)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v11 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  (*(v5 + 16))(v3, v7, v4);
  v14 = v13[2];
  if (v14 < v11)
  {
LABEL_27:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v13;
  if (!isUniquelyReferenced_nonNull_native || v14 >= v13[3] >> 1)
  {
    v13 = sub_20BC075C8(isUniquelyReferenced_nonNull_native, v14 + 1, 1, v13);
    v27 = v13;
  }

  sub_20B7A0A38(v11, v11, 1, v3);
  sub_20B83E4B0(v13, v9 & 1 | 0x4000000000000000, 0, 0);

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = v16 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      v20 = swift_getObjectType();
      (*(v19 + 392))(v17, v11, 0, v20, v19);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  (*(v5 + 8))(v7, v4);
}

void sub_20B83B868()
{
  v1 = type metadata accessor for PageAlertAction(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
  if (v9 >> 62 == 1)
  {
    if (v9)
    {
      v10 = (v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer);
      v11 = v6;
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer + 24));
      v12 = sub_20C138D34();
      v14 = v13;
      sub_20C132ED4();
      v15 = &v8[v11[6]];
      *v15 = v12;
      v15[1] = v14;
      v8[v11[5]] = 2;
      v16 = &v8[v11[7]];
      *v16 = 0;
      *(v16 + 1) = 0;
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v17 = sub_20C138D34();
      v19 = v18;
      v20 = swift_allocObject();
      swift_weakInit();
      sub_20C132ED4();
      v21 = &v4[v11[6]];
      *v21 = v17;
      v21[1] = v19;
      v4[v11[5]] = 1;
      v22 = &v4[v11[7]];
      *v22 = sub_20B840864;
      v22[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
      v23 = *(v2 + 72);
      v24 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20C14F320;
      v26 = v25 + v24;
      sub_20B84045C(v8, v26, type metadata accessor for PageAlertAction);
      sub_20B84045C(v4, v26 + v23, type metadata accessor for PageAlertAction);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v27 = sub_20C138D34();
      v29 = v28;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        type metadata accessor for DefaultPageAlertPresenter();
        v32 = swift_allocObject();
        *(v32 + 24) = 0;
        swift_unknownObjectWeakInit();
        v33 = MEMORY[0x277D84F90];
        *(v32 + 32) = v25;
        *(v32 + 40) = v33;
        *(v32 + 48) = v27;
        *(v32 + 56) = v29;
        *(v32 + 64) = 0;
        *(v32 + 72) = 0;
        *(v32 + 80) = 1;
        *(v32 + 88) = 0;
        v34 = v31 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v34 + 8);
          ObjectType = swift_getObjectType();
          (*(v35 + 224))(v31, v32, &off_2822DD358, ObjectType, v35);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      sub_20B840804(v4, type metadata accessor for PageAlertAction);
      sub_20B840804(v8, type metadata accessor for PageAlertAction);
    }

    else
    {

      sub_20B83E4B0(v37, 0, 0, 0);

      v38 = swift_unknownObjectWeakLoadStrong();
      if (v38)
      {
        v39 = v38;
        v40 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v41 = *(v40 + 8);
          v42 = swift_getObjectType();
          (*(v41 + 392))(v39, 1, 2, v42, v41);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

double sub_20B83BD34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20B83E4B0(v3, 0, 0, 0);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 392))(v5, 1, 2, ObjectType, v7);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_20B83BE3C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x28223BE20](v3);
  v105 = v4;
  v106 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v104 = &v95 - v6;
  v7 = type metadata accessor for ShelfIndexedLazyLockup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v103 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v108 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v95 - v13;
  v107 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v95 - v17;
  v19 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C134B14();
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8) >> 62 == 1)
  {
    v96 = v14;
    v98 = v24;
    v99 = v23;
    v100 = v18;
    v101 = v10;
    v102 = v9;
    v28 = *v27;
    *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lastEditOperation) = 0;
    v112 = v28;

    v29 = v1;
    v95 = a1;
    sub_20B91F6C4(a1, v26);
    v30 = *MEMORY[0x277D52B38];
    v31 = sub_20C136664();
    v32 = *(v31 - 8);
    (*(v32 + 104))(v21, v30, v31);
    (*(v32 + 56))(v21, 0, 1, v31);
    v33 = v19[5];
    v34 = *MEMORY[0x277D51430];
    v35 = sub_20C134F24();
    (*(*(v35 - 8) + 104))(&v21[v33], v34, v35);
    v36 = v19[6];
    v37 = sub_20C132C14();
    (*(*(v37 - 8) + 56))(&v21[v36], 1, 1, v37);
    v97 = v26;
    v38 = sub_20C134AB4();
    v40 = v39;
    v41 = v29;
    v42 = v19[8];
    v43 = *MEMORY[0x277D52408];
    v44 = sub_20C135ED4();
    v45 = *(v44 - 8);
    (*(v45 + 104))(&v21[v42], v43, v44);
    (*(v45 + 56))(&v21[v42], 0, 1, v44);
    v46 = v19[10];
    v47 = *MEMORY[0x277D51768];
    v48 = sub_20C1352E4();
    (*(*(v48 - 8) + 104))(&v21[v46], v47, v48);
    v49 = v19[11];
    v50 = sub_20C136E94();
    v51 = &v21[v49];
    v52 = v41;
    (*(*(v50 - 8) + 56))(v51, 1, 1, v50);
    v53 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v54 = &v21[v19[7]];
    *v54 = v38;
    v54[1] = v40;
    v55 = &v21[v19[9]];
    *v55 = 0;
    *(v55 + 1) = 0;
    *&v21[v19[12]] = v53;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FD9C(v41, v21, Strong);
      swift_unknownObjectRelease();
    }

    v57 = v112;
    v58 = *v27;
    v59 = v27[1];
    *v27 = v112;
    v27[1] = 0x4000000000000001;
    v27[2] = 0;
    v27[3] = 0;

    sub_20B8403F8(v58, v59);
    v60 = swift_unknownObjectWeakLoadStrong();
    v61 = v95;
    if (v60)
    {
      v62 = v60;
      v63 = v60 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v64 = *(v63 + 8);
        ObjectType = swift_getObjectType();
        (*(v64 + 392))(v62, v57, 1, ObjectType, v64);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v66 = *(v52 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lazyLockupFetcher);
    swift_beginAccess();
    v111 = v66[21];

    v67 = v103;
    sub_20B91F808(v61, v103);
    sub_20B840804(v67, type metadata accessor for ShelfIndexedLazyLockup);
    v103 = v52;
    v68 = v111;
    v69 = v66[11];
    v70 = v66[12];
    __swift_project_boxed_opaque_existential_1(v66 + 8, v69);
    v71 = v104;
    (*(v70 + 8))(v69, v70);
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    *(v72 + 24) = v66;
    v74 = v109;
    v73 = v110;
    v75 = v106;
    (*(v109 + 16))(v106, v71, v110);
    v76 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v77 = (v105 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    (*(v74 + 32))(v78 + v76, v75, v73);
    v79 = (v78 + v77);
    *v79 = sub_20B84086C;
    v79[1] = v72;

    v80 = v96;
    sub_20C137C94();
    (*(v74 + 8))(v71, v73);
    v81 = swift_allocObject();
    v82 = v103;
    *(v81 + 16) = sub_20B840870;
    *(v81 + 24) = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_20B66A8BC;
    *(v83 + 24) = v81;
    v85 = v101;
    v84 = v102;
    v86 = v108;
    (*(v101 + 16))(v108, v80, v102);
    v87 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v88 = (v107 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    (*(v85 + 32))(v89 + v87, v86, v84);
    v90 = (v89 + v88);
    *v90 = sub_20B66A8B4;
    v90[1] = v83;

    v91 = v100;
    sub_20C137C94();
    v92 = *(v85 + 8);
    v92(v80, v84);
    v93 = sub_20C137CB4();
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    *(v94 + 24) = 0;
    v93(sub_20B5DF6DC, v94);

    v92(v91, v84);
    sub_20B840804(v21, type metadata accessor for ShelfMetricAction);
    (*(v98 + 8))(v97, v99);
  }
}

void sub_20B83C828(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v71 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765380, &unk_20C1588B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v71 - v15;
  v17 = sub_20C134B14();
  MEMORY[0x28223BE20](v17);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
  if (v23 >> 62 != 2)
  {
    return;
  }

  v25 = v22[2];
  v24 = v22[3];
  v26 = *v22;
  if ((a1 & 1) == 0)
  {
    v27 = v25 - 1;
    if (!__OFSUB__(v25, 1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v27 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_7:
  if ((v27 & 0x8000000000000000) != 0 || v27 >= *(v26 + 16))
  {
    return;
  }

  v72 = v24;
  v73 = v1;
  v74 = v19;
  v75 = v18;
  v85 = v26;

  sub_20B91F6C4(v25, v21);
  v28 = v21;
  v29 = v85;
  if (v85[2] < v27)
  {
    goto LABEL_24;
  }

  v30 = *(v74 + 16);
  v71 = v28;
  v30(v16);
  v31 = v29[2];
  if (v31 < v27)
  {
LABEL_25:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = v29;
  if (!isUniquelyReferenced_nonNull_native || v31 >= v29[3] >> 1)
  {
    v29 = sub_20BC075C8(isUniquelyReferenced_nonNull_native, v31 + 1, 1, v29);
    v85 = v29;
  }

  sub_20B7A0A38(v27, v27, 1, v16);
  v33 = *v22;
  v34 = v22[1];
  *v22 = v29;
  v22[1] = v23 & 0x8000000000000001;
  v35 = v72;
  v22[2] = v27;
  v22[3] = v35;
  sub_20B8403F8(v33, v34);
  v36 = *(v73 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lazyLockupFetcher);
  swift_beginAccess();
  v84 = v36[21];

  sub_20BE7218C(v25, v27);
  v37 = v84;
  v38 = v36[11];
  v39 = v36[12];
  __swift_project_boxed_opaque_existential_1(v36 + 8, v38);
  v40 = v82;
  (*(v39 + 8))(v38, v39);
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = v36;
  v42 = v76;
  v43 = v40;
  v44 = v77;
  (*(v76 + 16))(v5, v43, v77);
  v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v46 = (v4 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v42 + 32))(v47 + v45, v5, v44);
  v48 = (v47 + v46);
  *v48 = sub_20B8406F4;
  v48[1] = v41;

  v49 = v83;
  sub_20C137C94();
  (*(v42 + 8))(v82, v44);
  v50 = swift_allocObject();
  v51 = v73;
  *(v50 + 16) = sub_20B840870;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_20B66A8BC;
  *(v52 + 24) = v50;
  v54 = v80;
  v53 = v81;
  v55 = v78;
  (*(v80 + 16))(v78, v49, v81);
  v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v57 = swift_allocObject();
  (*(v54 + 32))(v57 + v56, v55, v53);
  v58 = (v57 + ((v9 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v58 = sub_20B66A8B4;
  v58[1] = v52;

  v59 = v79;
  sub_20C137C94();
  v60 = *(v54 + 8);
  v60(v83, v53);
  v61 = sub_20C137CB4();
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v61(sub_20B5DF6DC, v62);

  v60(v59, v53);
  Strong = swift_unknownObjectWeakLoadStrong();
  v64 = v71;
  if (Strong)
  {
    v65 = Strong;
    v66 = v22[1];
    if (v66 >> 62 == 3)
    {
      v67 = MEMORY[0x277D84F90];
    }

    else
    {
      v67 = *v22;
      sub_20B840448(*v22, v66);
    }

    v68 = v65 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v69 = *(v68 + 8);
      ObjectType = swift_getObjectType();
      (*(v69 + 392))(v65, v67, 1, ObjectType, v69);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  (*(v74 + 8))(v64, v75);
}

void sub_20B83CFBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v1 - 8);
  v64 = v51 - v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766758, &unk_20C15D280);
  MEMORY[0x28223BE20](v63);
  v62 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v51 - v8;
  v67 = sub_20C1351C4();
  v10 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v51 - v13;
  v15 = (v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
  v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v53 = v9;
    v54 = v0;
    v17 = *v15;
    v18 = v15[2];
    v19 = v15[3];
    v20 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_syncedItems);
    v21 = *(v20 + 16);
    v22 = MEMORY[0x277D84F90];
    v65 = *v15;
    v55 = v6;
    v56 = v7;
    v51[2] = v18;
    v52 = v16;
    v51[1] = v19;
    if (v21)
    {
      sub_20B840448(v17, v16);
      v69 = v22;

      sub_20BB5E19C(0, v21, 0);
      v23 = v69;
      v60 = sub_20C134B14();
      v24 = *(v60 - 8);
      v25 = *(v24 + 16);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v59 = v20;
      v27 = v20 + v26;
      v28 = *(v24 + 72);
      do
      {
        v25(v14, v27, v60);
        swift_storeEnumTagMultiPayload();
        v69 = v23;
        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_20BB5E19C((v30 > 1), v31 + 1, 1);
          v23 = v69;
        }

        *(v23 + 16) = v31 + 1;
        sub_20B840690(v14, v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, v29);
        v27 += v28;
        --v21;
      }

      while (v21);

      v7 = v56;
      v17 = v65;
      v22 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_20B840448(v17, v16);
      v23 = MEMORY[0x277D84F90];
    }

    v69 = v23;
    v32 = *(v17 + 16);
    if (v32)
    {
      v68 = v22;
      sub_20BB5E19C(0, v32, 0);
      v33 = v68;
      v60 = *(v17 + 16);
      v34 = sub_20C134B14();
      v35 = 0;
      v36 = *(v34 - 8);
      v59 = v17 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v57 = v36 + 32;
      v58 = v36 + 16;
      v37 = v62;
      while (v60 != v35)
      {
        if (v35 >= *(v17 + 16))
        {
          goto LABEL_21;
        }

        v38 = v63;
        v39 = *(v63 + 48);
        v40 = v61;
        (*(v36 + 16))(&v61[v39], v59 + *(v36 + 72) * v35, v34);
        *v37 = v35;
        (*(v36 + 32))(&v37[*(v38 + 48)], &v40[v39], v34);
        v41 = sub_20C132E94();
        v42 = v64;
        (*(*(v41 - 8) + 56))(v64, 1, 1, v41);
        sub_20C134AE4();
        v43 = v66;
        sub_20B520158(v42, &qword_27C762AC0, &qword_20C14FC90);
        swift_storeEnumTagMultiPayload();
        sub_20B520158(v37, &qword_27C766758, &unk_20C15D280);
        v68 = v33;
        v46 = *(v33 + 16);
        v45 = *(v33 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_20BB5E19C((v45 > 1), v46 + 1, 1);
          v43 = v66;
          v33 = v68;
        }

        ++v35;
        *(v33 + 16) = v46 + 1;
        sub_20B840690(v43, v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v46, v44);
        v17 = v65;
        if (v32 == v35)
        {
          sub_20B8403F8(v65, v52);
          v7 = v56;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      sub_20B8403F8(v17, v52);
      v33 = MEMORY[0x277D84F90];
LABEL_18:
      sub_20B8DA0BC(v33);
      __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_upNextQueueClient), *(v54 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_upNextQueueClient + 24));
      v47 = v53;
      sub_20C139734();

      v48 = v55;
      v49 = sub_20C137CB4();
      v50 = swift_allocObject();
      *(v50 + 16) = 0;
      *(v50 + 24) = 0;
      v49(sub_20B5DF6DC, v50);

      (*(v7 + 8))(v47, v48);
    }
  }
}

uint64_t sub_20B83D6A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  MEMORY[0x28223BE20](v7);
  v37 = &v30 - v8;
  MEMORY[0x28223BE20](v9);
  v35 = &v30 - v10;
  v36 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_upNextQueueClient), *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_upNextQueueClient + 24));
  sub_20C139724();
  v11 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_contentAvailabilityFilter), *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_contentAvailabilityFilter + 24));
  v39[3] = type metadata accessor for ContentAvailabilityFilter();
  v39[4] = &off_2822C8E88;
  v39[0] = v11;
  sub_20B51CC64(v39, v38);
  v12 = swift_allocObject();
  sub_20B51C710(v38, v12 + 16);

  __swift_destroy_boxed_opaque_existential_1(v39);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20B8404C4;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B8404CC;
  *(v14 + 24) = v13;
  v34 = *(v2 + 16);
  v15 = v6;
  v34(&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v1);
  v16 = *(v2 + 80);
  v33 = (v16 + 16) & ~v16;
  v17 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v32 = *(v2 + 32);
  v32(v18 + ((v16 + 16) & ~v16), v31, v1);
  v19 = (v18 + v17);
  *v19 = sub_20B8404D4;
  v19[1] = v14;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750, &unk_20C15EF50);
  v20 = v37;
  sub_20C137C94();
  v21 = *(v2 + 8);
  v21(v15, v1);
  sub_20B5E2E18();
  v22 = sub_20C13D374();
  v34(v15, v20, v1);
  v23 = swift_allocObject();
  v32(v23 + v33, v15, v1);
  *(v23 + v17) = v22;
  v24 = v35;
  sub_20C137C94();
  v21(v37, v1);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v1;
  v27 = sub_20C137CB4();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20B8405BC;
  *(v28 + 24) = v25;

  v27(sub_20B718F14, v28);

  return (v21)(v24, v26);
}

uint64_t sub_20B83DB34(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20B51CC64(a1, v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_20B51C710(v7, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  *(v5 + 40) = 25;
  *(v5 + 48) = &unk_20C15D270;
  *(v5 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750, &unk_20C15EF50);
  return sub_20C137C94();
}

double sub_20B83DC3C(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (a1[1])
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    sub_20B83DD48(v2);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return result;
    }

    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_syncedItems) = v2;

    v6 = *(v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
    if (!(v6 >> 62) || v6 >> 62 == 3 && (v6 == 0xC000000000000000 ? (v7 = (*(v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 16) | *(v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 24) | *(v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState)) == 0) : (v7 = 0), v7))
    {
      sub_20B83E4B0(v2, 0, 0, 0);
    }
  }

  return result;
}

void sub_20B83DD48(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v61 - v5;
  v6 = type metadata accessor for PageAlertAction(0);
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1356F4();
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v61 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  v21 = a1;
  v22 = sub_20C13BB74();
  v23 = sub_20C13D1D4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v62 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v63 = v9;
    v27 = v26;
    *v25 = 138412290;
    v28 = a1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_20B517000, v22, v23, "List Shelf: encountered error: %@", v25, 0xCu);
    sub_20B520158(v27, &unk_27C762E30, &unk_20C150580);
    v30 = v27;
    v9 = v63;
    MEMORY[0x20F2F6A40](v30, -1, -1);
    v31 = v25;
    v2 = v62;
    MEMORY[0x20F2F6A40](v31, -1, -1);
  }

  (*(v18 + 8))(v20, v17);
  v72 = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  if (swift_dynamicCast())
  {
    v34 = v65;
    v33 = v66;
    (*(v66 + 32))(v65, v16, v10);
    v35 = v64;
    (*(v33 + 104))(v64, *MEMORY[0x277D51B88], v10);
    v36 = sub_20C1356E4();
    v37 = *(v33 + 8);
    v37(v35, v10);
    if (v36)
    {
      v38 = sub_20B83E4B0(0, 0xC000000000000000, 0, 0);
      (v37)(v34, v10, v38);

      return;
    }

    v37(v34, v10);
  }

  v39 = (v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer + 24));
  v66 = sub_20C138D34();
  v41 = v40;
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v42 = sub_20C138D34();
  v44 = v43;
  sub_20C132ED4();
  v45 = v67;
  v46 = &v9[*(v67 + 24)];
  *v46 = v42;
  v46[1] = v44;
  v9[*(v45 + 20)] = 0;
  v47 = &v9[*(v45 + 28)];
  *v47 = 0;
  *(v47 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
  v48 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_20C14F980;
  sub_20B84045C(v9, v49 + v48, type metadata accessor for PageAlertAction);
  v50 = MEMORY[0x277D84F90];
  v51 = v69;
  sub_20BD14244(MEMORY[0x277D84F90], v69);
  v52 = v71;
  v53 = sub_20C137CB4();
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  v53(sub_20B5DF6DC, v54);

  (*(v70 + 8))(v51, v52);
  sub_20B83EBD0(1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    type metadata accessor for DefaultPageAlertPresenter();
    v57 = swift_allocObject();
    *(v57 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v57 + 32) = v49;
    *(v57 + 40) = v50;
    *(v57 + 48) = v66;
    *(v57 + 56) = v41;
    *(v57 + 64) = 0;
    *(v57 + 72) = 0;
    *(v57 + 80) = 1;
    *(v57 + 88) = 0;
    v58 = v56 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v59 = *(v58 + 8);
      ObjectType = swift_getObjectType();
      (*(v59 + 224))(v56, v57, &off_2822DD358, ObjectType, v59);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  sub_20B840804(v9, type metadata accessor for PageAlertAction);
}

double sub_20B83E4B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = (v4 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
  v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
  v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  sub_20B840448(a1, a2);
  sub_20B8403F8(v8, v9);
  sub_20B83E60C(*(v4 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_shouldAnimateStateChanges));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2 >> 62 == 3)
    {
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_20B840448(v6, a2);
    }

    v13 = v12 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 392))(v12, v6, 1, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B83E60C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = (v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
  if (v14 >> 62 == 3)
  {
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = *v13;
    sub_20B840448(*v13, v14);
  }

  sub_20B83E924(v15, v9);

  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = a1 & 1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B84041C;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20B66A8BC;
  *(v18 + 24) = v17;
  (*(v4 + 16))(v6, v9, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v4 + 32))(v21 + v19, v6, v3);
  v22 = (v21 + v20);
  *v22 = sub_20B66A8B4;
  v22[1] = v18;

  sub_20C137C94();
  v23 = *(v4 + 8);
  v23(v9, v3);
  v24 = sub_20C137CB4();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v24(sub_20B5DF6DC, v25);

  return (v23)(v12, v3);
}

double sub_20B83E924@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_20C134B14();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C136594();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v23 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = v2;
    v22 = a2;
    v30 = MEMORY[0x277D84F90];
    sub_20BB5D604(0, v10, 0);
    v11 = v30;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v26 = *(v12 + 56);
    v27 = v13;
    v24 = v8 + 32;
    v25 = (v12 - 8);
    v15 = v23;
    do
    {
      v16 = v29;
      v17 = v12;
      v27(v7, v14, v29);
      sub_20C134AB4();
      sub_20C136554();
      (*v25)(v7, v16);
      v30 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_20BB5D604((v18 > 1), v19 + 1, 1);
        v15 = v23;
        v11 = v30;
      }

      *(v11 + 16) = v19 + 1;
      (*(v8 + 32))(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v15, v28);
      v14 += v26;
      --v10;
      v12 = v17;
    }

    while (v10);
    a2 = v22;
  }

  sub_20BD14244(v11, a2);

  return result;
}

void sub_20B83EBD0(char a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lazyLockupFetcher);
  v9 = *(sub_20BD12D8C() + 16);

  if (v9)
  {

    sub_20BD167F4(v8, v2);
    v11 = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_20C14F980;
    v12 = swift_allocObject();
    v43 = v4;
    v44 = v5;
    v13 = v12;
    v14 = v7;
    v15 = (v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer + 24));
    *(v13 + 16) = sub_20C138D34();
    *(v13 + 24) = v16;
    v17 = v15[3];
    v18 = v15;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v18, v17);
    *(v13 + 32) = sub_20C138D34();
    *(v13 + 40) = v19;
    v20 = v13 | 0x7000000000000007;
    v4 = v43;
    v5 = v44;
    *(v11 + 32) = v20;
  }

  v45 = 0uLL;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = 0;
  *&v47 = 0;
  WORD4(v47) = 128;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  LOBYTE(v51) = 0;
  *(&v51 + 1) = v11;
  *&v52[0] = MEMORY[0x277D84F90];
  *(v52 + 8) = 0u;
  *(&v52[1] + 8) = 0u;
  *(&v52[2] + 1) = 0;
  v53 = 2;
  nullsub_1();
  v21 = v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row;
  v22 = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 144);
  v54[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 128);
  v54[9] = v22;
  v55 = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 160);
  v23 = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 80);
  v54[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 64);
  v54[5] = v23;
  v24 = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 112);
  v54[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 96);
  v54[7] = v24;
  v25 = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 16);
  v54[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row);
  v54[1] = v25;
  v26 = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 48);
  v54[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 32);
  v54[3] = v26;
  v27 = v52[2];
  *(v21 + 128) = v52[1];
  *(v21 + 144) = v27;
  *(v21 + 160) = v53;
  v28 = v50;
  *(v21 + 64) = v49;
  *(v21 + 80) = v28;
  v29 = v52[0];
  *(v21 + 96) = v51;
  *(v21 + 112) = v29;
  v30 = v46;
  *v21 = v45;
  *(v21 + 16) = v30;
  v31 = v48;
  *(v21 + 32) = v47;
  *(v21 + 48) = v31;
  sub_20B520158(v54, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v34 = v7;
      v35 = v4;
      sub_20B61D9C8(v2, Strong);
      if (v37)
      {
        v39 = v37;
        v40 = v38;
        v44 = v36;
        sub_20B5E2E18();
        *v34 = sub_20C13D374();
        (*(v5 + 104))(v34, *MEMORY[0x277D85200], v35);
        v41 = sub_20C13C584();
        (*(v5 + 8))(v34, v35);
        if ((v41 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B620E8C(v44, v39, v40, v2, a1 & 1, v33);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20B83EFA8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  sub_20B8403F8(*(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState), *(v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_contentAvailabilityFilter));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_upNextQueueClient));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_mediaTagStringBuilder));
  return v0;
}

uint64_t sub_20B83F104()
{
  sub_20B83EFA8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVUpNextQueueGalleryShelf(uint64_t a1)
{
  result = qword_27C766740;
  if (!qword_27C766740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B83F1B0(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_20B83F2C4()
{
  sub_20B83D6A4();
  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20B83F3BC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B83D6A4();
  }

  return result;
}

uint64_t sub_20B83F414(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20BD14728(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B84040C;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B5DF3B8;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

void sub_20B83F6D8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0, &unk_20C14FCE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_20C134014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B84045C(a2, v16, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 10:
      v25 = *v16;
      v26 = *(v16 + 1);
      v27 = *(v16 + 2);
      v28 = v16[24];
      sub_20B83FA4C(*v16, v26, v27, v28, a3);
      sub_20B8403A8(v25, v26, v27, v28);
      break;
    case 12:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        v22 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v22 + 8);
          ObjectType = swift_getObjectType();
          (*(v23 + 248))(v21, ObjectType, v23);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      break;
    case 19:
      v18 = (a1 >> 57) & 0x78 | a1 & 7;
      if (v18 == 30)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0, &unk_20C151840);
        v19 = swift_projectBox() + *(v29 + 48);
      }

      else
      {
        if (v18 != 32)
        {
          return;
        }

        v19 = swift_projectBox();
      }

      (*(v11 + 16))(v13, v19, v10);
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = type metadata accessor for ShelfMetricAction(0);
        (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
        sub_20B5D7844(v3, v13, v9, v31);
        swift_unknownObjectRelease();
        sub_20B520158(v9, &unk_27C7622D0, &unk_20C14FCE0);
      }

      (*(v11 + 8))(v13, v10);
      break;
    default:
      sub_20B840804(v16, type metadata accessor for ShelfItemAction);
      break;
  }
}

double sub_20B83FA4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  v6 = (a4 >> 5) & 3;
  if (v6 == 2)
  {
    v9 = a1 & 1;

    sub_20B83C828(v9);
  }

  else
  {
    if (v6 != 3)
    {
      return result;
    }

    v7 = a3 | a2;
    if (a4 == 96 && a1 == 2 && !v7)
    {

      sub_20B83BE3C(a5);
    }

    else
    {
      if (a4 == 96 && a1 == 3 && !v7)
      {
        v10 = *(v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
        if (v10 >> 62 != 1)
        {
          return result;
        }

        v11 = *(v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
        *(v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lastEditOperation) = 1;

        sub_20B83E4B0(v13, v10 & 1 | 0x8000000000000000, a5, a5);
        sub_20B8403F8(v11, v10);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          return result;
        }

        v15 = Strong;
        v16 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v17 = *(v16 + 8);
          ObjectType = swift_getObjectType();
          (*(v17 + 392))(v15, 2, 2, ObjectType, v17);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (a4 != 96)
        {
          return result;
        }

        if (a1 != 4)
        {
          return result;
        }

        if (v7)
        {
          return result;
        }

        v19 = (v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
        v20 = *(v5 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
        if (v20 >> 62 != 2)
        {
          return result;
        }

        v21 = v19[2];
        v22 = *v19;
        v23 = (v21 != v19[3]) | (v20 & 1) | 0x4000000000000000;

        sub_20B83E4B0(v24, v23, 0, 0);
        sub_20B8403F8(v22, v20);
        v25 = swift_unknownObjectWeakLoadStrong();
        if (!v25)
        {
          return result;
        }

        v26 = v25;
        v27 = v25 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = *(v27 + 8);
          v29 = swift_getObjectType();
          (*(v28 + 392))(v26, v21, 0, v29, v28);
          swift_unknownObjectRelease();
        }
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B83FD04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B83FD7C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

uint64_t sub_20B83FE3C(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v2 = v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row;
  sub_20B5D8060(v13);
  v3 = v13[5];
  *(v2 + 64) = v13[4];
  *(v2 + 80) = v3;
  *(v2 + 160) = v14;
  v4 = v13[9];
  *(v2 + 128) = v13[8];
  *(v2 + 144) = v4;
  v5 = v13[7];
  *(v2 + 96) = v13[6];
  *(v2 + 112) = v5;
  v6 = v13[1];
  *v2 = v13[0];
  *(v2 + 16) = v6;
  v7 = v13[3];
  *(v2 + 32) = v13[2];
  *(v2 + 48) = v7;
  v8 = v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState;
  *v8 = xmmword_20C15D110;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_configuration) = 20;
  *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_shouldAnimateStateChanges) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_syncedItems) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lastEditOperation) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133AA4();
  sub_20B51C710(v12, v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_contentAvailabilityFilter);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_eventHub) = v12[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v12, v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(v12, v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_upNextQueueClient);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for TVShelfIndexedLazyLockupFetcher();
  v10 = swift_allocObject();
  *(v10 + 152) = MEMORY[0x277D84FA0];

  *(v10 + 160) = sub_20B6B0C04(v9);
  *(v10 + 168) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();

  *(v10 + 16) = 20;
  *(v10 + 104) = 37;
  *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lazyLockupFetcher) = v10;
  sub_20C133AA4();
  sub_20B51C710(v12, v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_mediaTagStringBuilder);
  *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_shouldAnimateStateChanges) = 1;
  return v1;
}

uint64_t sub_20B840198(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 112);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 144);
  v57 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 128);
  v58 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 80);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 48);
  v53 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 64);
  v54 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 80);
  v55 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 96);
  v56 = v4;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 16);
  v50[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row);
  v50[1] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 48);
  v51 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 32);
  v52 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 48);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 80);
  v47 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 64);
  v48 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 16);
  v43 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row);
  v44 = v14;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 32);
  v46 = v12;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 144);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 112);
  v40 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 128);
  v41 = v15;
  v39 = v16;
  v60[0] = v50[0];
  v60[1] = v10;
  v60[4] = v53;
  v60[5] = v9;
  v59 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 160);
  v49 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_row + 96);
  v17 = *(&v55 + 1);
  v42 = *(v3 + 160);
  v18 = *(v3 + 96);
  v60[2] = v51;
  v60[3] = v8;
  v19 = *(v3 + 144);
  v66 = *(v3 + 160);
  v64 = v57;
  v65 = v19;
  v63 = v5;
  v61 = v18;
  v62 = *(&v55 + 1);
  if (sub_20B5EAF8C(v60) == 1)
  {
    v31 = v47;
    v32 = v48;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v33 = v49;
    v34 = *(&v55 + 1);
    v38 = v42;
    v36 = v40;
    v37 = v41;
    v35 = v39;
    sub_20B5EAED4(v50, v26);
    sub_20B520158(&v27, &qword_27C762340, &unk_20C150290);
LABEL_6:
    v24 = 1;
    return v24 & 1;
  }

  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v33 = v49;
  v34 = *(&v55 + 1);
  v38 = v42;
  v36 = v40;
  v37 = v41;
  v35 = v39;
  sub_20B5EAED4(v50, v26);

  sub_20B520158(&v27, &qword_27C762340, &unk_20C150290);
  v20 = *(v17 + 16);
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = *(v17 + 8 * v20 + 24);

  sub_20B969AA8(a1, v21);
  v23 = v22;

  v24 = v23 ^ 1;
  return v24 & 1;
}

void sub_20B8403A8(void *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = (a4 >> 5) & 3;
  if (v5 != 1)
  {
    if (v5)
    {
      return;
    }

    a1 = a3;
  }
}

double sub_20B8403F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 3)
  {
  }

  return result;
}

double sub_20B840448(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 3)
  {
  }

  return result;
}

uint64_t sub_20B84045C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_20B840504(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BF909CC(a1, a2, v2 + v6, v7);
}

uint64_t sub_20B8405C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52A9D4;

  return sub_20C0AE864(a1, v4, v1 + 24);
}

uint64_t sub_20B840690(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_20C1351C4();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_97Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B84073C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B840804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_20B84087C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_indexPath;
  v10 = sub_20C133244();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_hairline;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [objc_opt_self() separatorColor];
  [v12 setBackgroundColor_];

  *&v4[v11] = v12;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for ShelfSeparatorView(0);
  v14 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_hairline;
  v16 = *&v14[OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_hairline];
  v17 = v14;
  [v17 addSubview_];
  v18 = [objc_opt_self() mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C14FE90;
  v23 = [*&v14[v15] leadingAnchor];
  v24 = [v17 leadingAnchor];

  v25 = [v23 constraintEqualToAnchor_];
  *(v22 + 32) = v25;
  v26 = [*&v14[v15] trailingAnchor];
  v27 = [v17 trailingAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v22 + 40) = v28;
  v29 = [*&v14[v15] bottomAnchor];
  v30 = [v17 bottomAnchor];

  v31 = [v29 constraintEqualToAnchor_];
  *(v22 + 48) = v31;
  v32 = [*&v14[v15] heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v22 + 56) = v33;
  sub_20B5E29D0();
  v34 = sub_20C13CC54();

  [v21 activateConstraints_];

  return v17;
}

id sub_20B840DD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfSeparatorView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ShelfSeparatorView(uint64_t a1)
{
  result = qword_27C766768;
  if (!qword_27C766768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B840EC0(uint64_t a1)
{
  sub_20B595A38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B840F68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

double sub_20B840FC0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void sub_20B841044()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_indexPath;
  v2 = sub_20C133244();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC9SeymourUI18ShelfSeparatorView_hairline;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_opt_self() separatorColor];
  [v4 setBackgroundColor_];

  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B84117C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension_];
  v4 = [v2 absoluteDimension_];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = v5;
  v7 = sub_20C13C914();
  v8 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:v7 alignment:4];

  if (sub_20C1380F4())
  {
    [objc_msgSend(a1 container)];
    v10 = v9;
    swift_unknownObjectRelease();
    v11 = v13;
    sub_20B755B8C(v13, v10);
    sub_20B5F320C(v13);
  }

  else
  {
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    v11 = &qword_27C799F50;
  }

  [v8 setContentInsets_];

  return v8;
}

id sub_20B841354(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension_];
  v11 = [v9 absoluteDimension_];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  if (a4)
  {
    v13 = [objc_opt_self() layoutAnchorWithEdges:6 fractionalOffset:{0.0, 1.0}];
  }

  else
  {
    v14 = *&a3;
    v15 = [v12 heightDimension];
    [v15 dimension];
    v17 = v16;

    v13 = [objc_opt_self() layoutAnchorWithEdges:6 absoluteOffset:{*&a2, v17 + v14}];
  }

  v18 = v13;
  sub_20BE51DD0(a1, v4, &off_2822AC830);
  v19 = sub_20C13C914();

  v20 = [objc_opt_self() supplementaryItemWithLayoutSize:v12 elementKind:v19 containerAnchor:v18];

  return v20;
}

uint64_t sub_20B84152C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v64 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v50 - v9;
  v63 = sub_20C133E24();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20C135914();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20C135524();
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v13 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_bodyFocusProperty;
  v14 = sub_20C135C84();
  v55 = *(v14 - 8);
  v56 = v14 - 8;
  v54 = v55;
  v15 = *(v55 + 56);
  v15(v3 + v13, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_durationProperty, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_equipmentProperty, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_genreProperty, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_modalityProperty, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_skillLevelProperty, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_themeProperty, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_tipCategoryProperty, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_trainerProperty, 1, 1, v14);
  v16 = (v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootFilterName);
  *v16 = 0;
  v16[1] = 0;
  v17 = v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row;
  sub_20B5D8060(v70);
  v18 = v70[9];
  *(v17 + 128) = v70[8];
  *(v17 + 144) = v18;
  *(v17 + 160) = v71;
  v19 = v70[5];
  *(v17 + 64) = v70[4];
  *(v17 + 80) = v19;
  v20 = v70[7];
  *(v17 + 96) = v70[6];
  *(v17 + 112) = v20;
  v21 = v70[1];
  *v17 = v70[0];
  *(v17 + 16) = v21;
  v22 = v70[3];
  *(v17 + 32) = v70[2];
  *(v17 + 48) = v22;
  *(v3 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_displayState) = 0;
  v23 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootModality;
  v24 = sub_20C134734();
  (*(*(v24 - 8) + 56))(v4 + v23, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B52E424(&v69, v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v25 = *(&v69 + 1);
  v26 = (v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_eventHub);
  *v26 = v69;
  v26[1] = v25;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_subscriptionToken) = sub_20C13A914();
  v27 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot;
  v52 = sub_20C134EC4();
  v53 = *(v52 - 8);
  v28 = *(v53 + 16);
  v51 = a2;
  v28(v4 + v27, a2, v52);
  if (sub_20C134EB4())
  {
    v29 = 34;
  }

  else
  {
    v29 = 39;
  }

  type metadata accessor for ShelfLazyLockupFetcher();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D84F90];
  *(v30 + 152) = MEMORY[0x277D84F90];

  v32 = sub_20B6B0C04(v31);
  v33 = MEMORY[0x277D84FA0];
  *(v30 + 160) = v32;
  *(v30 + 168) = v33;
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();

  *(v30 + 136) = 10;
  *(v30 + 144) = v29;
  *(v30 + 145) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_lazyLockupFetcher) = v30;
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_platform) = v69;
  v34 = v66;
  sub_20C1354C4();
  v35 = *(v68 + 32);
  v68 += 32;
  v50 = v35;
  v35(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterResult, v34, v67);
  v36 = v57;
  sub_20C135884();
  (*(v58 + 32))(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterOptions, v36, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30, &unk_20C16A140);
  v37 = v54;
  v38 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20C14F980;
  v40 = v39 + v38;
  *v40 = xmmword_20C15AF00;
  *(v40 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  sub_20BE8C0B0(v39);
  swift_setDeallocating();
  v41 = v61;
  sub_20B849AD0(v40, MEMORY[0x277D52060]);
  swift_deallocClassInstance();
  v42 = v51;
  sub_20C134EB4();
  v43 = v60;
  LOBYTE(v39) = v64;
  sub_20C133DE4();
  (*(v62 + 32))(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filter, v43, v63);
  v44 = v66;
  sub_20C1354C4();
  v50(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootFilterResult, v44, v67);
  *(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_activeSortMode) = v39;
  v45 = v65;
  sub_20C134E84();

  (*(v53 + 8))(v42, v52);
  sub_20B52F9E8(v45, v41, &unk_27C7629B0, &unk_20C1510C0);
  if ((*(v37 + 48))(v41, 1, v14) == 1)
  {
    sub_20B520158(v45, &unk_27C7629B0, &unk_20C1510C0);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        v46 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_bodyFocusProperty;
        goto LABEL_16;
      case 3u:
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        v46 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_equipmentProperty;
        goto LABEL_16;
      case 4u:
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        v46 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_modalityProperty;
        goto LABEL_16;
      case 5u:
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        v46 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_genreProperty;
        goto LABEL_16;
      case 6u:
        v48 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_durationProperty;
        swift_beginAccess();
        sub_20B8494E0(v45, v4 + v48);
        swift_endAccess();
        v49 = sub_20C1341A4();
        (*(*(v49 - 8) + 8))(v41, v49);
        return v4;
      case 7u:
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        v46 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_skillLevelProperty;
        goto LABEL_16;
      case 8u:
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        v46 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_themeProperty;
        goto LABEL_16;
      case 9u:
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        v46 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_tipCategoryProperty;
        goto LABEL_16;
      case 0xAu:
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        v46 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_trainerProperty;
LABEL_16:
        swift_beginAccess();
        sub_20B8494E0(v45, v4 + v46);
        swift_endAccess();
        break;
      default:
        sub_20B520158(v45, &unk_27C7629B0, &unk_20C1510C0);
        sub_20B849AD0(v41, MEMORY[0x277D52060]);
        break;
    }
  }

  return v4;
}

uint64_t sub_20B8421B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v111 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764480, &unk_20C15D490);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v3;
  MEMORY[0x28223BE20](v4);
  v103 = &v88 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v114 = &v88 - v8;
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v108 = &v88 - v11;
  v92 = sub_20C135C84();
  v116 = *(v92 - 8);
  v117 = v92 - 8;
  v91 = v116;
  MEMORY[0x28223BE20](v92 - 8);
  v118 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_20C13BB84();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  v14 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v88 - v18;
  v97 = sub_20C133E24();
  v113 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v94 = &v88 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8, &qword_20C1566D0);
  v23 = *(v14 + 72);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = 10;
  v93 = swift_allocObject();
  v26 = v93 + v24;
  v27 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_bodyFocusProperty;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v27, v26, &unk_27C7629B0, &unk_20C1510C0);
  v28 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_durationProperty;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v28, v26 + v23, &unk_27C7629B0, &unk_20C1510C0);
  v29 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_equipmentProperty;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v29, v26 + 2 * v23, &unk_27C7629B0, &unk_20C1510C0);
  v30 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_genreProperty;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v30, v26 + 3 * v23, &unk_27C7629B0, &unk_20C1510C0);
  v31 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_modalityProperty;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v31, v26 + 4 * v23, &unk_27C7629B0, &unk_20C1510C0);
  v32 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_skillLevelProperty;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v32, v26 + 5 * v23, &unk_27C7629B0, &unk_20C1510C0);
  v33 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_themeProperty;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v33, v26 + 6 * v23, &unk_27C7629B0, &unk_20C1510C0);
  v34 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_tipCategoryProperty;
  swift_beginAccess();
  v112 = v26;
  sub_20B52F9E8(v2 + v34, v26 + 7 * v23, &unk_27C7629B0, &unk_20C1510C0);
  v35 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_trainerProperty;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v35, v26 + 8 * v23, &unk_27C7629B0, &unk_20C1510C0);
  v89 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot;
  sub_20C134E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30, &unk_20C16A140);
  v36 = v91;
  v37 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v117 = *(v116 + 72);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14F980;
  v116 = v37;
  v39 = v38 + v37;
  *v39 = xmmword_20C15AF00;
  *(v39 + 16) = 1;
  v40 = v92;
  swift_storeEnumTagMultiPayload();
  v90 = sub_20BE8C0B0(v38);
  swift_setDeallocating();
  sub_20B849AD0(v39, MEMORY[0x277D52060]);
  swift_deallocClassInstance();
  v115 = v2;
  LODWORD(v89) = sub_20C134EB4();
  v41 = (v36 + 48);
  v42 = MEMORY[0x277D84F90];
  v43 = v112;
  do
  {
    sub_20B52F9E8(v43, v19, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B849914(v19, v16);
    if ((*v41)(v16, 1, v40) == 1)
    {
      sub_20B520158(v16, &unk_27C7629B0, &unk_20C1510C0);
    }

    else
    {
      sub_20B7479A0(v16, v118);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05D14(0, v42[2] + 1, 1, v42);
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        v42 = sub_20BC05D14((v44 > 1), v45 + 1, 1, v42);
      }

      v42[2] = v45 + 1;
      sub_20B7479A0(v118, v42 + v116 + v45 * v117);
    }

    v43 += v23;
    --v25;
  }

  while (v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_20B716268(v42);

  v46 = v115;
  v47 = v94;
  sub_20C133DE4();
  v48 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filter;
  swift_beginAccess();
  v49 = v113;
  v50 = v97;
  (*(v113 + 40))(v46 + v48, v47, v97);
  swift_endAccess();
  v51 = v98;
  sub_20C13B534();

  v52 = sub_20C13BB74();
  v53 = sub_20C13D1F4();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119 = v118;
    *v54 = 141558274;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2080;
    v55 = v96;
    (*(v49 + 16))(v96, v46 + v48, v50);
    sub_20B849A88(&qword_27C769C00, MEMORY[0x277D504B0], MEMORY[0x277D504B8]);
    v56 = sub_20C13DFA4();
    v58 = v57;
    (*(v113 + 8))(v55, v50);
    v59 = sub_20B51E694(v56, v58, &v119);
    v49 = v113;

    *(v54 + 14) = v59;
    _os_log_impl(&dword_20B517000, v52, v53, "FilterResultShelf - applying %{mask.hash}s", v54, 0x16u);
    v60 = v118;
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x20F2F6A40](v60, -1, -1);
    MEMORY[0x20F2F6A40](v54, -1, -1);

    (*(v99 + 8))(v51, v100);
  }

  else
  {

    (*(v99 + 8))(v51, v100);
    v55 = v96;
  }

  __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_catalogClient), *(v46 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_catalogClient + 24));
  (*(v49 + 16))(v55, v46 + v48, v50);
  v61 = v103;
  sub_20C139F84();
  (*(v49 + 8))(v55, v50);
  v62 = v104;
  v63 = v102;
  v64 = v106;
  (*(v104 + 16))(v102, v61, v106);
  v65 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v66 = (v101 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  (*(v62 + 32))(v67 + v65, v63, v64);
  v68 = (v67 + v66);
  *v68 = sub_20B849984;
  v68[1] = v46;

  v69 = v114;
  sub_20C137C94();
  (*(v62 + 8))(v61, v64);
  v70 = swift_allocObject();
  *(v70 + 16) = sub_20B8499B4;
  *(v70 + 24) = v46;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_20B849B38;
  *(v71 + 24) = v70;
  v72 = v109;
  v73 = *(v109 + 16);
  v117 = v109 + 16;
  v118 = v73;
  v74 = v107;
  v75 = v110;
  (v73)(v107, v69, v110);
  v76 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v116 = v76;
  v77 = (v105 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v113 = *(v72 + 32);
  (v113)(v78 + v76, v74, v75);
  v79 = (v78 + v77);
  *v79 = sub_20B66A8B4;
  v79[1] = v71;

  v80 = v108;
  sub_20C137C94();
  v81 = *(v72 + 8);
  v82 = v114;
  v81(v114, v75);
  v83 = swift_allocObject();
  *(v83 + 16) = sub_20B8499B8;
  *(v83 + 24) = v46;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_20B849B38;
  *(v84 + 24) = v83;
  (v118)(v82, v80, v75);
  v85 = swift_allocObject();
  (v113)(v85 + v116, v82, v75);
  v86 = (v85 + v77);
  *v86 = sub_20B66A8B4;
  v86[1] = v84;

  sub_20C137C94();
  return (v81)(v80, v75);
}

double sub_20B8431B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterResult;
  swift_beginAccess();
  v7 = sub_20C135524();
  (*(*(v7 - 8) + 24))(a2 + v6, a1, v7);
  swift_endAccess();
  v8 = sub_20C135474();
  sub_20C02BC6C(v8, a3);

  return result;
}

uint64_t sub_20B843274(uint64_t a1)
{
  v2 = type metadata accessor for FilterResultUpdated(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getObjectType();
  v5 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot;
  v6 = sub_20C134EC4();
  (*(*(v6 - 8) + 16))(v4, a1 + v5, v6);
  v7 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filter;
  swift_beginAccess();
  v8 = *(v2 + 20);
  v9 = sub_20C133E24();
  (*(*(v9 - 8) + 16))(&v4[v8], a1 + v7, v9);
  v10 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterResult;
  swift_beginAccess();
  v11 = *(v2 + 24);
  v12 = sub_20C135524();
  (*(*(v12 - 8) + 16))(&v4[v11], a1 + v10, v12);
  sub_20B849A88(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A764();
  return sub_20B849AD0(v4, type metadata accessor for FilterResultUpdated);
}

void sub_20B843484()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v5 = sub_20C13D374();
  v6 = *MEMORY[0x277D85200];
  v7 = *(v3 + 104);
  v7(v5, *MEMORY[0x277D85200], v2);
  v8 = sub_20C13C584();
  v36 = *(v3 + 8);
  v36(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_displayState) == 1)
  {
    v34 = v7;
    v35 = v6;
    v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_lazyLockupFetcher);

    sub_20C02F3E0(v10, v9, 0, 0);
    v12 = v11;

    v37 = 0uLL;
    LOBYTE(v38) = 1;
    *(&v38 + 1) = 0;
    *&v39 = 0;
    WORD4(v39) = 128;
    v40 = 0uLL;
    v41 = xmmword_20C15D2E0;
    v42 = 0uLL;
    LOBYTE(v43) = 0;
    *(&v43 + 1) = v12;
    *&v44[0] = MEMORY[0x277D84F90];
    *(v44 + 8) = 0u;
    *(&v44[1] + 8) = 0u;
    *(&v44[2] + 1) = 0;
    v45 = 2;
    nullsub_1();
    v13 = v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row;
    v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 144);
    v46[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 128);
    v46[9] = v14;
    v47 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 160);
    v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 80);
    v46[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 64);
    v46[5] = v15;
    v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 112);
    v46[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 96);
    v46[7] = v16;
    v17 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 16);
    v46[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row);
    v46[1] = v17;
    v18 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 48);
    v46[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 32);
    v46[3] = v18;
    v19 = v44[2];
    *(v13 + 128) = v44[1];
    *(v13 + 144) = v19;
    *(v13 + 160) = v45;
    v20 = v42;
    *(v13 + 64) = v41;
    *(v13 + 80) = v20;
    v21 = v44[0];
    *(v13 + 96) = v43;
    *(v13 + 112) = v21;
    v22 = v38;
    *v13 = v37;
    *(v13 + 16) = v22;
    v23 = v40;
    *(v13 + 32) = v39;
    *(v13 + 48) = v23;
    sub_20B520158(v46, &qword_27C762340, &unk_20C150290);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
      {
LABEL_9:
        swift_unknownObjectRelease();
        return;
      }

      v25 = Strong;
      sub_20B61D370(v0, Strong);
      if (!v27)
      {
        sub_20C0C2D50(0);
        goto LABEL_9;
      }

      v29 = v27;
      v30 = v28;
      v33 = v26;
      *v5 = sub_20C13D374();
      v34(v5, v35, v2);
      v31 = sub_20C13C584();
      v36(v5, v2);
      if (v31)
      {
        sub_20B620C28(v33, v29, v30, v1, 1, v25);

        goto LABEL_9;
      }

LABEL_12:
      __break(1u);
    }
  }
}

uint64_t sub_20B8437C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if ((*(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_displayState) & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_displayState) = 1;
      sub_20B843484();
    }

    v14 = (v4 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootFilterName);
    *v14 = a1;
    v14[1] = a2;

    v15 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootModality;
    swift_beginAccess();
    sub_20B606B6C(a3, v4 + v15, &unk_27C7710A0, &unk_20C156800);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B843974(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02CCD0(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B849B30;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B849B38;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B66A8B4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20B843C38()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_catalogClient));
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_bodyFocusProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_durationProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_equipmentProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_genreProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_modalityProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_skillLevelProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_themeProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_tipCategoryProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_trainerProperty, &unk_27C7629B0, &unk_20C1510C0);
  v5 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootFilterResult;
  v6 = sub_20C135524();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);

  v7(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterResult, v6);
  v8 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterOptions;
  v9 = sub_20C135914();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filter;
  v11 = sub_20C133E24();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 144);
  v18[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 128);
  v18[9] = v12;
  v19 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 160);
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 80);
  v18[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 64);
  v18[5] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 112);
  v18[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 96);
  v18[7] = v14;
  v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 16);
  v18[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row);
  v18[1] = v15;
  v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 48);
  v18[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 32);
  v18[3] = v16;
  sub_20B520158(v18, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootModality, &unk_27C7710A0, &unk_20C156800);
  return v0;
}

uint64_t sub_20B843F88()
{
  sub_20B843C38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FilterResultShelf(uint64_t a1)
{
  result = qword_27C766780;
  if (!qword_27C766780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B844034(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C134EC4();
    if (v2 <= 0x3F)
    {
      sub_20B8442D0(319, &qword_27C763150, MEMORY[0x277D52060]);
      if (v3 <= 0x3F)
      {
        sub_20C135524();
        if (v4 <= 0x3F)
        {
          sub_20C135914();
          if (v5 <= 0x3F)
          {
            sub_20C133E24();
            if (v6 <= 0x3F)
            {
              sub_20B8442D0(319, &qword_27C764988, MEMORY[0x277D50A30]);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_20B8442D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20B844338()
{
  result = qword_27C766790;
  if (!qword_27C766790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766790);
  }

  return result;
}

double sub_20B84438C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764310, &unk_20C17CD00);
  v58 = *(v1 - 8);
  v59 = v1;
  v57 = *(v58 + 64);
  MEMORY[0x28223BE20](v1);
  v56 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v54 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v52 = &v45 - v10;
  MEMORY[0x28223BE20](v11);
  v55 = &v45 - v12;
  v14 = v13;
  v46 = v13;
  v47 = v0;
  sub_20B8421B4(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B849550;
  *(v15 + 24) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B849B38;
  *(v16 + 24) = v15;
  v50 = *(v6 + 16);
  v50(&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v5);
  v17 = *(v6 + 80);
  v49 = (v17 + 16) & ~v17;
  v18 = (v7 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = v18;
  v19 = swift_allocObject();
  v48 = *(v6 + 32);
  v48(v19 + ((v17 + 16) & ~v17), v60, v5);
  v20 = (v19 + v18);
  *v20 = sub_20B66A8B4;
  v20[1] = v16;
  v21 = v47;

  v22 = v52;
  sub_20C137C94();
  v23 = *(v6 + 8);
  v60 = (v6 + 8);
  v24 = v46;
  v23(v46, v5);
  v53 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20B849558;
  *(v25 + 24) = v21;
  v50(v24, v22, v5);
  v26 = v45;
  v27 = swift_allocObject();
  v51 = v5;
  v48(v27 + v49, v24, v5);
  v28 = (v27 + v26);
  *v28 = sub_20B7F133C;
  v28[1] = v25;
  sub_20C135914();

  v29 = v54;
  sub_20C137C94();
  v23(v22, v5);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20B849588;
  *(v30 + 24) = v21;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_20B7DB918;
  *(v31 + 24) = v30;
  v32 = v58;
  v33 = v59;
  v34 = v56;
  (*(v58 + 16))(v56, v29, v59);
  v35 = v32;
  v36 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v37 = (v57 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v35 + 32))(v38 + v36, v34, v33);
  v39 = (v38 + v37);
  *v39 = sub_20B849590;
  v39[1] = v31;

  v40 = v55;
  sub_20C137C94();
  (*(v35 + 8))(v29, v33);
  v41 = v51;
  v42 = sub_20C137CB4();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v42(sub_20B5DF6DC, v43);

  v53(v40, v41);
  swift_getObjectType();
  type metadata accessor for FilterActionSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C766798, type metadata accessor for FilterActionSelected, &unk_20C164760);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  swift_allocObject();
  swift_weakInit();
  sub_20B8495D0();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for BodyFocusFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C7667A8, type metadata accessor for BodyFocusFilterUpdated, &unk_20C183CD0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for DurationFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C764990, type metadata accessor for DurationFilterUpdated, &unk_20C18AEE0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for EquipmentFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C7667B0, type metadata accessor for EquipmentFilterUpdated, &unk_20C1602F0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for GenreFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C7667B8, type metadata accessor for GenreFilterUpdated, &unk_20C167170);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for ModalityFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&unk_27C765CE0, type metadata accessor for ModalityFilterUpdated, &unk_20C17F640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for SkillLevelFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C765B58, type metadata accessor for SkillLevelFilterUpdated, &unk_20C161900);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for ThemeFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C7667C0, type metadata accessor for ThemeFilterUpdated, &unk_20C18B110);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for TipCategoryFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C7667C8, type metadata accessor for TipCategoryFilterUpdated, &unk_20C18F5B0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for TrainerFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C7667D0, type metadata accessor for TrainerFilterUpdated, &unk_20C17D0E0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20B849A88(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_20C13AFB4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v61);

  return result;
}

uint64_t sub_20B845350(uint64_t a1)
{
  v2 = sub_20C135524();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterResult;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  v7 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootFilterResult;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v7, v5, v2);
  return swift_endAccess();
}

uint64_t sub_20B8454E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterOptions;
  swift_beginAccess();
  v5 = sub_20C135914();
  (*(*(v5 - 8) + 24))(a2 + v4, a1, v5);
  return swift_endAccess();
}

double sub_20B8455A0(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_20C134EC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8, &unk_20C1566E0);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  swift_beginAccess();
  v27[1] = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(v4 + 16);
    v18(v16, Strong + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot, v3);

    v19 = *(v4 + 56);
    v19(v16, 0, 1, v3);
  }

  else
  {
    v19 = *(v4 + 56);
    v19(v16, 1, 1, v3);
    v18 = *(v4 + 16);
  }

  v18(v13, v29, v3);
  v19(v13, 0, 1, v3);
  v20 = *(v6 + 48);
  sub_20B52F9E8(v16, v8, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B52F9E8(v13, &v8[v20], &qword_27C7649E0, &unk_20C1643C0);
  v21 = *(v4 + 48);
  if (v21(v8, 1, v3) != 1)
  {
    v22 = v28;
    sub_20B52F9E8(v8, v28, &qword_27C7649E0, &unk_20C1643C0);
    if (v21(&v8[v20], 1, v3) != 1)
    {
      v24 = v27[0];
      (*(v4 + 32))(v27[0], &v8[v20], v3);
      sub_20B849A88(&qword_27C7649E8, MEMORY[0x277D512A8], MEMORY[0x277D512B0]);
      v25 = sub_20C13C894();
      v26 = *(v4 + 8);
      v26(v24, v3);
      sub_20B520158(v13, &qword_27C7649E0, &unk_20C1643C0);
      sub_20B520158(v16, &qword_27C7649E0, &unk_20C1643C0);
      v26(v22, v3);
      sub_20B520158(v8, &qword_27C7649E0, &unk_20C1643C0);
      if ((v25 & 1) == 0)
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
  if (swift_weakLoadStrong())
  {
    sub_20B845AC8();
  }

  return result;
}

uint64_t sub_20B845AC8()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20C135914();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v42 - v9;
  v10 = sub_20C135524();
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_20C133E24();
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootFilterName + 8);
  if (v18)
  {
    v19 = *(v0 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootFilterName);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = result;
      v44 = v19;
      v22 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filter;
      swift_beginAccess();
      (*(v49 + 16))(v17, v0 + v22, v50);
      v23 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterResult;
      swift_beginAccess();
      v47 = v7;
      v24 = *(v51 + 16);
      v45 = v14;
      v24(v14, v0 + v23, v10);
      v25 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootModality;
      swift_beginAccess();
      sub_20B52F9E8(v0 + v25, v52, &unk_27C7710A0, &unk_20C156800);
      v43 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot;
      v26 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_rootFilterResult;
      swift_beginAccess();
      v27 = v48;
      v24(v48, v0 + v26, v10);
      v28 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterOptions;
      swift_beginAccess();
      v46 = v5;
      v29 = v0 + v28;
      v30 = v47;
      (*(v5 + 16))(v47, v29, v53);
      v31 = v21 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v31 + 8);
        ObjectType = swift_getObjectType();
        v42 = *(v32 + 104);

        v41 = v32;
        v40 = ObjectType;
        v34 = v45;
        v35 = v52;
        v42(v21, v17, v45, v52, v0 + v43, v27, v47, v44, v18, v40, v41);
        v30 = v47;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v35 = v52;
        v34 = v45;
      }

      (*(v46 + 8))(v30, v53);
      v39 = *(v51 + 8);
      v39(v27, v10);
      sub_20B520158(v35, &unk_27C7710A0, &unk_20C156800);
      v39(v34, v10);
      return (*(v49 + 8))(v17, v50);
    }
  }

  else
  {
    sub_20C13B534();
    v36 = sub_20C13BB74();
    v37 = sub_20C13D1D4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20B517000, v36, v37, "Filter selected before root filter name was available", v38, 2u);
      MEMORY[0x20F2F6A40](v38, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_20B8460D0(char *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_activeSortMode) = v7;
    sub_20B8421B4(v6);
    v9 = sub_20C137CB4();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v9(sub_20B5DF6DC, v10);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20B846254(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v67 - v3;
  v4 = sub_20C135C84();
  v85 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7667D8, &unk_20C15D480);
  MEMORY[0x28223BE20](v77);
  v79 = &v67 - v6;
  v7 = sub_20C134EC4();
  v83 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8, &unk_20C1566E0);
  MEMORY[0x28223BE20](v81);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v22 - 8);
  v76 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v75 = &v67 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v67 - v27;
  v29 = *(type metadata accessor for DurationFilterUpdated(0) + 20);
  v82 = a1;
  sub_20B52F9E8(a1 + v29, v21, &qword_27C7627B8, &unk_20C170A90);
  v30 = sub_20C1341A4();
  v31 = *(v30 - 8);
  v32 = 1;
  if ((*(v31 + 48))(v21, 1, v30) != 1)
  {
    (*(v31 + 32))(v28, v21, v30);
    swift_storeEnumTagMultiPayload();
    v32 = 0;
  }

  v33 = *(v85 + 56);
  v84 = v28;
  v78 = v4;
  v70 = v85 + 56;
  v69 = v33;
  v33(v28, v32, 1, v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v35 = v83;
  if (Strong)
  {
    v36 = *(v83 + 16);
    v36(v18, Strong + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot, v7);

    v37 = *(v35 + 56);
    v37(v18, 0, 1, v7);
  }

  else
  {
    v37 = *(v83 + 56);
    v37(v18, 1, 1, v7);
    v36 = *(v35 + 16);
  }

  v36(v15, v82, v7);
  v37(v15, 0, 1, v7);
  v38 = *(v81 + 48);
  sub_20B52F9E8(v18, v10, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B52F9E8(v15, &v10[v38], &qword_27C7649E0, &unk_20C1643C0);
  v39 = *(v35 + 48);
  if (v39(v10, 1, v7) == 1)
  {
    sub_20B520158(v15, &qword_27C7649E0, &unk_20C1643C0);
    sub_20B520158(v18, &qword_27C7649E0, &unk_20C1643C0);
    if (v39(&v10[v38], 1, v7) == 1)
    {
      sub_20B520158(v10, &qword_27C7649E0, &unk_20C1643C0);
      v40 = v84;
      goto LABEL_13;
    }

LABEL_11:
    sub_20B520158(v10, &qword_27C7649D8, &unk_20C1566E0);
    v40 = v84;
    return sub_20B520158(v40, &unk_27C7629B0, &unk_20C1510C0);
  }

  v41 = v80;
  sub_20B52F9E8(v10, v80, &qword_27C7649E0, &unk_20C1643C0);
  if (v39(&v10[v38], 1, v7) == 1)
  {
    sub_20B520158(v15, &qword_27C7649E0, &unk_20C1643C0);
    sub_20B520158(v18, &qword_27C7649E0, &unk_20C1643C0);
    (*(v35 + 8))(v41, v7);
    goto LABEL_11;
  }

  v42 = v74;
  (*(v35 + 32))(v74, &v10[v38], v7);
  sub_20B849A88(&qword_27C7649E8, MEMORY[0x277D512A8], MEMORY[0x277D512B0]);
  v43 = v41;
  v44 = sub_20C13C894();
  v45 = *(v35 + 8);
  v45(v42, v7);
  sub_20B520158(v15, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B520158(v18, &qword_27C7649E0, &unk_20C1643C0);
  v45(v43, v7);
  sub_20B520158(v10, &qword_27C7649E0, &unk_20C1643C0);
  v40 = v84;
  if ((v44 & 1) == 0)
  {
    return sub_20B520158(v40, &unk_27C7629B0, &unk_20C1510C0);
  }

LABEL_13:
  swift_beginAccess();
  v46 = swift_weakLoadStrong();
  if (v46)
  {
    v47 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_durationProperty;
    v48 = v46;
    swift_beginAccess();
    v49 = v75;
    sub_20B52F9E8(v48 + v47, v75, &unk_27C7629B0, &unk_20C1510C0);

    v50 = v79;
    v51 = v78;
  }

  else
  {
    v49 = v75;
    v51 = v78;
    v69(v75, 1, 1, v78);
    v50 = v79;
  }

  v52 = v76;
  v53 = *(v77 + 48);
  sub_20B52F9E8(v49, v50, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B52F9E8(v40, v50 + v53, &unk_27C7629B0, &unk_20C1510C0);
  v54 = *(v85 + 48);
  if (v54(v50, 1, v51) == 1)
  {
    sub_20B520158(v49, &unk_27C7629B0, &unk_20C1510C0);
    if (v54(v50 + v53, 1, v51) == 1)
    {
      sub_20B520158(v50, &unk_27C7629B0, &unk_20C1510C0);
      return sub_20B520158(v40, &unk_27C7629B0, &unk_20C1510C0);
    }
  }

  else
  {
    sub_20B52F9E8(v50, v52, &unk_27C7629B0, &unk_20C1510C0);
    if (v54(v50 + v53, 1, v51) != 1)
    {
      v62 = v50 + v53;
      v63 = v68;
      sub_20B7479A0(v62, v68);
      v64 = MEMORY[0x20F2ED3D0](v52, v63);
      v65 = MEMORY[0x277D52060];
      sub_20B849AD0(v63, MEMORY[0x277D52060]);
      sub_20B520158(v49, &unk_27C7629B0, &unk_20C1510C0);
      sub_20B849AD0(v52, v65);
      sub_20B520158(v50, &unk_27C7629B0, &unk_20C1510C0);
      if (v64)
      {
        return sub_20B520158(v40, &unk_27C7629B0, &unk_20C1510C0);
      }

      goto LABEL_22;
    }

    sub_20B520158(v49, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B849AD0(v52, MEMORY[0x277D52060]);
  }

  sub_20B520158(v50, &qword_27C7667D8, &unk_20C15D480);
LABEL_22:
  swift_beginAccess();
  v55 = swift_weakLoadStrong();
  if (v55)
  {
    v56 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_durationProperty;
    v57 = v55;
    swift_beginAccess();
    sub_20B606B6C(v40, v57 + v56, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v58 = v71;
    sub_20B8421B4(v71);

    v59 = v73;
    v60 = sub_20C137CB4();
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    v60(sub_20B5DF6DC, v61);

    (*(v72 + 8))(v58, v59);
  }

  return sub_20B520158(v40, &unk_27C7629B0, &unk_20C1510C0);
}

uint64_t sub_20B846EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double), int a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v81 = a7;
  v79 = a6;
  v90 = a5;
  LODWORD(v92) = a4;
  v96 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v75 - v9;
  v10 = sub_20C135C84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v76 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7667D8, &unk_20C15D480);
  MEMORY[0x28223BE20](v86);
  v14 = &v75 - v13;
  v15 = sub_20C134EC4();
  v95 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v84 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8, &unk_20C1566E0);
  MEMORY[0x28223BE20](v93);
  v18 = &v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v19 - 8);
  v91 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v27 - 8);
  v83 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v85 = &v75 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v75 - v33);
  v35 = *(v96(0, v32) + 20);
  v94 = a1;
  v36 = (a1 + v35);
  v37 = v36[1];
  v87 = v11;
  if (v37)
  {
    *v34 = *v36;
    v34[1] = v37;
    swift_storeEnumTagMultiPayload();
    v38 = *(v11 + 56);
    v39 = v34;
    v40 = 0;
  }

  else
  {
    v38 = *(v11 + 56);
    v39 = v34;
    v40 = 1;
  }

  v77 = v38;
  v38(v39, v40, 1, v10);
  v88 = v10;
  v89 = v14;
  v96 = v34;
  swift_beginAccess();
  v92 = a2;
  Strong = swift_weakLoadStrong();
  v42 = v95;
  if (Strong)
  {
    v43 = *(v95 + 16);
    v43(v26, Strong + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot, v15);

    v44 = *(v42 + 56);
    v44(v26, 0, 1, v15);
  }

  else
  {
    v44 = *(v95 + 56);
    v44(v26, 1, 1, v15);
    v43 = *(v42 + 16);
  }

  v43(v23, v94, v15);
  v44(v23, 0, 1, v15);
  v45 = *(v93 + 48);
  sub_20B52F9E8(v26, v18, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B52F9E8(v23, &v18[v45], &qword_27C7649E0, &unk_20C1643C0);
  v46 = *(v42 + 48);
  if (v46(v18, 1, v15) == 1)
  {
    sub_20B520158(v23, &qword_27C7649E0, &unk_20C1643C0);
    sub_20B520158(v26, &qword_27C7649E0, &unk_20C1643C0);
    if (v46(&v18[v45], 1, v15) == 1)
    {
      sub_20B520158(v18, &qword_27C7649E0, &unk_20C1643C0);
      v47 = v96;
      goto LABEL_14;
    }

LABEL_12:
    sub_20B520158(v18, &qword_27C7649D8, &unk_20C1566E0);
    v47 = v96;
    return sub_20B520158(v47, &unk_27C7629B0, &unk_20C1510C0);
  }

  v48 = v91;
  sub_20B52F9E8(v18, v91, &qword_27C7649E0, &unk_20C1643C0);
  if (v46(&v18[v45], 1, v15) == 1)
  {
    sub_20B520158(v23, &qword_27C7649E0, &unk_20C1643C0);
    sub_20B520158(v26, &qword_27C7649E0, &unk_20C1643C0);
    (*(v42 + 8))(v48, v15);
    goto LABEL_12;
  }

  v49 = v84;
  (*(v42 + 32))(v84, &v18[v45], v15);
  sub_20B849A88(&qword_27C7649E8, MEMORY[0x277D512A8], MEMORY[0x277D512B0]);
  v50 = sub_20C13C894();
  v51 = *(v42 + 8);
  v51(v49, v15);
  sub_20B520158(v23, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B520158(v26, &qword_27C7649E0, &unk_20C1643C0);
  v51(v48, v15);
  sub_20B520158(v18, &qword_27C7649E0, &unk_20C1643C0);
  v47 = v96;
  if ((v50 & 1) == 0)
  {
    return sub_20B520158(v47, &unk_27C7629B0, &unk_20C1510C0);
  }

LABEL_14:
  swift_beginAccess();
  v52 = swift_weakLoadStrong();
  if (v52)
  {
    v53 = *v90;
    v54 = v52;
    swift_beginAccess();
    v55 = v85;
    sub_20B52F9E8(v54 + v53, v85, &unk_27C7629B0, &unk_20C1510C0);

    v56 = v89;
    v57 = v88;
    v58 = v87;
  }

  else
  {
    v58 = v87;
    v55 = v85;
    v57 = v88;
    v77(v85, 1, 1, v88);
    v56 = v89;
  }

  v59 = *(v86 + 48);
  sub_20B52F9E8(v55, v56, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B52F9E8(v47, v56 + v59, &unk_27C7629B0, &unk_20C1510C0);
  v60 = *(v58 + 48);
  if (v60(v56, 1, v57) == 1)
  {
    sub_20B520158(v55, &unk_27C7629B0, &unk_20C1510C0);
    if (v60(v56 + v59, 1, v57) == 1)
    {
      sub_20B520158(v56, &unk_27C7629B0, &unk_20C1510C0);
      return sub_20B520158(v47, &unk_27C7629B0, &unk_20C1510C0);
    }
  }

  else
  {
    v61 = v83;
    sub_20B52F9E8(v56, v83, &unk_27C7629B0, &unk_20C1510C0);
    if (v60(v56 + v59, 1, v57) != 1)
    {
      v69 = v56 + v59;
      v70 = v76;
      sub_20B7479A0(v69, v76);
      v71 = MEMORY[0x20F2ED3D0](v61, v70);
      v72 = v61;
      v73 = MEMORY[0x277D52060];
      sub_20B849AD0(v70, MEMORY[0x277D52060]);
      sub_20B520158(v55, &unk_27C7629B0, &unk_20C1510C0);
      sub_20B849AD0(v72, v73);
      sub_20B520158(v56, &unk_27C7629B0, &unk_20C1510C0);
      if (v71)
      {
        return sub_20B520158(v47, &unk_27C7629B0, &unk_20C1510C0);
      }

      goto LABEL_23;
    }

    sub_20B520158(v55, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B849AD0(v61, MEMORY[0x277D52060]);
  }

  sub_20B520158(v56, &qword_27C7667D8, &unk_20C15D480);
LABEL_23:
  swift_beginAccess();
  v62 = swift_weakLoadStrong();
  if (v62)
  {
    v63 = *v90;
    v64 = v62;
    swift_beginAccess();
    sub_20B606B6C(v47, v64 + v63, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v65 = v78;
    sub_20B8421B4(v78);

    v66 = v82;
    v67 = sub_20C137CB4();
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    v67(v81, v68);

    (*(v80 + 8))(v65, v66);
  }

  return sub_20B520158(v47, &unk_27C7629B0, &unk_20C1510C0);
}

uint64_t sub_20B847A5C(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v68 - v5;
  v6 = sub_20C134EC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8, &unk_20C1566E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  swift_beginAccess();
  v74 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(v7 + 16);
    v21(v19, Strong + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterRoot, v6);

    v22 = *(v7 + 56);
    v22(v19, 0, 1, v6);
  }

  else
  {
    v22 = *(v7 + 56);
    v22(v19, 1, 1, v6);
    v21 = *(v7 + 16);
  }

  v21(v16, v76, v6);
  v22(v16, 0, 1, v6);
  v23 = *(v9 + 48);
  sub_20B52F9E8(v19, v11, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B52F9E8(v16, &v11[v23], &qword_27C7649E0, &unk_20C1643C0);
  v24 = *(v7 + 48);
  if (v24(v11, 1, v6) != 1)
  {
    v25 = v75;
    sub_20B52F9E8(v11, v75, &qword_27C7649E0, &unk_20C1643C0);
    if (v24(&v11[v23], 1, v6) != 1)
    {
      v27 = v25;
      v28 = v72;
      (*(v7 + 32))(v72, &v11[v23], v6);
      sub_20B849A88(&qword_27C7649E8, MEMORY[0x277D512A8], MEMORY[0x277D512B0]);
      v29 = sub_20C13C894();
      v30 = *(v7 + 8);
      v30(v28, v6);
      sub_20B520158(v16, &qword_27C7649E0, &unk_20C1643C0);
      sub_20B520158(v19, &qword_27C7649E0, &unk_20C1643C0);
      v30(v27, v6);
      result = sub_20B520158(v11, &qword_27C7649E0, &unk_20C1643C0);
      if ((v29 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_20B520158(v16, &qword_27C7649E0, &unk_20C1643C0);
    sub_20B520158(v19, &qword_27C7649E0, &unk_20C1643C0);
    (*(v7 + 8))(v25, v6);
    return sub_20B520158(v11, &qword_27C7649D8, &unk_20C1566E0);
  }

  sub_20B520158(v16, &qword_27C7649E0, &unk_20C1643C0);
  sub_20B520158(v19, &qword_27C7649E0, &unk_20C1643C0);
  if (v24(&v11[v23], 1, v6) != 1)
  {
    return sub_20B520158(v11, &qword_27C7649D8, &unk_20C1566E0);
  }

  sub_20B520158(v11, &qword_27C7649E0, &unk_20C1643C0);
LABEL_11:
  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  v32 = v73;
  if (v31)
  {
    v33 = v31;
    v34 = sub_20C135C84();
    (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
    v35 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_bodyFocusProperty;
    swift_beginAccess();
    sub_20B8494E0(v32, v33 + v35);
    swift_endAccess();
  }

  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  if (v36)
  {
    v37 = v36;
    v38 = sub_20C135C84();
    (*(*(v38 - 8) + 56))(v32, 1, 1, v38);
    v39 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_durationProperty;
    swift_beginAccess();
    sub_20B8494E0(v32, v37 + v39);
    swift_endAccess();
  }

  swift_beginAccess();
  v40 = swift_weakLoadStrong();
  if (v40)
  {
    v41 = v40;
    v42 = sub_20C135C84();
    (*(*(v42 - 8) + 56))(v32, 1, 1, v42);
    v43 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_equipmentProperty;
    swift_beginAccess();
    sub_20B8494E0(v32, v41 + v43);
    swift_endAccess();
  }

  swift_beginAccess();
  v44 = swift_weakLoadStrong();
  if (v44)
  {
    v45 = v44;
    v46 = sub_20C135C84();
    (*(*(v46 - 8) + 56))(v32, 1, 1, v46);
    v47 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_genreProperty;
    swift_beginAccess();
    sub_20B8494E0(v32, v45 + v47);
    swift_endAccess();
  }

  swift_beginAccess();
  v48 = swift_weakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v50 = sub_20C135C84();
    (*(*(v50 - 8) + 56))(v32, 1, 1, v50);
    v51 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_modalityProperty;
    swift_beginAccess();
    sub_20B8494E0(v32, v49 + v51);
    swift_endAccess();
  }

  swift_beginAccess();
  v52 = swift_weakLoadStrong();
  if (v52)
  {
    v53 = v52;
    v54 = sub_20C135C84();
    (*(*(v54 - 8) + 56))(v32, 1, 1, v54);
    v55 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_skillLevelProperty;
    swift_beginAccess();
    sub_20B8494E0(v32, v53 + v55);
    swift_endAccess();
  }

  swift_beginAccess();
  v56 = swift_weakLoadStrong();
  if (v56)
  {
    v57 = v56;
    v58 = sub_20C135C84();
    (*(*(v58 - 8) + 56))(v32, 1, 1, v58);
    v59 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_themeProperty;
    swift_beginAccess();
    sub_20B8494E0(v32, v57 + v59);
    swift_endAccess();
  }

  swift_beginAccess();
  v60 = swift_weakLoadStrong();
  if (v60)
  {
    v61 = v60;
    v62 = sub_20C135C84();
    (*(*(v62 - 8) + 56))(v32, 1, 1, v62);
    v63 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_trainerProperty;
    swift_beginAccess();
    sub_20B8494E0(v32, v61 + v63);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v64 = v69;
    sub_20B8421B4(v69);

    v65 = v71;
    v66 = sub_20C137CB4();
    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    v66(sub_20B5DF6DC, v67);

    return (*(v70 + 8))(v64, v65);
  }

  return result;
}

uint64_t sub_20B8485EC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20B517000, v10, v11, "[FilterResultShelf] catalog updated, updating row", v12, 2u);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8421B4(v5);

    v14 = sub_20C137CB4();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14(sub_20B5DF6DC, v15);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_20B848864(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C13AEC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C134EB4();
    v13 = sub_20C135C94();
    v15 = v14;
    if (v13 == sub_20C135C94() && v15 == v16)
    {
    }

    else
    {
      v18 = sub_20C13DFF4();

      if ((v18 & 1) == 0)
      {

        return result;
      }
    }

    v39 = v7;
    sub_20C13B524();
    (*(v4 + 16))(v6, a1, v3);
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37 = v20;
      v22 = v21;
      v36 = swift_slowAlloc();
      v42 = v36;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      sub_20C13AEB4();
      v23 = sub_20C13CF94();
      v38 = a1;
      v25 = v24;

      (*(v4 + 8))(v6, v3);
      v26 = sub_20B51E694(v23, v25, &v42);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_20B517000, v19, v37, "[70636962] FilterResultsShelf received ArchivedSessionsUpdated event for %{mask.hash}s", v22, 0x16u);
      v27 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v28 = *(v41 + 8);
    v29 = v11;
    v30 = v39;
    v28(v29, v39);
    v31 = v40;
    sub_20C13B534();
    v32 = sub_20C13BB74();
    v33 = sub_20C13D1F4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20B517000, v32, v33, "[FilterResultShelf] archived sessions updated, updating row", v34, 2u);
      MEMORY[0x20F2F6A40](v34, -1, -1);
    }

    v28(v31, v30);
    v35 = sub_20C13AEB4();
    sub_20B843974(v35);
  }

  return result;
}

double sub_20B848CC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C134EB4();
    v7 = sub_20C135C94();
    v9 = v8;
    if (v7 == sub_20C135C94() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {

        return result;
      }
    }

    sub_20C13B534();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1F4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20B517000, v13, v14, "[FilterResultShelf] tip journals updated, updating row", v15, 2u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v16 = sub_20C13AFA4();
    sub_20B843974(v16);
  }

  return result;
}

uint64_t sub_20B848EE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8421B4(v4);

    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B5DF6DC, v7);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_20B849044(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B849B30;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20B849308@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B849380@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 32);
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

uint64_t sub_20B849444(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_platform))
  {
    return 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 144);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 128);
  v13 = v4;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 160);
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 80);
  v9[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 64);
  v9[5] = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 112);
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 96);
  v11 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 16);
  v9[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row);
  v9[1] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 48);
  v9[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_row + 32);
  v9[3] = v8;
  result = sub_20B5EAF8C(v9);
  if (result != 1)
  {
    return *(*(&v10 + 1) + 16) > a1;
  }

  return result;
}

uint64_t sub_20B8494E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B8495D0()
{
  result = qword_27C7667A0;
  if (!qword_27C7667A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7667A0);
  }

  return result;
}

uint64_t sub_20B849914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8499C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B849A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B849AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static RemoteParticipantAvatar.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_20C13DFF4();
  }
}

uint64_t RemoteParticipantAvatar.hashValue.getter()
{
  sub_20C13E164();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20B849BD4()
{
  sub_20C13E164();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20B849C28(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

unint64_t sub_20B849C74()
{
  result = qword_27C7667E0;
  if (!qword_27C7667E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7667E0);
  }

  return result;
}

uint64_t sub_20B849CC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_20C13DFF4();
  }
}

uint64_t sub_20B849CF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20B849D40(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_20B849D90(uint64_t a1, uint64_t a2)
{
  sub_20B5E2E18();
  v4 = sub_20C13D374();
  (*(a2 + 8))(v4, a1, a2);
}

unint64_t sub_20B849E58()
{
  result = qword_27C7667E8;
  if (!qword_27C7667E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7667E8);
  }

  return result;
}

unint64_t sub_20B849EB0()
{
  result = qword_27C7667F0;
  if (!qword_27C7667F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7667F0);
  }

  return result;
}

unint64_t sub_20B849F04()
{
  result = qword_27C7667F8;
  if (!qword_27C7667F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7667F8);
  }

  return result;
}

unint64_t sub_20B849F5C()
{
  result = qword_27C766800;
  if (!qword_27C766800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CatalogTipPlayerOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CatalogTipPlayerOptions(uint64_t result, int a2, int a3)
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

unint64_t sub_20B84A014()
{
  result = qword_27C766808;
  if (!qword_27C766808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766808);
  }

  return result;
}

double sub_20B84A068(char a1, double a2)
{
  v4 = *v2 * a2;
  result = v4 + 0.0;
  if ((a1 & 1) == 0)
  {
    v6 = v2[1] + (v2[2] - v2[1]) * a2 - (v2[1] * v2[3] + (v2[2] * v2[3] - v2[1] * v2[3]) * a2);
    v7 = result + v6 * -0.5 + v6 * -0.5;
    if (v4 >= v7)
    {
      result = v7;
    }

    if (result < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t static NavigationRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for NavigationRequested(uint64_t a1)
{
  result = qword_281102DF0;
  if (!qword_281102DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B84A1CC(uint64_t a1)
{
  result = type metadata accessor for NavigationRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20B84A274(unint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    if (a1)
    {
      v14 = v4;
      if (a1 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
      {
        v17 = MEMORY[0x277D84F90];
        sub_20BB5D97C(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          goto LABEL_22;
        }

        v6 = 0;
        v7 = v17;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x20F2F5430](v6, a1);
            goto LABEL_12;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v8 = *(a1 + 8 * v6 + 32);
LABEL_12:
          v9 = v8;
          v10 = [v8 CGColor];
          type metadata accessor for CGColor(0);
          v16 = v11;

          *&v15 = v10;
          v17 = v7;
          v13 = *(v7 + 16);
          v12 = *(v7 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_20BB5D97C((v12 > 1), v13 + 1, 1);
            v7 = v17;
          }

          ++v6;
          *(v7 + 16) = v13 + 1;
          sub_20B6B3B74(&v15, (v7 + 32 * v13 + 32));
          if (i == v6)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      a1 = sub_20C13CC54();

      v4 = v14;
    }

    [v4 setColors_];
  }

  else
  {
LABEL_22:

    sub_20C13DE24();
    __break(1u);
  }
}

void sub_20B84A4C0(uint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    if (a1)
    {
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        sub_20C13DD64();
        v7 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          v7 += 8;
          --v6;
        }

        while (v6);
      }

      sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
      v8 = sub_20C13CC54();

      [v5 setLocations_];
    }

    else
    {
      v8 = 0;
      [v4 setLocations_];
    }
  }

  else
  {

    sub_20C13DE24();
    __break(1u);
  }
}

uint64_t sub_20B84A6AC()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 locations];

    if (!v3)
    {
      return 0;
    }

    sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
    v4 = sub_20C13CC74();

    return v4;
  }

  else
  {

    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

id sub_20B84A898(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

BOOL sub_20B84A8F0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-v5];
  v7 = sub_20C133E24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B52F9E8(a1, v6, &qword_27C766810, &unk_20C16B440);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &qword_27C766810, &unk_20C16B440);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  if (sub_20C134EB4())
  {
    v12 = sub_20C133E04();
    MEMORY[0x28223BE20](v12);
    *&v22[-16] = v2;
    v14 = sub_20BEE0940(sub_20B84B3D8, &v22[-32], v13);
    v15 = sub_20C133DF4();
    MEMORY[0x28223BE20](v15);
    *&v22[-16] = v2;
    v17 = sub_20BEE0940(sub_20B84B3B8, &v22[-32], v16);
    (*(v8 + 8))(v10, v7);
    v18 = v17[2];

    if (v18)
    {

      return 1;
    }

    v20 = v14[2];
  }

  else
  {
    v19 = *(sub_20C133DF4() + 16);

    if (v19)
    {
      (*(v8 + 8))(v10, v7);
      return 1;
    }

    v21 = sub_20C133E04();
    (*(v8 + 8))(v10, v7);
    v20 = *(v21 + 16);
  }

  return v20 != 0;
}

uint64_t sub_20B84ABE4(uint64_t a1)
{
  v2 = sub_20C135C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7667D8, &unk_20C15D480);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v9 - 8);
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_20B747A04(a1, &v24 - v15);
  (*(v3 + 56))(v16, 0, 1, v2);
  sub_20C134E84();
  v17 = *(v6 + 56);
  sub_20B52F9E8(v16, v8, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B52F9E8(v13, &v8[v17], &unk_27C7629B0, &unk_20C1510C0);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_20B52F9E8(v8, v25, &unk_27C7629B0, &unk_20C1510C0);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v20 = v24;
      sub_20B7479A0(&v8[v17], v24);
      v21 = v25;
      v22 = MEMORY[0x20F2ED3D0](v25, v20);
      sub_20B6134F0(v20);
      sub_20B520158(v13, &unk_27C7629B0, &unk_20C1510C0);
      sub_20B520158(v16, &unk_27C7629B0, &unk_20C1510C0);
      sub_20B6134F0(v21);
      sub_20B520158(v8, &unk_27C7629B0, &unk_20C1510C0);
      v19 = v22 ^ 1;
      return v19 & 1;
    }

    sub_20B520158(v13, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B520158(v16, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B6134F0(v25);
    goto LABEL_6;
  }

  sub_20B520158(v13, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v16, &unk_27C7629B0, &unk_20C1510C0);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_20B520158(v8, &qword_27C7667D8, &unk_20C15D480);
    v19 = 1;
    return v19 & 1;
  }

  sub_20B520158(v8, &unk_27C7629B0, &unk_20C1510C0);
  v19 = 0;
  return v19 & 1;
}

BOOL sub_20B84AFA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v28 = sub_20C134EC4();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_20C133E24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(a1, v12, &qword_27C766810, &unk_20C16B440);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &qword_27C766810, &unk_20C16B440);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_20B52F9E8(v27, v4, &qword_27C7649E0, &unk_20C1643C0);
    v18 = v5;
    v19 = v28;
    if ((*(v5 + 48))(v4, 1, v28) == 1)
    {
      sub_20B520158(v4, &qword_27C7649E0, &unk_20C1643C0);
      v20 = *(sub_20C133DF4() + 16);

      if (v20)
      {
        (*(v14 + 8))(v16, v13);
        return 1;
      }

      else
      {
        v22 = sub_20C133E04();
        (*(v14 + 8))(v16, v13);
        v23 = *(v22 + 16);

        return v23 != 0;
      }
    }

    else
    {
      v21 = v26;
      (*(v5 + 32))(v26, v4, v19);
      (*(v14 + 16))(v9, v16, v13);
      (*(v14 + 56))(v9, 0, 1, v13);
      v17 = sub_20B84A8F0(v9);
      sub_20B520158(v9, &qword_27C766810, &unk_20C16B440);
      (*(v18 + 8))(v21, v19);
      (*(v14 + 8))(v16, v13);
    }
  }

  return v17;
}

double sub_20B84B3F4()
{
  *&xmmword_27C79A7D0 = [objc_opt_self() blackColor];
  *(&xmmword_27C79A7D0 + 8) = xmmword_20C15D8A0;
  dword_27C79A7E8 = 1055286886;
  result = 24.0;
  xmmword_27C79A7F0 = xmmword_20C15D8B0;
  qword_27C79A800 = 0;
  unk_27C79A808 = 0;
  qword_27C79A820 = 0;
  xmmword_27C79A810 = 0x3FF0000000000000uLL;
  return result;
}

CGFloat sub_20B84B468()
{
  v0 = [objc_opt_self() blackColor];
  CGAffineTransformMakeScale(&v2, 0.73, 0.73);
  result = v2.a;
  *&xmmword_27C79A828 = v0;
  *(&xmmword_27C79A828 + 8) = xmmword_20C15D8C0;
  dword_27C79A840 = 1045220557;
  unk_27C79A848 = 0x4020000000000000;
  *byte_27C79A850 = v2;
  return result;
}

char *sub_20B84B504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v14 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_backgroundView;
  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v15 layer];
  [v16 setCornerRadius_];

  [v15 setClipsToBounds_];
  *&v13[v14] = v15;
  v17 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_stackView;
  v107 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_stackView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v18 &selRef_count + 2];
  [v18 setAxis_];
  [v18 setAlignment_];
  [v18 setLayoutMarginsRelativeArrangement_];
  *&v13[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_titleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v20 &selRef_count + 2];
  [v20 setTextAlignment_];
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v22];

  [v20 setBaselineAdjustment_];
  [v20 setAdjustsFontSizeToFitWidth_];
  [v20 setNumberOfLines_];
  *&v13[v19] = v20;
  v23 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_subtitleLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v24 &selRef_count + 2];
  [v24 setTextAlignment_];
  LODWORD(v25) = 1148846080;
  [v24 setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v26];

  [v24 setBaselineAdjustment_];
  [v24 setLineBreakMode_];
  [v24 setNumberOfLines_];
  *&v13[v23] = v24;
  v27 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryPhoneButton;
  v28 = objc_opt_self();
  v29 = [v28 whiteColor];
  type metadata accessor for RoundedButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [ObjCClassFromMetadata buttonWithType_];
  [v31 setTitle:0 forState:0];
  v32 = v31;
  v33 = [v32 titleLabel];
  [v33 setAdjustsFontForContentSizeCategory_];

  sub_20BD4F054(0, 0, 1, 0);
  [v32 setTintColor_];

  [v32 &selRef_count + 2];
  *&v13[v27] = v32;
  v34 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryPhoneButton;
  v113 = v28;
  v35 = [v28 whiteColor];
  v36 = [ObjCClassFromMetadata buttonWithType_];
  [v36 setTitle:0 forState:0];
  v37 = v36;
  v38 = [v37 titleLabel];
  [v38 setAdjustsFontForContentSizeCategory_];

  sub_20BD4F054(0, 0, 1, 0);
  [v37 setTintColor_];

  [v37 &selRef_count + 2];
  *&v13[v34] = v37;
  v39 = &v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_styleProvider];
  sub_20B84D44C(v118);
  sub_20B84DA24(v119 + 8);
  v40 = v119[3];
  *(v39 + 12) = v119[2];
  *(v39 + 13) = v40;
  v41 = v119[5];
  *(v39 + 14) = v119[4];
  *(v39 + 15) = v41;
  v42 = v118[9];
  *(v39 + 8) = v118[8];
  *(v39 + 9) = v42;
  v43 = v119[1];
  *(v39 + 10) = v119[0];
  *(v39 + 11) = v43;
  v44 = v118[5];
  *(v39 + 4) = v118[4];
  *(v39 + 5) = v44;
  v45 = v118[7];
  *(v39 + 6) = v118[6];
  *(v39 + 7) = v45;
  v46 = v118[1];
  *v39 = v118[0];
  *(v39 + 1) = v46;
  v47 = v118[3];
  *(v39 + 2) = v118[2];
  *(v39 + 3) = v47;
  v48 = &v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_titleText];
  *v48 = a1;
  v48[1] = a2;
  v49 = &v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_subtitleText];
  *v49 = a3;
  v49[1] = a4;
  v50 = &v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryActionTitle];
  *v50 = a5;
  v50[1] = a6;
  v51 = &v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryActionTitle];
  *v51 = a7;
  v51[1] = a8;
  *&v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_featureView] = a9;
  v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_platform] = a10;
  v52 = swift_allocObject();
  *(v52 + 16) = a11;
  *(v52 + 24) = a12;
  v53 = &v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_actionResultBlock];
  *v53 = sub_20B84E1F0;
  v53[1] = v52;
  v54 = *&v13[v107];
  v55 = *(v39 + 31);
  v56 = objc_allocWithZone(type metadata accessor for ScrollableStackViewContainer());
  v112 = a9;

  v57 = v54;

  sub_20BC91B14(v57, a10, 0, v55, v55, v55, v55);
  v59 = v58;

  [v59 &selRef_count + 2];
  *&v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_contentView] = v59;
  v60 = _UISolariumEnabled();
  v61 = 0;
  v62 = MEMORY[0x277D76938];
  if (v60)
  {
    v61 = [objc_opt_self() smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
  }

  v63 = type metadata accessor for TVButtonTextContentView();
  v64 = objc_allocWithZone(v63);

  v65 = TVButtonTextContentView.init(title:)(a5, a6);
  v66 = v65;
  if (v61)
  {
    [*&v65[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v67 = type metadata accessor for TVButton();
  v68 = sub_20BB87F6C(v66, 0, 0, objc_allocWithZone(v67), 0.0, 0.0, 0.0, 0.0);

  *&v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryTVButton] = v68;
  if (a8)
  {
    v69 = a7;
  }

  else
  {
    v69 = 0;
  }

  if (a8)
  {
    v70 = a8;
  }

  else
  {
    v70 = 0xE000000000000000;
  }

  v71 = 0;
  if (_UISolariumEnabled())
  {
    v71 = [objc_opt_self() smu:*v62 preferredFontForTextStyle:8 variant:?];
  }

  v72 = objc_allocWithZone(v63);
  v73 = TVButtonTextContentView.init(title:)(v69, v70);
  v74 = v73;
  if (v71)
  {
    [*&v73[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v75 = sub_20BB87F6C(v74, 0, 0, objc_allocWithZone(v67), 0.0, 0.0, 0.0, 0.0);

  *&v13[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryTVButton] = v75;
  v117.receiver = v13;
  v117.super_class = type metadata accessor for SessionPromptAlertViewController();
  v76 = objc_msgSendSuper2(&v117, sel_initWithNibName_bundle_, 0, 0);
  v77 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryPhoneButton;
  v78 = *&v76[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryPhoneButton];
  v79 = objc_allocWithZone(MEMORY[0x277D75348]);
  v80 = v76;
  v81 = v78;
  v82 = [v79 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v81 setBackgroundColor_];

  v83 = *&v76[v77];
  v84 = [v28 systemBackgroundColor];
  [v83 setTintColor_];

  v85 = *&v76[v77];
  v86 = sub_20C13C914();

  [v85 setTitle:v86 forState:0];

  v87 = [*&v76[v77] titleLabel];
  [v87 setAdjustsFontSizeToFitWidth_];

  [*&v76[v77] addTarget:v80 action:sel_burnbarOnButtonTapped forControlEvents:64];
  v88 = *&v76[v77];
  v89 = &v88[OBJC_IVAR____TtC9SeymourUI13RoundedButton_defaultContentInsets];
  *v89 = xmmword_20C15D8F0;
  *(v89 + 1) = xmmword_20C15D8F0;
  v90 = v88;
  sub_20BD4F5AC();

  v91 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryPhoneButton;
  v92 = *&v80[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryPhoneButton];
  v93 = [v113 clearColor];
  [v92 setBackgroundColor_];

  v94 = *&v80[v91];
  v95 = objc_allocWithZone(MEMORY[0x277D75348]);
  v96 = v94;
  v97 = [v95 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v96 setTintColor_];

  v98 = *&v80[v91];
  if (a8)
  {

    v99 = v98;
    v100 = sub_20C13C914();
  }

  else
  {
    v101 = v98;
    v100 = 0;
  }

  [v98 setTitle:v100 forState:0];

  v102 = [*&v80[v91] titleLabel];
  [v102 setAdjustsFontSizeToFitWidth_];

  [*&v80[v91] addTarget:v80 action:sel_burnbarOffButtonTapped forControlEvents:64];
  v103 = *&v80[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryTVButton];
  [v103 addTarget:v80 action:sel_burnbarOnButtonTapped forControlEvents:0x2000];

  if (a8)
  {

    v104 = *&v80[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryTVButton];
    [v104 addTarget:v80 action:sel_burnbarOffButtonTapped forControlEvents:0x2000];
  }

  return v80;
}

void sub_20B84C0F0()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for SessionPromptAlertViewController();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_backgroundView];
  [v5 addSubview_];

  v8 = [v3 systemGray5Color];
  [v7 setBackgroundColor_];

  v9 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_contentView];
  [v7 addSubview_];
  v10 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_featureView];
  if (v10)
  {
    v11 = v10;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_stackView];
    [v12 addArrangedSubview_];
    [v12 setCustomSpacing:v11 afterView:*&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_styleProvider + 208]];
    [v11 layoutIfNeeded];
    [v9 setNeedsLayout];
  }

  v13 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_titleLabel];
  v14 = sub_20C13C914();
  [v13 setText_];

  v15 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_stackView];
  [v15 addArrangedSubview_];
  [v15 setCustomSpacing:v13 afterView:10.0];
  v16 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_subtitleLabel];
  v17 = sub_20C13C914();
  [v16 setText_];

  [v15 addArrangedSubview_];
  v18 = &v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_styleProvider];
  [v15 setCustomSpacing:v16 afterView:*&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_styleProvider + 240]];
  v19 = sub_20C138104();
  v20 = sub_20C138104();
  v21 = &OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryTVButton;
  if (v19 != v20)
  {
    v21 = &OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryPhoneButton;
  }

  v22 = *&v0[*v21];
  [v15 addArrangedSubview_];
  [v15 setCustomSpacing:v22 afterView:v18[27]];
  if (*&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryActionTitle + 8])
  {
    v23 = sub_20C138104();
    v24 = sub_20C138104();
    v25 = &OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryTVButton;
    if (v23 != v24)
    {
      v25 = &OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryPhoneButton;
    }

    [v15 addArrangedSubview_];
  }

  v26 = [v0 traitCollection];
  sub_20B84C6EC(v26);

  sub_20B84C87C();
}

uint64_t sub_20B84C4C4(void *a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for SessionPromptAlertViewController();
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        sub_20B84C6EC(v13);

        v3 = Strong;
      }
    }
  }

  else
  {
    v15 = [v1 traitCollection];
    v3 = swift_unknownObjectUnownedLoadStrong();
    sub_20B84C6EC(v15);
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20B84C6EC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_subtitleLabel);
  v5 = sub_20B7C6A74(a1);
  [v4 setFont_];

  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_titleLabel);
  v7 = sub_20B7C6A74(a1);
  [v6 setFont_];

  v8 = sub_20B7C6A74(a1);
  sub_20BD4F054(v8, 0, 1, 0);

  v9 = sub_20B7C6A74(a1);
  sub_20BD4F054(v9, 0, 1, 0);
}

void sub_20B84C87C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_backgroundView];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v34 = UIView.constraintsPinningCenterToCenterOfView(_:)(v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C151490;
    v6 = [v2 widthAnchor];
    if (sub_20C1380F4() == 1)
    {
      v7 = 540.0;
    }

    else
    {
      v8 = [objc_opt_self() mainScreen];
      [v8 bounds];
      v7 = v9;
    }

    v10 = [v6 constraintEqualToConstant_];

    *(inited + 32) = v10;
    v11 = [v2 heightAnchor];
    if (sub_20C1380F4() == 1)
    {
      v12 = 520.0;
    }

    else
    {
      v13 = [objc_opt_self() &selRef__nonRepeatableKeyCommand];
      [v13 bounds];
      v12 = v14;
    }

    v15 = [v11 constraintEqualToConstant_];

    *(inited + 40) = v15;
    sub_20B8D9310(inited);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_20C14FE90;
    v17 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_contentView];
    v18 = [*&v1[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_contentView] leadingAnchor];
    v19 = [v2 safeAreaLayoutGuide];
    v20 = [v19 leadingAnchor];

    v21 = [v18 constraintEqualToAnchor_];
    *(v16 + 32) = v21;
    v22 = [v17 trailingAnchor];
    v23 = [v2 safeAreaLayoutGuide];
    v24 = [v23 trailingAnchor];

    v25 = [v22 constraintEqualToAnchor_];
    *(v16 + 40) = v25;
    v26 = [v17 topAnchor];
    v27 = [v2 topAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v16 + 48) = v28;
    v29 = [v17 bottomAnchor];
    v30 = [v2 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v16 + 56) = v31;
    v32 = objc_opt_self();
    sub_20B8D9310(v16);
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v33 = sub_20C13CC54();

    [v32 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20B84CCD8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *&a1[OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_actionResultBlock];
  v6 = a1;
  v4(a3);
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {
    sub_20B84CD8C();
  }

  else
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_20B84CD8C()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v6[4] = sub_20B84E9B4;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_20B7B548C;
    v6[3] = &block_descriptor_25;
    v4 = _Block_copy(v6);
    v5 = v2;

    [v5 dismissViewControllerAnimated:1 completion:v4];

    _Block_release(v4);
  }
}

uint64_t sub_20B84CE94(void *a1)
{
  v2 = sub_20C13C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C4F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v10 = sub_20C13D374();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_20B84E9BC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

id sub_20B84D158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionPromptAlertViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_20B84D374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B84D3BC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_20B84D44C(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D76920];
  v41 = 1;
  v40 = 0;
  v3 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v38 = v2;
  sub_20C13CA64();
  v4 = sub_20C13E1B4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(v3 + 48) + v6);
      if (v8 >= 4)
      {
        break;
      }

      v9 = sub_20C13DFF4();

      if (v9)
      {
        v37 = v3;
        goto LABEL_9;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v11 = MEMORY[0x277D84FA0];
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v39 = v3;
    sub_20B706478(4u, v6, isUniquelyReferenced_nonNull_native);
    v11 = v3;
  }

  v37 = v11;
LABEL_9:
  v35 = v41;
  v36 = v40;
  v12 = *MEMORY[0x277D76918];
  v34 = *MEMORY[0x277D76828];
  sub_20B6FF83C(v39, 1);
  v13 = v3;
  sub_20C13E164();
  v33 = v12;
  sub_20C13CA64();
  v14 = sub_20C13E1B4();
  v15 = -1 << *(v3 + 32);
  v16 = v14 & ~v15;
  if ((*(v3 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = *(*(v3 + 48) + v16);
      if (v18 >= 4)
      {
        break;
      }

      v19 = sub_20C13DFF4();

      if (v19)
      {
        goto LABEL_15;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v3 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *v39 = v3;
    sub_20B706478(4u, v16, v20);
    v13 = *v39;
  }

LABEL_15:
  v30 = *MEMORY[0x277D74410];
  v31 = *MEMORY[0x277D74420];
  v21 = *MEMORY[0x277D76A08];
  v32 = *MEMORY[0x277D743F8];
  sub_20C13E164();
  v22 = v21;
  sub_20C13CA64();
  v23 = sub_20C13E1B4();
  v24 = -1 << *(v3 + 32);
  v25 = v23 & ~v24;
  if ((*(v3 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25))
  {
    v26 = ~v24;
    while (1)
    {
      v27 = *(*(v3 + 48) + v25);
      if (v27 >= 4)
      {
        break;
      }

      v28 = sub_20C13DFF4();

      if (v28)
      {
        goto LABEL_21;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v3 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v3 = MEMORY[0x277D84FA0];
  }

  else
  {
LABEL_20:
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *v39 = v3;
    sub_20B706478(4u, v25, v29);
    v3 = *v39;
  }

LABEL_21:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v38;
  *(a1 + 24) = 0;
  *(a1 + 28) = v35;
  *(a1 + 29) = 9;
  *(a1 + 32) = v30;
  *(a1 + 40) = v36;
  *(a1 + 48) = v37;
  *(a1 + 56) = 0;
  *(a1 + 64) = v34;
  *(a1 + 72) = v33;
  *(a1 + 80) = 0;
  *(a1 + 84) = 1;
  *(a1 + 85) = 9;
  *(a1 + 88) = v31;
  *(a1 + 96) = 0;
  *(a1 + 104) = v13;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = v22;
  *(a1 + 136) = 0;
  *(a1 + 140) = 1;
  *(a1 + 141) = 9;
  *(a1 + 144) = v32;
  *(a1 + 152) = 0;
  *(a1 + 160) = v3;
}

uint64_t sub_20B84DA24@<X0>(uint64_t a2@<X8>)
{
  sub_20C1380F4();
  v3 = objc_opt_self();
  v4 = [v3 mainScreen];
  [v4 nativeBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v13 = [v3 mainScreen];
  [v13 nativeScale];

  v14 = sub_20C138104();
  if (v14 == sub_20C138104())
  {
    v15 = 420.0;
  }

  else
  {
    v15 = 30.0;
  }

  v16 = 40.0;
  v17 = 5.0;
  if (sub_20C1380F4() == 1)
  {
    v18 = 40.0;
  }

  else
  {
    v18 = 5.0;
  }

  if (sub_20C1380F4() == 3)
  {
    v17 = 10.0;
  }

  v19 = sub_20C1380F4();
  if (v19 == 3)
  {
    v20 = 525.0;
  }

  else
  {
    v20 = 260.0;
  }

  if (v19 == 3)
  {
    v21 = 155.0;
  }

  else
  {
    v21 = 90.0;
  }

  if (sub_20C1380F4() == 1)
  {
    v16 = 50.0;
  }

  result = sub_20C1380F4();
  v23 = 200.0;
  *a2 = xmmword_20C15CE00;
  *(a2 + 16) = xmmword_20C15CE00;
  if (result != 3)
  {
    v23 = 20.0;
  }

  *(a2 + 32) = v15;
  *(a2 + 40) = v18;
  *(a2 + 48) = v17;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = v16;
  *(a2 + 80) = v23;
  return result;
}

char *sub_20B84DBE8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BurnBar(0);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter;
  v4 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter];
  v5 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView;
  v6 = *&v4[OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView];
  v7 = v4;
  [v6 removeFromSuperview];
  v8 = sub_20B9194AC(63);
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v10 = v8;
  v11 = [v9 initWithRed:0.945098039 green:0.843137255 blue:0.894117647 alpha:1.0];
  [(objc_super *)v10 setTintColor:v11];

  v12 = *&v4[v5];
  *&v4[v5] = v10;

  [v7 addSubview_];
  [v7 setNeedsLayout];

  v13 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey];
  v14 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey + 8];

  sub_20BBB5E14(v13, v14);

  *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion] = 0x3FE4CCCCCCCCCCCDLL;
  v15 = v2;
  [v15 setNeedsLayout];
  sub_20B7BAFD0(*&v15[OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey], *&v15[OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey + 8], 0.15, *&v15[OBJC_IVAR____TtC9SeymourUI7BurnBar_progress], 151.56609, 24.62244);

  sub_20BC1688C();

  v16 = *(*&v2[v3] + OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView);
  sub_20B91909C();

  sub_20B84D44C(v49);
  sub_20B84DA24(v50 + 8);
  v51[12] = v50[2];
  v51[13] = v50[3];
  v52 = v50[4];
  v53 = v50[5];
  v51[8] = v49[8];
  v51[9] = v49[9];
  v51[10] = v50[0];
  v51[11] = v50[1];
  v51[4] = v49[4];
  v51[5] = v49[5];
  v51[6] = v49[6];
  v51[7] = v49[7];
  v51[0] = v49[0];
  v51[1] = v49[1];
  v51[2] = v49[2];
  v51[3] = v49[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C151490;
  v18 = [v15 widthAnchor];
  v19 = *(&v52 + 1);
  v20 = [v18 constraintEqualToConstant_];

  *(v17 + 32) = v20;
  v21 = [v15 heightAnchor];

  v22 = [v21 constraintEqualToConstant_];
  *(v17 + 40) = v22;
  v23 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v24 = sub_20C13CC54();

  [v23 activateConstraints_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = objc_opt_self();
  v27 = [v26 bundleForClass_];
  v28 = sub_20C132964();
  v46 = v29;
  v47 = v28;

  v30 = [v26 &selRef:ObjCClassFromMetadata :0xE000000000000000speedBumpEdges + 3];
  v31 = sub_20C132964();
  v44 = v32;
  v45 = v31;

  v33 = [v26 &selRef:ObjCClassFromMetadata :0xE000000000000000speedBumpEdges + 3];
  v34 = sub_20C132964();
  v36 = v35;

  v37 = [v26 bundleForClass_];
  v38 = sub_20C132964();
  v40 = v39;

  LOBYTE(v37) = sub_20C1380F4();
  objc_allocWithZone(type metadata accessor for SessionPromptAlertViewController());

  v42 = sub_20B84B504(v47, v46, v45, v44, v34, v36, v38, v40, v15, v37, a1, v41);
  sub_20B84E1C0(v51);

  return v42;
}

void sub_20B84E21C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_backgroundView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];

  [v3 setClipsToBounds_];
  *(v1 + v2) = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_stackView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v6 &selRef_count + 2];
  [v6 setAxis_];
  [v6 setAlignment_];
  [v6 setLayoutMarginsRelativeArrangement_];
  *(v1 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 &selRef_count + 2];
  [v8 setTextAlignment_];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v10];

  [v8 setBaselineAdjustment_];
  [v8 setAdjustsFontSizeToFitWidth_];
  [v8 setNumberOfLines_];
  *(v1 + v7) = v8;
  v11 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_subtitleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v12 &selRef_count + 2];
  [v12 setTextAlignment_];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v14];

  [v12 setBaselineAdjustment_];
  [v12 setLineBreakMode_];
  [v12 setNumberOfLines_];
  *(v1 + v11) = v12;
  v15 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_primaryPhoneButton;
  v16 = objc_opt_self();
  v17 = [v16 whiteColor];
  type metadata accessor for RoundedButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [ObjCClassFromMetadata buttonWithType_];
  [v19 setTitle:0 forState:0];
  v20 = v19;
  v21 = [v20 titleLabel];
  [v21 setAdjustsFontForContentSizeCategory_];

  sub_20BD4F054(0, 0, 1, 0);
  [v20 setTintColor_];

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v15) = v20;
  v22 = OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_secondaryPhoneButton;
  v23 = [v16 whiteColor];
  v24 = [ObjCClassFromMetadata buttonWithType_];
  [v24 setTitle:0 forState:0];
  v25 = v24;
  v26 = [v25 titleLabel];
  [v26 setAdjustsFontForContentSizeCategory_];

  sub_20BD4F054(0, 0, 1, 0);
  [v25 setTintColor_];

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v22) = v25;
  v27 = (v1 + OBJC_IVAR____TtC9SeymourUI32SessionPromptAlertViewController_styleProvider);
  sub_20B84D44C(v36);
  sub_20B84DA24(v37 + 8);
  v28 = v37[3];
  v27[12] = v37[2];
  v27[13] = v28;
  v29 = v37[5];
  v27[14] = v37[4];
  v27[15] = v29;
  v30 = v36[9];
  v27[8] = v36[8];
  v27[9] = v30;
  v31 = v37[1];
  v27[10] = v37[0];
  v27[11] = v31;
  v32 = v36[5];
  v27[4] = v36[4];
  v27[5] = v32;
  v33 = v36[7];
  v27[6] = v36[6];
  v27[7] = v33;
  v34 = v36[1];
  *v27 = v36[0];
  v27[1] = v34;
  v35 = v36[3];
  v27[2] = v36[2];
  v27[3] = v35;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B84E75C(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  v18 = sub_20C132964();
  v19 = v6;

  v7 = [v4 bundleForClass_];
  v8 = sub_20C132964();
  v10 = v9;

  v11 = [v4 &selRef:ObjCClassFromMetadata :0xE000000000000000speedBumpEdges + 3];
  v12 = sub_20C132964();
  v14 = v13;

  LOBYTE(v11) = sub_20C1380F4();
  v15 = objc_allocWithZone(type metadata accessor for SessionPromptAlertViewController());

  return sub_20B84B504(v18, v19, v8, v10, v12, v14, 0, 0, 0, v11, a2, v16);
}

id sub_20B84E9BC()
{
  v1 = *(v0 + 16);
  [v1 setNeedsFocusUpdate];

  return [v1 updateFocusIfNeeded];
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_20B84EA54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B84EA9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20B84EB1C()
{
  if (*(v0 + 32))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v14.origin.x = v3;
    v14.origin.y = v5;
    v14.size.width = v7;
    v14.size.height = v9;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Height = CGRectGetHeight(v15);
    if (Height >= Width)
    {
      v12 = Width;
    }

    else
    {
      v12 = Height;
    }

    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    v13 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    *(v0 + 24) = (v12 - (v13 + *&qword_27C799F50)) * 0.5;
    *(v0 + 32) = 0;
  }
}

char *sub_20B84EC60(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20, &unk_20C15DB90);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = &v62 - v10;
  v11 = sub_20C13BC44();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20C13BBC4();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_itemInfo;
  v15 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v4[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_showSeparator] = 1;
  v16 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v17 = 16.0;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = &v4[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView];
  v19 = [v16 layer];
  [v19 setCornerRadius_];

  [v16 setClipsToBounds_];
  *v18 = v16;
  v18[1] = &off_2822B63E8;
  v20 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_separator;
  v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = objc_opt_self();
  v23 = [v22 separatorColor];
  [v21 setBackgroundColor_];

  *&v4[v20] = v21;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  v25 = *MEMORY[0x277D76968];
  v26 = objc_opt_self();
  v27 = [v26 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_subtitleLabel;
  v31 = objc_opt_self();
  v32 = [v31 fontWithDescriptor:v27 size:0.0];

  [v24 setFont_];
  [v24 setAllowsDefaultTighteningForTruncation_];
  v33 = [v22 whiteColor];
  [v24 setTextColor_];

  [v24 setNumberOfLines_];
  [v24 setLineBreakMode_];
  *&v4[v30] = v24;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [v26 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_titleLabel;
  v39 = [v31 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v40 = [v22 whiteColor];
  [v34 setTextColor_];

  [v34 setNumberOfLines_];
  [v34 setLineBreakMode_];
  *&v4[v38] = v34;
  v41 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_textLayoutGuide;
  *&v4[v41] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v42 = &v4[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_layout];
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  *(v42 + 2) = 0x4034000000000000;
  *(v42 + 3) = 0;
  v42[32] = 1;
  *(v42 + 5) = 0x3FE2000000000000;
  v48 = type metadata accessor for PhoneStandardBrickRowCell(0);
  v70.receiver = v4;
  v70.super_class = v48;
  v49 = objc_msgSendSuper2(&v70, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28, &unk_20C15AA40);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v51 = v63;
  v50 = v64;
  v52 = v66;
  (*(v64 + 104))(v63, *MEMORY[0x277D74A98], v66);
  v53 = sub_20C13BBF4();
  (*(*(v53 - 8) + 56))(v67, 1, 1, v53);
  v54 = v49;
  v55 = v65;
  sub_20C13BC34();
  sub_20C13BC04();
  (*(v68 + 8))(v55, v69);
  (*(v50 + 8))(v51, v52);
  sub_20C13D464();
  v56 = [v54 contentView];
  [v56 addSubview_];

  v57 = [v54 contentView];
  [v57 addSubview_];

  v58 = [v54 contentView];
  [v58 addSubview_];

  [v54 addSubview_];
  v59 = [v54 contentView];

  [v59 addLayoutGuide_];
  v60 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v54 addLayoutGuide_];
  sub_20B84F7FC();

  return v54;
}

uint64_t sub_20B84F5B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for PhoneStandardBrickRowCell(0);
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

void sub_20B84F7FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151850;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v7 = [v4 constraintEqualToAnchor:v6 constant:*&qword_27C799F40];

  *(v2 + 32) = v7;
  v8 = [v3 widthAnchor];
  v9 = &v1[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_layout];
  swift_beginAccess();
  sub_20B84EB1C();
  v11 = v10;
  swift_endAccess();
  v12 = [v8 constraintEqualToConstant_];

  *(v2 + 40) = v12;
  v13 = [v3 heightAnchor];
  v14 = [v3 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 multiplier:v9[5]];

  *(v2 + 48) = v15;
  v16 = [v3 topAnchor];
  v17 = [v1 contentView];
  v18 = [v17 &selRef_setLineBreakMode_];

  v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18 constant:*v9];
  *(v2 + 56) = v19;
  v20 = [v3 bottomAnchor];
  v21 = [v1 contentView];
  v22 = [v21 &selRef_secondaryLabel + 5];

  v23 = [v20 constraintLessThanOrEqualToAnchor:v22 constant:-*v9];
  *(v2 + 64) = v23;
  v91 = v2;
  v24 = [v3 centerYAnchor];
  v25 = [v1 contentView];
  v26 = [v25 centerYAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v2 + 72) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C150050;
  v29 = v28;
  v30 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_textLayoutGuide];
  v31 = [v30 leadingAnchor];
  v32 = [v3 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v9[1]];

  v29[4] = v33;
  v34 = [v30 centerYAnchor];
  v35 = [v1 contentView];
  v36 = [v35 centerYAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  v29[5] = v37;
  v38 = [v30 trailingAnchor];
  v39 = [v1 contentView];
  v40 = [v39 trailingAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  v29[6] = v41;
  v42 = [v30 topAnchor];
  v43 = [v1 contentView];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintGreaterThanOrEqualToAnchor_];
  v29[7] = v45;
  v46 = [v30 bottomAnchor];
  v47 = [v1 contentView];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintLessThanOrEqualToAnchor_];
  v29[8] = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C150040;
  v51 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_titleLabel];
  v52 = [v51 leadingAnchor];
  v53 = [v30 leadingAnchor];
  v54 = [v52 &selRef:v53 alertControllerReleasedDictationButton:? + 5];

  *(v50 + 32) = v54;
  v55 = [v51 trailingAnchor];
  v56 = [v30 trailingAnchor];
  v57 = [v55 &selRef:v56 alertControllerReleasedDictationButton:? + 5];

  *(v50 + 40) = v57;
  v58 = [v51 topAnchor];
  v59 = [v30 topAnchor];
  v60 = [v58 &selRef:v59 alertControllerReleasedDictationButton:? + 5];

  *(v50 + 48) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_20C14FE90;
  v62 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_subtitleLabel];
  v63 = [v62 leadingAnchor];
  v64 = [v30 leadingAnchor];
  v65 = [v63 &selRef:v64 alertControllerReleasedDictationButton:? + 5];

  *(v61 + 32) = v65;
  v66 = [v62 trailingAnchor];
  v67 = [v30 trailingAnchor];
  v68 = [v66 &selRef:v67 alertControllerReleasedDictationButton:? + 5];

  *(v61 + 40) = v68;
  v69 = [v62 topAnchor];
  v70 = [v51 bottomAnchor];
  v71 = [v69 &selRef:v70 alertControllerReleasedDictationButton:? + 5];

  *(v61 + 48) = v71;
  v72 = [v62 bottomAnchor];
  v73 = [v30 bottomAnchor];
  v74 = [v72 &selRef:v73 alertControllerReleasedDictationButton:? + 5];

  *(v61 + 56) = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_20C14FE90;
  v76 = *&v1[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_separator];
  v77 = [v76 leadingAnchor];
  v78 = [v30 leadingAnchor];
  v79 = [v77 &selRef:v78 alertControllerReleasedDictationButton:? + 5];

  *(v75 + 32) = v79;
  v80 = [v76 trailingAnchor];
  v81 = [v1 trailingAnchor];
  v82 = [v80 &selRef:v81 alertControllerReleasedDictationButton:? + 5];

  *(v75 + 40) = v82;
  v83 = [v76 bottomAnchor];
  v84 = [v1 bottomAnchor];
  v85 = [v83 &selRef:v84 alertControllerReleasedDictationButton:? + 5];

  *(v75 + 48) = v85;
  v86 = [v76 heightAnchor];
  sub_20C1387F4();
  v87 = [v86 constraintEqualToConstant_];

  *(v75 + 56) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1582F0;
  *(inited + 32) = v91;
  *(inited + 40) = v29;
  *(inited + 48) = v50;
  *(inited + 56) = v61;
  *(inited + 64) = v75;
  v89 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v90 = sub_20C13CC54();

  [v89 activateConstraints_];
}

id sub_20B850350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneStandardBrickRowCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PhoneStandardBrickRowCell(uint64_t a1)
{
  result = qword_281101600;
  if (!qword_281101600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B850488(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B850564(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B8505B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B850608(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B85066C(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_separator) setHidden_];
}

void sub_20B8506BC(unint64_t a1)
{
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v234 = &v210 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v210 - v5;
  v233 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v210 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v11 - 8);
  v242 = &v210 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v244 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v210 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = v14;
  MEMORY[0x28223BE20](v16);
  v243 = &v210 - v17;
  v240 = sub_20C1391C4();
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v241 = &v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_20C138A64();
  v236 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v20 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v21 - 8);
  v238 = &v210 - v22;
  v23 = sub_20C13C554();
  v251 = *(v23 - 8);
  v252 = v23;
  MEMORY[0x28223BE20](v23);
  v250 = &v210 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C137C24();
  v257 = *(v25 - 8);
  v258 = v25;
  MEMORY[0x28223BE20](v25);
  v246 = &v210 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = v26;
  MEMORY[0x28223BE20](v27);
  v255 = &v210 - v28;
  v248 = sub_20C136CD4();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v254 = &v210 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C134E44();
  MEMORY[0x28223BE20](v30 - 8);
  v253 = &v210 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13BB84();
  v259 = *(v32 - 8);
  v260 = v32;
  MEMORY[0x28223BE20](v32);
  v34 = &v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v256 = &v210 - v36;
  v37 = sub_20C134014();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v249 = &v210 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v210 - v41;
  MEMORY[0x28223BE20](v43);
  v261 = &v210 - v45;
  v46 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v46 == 33)
  {
    v75 = v262;
    v76 = *&v262[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_titleLabel];
    v77 = sub_20C13C914();
    [v76 setText_];

    v78 = *&v75[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_subtitleLabel];
    v79 = sub_20C13C914();
    [v78 setText_];

    sub_20BA1DAF4();
    v80 = *&v75[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView];
    v81 = [v80 layer];
    [v81 setBorderColor_];

    v262 = [v80 layer];
    [v262 setBorderWidth_];
    v82 = v262;
  }

  else
  {
    if (v46 == 32)
    {
      v216 = v15;
      v220 = v20;
      v217 = v6;
      v221 = v13;
      v218 = v10;
      v219 = v2;
      v47 = v38;
      v48 = v44;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
      v50 = swift_projectBox();
      v51 = v50 + *(v49 + 64);
      v52 = *v51;
      v53 = *(v51 + 8);
      v54 = *(v51 + 24);
      v228 = *(v51 + 16);
      v56 = *(v51 + 32);
      v55 = *(v51 + 40);
      v231 = v47;
      v57 = *(v47 + 16);
      v58 = v261;
      v57(v261, v50, v48);
      v230 = v52;
      v229 = v53;
      v225 = v228;
      v228 = v54;

      v226 = v56;

      v224 = v55;

      v59 = v256;
      sub_20C13B524();
      v57(v42, v58, v48);
      v60 = v249;
      v61 = v48;
      v57(v249, v58, v48);
      v62 = sub_20C13BB74();
      v63 = sub_20C13D1F4();
      v64 = os_log_type_enabled(v62, v63);
      v227 = v61;
      if (v64)
      {
        v65 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        v263[0] = v223;
        *v65 = 136446466;
        v66 = sub_20C133E44();
        v68 = v67;
        v69 = *(v231 + 8);
        v69(v42, v61);
        v70 = sub_20B51E694(v66, v68, v263);

        *(v65 + 4) = v70;
        *(v65 + 12) = 2050;
        v71 = sub_20C133EB4();
        v69(v60, v61);
        v72 = v262;
        *(v65 + 14) = v71;
        _os_log_impl(&dword_20B517000, v62, v63, "[70636962] Configuring %{public}s with count %{public}ld", v65, 0x16u);
        v73 = v223;
        __swift_destroy_boxed_opaque_existential_1(v223);
        MEMORY[0x20F2F6A40](v73, -1, -1);
        MEMORY[0x20F2F6A40](v65, -1, -1);

        (*(v259 + 8))(v256, v260);
        v74 = v255;
      }

      else
      {
        v94 = *(v231 + 8);
        v94(v60, v61);

        v94(v42, v61);
        (*(v259 + 8))(v59, v260);
        v74 = v255;
        v72 = v262;
      }

      [*&v72[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_titleLabel] setAttributedText_];
      [*&v72[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_subtitleLabel] setAttributedText_];
      v95 = v253;
      v96 = v261;
      sub_20C133F04();
      v223 = sub_20C138054();
      v260 = v97;
      v98 = v254;
      sub_20C134E34();
      sub_20C136CB4();
      v222 = sub_20C136CC4();
      v249 = v99;
      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      v100 = sub_20C13D374();
      v102 = v250;
      v101 = v251;
      *v250 = v100;
      v103 = v252;
      (*(v101 + 104))(v102, *MEMORY[0x277D85200], v252);
      v104 = sub_20C13C584();
      (*(v101 + 8))(v102, v103);
      if ((v104 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v106 = *&v72[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView];
      v105 = *&v72[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v106 setContentMode_];
      v108 = sub_20BA66C54();
      v109 = v74;
      v252 = v106;
      v259 = v105;
      v256 = ObjectType;
      if ((v108 & 1) == 0)
      {

        v158 = v231;
        v159 = v258;
        v160 = v248;
        v161 = v247;
        v162 = v230;
        goto LABEL_25;
      }

      v110 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v111 = v257;
      v112 = *(v257 + 16);
      v113 = v246;
      v114 = v258;
      v214 = v257 + 16;
      v213 = v112;
      v112(v246, v74, v258);
      v115 = *(v111 + 80);
      v116 = (v115 + 24) & ~v115;
      v211 = v245 + 7;
      v117 = (v245 + 7 + v116) & 0xFFFFFFFFFFFFFFF8;
      v118 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
      v119 = (v118 + 23) & 0xFFFFFFFFFFFFFFF8;
      v250 = (v119 + 31) & 0xFFFFFFFFFFFFFFF8;
      v251 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
      v215 = v115;
      v120 = swift_allocObject();
      *(v120 + 16) = v110;
      v121 = v120 + v116;
      v122 = v111 + 32;
      v212 = *(v111 + 32);
      v212(v121, v113, v114);
      v123 = (v120 + v117);
      v124 = v249;
      *v123 = v222;
      v123[1] = v124;
      v125 = (v120 + v118);
      v126 = v260;
      *v125 = v223;
      v125[1] = v126;
      *(v120 + v119) = 2;
      v127 = v120 + v251;
      *v127 = MEMORY[0x277D84F90];
      *(v127 + 8) = 0;
      v128 = (v120 + v250);
      *v128 = 0;
      v128[1] = 0;
      v129 = v259;
      v130 = *(v259 + 152);

      v131 = v256;
      v130(sub_20B852108, v120, v256, v129);

      [v106 bounds];
      if (v132 <= 0.0)
      {

        v158 = v231;
        v96 = v261;
      }

      else
      {
        v134 = v133;
        v251 = v122;
        v96 = v261;
        if (v133 > 0.0)
        {
          v135 = v132;
          v136 = v106;
          v250 = ~v215;
          (*(v129 + 120))(0, v131, v129);
          v137 = v238;
          v138 = v129;
          v109 = v255;
          v139 = v258;
          v213(v238, v255, v258);
          (*(v257 + 56))(v137, 0, 1, v139);
          (*(v138 + 16))(v137, v131, v138);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v140 = sub_20C13D5A4();
          [v136 setBackgroundColor_];

          (*(v138 + 176))(COERCE_DOUBLE(*&v135), COERCE_DOUBLE(*&v134), 0, v131, v138);
          v238 = swift_allocObject();
          v141 = v246;
          swift_unknownObjectWeakInit();
          v142 = v213;
          v213(v141, v109, v139);
          v143 = (v215 + 16) & v250;
          v144 = (v211 + v143) & 0xFFFFFFFFFFFFFFF8;
          v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
          v146 = (v145 + 23) & 0xFFFFFFFFFFFFFFF8;
          v147 = swift_allocObject();
          v148 = v147 + v143;
          v149 = v258;
          v212(v148, v141, v258);
          *(v147 + v144) = v238;
          v150 = (v147 + v145);
          v151 = v142;
          *v150 = v135;
          v150[1] = v134;
          v238 = v147;
          v152 = (v147 + v146);
          *v152 = 0;
          v152[1] = 0;
          v142(v141, v109, v149);
          (*(v239 + 104))(v241, *MEMORY[0x277D542A8], v240);

          v153 = v220;
          v154 = v141;
          sub_20C138A54();
          v155 = v242;
          sub_20B5F1D20(v153, v242);
          v156 = v244;
          v157 = v221;
          if ((*(v244 + 48))(v155, 1, v221) == 1)
          {
            sub_20B520158(v155, &unk_27C766670, &unk_20C151580);
            sub_20BA1DAF4();
          }

          else
          {
            v249 = *(v156 + 32);
            (v249)(v243, v155, v157);
            v163 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v164 = v154;
            v165 = v154;
            v166 = v258;
            v151(v165, v109, v258);
            v167 = (v215 + 40) & v250;
            v168 = v167 + v245;
            v169 = (v167 + v245) & 0xFFFFFFFFFFFFFFF8;
            v170 = swift_allocObject();
            *(v170 + 2) = v163;
            v170[3] = v135;
            v170[4] = v134;
            v212(v170 + v167, v164, v166);
            *(v170 + v168) = 0;
            v171 = v170 + v169;
            *(v171 + 1) = 0;
            *(v171 + 2) = 0;
            v172 = swift_allocObject();
            *(v172 + 16) = sub_20B85229C;
            *(v172 + 24) = v170;
            v173 = v244;
            v174 = v216;
            v175 = v221;
            (*(v244 + 16))(v216, v243, v221);
            v176 = (*(v173 + 80) + 16) & ~*(v173 + 80);
            v177 = (v232 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
            v178 = swift_allocObject();
            (v249)(v178 + v176, v174, v175);
            v179 = (v178 + v177);
            *v179 = sub_20B5F67A4;
            v179[1] = v172;
            v180 = v217;
            sub_20C137C94();
            v181 = swift_allocObject();
            v182 = v238;
            *(v181 + 16) = sub_20B8521E0;
            *(v181 + 24) = v182;
            v183 = swift_allocObject();
            *(v183 + 16) = sub_20B5F67D4;
            *(v183 + 24) = v181;
            v184 = v219;
            v185 = v234;
            v186 = v235;
            (*(v219 + 16))(v234, v180, v235);
            v187 = (*(v184 + 80) + 16) & ~*(v184 + 80);
            v188 = (v233 + v187 + 7) & 0xFFFFFFFFFFFFFFF8;
            v189 = swift_allocObject();
            (*(v184 + 32))(v189 + v187, v185, v186);
            v190 = (v189 + v188);
            *v190 = sub_20B5DF204;
            v190[1] = v183;

            v191 = v218;
            sub_20C137C94();
            v192 = *(v184 + 8);
            v192(v180, v186);
            v193 = sub_20C137CB4();
            v194 = swift_allocObject();
            *(v194 + 16) = 0;
            *(v194 + 24) = 0;
            v193(sub_20B52347C, v194);

            v195 = v186;
            v96 = v261;
            v192(v191, v195);
            (*(v244 + 8))(v243, v221);
          }

          (*(v236 + 8))(v220, v237);
          v158 = v231;
          v159 = v258;
          v162 = v230;
          v160 = v248;
          goto LABEL_24;
        }

        v158 = v231;
      }

      v159 = v258;
      v162 = v230;
      v160 = v248;
      v109 = v255;
LABEL_24:
      v161 = v247;
      v95 = v253;
      v98 = v254;
LABEL_25:
      (*(v257 + 8))(v109, v159);
      (*(v161 + 8))(v98, v160);

      sub_20B62A2AC(v95);
      v196 = sub_20C133EB4() > 0;
      v197 = v259;
      v198 = v256;
      (*(v259 + 264))(v196, v256, v259);
      v199 = sub_20C133E54();
      (*(v197 + 296))(v199);

      v200 = sub_20C133FF4();
      v202 = v201;
      v204 = v203;
      sub_20B5F0A04(v200, v201, v203);
      sub_20B584078(v200, v202, v204);
      v205 = sub_20C133E94();
      v207 = v206;
      LOBYTE(v265) = 3;
      v263[0] = v205;
      v263[1] = v206;
      LOBYTE(v202) = v208 & 1;
      v264 = v208 & 1;
      sub_20B852060();
      sub_20B8520B4();
      v209 = sub_20C133C14();
      sub_20B583F4C(v205, v207, v202);
      if (v209)
      {
        (*(v197 + 272))(1, v198, v197);

        (*(v158 + 8))(v96, v227);
      }

      else
      {
        (*(v158 + 8))(v96, v227);
      }

      return;
    }

    sub_20C13B534();

    v83 = v262;
    v84 = sub_20C13BB74();
    v85 = sub_20C13D1D4();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v263[0] = v88;
      *v86 = 138543618;
      *(v86 + 4) = v83;
      *v87 = v83;
      *(v86 + 12) = 2082;
      v265 = a1;
      v89 = sub_20B5F66D0();
      v90 = v83;
      v91 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v89);
      v93 = sub_20B51E694(v91, v92, v263);

      *(v86 + 14) = v93;
      _os_log_impl(&dword_20B517000, v84, v85, "Attempted to configure %{public}@ with item: %{public}s", v86, 0x16u);
      sub_20B520158(v87, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v87, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x20F2F6A40](v88, -1, -1);
      MEMORY[0x20F2F6A40](v86, -1, -1);
    }

    (*(v259 + 8))(v34, v260);
  }
}

unint64_t sub_20B852060()
{
  result = qword_281103BA8;
  if (!qword_281103BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103BA8);
  }

  return result;
}

unint64_t sub_20B8520B4()
{
  result = qword_281103BA0;
  if (!qword_281103BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103BA0);
  }

  return result;
}

void sub_20B852108()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA54344(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B8521E0(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63810(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B85229C(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F306C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20B852350()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_showSeparator) = 1;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_separator;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  v10 = [v9 separatorColor];
  [v8 setBackgroundColor_];

  *(v0 + v7) = v8;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = *MEMORY[0x277D76968];
  v13 = objc_opt_self();
  v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_subtitleLabel;
  v18 = objc_opt_self();
  v19 = [v18 fontWithDescriptor:v14 size:0.0];

  [v11 setFont_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v20 = [v9 whiteColor];
  [v11 setTextColor_];

  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  *(v0 + v17) = v11;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = [v13 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_titleLabel;
  v26 = [v18 fontWithDescriptor:v22 size:0.0];

  [v21 setFont_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v27 = [v9 whiteColor];
  [v21 setTextColor_];

  [v21 setNumberOfLines_];
  [v21 setLineBreakMode_];
  *(v0 + v25) = v21;
  v28 = OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_textLayoutGuide;
  *(v0 + v28) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v29 = v0 + OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_layout;
  __asm { FMOV            V0.2D, #10.0 }

  *v29 = _Q0;
  *(v29 + 16) = 0x4034000000000000;
  *(v29 + 24) = 0;
  *(v29 + 32) = 1;
  *(v29 + 40) = 0x3FE2000000000000;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B852854(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementAppearance];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementDisappearance];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v4[OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onImpressionableBoundsChange];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onVisibleBoundsChange];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_segmentedControl;
  v16 = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v15] = v16;
  v42.receiver = v4;
  v42.super_class = type metadata accessor for SegmentedOptionPickerCell(0);
  v17 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_segmentedControl;
  v19 = *&v17[OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_segmentedControl];
  v20 = v17;
  [v19 addTarget:v20 action:sel_segmentedControlTapped_ forControlEvents:4096];
  v21 = [v20 contentView];
  [v21 addSubview_];

  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14FE90;
  v24 = [*&v17[v18] leadingAnchor];
  v25 = [v20 contentView];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v23 + 32) = v27;
  v28 = [*&v17[v18] trailingAnchor];
  v29 = [v20 contentView];
  v30 = [v29 trailingAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v23 + 40) = v31;
  v32 = [*&v17[v18] topAnchor];
  v33 = [v20 contentView];
  v34 = [v33 topAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v23 + 48) = v35;
  v36 = [*&v17[v18] bottomAnchor];
  v37 = [v20 contentView];

  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor_];

  *(v23 + 56) = v39;
  sub_20B5E29D0();
  v40 = sub_20C13CC54();

  [v22 activateConstraints_];

  return v20;
}

double sub_20B852DE8()
{
  v1 = type metadata accessor for MetricImpressionElement(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SegmentedOptionPickerCell(0);
  v14.receiver = v0;
  v14.super_class = v5;
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v6 = sub_20B853524(v0);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = &v0[OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementAppearance];
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_20B853BA0(v9, v4);
      v11 = *v8;
      if (*v8)
      {
        v12 = *(v8 + 1);

        v11(v4);
        sub_20B583ECC(v11, v12);
      }

      sub_20B853C04(v4, type metadata accessor for MetricImpressionElement);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_20B852FAC(void *a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_storeEnumTagMultiPayload();
    v12 = [a1 selectedSegmentIndex];
    v13 = MEMORY[0x28223BE20](v12);
    *(&v17 - 4) = v14;
    *(&v17 - 24) = 0;
    *(&v17 - 2) = v9;
    *(&v17 - 1) = v11;
    v15 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v15)
    {
      v16 = v15;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E27BC);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B853C04(v9, type metadata accessor for ShelfItemAction);
  }

  return result;
}

id sub_20B85321C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedOptionPickerCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SegmentedOptionPickerCell(uint64_t a1)
{
  result = qword_27C7668B8;
  if (!qword_27C7668B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B853364(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B85341C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B853468@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8534C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B853524(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MetricImpressionElement(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 frame];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  MinX = CGRectGetMinX(v37);
  v35 = v2;
  result = [v2 numberOfSegments];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = MEMORY[0x277D84F90];
    if (result)
    {
      v36 = MEMORY[0x277D84F90];
      sub_20BB5E0A4(0, result, 0);
      v17 = 0;
      v16 = v36;
      v34 = *MEMORY[0x277D51770];
      do
      {
        v18 = v35;
        [v35 widthForSegmentAtIndex_];
        v20 = v19;
        v21 = [v18 titleForSegmentAtIndex_];
        if (v21)
        {
          v22 = v21;
          v23 = sub_20C13C954();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0xE000000000000000;
        }

        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        MinY = CGRectGetMinY(v38);
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        v27 = CGRectGetHeight(v39);
        v28 = v4[7];
        v29 = sub_20C1352E4();
        (*(*(v29 - 8) + 104))(v8 + v28, v34, v29);
        *v8 = v23;
        v8[1] = v25;
        v8[2] = v17;
        v8[3] = v23;
        v8[4] = v25;
        v30 = (v8 + v4[8]);
        *v30 = MinX;
        v30[1] = MinY;
        v30[2] = v20;
        v30[3] = v27;
        *(v8 + v4[9]) = MEMORY[0x277D84F98];
        v36 = v16;
        v31 = *(v16 + 16);
        v32 = *(v16 + 24);

        if (v31 >= v32 >> 1)
        {
          sub_20BB5E0A4((v32 > 1), v31 + 1, 1);
          v16 = v36;
        }

        MinX = MinX + v20;
        ++v17;
        *(v16 + 16) = v31 + 1;
        sub_20B853C64(v8, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31);
      }

      while (v15 != v17);
    }

    return v16;
  }

  return result;
}

uint64_t sub_20B8537FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementAppearance);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementAppearance);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementAppearance + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

uint64_t sub_20B85381C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementDisappearance);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementDisappearance);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementDisappearance + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

uint64_t sub_20B85383C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onImpressionableBoundsChange);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onImpressionableBoundsChange);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onImpressionableBoundsChange + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

uint64_t sub_20B85385C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onVisibleBoundsChange);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onVisibleBoundsChange);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onVisibleBoundsChange + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

void sub_20B85387C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x35)
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = *&v1[OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_segmentedControl];
    [v9 removeAllSegments];
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v8 + 64;
      while (v11 < *(v8 + 16))
      {
        v13 = *(v12 - 16);

        v14 = sub_20C13C914();
        [v9 insertSegmentWithTitle:v14 atIndex:v11 animated:0];

        if (v13 == 1)
        {
          [v9 setSelectedSegmentIndex_];
        }

        ++v11;

        v12 += 40;
        if (v10 == v11)
        {
          return;
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v15 = v1;
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = a1;
      v29 = v27;
      *v18 = 138543874;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2160;
      *(v18 + 14) = 1752392040;
      *(v18 + 22) = 2080;
      v20 = sub_20B5F66D0();
      v21 = v15;
      v22 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v20);
      v24 = sub_20B51E694(v22, v23, &v29);

      *(v18 + 24) = v24;
      _os_log_impl(&dword_20B517000, v16, v17, "Attempted to configure %{public}@ with item: %{mask.hash}s", v18, 0x20u);
      sub_20B520158(v19, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      v25 = v27;
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F2F6A40](v25, -1, -1);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20B853BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricImpressionElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B853C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B853C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricImpressionElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20B853CC8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementAppearance);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onElementDisappearance);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onImpressionableBoundsChange);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_onVisibleBoundsChange);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC9SeymourUI25SegmentedOptionPickerCell_segmentedControl;
  v8 = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  sub_20C13DE24();
  __break(1u);
}

void sub_20B853E04(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v28 = a1 + 32;
  v3 = &qword_27C7677E0;
  while (1)
  {
    v4 = *(v28 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_20C13DB34();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_20C13DB34();
      v9 = v26 + v6;
      if (__OFADD__(v26, v6))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v6;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v7)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_20C13DB34();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_20C13DCD4();
    v11 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v33)
    {
      goto LABEL_35;
    }

    v30 = v1;
    v31 = v2;
    v17 = v11 + 8 * v12 + 32;
    v27 = v11;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      sub_20B859A9C();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_20C15AA30);
        v19 = v3;
        v20 = sub_20B720464(v32, i, v4);
        v22 = *v21;
        (v20)(v32, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
      swift_arrayInitWithCopy();
    }

    v1 = v30;
    v2 = v31;
    if (v33 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v33);
      v25 = v23 + v33;
      if (v24)
      {
        goto LABEL_36;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return;
    }
  }

  v15 = v11;
  v16 = sub_20C13DB34();
  v11 = v15;
  v14 = v16;
  if (v16)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}