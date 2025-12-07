void sub_20B8540D8(uint64_t a1)
{
  v1 = sub_20C1380F4();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_20C13DE24();
      __break(1u);
    }
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 mainScreen];
    [v3 bounds];

    v4 = [v2 mainScreen];
    [v4 bounds];
  }
}

char *sub_20B854218(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_currentConstraints] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView];
  v14 = [v11 layer];
  [v14 setCornerRadius_];

  [v11 setClipsToBounds_];
  *v13 = v11;
  v13[1] = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v16 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_headlineLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v17 &selRef_count + 2];
  [v17 setAdjustsFontForContentSizeCategory_];
  v18 = objc_opt_self();
  v19 = *MEMORY[0x277D76968];
  v20 = [v18 preferredFontForTextStyle_];
  [v17 setFont_];

  [v17 setAllowsDefaultTighteningForTruncation_];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v17 setTextColor_];

  *&v4[v16] = v17;
  v22 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel;
  v23 = [objc_allocWithZone(type metadata accessor for IndexLabel()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v23 &selRef_count + 2];
  v24 = *&v23[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle];
  *&v23[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle] = v19;

  *&v4[v22] = v23;
  v25 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_subtitleLabel;
  v26 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v27 = v19;
  v28 = [v26 init];
  [v28 &selRef_count + 2];
  [v28 setAdjustsFontForContentSizeCategory_];
  v29 = [v18 preferredFontForTextStyle_];
  [v28 setFont_];

  [v28 setAllowsDefaultTighteningForTruncation_];
  v30 = objc_opt_self();
  v31 = [v30 systemGrayColor];
  [v28 setTextColor_];

  [v28 setLineBreakMode_];
  [v28 setNumberOfLines_];
  LODWORD(v32) = 1148846080;
  [v28 setContentCompressionResistancePriority:1 forAxis:v32];
  LODWORD(v33) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v33];

  *&v4[v25] = v28;
  v34 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_titleLabel;
  v35 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  [v35 setAdjustsFontForContentSizeCategory_];
  v36 = [v18 preferredFontForTextStyle_];
  [v35 setFont_];

  [v35 setAllowsDefaultTighteningForTruncation_];
  v37 = [v30 whiteColor];
  [v35 setTextColor_];

  [v35 setLineBreakMode_];
  [v35 setNumberOfLines_];
  LODWORD(v38) = 1148846080;
  [v35 setContentCompressionResistancePriority:1 forAxis:v38];
  LODWORD(v39) = 1148846080;
  [v35 setContentHuggingPriority:1 forAxis:v39];

  *&v4[v34] = v35;
  v40 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_platter;
  v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  [v41 setClipsToBounds_];
  v42 = [v41 layer];
  [v42 setCornerRadius_];

  [v41 setClipsToBounds_];
  v43 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0745098039 green:0.0745098039 blue:0.0745098039 alpha:1.0];
  [v41 setBackgroundColor_];

  *&v4[v40] = v41;
  v4[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_hasIndex] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_isCurrentTitleRTL] = 0;
  v44 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint;
  *&v4[v44] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v45 = &v4[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout];
  *v45 = xmmword_20C15DC20;
  v45[1] = xmmword_20C15DC30;
  v45[2] = xmmword_20C15DC40;
  v45[3] = xmmword_20C15DC50;
  v45[4] = xmmword_20C15DC60;
  v45[5] = xmmword_20C15DC70;
  v45[6] = xmmword_20C15DC80;
  v46 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint;
  *&v4[v46] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v62.receiver = v4;
  v62.super_class = type metadata accessor for HighlightBrickItemCell(0);
  v47 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a1, a2, a3, a4);
  v48 = [v47 contentView];
  [v48 addLayoutGuide_];

  v49 = [v47 contentView];
  [v49 addSubview_];

  v50 = [v47 contentView];
  [v50 addSubview_];

  v51 = [v47 contentView];
  [v51 addSubview_];

  v52 = [v47 contentView];
  [v52 addSubview_];

  v53 = [v47 contentView];
  [v53 addSubview_];

  v54 = [v47 contentView];
  [v54 addSubview_];

  v55 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v56 = [v47 contentView];
  [v56 addLayoutGuide_];

  v57 = [v47 traitCollection];
  v58 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v59 = sub_20C13CC54();

  [v58 deactivateConstraints_];

  v60 = [v57 preferredContentSizeCategory];
  LOBYTE(v58) = sub_20C13D424();

  if (v58)
  {
    sub_20B855BF4();
  }

  else
  {
    sub_20B856D24();
  }

  [v47 setNeedsUpdateConstraints];

  return v47;
}

uint64_t sub_20B854DBC(void *a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for HighlightBrickItemCell(0);
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
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

      Strong = v3;
    }

    else
    {
      v12 = sub_20C13DFF4();

      if (v12)
      {
        Strong = v3;
      }

      else
      {
        v18 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v19 = objc_opt_self();
        sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

        v20 = sub_20C13CC54();

        [v19 deactivateConstraints_];

        v21 = [v18 preferredContentSizeCategory];
        LOBYTE(v19) = sub_20C13D424();

        if (v19)
        {
          sub_20B855BF4();
        }

        else
        {
          sub_20B856D24();
        }

        [Strong setNeedsUpdateConstraints];
        sub_20B855820(v18);
        [Strong setNeedsLayout];
      }
    }
  }

  else
  {
    v14 = [v1 traitCollection];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

    v16 = sub_20C13CC54();

    [v15 deactivateConstraints_];

    v17 = [v14 preferredContentSizeCategory];
    LOBYTE(v15) = sub_20C13D424();

    if (v15)
    {
      sub_20B855BF4();
    }

    else
    {
      sub_20B856D24();
    }

    [Strong setNeedsUpdateConstraints];
    sub_20B855820(v14);
    [Strong setNeedsLayout];
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20B855178()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_titleLabel) attributedText];
  if (v1)
  {
    v2 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [v2 string];
      v6 = sub_20C13C954();
      v8 = v7;

      v9 = v4 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        v12 = (*(v10 + 184))(v4, v6, v8, ObjectType, v10);
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      swift_unknownObjectRelease();

      v14 = *(v12 + 16);

      v13 = v14 != 0;
    }

    else
    {

      v13 = 0;
    }

    *(v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_isCurrentTitleRTL) = v13;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_isCurrentTitleRTL) = 0;
  }
}

void sub_20B8552E0()
{
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1 && (v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v9 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel];
    v10 = [v9 leadingAnchor];
    v11 = [*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView] leadingAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    v13 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
    *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint] = v12;

    v6 = [*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide] leadingAnchor];
    v7 = [v9 trailingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout + 40]];
  }

  else
  {
    v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel] leadingAnchor];
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide];
    v3 = [v2 leadingAnchor];
    v4 = [v1 constraintEqualToAnchor_];

    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
    *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint] = v4;

    v6 = [v2 leadingAnchor];
    v7 = [*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView] leadingAnchor];
    v8 = [v6 constraintEqualToAnchor_];
  }

  v14 = v8;

  v15 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint] = v14;
}

void sub_20B855520()
{
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1 && (v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v12 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel];
    v13 = [v12 leadingAnchor];
    v14 = [*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView] trailingAnchor];
    v15 = &v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout];
    v16 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout + 64];
    v17 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout + 104];
    v18 = sub_20C1380F4();
    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = v16;
    }

    v19 = [v13 constraintEqualToAnchor:v14 constant:v17];

    v20 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
    *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint] = v19;

    v6 = [*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide] leadingAnchor];
    v7 = [v12 trailingAnchor];
    v11 = [v6 constraintEqualToAnchor:v7 constant:v15[5]];
    goto LABEL_11;
  }

  v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel] leadingAnchor];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide];
  v3 = [v2 leadingAnchor];
  v4 = [v1 constraintEqualToAnchor_];

  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint] = v4;

  v6 = [v2 leadingAnchor];
  v7 = [*&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView] trailingAnchor];
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout + 64];
  v9 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout + 104];
  v10 = sub_20C1380F4();
  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v9 = v8;
LABEL_6:
  v11 = [v6 constraintEqualToAnchor:v7 constant:v9];
LABEL_11:
  v21 = v11;

  v22 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint] = v21;
}

id sub_20B855820(id result)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_hasIndex) == 1)
  {
    v2 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint;
    v3 = result;
    [*(v1 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint) setActive_];
    v4 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint;
    [*(v1 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint) setActive_];
    v5 = [v3 preferredContentSizeCategory];
    v6 = sub_20C13D424();

    if (v6)
    {
      sub_20B8552E0();
    }

    else
    {
      sub_20B855520();
    }

    [*(v1 + v2) setActive_];
    v7 = *(v1 + v4);

    return [v7 setActive_];
  }

  return result;
}

id sub_20B855914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightBrickItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HighlightBrickItemCell(uint64_t a1)
{
  result = qword_27C766930;
  if (!qword_27C766930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B855A9C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B855B7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B855B9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 112) = v3;
  return result;
}

void sub_20B855BF4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_platter];
  v3 = [v0 contentView];
  v5 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v2 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v4];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v2 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

  LODWORD(v16) = 1148846080;
  [v15 &selRef_meterUnit];
  v17 = v15;
  v18 = [v2 topAnchor];
  v19 = [v3 &selRef_setLineBreakMode_];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v5];

  LODWORD(v21) = 1148846080;
  [v20 &selRef_meterUnit];
  v22 = [v2 bottomAnchor];
  v23 = [v3 &selRef_secondaryLabel + 5];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

  v25 = v1;
  LODWORD(v26) = 1148846080;
  [v24 &selRef_meterUnit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C14FE90;
  *(v27 + 32) = v12;
  *(v27 + 40) = v17;
  *(v27 + 48) = v20;
  *(v27 + 56) = v24;
  v145 = v27;
  v28 = v20;

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C150040;
  v30 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_headlineLabel];
  v31 = [v30 leadingAnchor];
  v32 = [v1 contentView];
  v33 = [v32 leadingAnchor];

  v34 = &v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout];
  v35 = [v31 constraintEqualToAnchor:v33 constant:*v34];

  *(v29 + 32) = v35;
  v36 = [v30 trailingAnchor];
  v37 = [v25 contentView];
  v38 = [v37 trailingAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:-*v34];
  *(v29 + 40) = v39;
  v40 = [v30 topAnchor];
  v41 = [v25 contentView];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:v34[1]];
  v144 = v29;
  *(v29 + 48) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C151850;
  v45 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView];
  v46 = [v45 leadingAnchor];
  v47 = [v30 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v44 + 32) = v48;
  v49 = [v45 topAnchor];
  v50 = [v30 bottomAnchor];
  v51 = [v49 &selRef_passwordEntryCancelledHandler + 6];

  *(v44 + 40) = v51;
  v52 = [v45 widthAnchor];
  sub_20B8540D8(v52);
  v53 = [v52 constraintEqualToConstant_];

  *(v44 + 48) = v53;
  v54 = [v45 heightAnchor];
  sub_20B8540D8(v54);
  v56 = [v54 constraintEqualToConstant_];

  *(v44 + 56) = v56;
  v57 = [v45 bottomAnchor];
  v58 = [v25 contentView];
  v59 = [v58 bottomAnchor];

  v60 = [v57 constraintLessThanOrEqualToAnchor:v59 constant:-v34[1]];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v61) = v148;
  [v60 setPriority_];
  *(v44 + 64) = v60;
  v147 = v45;
  v62 = [v45 bottomAnchor];
  v63 = [v25 contentView];
  v64 = [v63 bottomAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:-v34[1]];
  sub_20C13BBA4();
  LODWORD(v66) = v148;
  [v65 setPriority_];
  v143 = v44;
  *(v44 + 72) = v65;
  if ([v25 effectiveUserInterfaceLayoutDirection] == 1 && (v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v75 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel];
    v76 = [v75 leadingAnchor];
    v77 = [v147 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor_];

    v79 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
    *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint] = v78;

    v68 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide];
    v72 = [v68 leadingAnchor];
    v142 = v75;
    v73 = [v75 trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:v34[5]];
  }

  else
  {
    v142 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel];
    v67 = [v142 leadingAnchor];
    v68 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide];
    v69 = [v68 leadingAnchor];
    v70 = [v67 constraintEqualToAnchor_];

    v71 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
    *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint] = v70;

    v72 = [v68 leadingAnchor];
    v73 = [v147 leadingAnchor];
    v74 = [v72 constraintEqualToAnchor_];
  }

  v80 = v74;

  v81 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint];
  *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint] = v80;

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_20C150050;
  v83 = *&v25[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint];
  *(v82 + 32) = v83;
  v84 = v83;
  v85 = [v68 trailingAnchor];
  v86 = [v25 contentView];
  v87 = v25;
  v88 = [v86 trailingAnchor];

  v89 = [v85 constraintEqualToAnchor:v88 constant:-*v34];
  sub_20C13BBA4();
  LODWORD(v90) = v148;
  [v89 setPriority_];
  *(v82 + 40) = v89;
  v91 = [v68 topAnchor];
  v92 = [v147 bottomAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:v34[1]];

  *(v82 + 48) = v93;
  v94 = [v68 &selRef_secondaryLabel + 5];
  v95 = [v87 contentView];
  v96 = [v95 &selRef_secondaryLabel + 5];

  v97 = [v94 constraintLessThanOrEqualToAnchor:v96 constant:-v34[1]];
  sub_20C13BBA4();
  LODWORD(v98) = v148;
  [v97 setPriority_];
  *(v82 + 56) = v97;
  v141 = v82;
  v99 = [v68 &selRef_secondaryLabel + 5];
  v146 = v87;
  v100 = [v87 contentView];
  v101 = [v100 &selRef_secondaryLabel + 5];

  v102 = [v99 constraintEqualToAnchor:v101 constant:-v34[1]];
  sub_20C13BBA4();
  LODWORD(v103) = v148;
  [v102 setPriority_];
  *(v82 + 64) = v102;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_20C150040;
  v105 = v104;
  v106 = *&v87[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_titleLabel];
  v107 = [v106 leadingAnchor];
  v108 = [v68 leadingAnchor];
  v109 = [v107 constraintEqualToAnchor_];

  v105[4] = v109;
  v110 = [v106 trailingAnchor];
  v111 = [v68 trailingAnchor];
  v112 = [v110 constraintEqualToAnchor_];

  v105[5] = v112;
  v113 = [v106 topAnchor];
  v114 = [v68 topAnchor];
  v115 = [v113 constraintEqualToAnchor_];

  v105[6] = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_20C151490;
  v117 = *&v87[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
  *(v116 + 32) = v117;
  v118 = v117;
  v119 = [v142 bottomAnchor];
  v120 = [v106 firstBaselineAnchor];
  v121 = [v119 constraintEqualToAnchor:v120 constant:v34[4]];

  *(v116 + 40) = v121;
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_20C14FE90;
  v123 = *&v87[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_subtitleLabel];
  v124 = [v123 leadingAnchor];
  v125 = [v106 leadingAnchor];
  v126 = [v124 constraintEqualToAnchor_];

  *(v122 + 32) = v126;
  v127 = [v123 trailingAnchor];
  v128 = [v106 trailingAnchor];
  v129 = [v127 constraintEqualToAnchor_];

  *(v122 + 40) = v129;
  v130 = [v123 topAnchor];
  v131 = [v106 bottomAnchor];
  v132 = [v130 constraintEqualToAnchor_];

  *(v122 + 48) = v132;
  v133 = [v123 bottomAnchor];
  v134 = [v68 bottomAnchor];
  v135 = [v133 constraintEqualToAnchor_];

  *(v122 + 56) = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F990;
  *(inited + 32) = v145;
  *(inited + 40) = v144;
  *(inited + 48) = v143;
  *(inited + 56) = v141;
  *(inited + 64) = v105;
  *(inited + 72) = v116;
  *(inited + 80) = v122;
  sub_20B853E04(inited);
  v138 = v137;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v146[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_currentConstraints] = v138;

  v139 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v140 = sub_20C13CC54();

  [v139 activateConstraints_];
}

void sub_20B856D24()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_platter];
  v3 = [v0 contentView];
  v5 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v2 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v4];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v2 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

  LODWORD(v16) = 1148846080;
  [v15 &selRef_meterUnit];
  v17 = v15;
  v18 = [v2 topAnchor];
  v19 = [v3 &selRef_setLineBreakMode_];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v5];

  LODWORD(v21) = 1148846080;
  [v20 &selRef_meterUnit];
  v22 = [v2 bottomAnchor];
  v23 = [v3 &selRef_secondaryLabel + 5];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

  LODWORD(v25) = 1148846080;
  [v24 &selRef_meterUnit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14FE90;
  *(v26 + 32) = v12;
  *(v26 + 40) = v17;
  *(v26 + 48) = v20;
  *(v26 + 56) = v24;
  v150 = v26;
  v27 = v20;

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C150040;
  v29 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_headlineLabel];
  v30 = [v29 leadingAnchor];
  v31 = [v1 contentView];
  v32 = [v31 leadingAnchor];

  v33 = &v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout];
  v34 = [v30 constraintEqualToAnchor:v32 constant:*&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout]];

  *(v28 + 32) = v34;
  v35 = [v29 trailingAnchor];
  v36 = [v1 contentView];
  v37 = [v36 trailingAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:-*v33];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v39) = v151;
  [v38 setPriority_];
  *(v28 + 40) = v38;
  v40 = [v29 topAnchor];
  v41 = [v1 contentView];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:v33[1]];
  v149 = v28;
  *(v28 + 48) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C151850;
  v45 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView];
  v46 = [v45 leadingAnchor];
  v47 = [v29 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v44 + 32) = v48;
  v49 = [v45 topAnchor];
  v50 = [v29 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:v33[2]];

  *(v44 + 40) = v51;
  v52 = [v45 widthAnchor];
  sub_20B8540D8(v52);
  v53 = [v52 constraintEqualToConstant_];

  *(v44 + 48) = v53;
  v54 = [v45 heightAnchor];
  sub_20B8540D8(v54);
  v56 = [v54 constraintEqualToConstant_];

  *(v44 + 56) = v56;
  v57 = [v45 bottomAnchor];
  v58 = [v1 contentView];
  v59 = [v58 bottomAnchor];

  v60 = [v57 constraintLessThanOrEqualToAnchor:v59 constant:-v33[1]];
  sub_20C13BBA4();
  LODWORD(v61) = 1065353216;
  [v60 setPriority_];
  *(v44 + 64) = v60;
  v62 = [v45 bottomAnchor];
  v63 = [v1 contentView];
  v64 = [v63 bottomAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:-v33[1]];
  sub_20C13BBA4();
  LODWORD(v66) = 1065353216;
  [v65 setPriority_];
  v148 = v44;
  *(v44 + 72) = v65;
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1 && (v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_isCurrentTitleRTL] & 1) == 0)
  {
    v79 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel];
    v80 = [v79 leadingAnchor];
    v81 = [v45 trailingAnchor];
    v82 = v33[8];
    v83 = v33[13];
    v84 = sub_20C1380F4();
    if (v84)
    {
      if (v84 != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v83 = v82;
    }

    v85 = [v80 &selRef_passwordEntryCancelledHandler + 6];

    v86 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint] = v85;

    v72 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide];
    v73 = [v72 leadingAnchor];
    v147 = v79;
    v74 = [v79 trailingAnchor];
    v78 = [v73 &selRef_passwordEntryCancelledHandler + 6];
    goto LABEL_11;
  }

  v147 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel];
  v67 = [v147 leadingAnchor];
  v68 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide];
  v69 = [v68 leadingAnchor];
  v70 = [v67 constraintEqualToAnchor_];

  v71 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint] = v70;

  v72 = v68;
  v73 = [v68 leadingAnchor];
  v74 = [v45 trailingAnchor];
  v75 = v33[8];
  v76 = v33[13];
  v77 = sub_20C1380F4();
  if (!v77)
  {
    v76 = v75;
LABEL_6:
    v78 = [v73 &selRef_passwordEntryCancelledHandler + 6];
LABEL_11:
    v87 = v78;

    v88 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint] = v87;

    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_20C150050;
    v90 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint];
    *(v89 + 32) = v90;
    v91 = v90;
    v92 = [v72 trailingAnchor];
    v93 = [v1 contentView];
    v94 = [v93 trailingAnchor];

    v95 = [v92 &selRef_passwordEntryCancelledHandler + 6];
    sub_20C13BBA4();
    LODWORD(v96) = 1065353216;
    [v95 setPriority_];
    *(v89 + 40) = v95;
    v97 = [v72 topAnchor];
    v98 = [v29 bottomAnchor];
    v99 = [v97 &selRef_passwordEntryCancelledHandler + 6];

    *(v89 + 48) = v99;
    v100 = [v72 bottomAnchor];
    v101 = [v1 contentView];
    v102 = [v101 bottomAnchor];

    v103 = [v100 constraintLessThanOrEqualToAnchor:v102 constant:-v33[1]];
    sub_20C13BBA4();
    LODWORD(v104) = 1065353216;
    [v103 setPriority_];
    *(v89 + 56) = v103;
    v146 = v89;
    v105 = [v72 bottomAnchor];
    v106 = [v1 contentView];
    v107 = [v106 bottomAnchor];

    v108 = [v105 constraintEqualToAnchor:v107 constant:-v33[1]];
    sub_20C13BBA4();
    LODWORD(v109) = 1065353216;
    [v108 setPriority_];
    *(v89 + 64) = v108;
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_20C150040;
    v111 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_titleLabel];
    v112 = [v111 topAnchor];
    v113 = [v72 topAnchor];
    v114 = [v112 constraintEqualToAnchor_];

    *(v110 + 32) = v114;
    v115 = [v111 leadingAnchor];
    v116 = [v72 leadingAnchor];
    v117 = [v115 constraintEqualToAnchor_];

    *(v110 + 40) = v117;
    v118 = [v111 trailingAnchor];
    v119 = [v72 trailingAnchor];
    v120 = [v118 constraintEqualToAnchor_];

    *(v110 + 48) = v120;
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_20C151490;
    v122 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint];
    *(v121 + 32) = v122;
    v123 = v122;
    v124 = [v147 bottomAnchor];
    v125 = [v111 firstBaselineAnchor];
    v126 = [v124 constraintEqualToAnchor:v125 constant:v33[4]];

    *(v121 + 40) = v126;
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_20C14FE90;
    v128 = *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_subtitleLabel];
    v129 = [v128 leadingAnchor];
    v130 = [v111 leadingAnchor];
    v131 = [v129 &selRef:v130 alertControllerReleasedDictationButton:? + 5];

    *(v127 + 32) = v131;
    v132 = [v128 trailingAnchor];
    v133 = [v111 trailingAnchor];
    v134 = [v132 &selRef:v133 alertControllerReleasedDictationButton:? + 5];

    *(v127 + 40) = v134;
    v135 = [v128 topAnchor];
    v136 = [v111 bottomAnchor];
    v137 = [v135 &selRef:v136 alertControllerReleasedDictationButton:? + 5];

    *(v127 + 48) = v137;
    v138 = [v128 bottomAnchor];
    v139 = [v72 bottomAnchor];
    v140 = [v138 &selRef:v139 alertControllerReleasedDictationButton:? + 5];

    *(v127 + 56) = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F990;
    *(inited + 32) = v150;
    *(inited + 40) = v149;
    *(inited + 48) = v148;
    *(inited + 56) = v146;
    *(inited + 64) = v110;
    *(inited + 72) = v121;
    *(inited + 80) = v127;
    sub_20B853E04(inited);
    v143 = v142;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
    swift_arrayDestroy();
    *&v1[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_currentConstraints] = v143;

    v144 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

    v145 = sub_20C13CC54();

    [v144 activateConstraints_];

    return;
  }

  if (v77 == 1)
  {
    goto LABEL_6;
  }

LABEL_12:
  sub_20C13DE24();
  __break(1u);
}

id sub_20B857F34(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v3 = [objc_opt_self() textAttachmentWithImage_];

  [v3 bounds];
  [v3 setBounds_];
  sub_20B51C88C(0, &qword_27C766940, 0x277CCAB48);
  v4 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  [v4 appendAttributedString_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v5;
}

double sub_20B858050(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B85809C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8580F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B858158(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();

  sub_20B72097C(5, 2.0, v3);
}

uint64_t sub_20B8581E8(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v212 = *(v2 - 1);
  v213 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v197 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v170 - v9;
  v196 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v170 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v15 - 8);
  v202 = &v170 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v195 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v19;
  MEMORY[0x28223BE20](v20);
  v206 = &v170 - v21;
  v200 = sub_20C1391C4();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v201 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_20C138A64();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v205 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v24 - 8);
  v198 = &v170 - v25;
  v26 = sub_20C13C554();
  v214 = *(v26 - 8);
  v215 = v26;
  MEMORY[0x28223BE20](v26);
  v211 = (&v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v217 = *(v28 - 8);
  v218 = v28;
  MEMORY[0x28223BE20](v28);
  v207 = v29;
  v208 = &v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v216 = &v170 - v31;
  v32 = sub_20C136CD4();
  v209 = *(v32 - 8);
  v210 = v32;
  MEMORY[0x28223BE20](v32);
  v219 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134E44();
  MEMORY[0x28223BE20](v34 - 8);
  v220 = &v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C134014();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = &v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x20)
  {
    v179 = v10;
    v183 = v18;
    v184 = v17;
    v180 = v14;
    v181 = v6;
    v182 = v5;
    v41 = v38;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v43 = swift_projectBox();
    v44 = v43 + *(v42 + 64);
    v45 = *v44;
    v190 = *(v44 + 8);
    v46 = *(v44 + 24);
    v191 = *(v44 + 16);
    v47 = *(v44 + 32);
    v48 = *(v44 + 40);
    v49 = v43 + *(v42 + 80);
    v50 = *(v49 + 8);
    v193 = *v49;
    v51 = *(v49 + 16);
    v192 = *(v49 + 24);
    v212 = *(v49 + 32);
    v52 = *(v49 + 40);
    v188 = v37;
    v53 = *(v37 + 16);
    v189 = v41;
    v53(v40, v43, v41);
    v54 = v221;
    v55 = *&v221[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_subtitleLabel];
    v213 = v45;
    v56 = v190;
    v186 = v191;
    v191 = v46;

    v190 = v47;

    v187 = v48;

    v57 = v51;
    v58 = v51;
    v59 = v192;
    LODWORD(v185) = v52;
    v60 = sub_20B6543CC(v193, v50, v58, v192);
    v193 = v56;
    [v55 setAttributedText_];
    v61 = *&v54[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_headlineLabel];
    v62 = v54;
    if (v50 == 1)
    {
      [*&v54[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_headlineLabel] setText_];
      v54[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_hasIndex] = 0;
      v63 = v216;
      v64 = v213;
    }

    else
    {

      v63 = v216;
      if (v59)
      {
        v222[0] = v57;
        v222[1] = v59;
        sub_20B5F6EB0();
        sub_20C13D9E4();

        v77 = sub_20C13C914();
      }

      else
      {
        v77 = 0;
      }

      v64 = v213;
      [v61 setText_];

      v78 = v185;
      v62[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_hasIndex] = (v185 & 1) == 0;

      if ((v78 & 1) == 0)
      {
        v79 = *&v62[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel];
        *&v79[OBJC_IVAR____TtC9SeymourUI10IndexLabel_index] = v212;
        sub_20B952710();
        [v79 setHidden_];
        [v79 setNeedsLayout];
        [v79 layoutIfNeeded];
        v80 = *&v62[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_titleLabel];
        [v79 bounds];
        v81 = sub_20B857F34(v64);
        [v80 &selRef_rebuildLocations];

        sub_20B855178();
        v82 = [v62 traitCollection];
        sub_20B855820(v82);

LABEL_13:
        sub_20C133F04();
        v192 = sub_20C138054();
        v84 = v83;
        sub_20C134E34();
        sub_20C136CB4();
        v185 = sub_20C136CC4();
        v212 = v85;
        sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
        v86 = sub_20C13D374();
        v87 = v211;
        *v211 = v86;
        v89 = v214;
        v88 = v215;
        (*(v214 + 104))(v87, *MEMORY[0x277D85200], v215);
        v90 = sub_20C13C584();
        result = (*(v89 + 8))(v87, v88);
        v91 = v218;
        if (v90)
        {
          v215 = v40;
          v92 = *&v62[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView];
          v93 = *&v62[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView + 8];
          ObjectType = swift_getObjectType();
          [v92 setContentMode_];
          if (sub_20BA66C54())
          {
            v95 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v96 = v217;
            v97 = *(v217 + 16);
            v214 = v92;
            v178 = ObjectType;
            v98 = v208;
            v176 = v217 + 16;
            v174 = v97;
            v97(v208, v63, v91);
            v99 = *(v96 + 80);
            v100 = (v99 + 24) & ~v99;
            v171 = v207 + 7;
            v211 = v84;
            v101 = (v207 + 7 + v100) & 0xFFFFFFFFFFFFFFF8;
            v102 = (v101 + 23) & 0xFFFFFFFFFFFFFFF8;
            v103 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
            v177 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
            v175 = v99;
            v104 = swift_allocObject();
            *(v104 + 16) = v95;
            v105 = *(v96 + 32);
            v106 = v104 + v100;
            v91 = v218;
            v173 = v96 + 32;
            v172 = v105;
            v105(v106, v98, v218);
            v107 = (v104 + v101);
            v109 = v211;
            v108 = v212;
            *v107 = v185;
            v107[1] = v108;
            v110 = (v104 + v102);
            *v110 = v192;
            v110[1] = v109;
            *(v104 + v103) = 2;
            v111 = v104 + v177;
            *v111 = MEMORY[0x277D84F90];
            *(v111 + 8) = 0;
            v112 = (v104 + ((v103 + 31) & 0xFFFFFFFFFFFFFFF8));
            *v112 = 0;
            v112[1] = 0;
            v113 = *(v93 + 152);

            v114 = v178;
            v113(sub_20B859854, v104);
            v115 = v214;

            [v115 bounds];
            if (v116 <= 0.0 || (v118 = v117, v117 <= 0.0))
            {

              v63 = v216;
            }

            else
            {
              v119 = v116;
              v177 = ~v175;
              v120 = v93;
              (*(v93 + 120))(0, v114, v93);
              v121 = v198;
              v63 = v216;
              v174(v198, v216, v91);
              (*(v217 + 56))(v121, 0, 1, v91);
              (*(v120 + 16))(v121, v114, v120);
              sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
              sub_20C137BC4();
              v122 = sub_20C13D5A4();
              [v115 setBackgroundColor_];

              (*(v120 + 176))(COERCE_DOUBLE(*&v119), COERCE_DOUBLE(*&v118), 0, v114, v120);
              v214 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v123 = v208;
              v124 = v174;
              v174(v208, v63, v91);
              v125 = (v175 + 16) & v177;
              v126 = (v171 + v125) & 0xFFFFFFFFFFFFFFF8;
              v127 = (v126 + 15) & 0xFFFFFFFFFFFFFFF8;
              v128 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
              v129 = swift_allocObject();
              v172(v129 + v125, v123, v91);
              *(v129 + v126) = v214;
              v130 = (v129 + v127);
              v131 = v124;
              *v130 = v119;
              v130[1] = v118;
              v214 = v129;
              v132 = (v129 + v128);
              *v132 = 0;
              v132[1] = 0;
              v124(v123, v63, v91);
              (*(v199 + 104))(v201, *MEMORY[0x277D542A8], v200);

              v133 = v205;
              sub_20C138A54();
              v134 = v202;
              sub_20B5F1A28(v133, v202);
              v135 = v183;
              v136 = v184;
              if ((*(v183 + 48))(v134, 1, v184) == 1)
              {
                sub_20B520158(v134, &unk_27C766670, &unk_20C151580);
                sub_20BA1DA10();

                (*(v203 + 8))(v133, v204);
              }

              else
              {
                v137 = *(v135 + 32);
                v137(v206, v134, v136);
                v138 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v131(v123, v63, v91);
                v139 = (v175 + 40) & v177;
                v140 = v139 + v207;
                v141 = (v139 + v207) & 0xFFFFFFFFFFFFFFF8;
                v142 = swift_allocObject();
                *(v142 + 2) = v138;
                v142[3] = v119;
                v142[4] = v118;
                v172(v142 + v139, v123, v218);
                *(v142 + v140) = 0;
                v143 = v142 + v141;
                *(v143 + 1) = 0;
                *(v143 + 2) = 0;
                v144 = swift_allocObject();
                *(v144 + 16) = sub_20B8599E8;
                *(v144 + 24) = v142;
                v145 = v183;
                v146 = v195;
                v147 = v184;
                (*(v183 + 16))(v195, v206, v184);
                v148 = v145;
                v149 = (*(v145 + 80) + 16) & ~*(v145 + 80);
                v150 = (v194 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
                v151 = swift_allocObject();
                v137((v151 + v149), v146, v147);
                v152 = (v151 + v150);
                *v152 = sub_20B5F67A4;
                v152[1] = v144;
                v153 = v179;
                sub_20C137C94();
                v154 = swift_allocObject();
                v155 = v214;
                *(v154 + 16) = sub_20B85992C;
                *(v154 + 24) = v155;
                v156 = swift_allocObject();
                *(v156 + 16) = sub_20B5F67D4;
                *(v156 + 24) = v154;
                v157 = v181;
                v158 = v197;
                v159 = v182;
                (*(v181 + 16))(v197, v153, v182);
                v160 = (*(v157 + 80) + 16) & ~*(v157 + 80);
                v161 = (v196 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
                v162 = swift_allocObject();
                v163 = v158;
                v63 = v216;
                (*(v157 + 32))(v162 + v160, v163, v159);
                v164 = (v162 + v161);
                *v164 = sub_20B5DF204;
                v164[1] = v156;

                v165 = v180;
                sub_20C137C94();
                v166 = *(v157 + 8);
                v166(v153, v159);
                v167 = sub_20C137CB4();
                v168 = swift_allocObject();
                *(v168 + 16) = 0;
                *(v168 + 24) = 0;
                v167(sub_20B52347C, v168);

                v169 = v159;
                v91 = v218;
                v166(v165, v169);
                (*(v148 + 8))(v206, v184);
                (*(v203 + 8))(v205, v204);
              }
            }
          }

          else
          {
          }

          (*(v217 + 8))(v63, v91);
          (*(v209 + 8))(v219, v210);

          sub_20B62A2AC(v220);
          return (*(v188 + 8))(v215, v189);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    [*&v62[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_titleLabel] setAttributedText_];
    [*&v62[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel] setHidden_];
    sub_20B855178();
    goto LABEL_13;
  }

  sub_20C13B534();

  v65 = v221;
  v66 = sub_20C13BB74();
  v67 = sub_20C13D1D4();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v222[0] = v70;
    *v68 = 138543618;
    *(v68 + 4) = v65;
    *v69 = v65;
    *(v68 + 12) = 2082;
    v222[2] = a1;
    v71 = sub_20B5F66D0();
    v72 = v65;
    v73 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v71);
    v75 = sub_20B51E694(v73, v74, v222);

    *(v68 + 14) = v75;
    _os_log_impl(&dword_20B517000, v66, v67, "Attempted to configure %{public}@ with item: %{public}s", v68, 0x16u);
    sub_20B520158(v69, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v69, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x20F2F6A40](v70, -1, -1);
    MEMORY[0x20F2F6A40](v68, -1, -1);
  }

  return (*(v212 + 8))(v4, v213);
}

void sub_20B859854()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA40D14(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B85992C(void *a1)
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

  sub_20BA630C0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B8599E8(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F27C8(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t sub_20B859A9C()
{
  result = qword_27C7675F0;
  if (!qword_27C7675F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7677E0, &unk_20C15AA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7675F0);
  }

  return result;
}

void sub_20B859B00()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_currentConstraints) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
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

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuide;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v8 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_headlineLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v9 &selRef_count + 2];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = objc_opt_self();
  v11 = *MEMORY[0x277D76968];
  v12 = [v10 preferredFontForTextStyle_];
  [v9 setFont_];

  [v9 setAllowsDefaultTighteningForTruncation_];
  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v9 setTextColor_];

  *(v0 + v8) = v9;
  v14 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLabel;
  v15 = [objc_allocWithZone(type metadata accessor for IndexLabel()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v15 &selRef_count + 2];
  v16 = *&v15[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle];
  *&v15[OBJC_IVAR____TtC9SeymourUI10IndexLabel_textStyle] = v11;

  *(v0 + v14) = v15;
  v17 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_subtitleLabel;
  v18 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v19 = v11;
  v20 = [v18 init];
  [v20 &selRef_count + 2];
  [v20 setAdjustsFontForContentSizeCategory_];
  v21 = [v10 preferredFontForTextStyle_];
  [v20 setFont_];

  [v20 setAllowsDefaultTighteningForTruncation_];
  v22 = objc_opt_self();
  v23 = [v22 systemGrayColor];
  [v20 setTextColor_];

  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  LODWORD(v24) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [v20 setContentHuggingPriority:1 forAxis:v25];

  *(v0 + v17) = v20;
  v26 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_titleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setAdjustsFontForContentSizeCategory_];
  v28 = [v10 preferredFontForTextStyle_];
  [v27 setFont_];

  [v27 setAllowsDefaultTighteningForTruncation_];
  v29 = [v22 whiteColor];
  [v27 setTextColor_];

  [v27 setLineBreakMode_];
  [v27 setNumberOfLines_];
  LODWORD(v30) = 1148846080;
  [v27 setContentCompressionResistancePriority:1 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [v27 setContentHuggingPriority:1 forAxis:v31];

  *(v0 + v26) = v27;
  v32 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_platter;
  v33 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v33 setClipsToBounds_];
  v34 = [v33 layer];
  [v34 setCornerRadius_];

  [v33 setClipsToBounds_];
  v35 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0745098039 green:0.0745098039 blue:0.0745098039 alpha:1.0];
  [v33 setBackgroundColor_];

  *(v0 + v32) = v33;
  *(v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_hasIndex) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_isCurrentTitleRTL) = 0;
  v36 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_indexLeadingConstraint;
  *(v0 + v36) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v37 = (v0 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layout);
  *v37 = xmmword_20C15DC20;
  v37[1] = xmmword_20C15DC30;
  v37[2] = xmmword_20C15DC40;
  v37[3] = xmmword_20C15DC50;
  v37[4] = xmmword_20C15DC60;
  v37[5] = xmmword_20C15DC70;
  v37[6] = xmmword_20C15DC80;
  v38 = OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_layoutGuideLeadingConstraint;
  *(v0 + v38) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B85A224()
{
  result = qword_27C766948;
  if (!qword_27C766948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766948);
  }

  return result;
}

void sub_20B85A278(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = *(a9 + 8);
  v15 = *(v14(a5, a9) + 16);
  v27 = a2;
  os_unfair_lock_lock(v15 + 6);
  sub_20B85B3AC(&v15[4], v31);
  os_unfair_lock_unlock(v15 + 6);
  v16 = v31[0];

  if (v16 || (aBlock[0] = v10, v18 = v14(a5, a9), v19 = *(v18 + 16), MEMORY[0x28223BE20](v18), os_unfair_lock_lock((v19 + 24)), sub_20B85B3C8((v19 + 16), v31), os_unfair_lock_unlock((v19 + 24)), v20 = *v31, v17 = , !v20))
  {
    if (a3)
    {
      a3(v17);
    }
  }

  else
  {
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    v22[5] = a8;
    v22[6] = a9;
    v22[7] = v21;
    v22[8] = a1;
    v22[9] = v27;
    v22[10] = a3;
    v22[11] = a4;
    aBlock[4] = sub_20B85B3E4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_26;
    v23 = _Block_copy(aBlock);

    sub_20B584050(a3, a4);

    [v20 dismissViewControllerAnimated:1 completion:v23];
    _Block_release(v23);
  }
}

void sub_20B85A4DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = (*(a10 + 8))(a6);

    v15 = *(v14 + 16);
    MEMORY[0x28223BE20](v16);
    os_unfair_lock_lock(v15 + 6);
    sub_20B85B3FC(&v15[4]);
    os_unfair_lock_unlock(v15 + 6);
  }

  if (a4)
  {
    a4(Strong);
  }
}

void sub_20B85A5F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a7;
  v34 = a8;
  v32 = a6;
  v35 = a4;
  v36 = a5;
  v13 = *(a9 + 8);
  v14 = *(v13(a5, a9) + 16);
  v37 = a1;
  v38 = a2;
  v39 = a1;
  v40 = a2;
  os_unfair_lock_lock(v14 + 6);
  sub_20B85BFB4(&v14[4], v42);
  os_unfair_lock_unlock(v14 + 6);
  LODWORD(v14) = v42[0];

  if (v14 == 2 && (aBlock[0] = v9, v16 = v13(v36, a9), v31 = &v31, v17 = *(v16 + 16), MEMORY[0x28223BE20](v16), os_unfair_lock_lock((v17 + 24)), sub_20B85BF9C((v17 + 16), v42), v18 = (v17 + 24), v19 = v9, os_unfair_lock_unlock(v18), v20 = *v42, v15 = , v20))
  {
    aBlock[0] = v9;
    v21 = v13(v36, a9);
    v22 = *(v21 + 16);
    MEMORY[0x28223BE20](v21);
    os_unfair_lock_lock(v22 + 6);
    sub_20B85BE98(&v22[4]);
    os_unfair_lock_unlock(v22 + 6);

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v25 = v35;
    v26 = v32;
    v27 = v33;
    v24[2] = v36;
    v24[3] = v26;
    v28 = v34;
    v24[4] = v27;
    v24[5] = v28;
    v24[6] = a9;
    v24[7] = v23;
    v29 = v38;
    v24[8] = v37;
    v24[9] = v29;
    v24[10] = a3;
    v24[11] = v25;
    aBlock[4] = sub_20B85BF08;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_20;
    v30 = _Block_copy(aBlock);

    sub_20B584050(a3, v25);

    [v19 presentViewController:v20 animated:1 completion:v30];
    _Block_release(v30);
  }

  else if (a3)
  {
    a3(v15);
  }
}

void sub_20B85A8F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = (*(a10 + 8))(a6);

    v15 = *(v14 + 16);
    MEMORY[0x28223BE20](v16);
    os_unfair_lock_lock(v15 + 6);
    sub_20B85BF60(&v15[4]);
    os_unfair_lock_unlock(v15 + 6);
  }

  if (a4)
  {
    a4(Strong);
  }
}

uint64_t sub_20B85A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8))(a3, a6);
  swift_beginAccess();
  v9 = *(v8 + 120);
  if (*(v9 + 16))
  {

    v10 = sub_20B65AA60(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 16 * v10);

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

BOOL sub_20B85AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *((*(a7 + 8))(a3, a7) + 16);
  os_unfair_lock_lock(v7 + 6);
  sub_20B85BFB4(&v7[4], &v10);
  os_unfair_lock_unlock(v7 + 6);
  v8 = v10;

  return v8 < 2;
}

BOOL sub_20B85ABA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = sub_20B85A9FC(a2, a3, a6, a7, a8, a9);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  sub_20B85ACEC(v16, a4, a2, a3, a5, a6, a7, a8, a9, a10);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(a7 + 16))(a6, a7);
  if (v26 <= 0xFBu)
  {
    v30.origin.x = sub_20BB7F7A0((v26 & 0xC0) == 64);
    v31.origin.x = v19;
    v31.origin.y = v21;
    v31.size.width = v23;
    v31.size.height = v25;
    v27 = CGRectContainsRect(v30, v31);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void sub_20B85ACEC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v15 = *((*(a10 + 8))(a6) + 16);
  os_unfair_lock_lock((v15 + 24));
  sub_20B85BF9C((v15 + 16), &v49);
  os_unfair_lock_unlock((v15 + 24));
  v16 = v49;

  if (v16)
  {

    v17 = [a1 view];
    if (v17)
    {
      v18 = v17;
      v19 = [a1 view];
      if (v19)
      {
        v20 = v19;
        [v19 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v29 = [v11 view];
        [v18 convertRect:v29 toView:{v22, v24, v26, v28}];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    [a2 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = [v11 view];
    [a2 convertRect:v38 toView:{v31, v33, v35, v37}];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    sub_20B85B96C(a1, v11);
    sub_20BA79B70(a5, v47, v48, v40, v42, v44, v46);
  }
}

id sub_20B85AF24()
{
  v1 = v0;
  v2 = [v1 parentViewController];
  if (v2)
  {
    while (1)
    {

      v3 = [v1 parentViewController];
      if (!v3)
      {
        break;
      }

      v4 = v3;

      v2 = [v4 parentViewController];
      v1 = v4;
      if (!v2)
      {
        goto LABEL_6;
      }
    }
  }

  v4 = v1;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14F580;
  result = [v4 view];
  if (result)
  {
    *(v5 + 32) = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B85B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *((*(a7 + 8))(a3, a7) + 16);
  os_unfair_lock_lock((v12 + 24));
  sub_20B85BF9C((v12 + 16), v14);
  os_unfair_lock_unlock((v12 + 24));
  v13 = v14[0];

  if (v13)
  {
    v14[1] = v7;
    (*(a7 + 16))(a1, a2, 0, 0, a3, a7);
  }
}

void sub_20B85B100(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - v16;
  v18 = [v8 presentedViewController];
  if (v18)
  {
    v19 = v18;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v32 = a6;
      v34 = a2;
      v35[2] = v8;
      v22 = (*(a7 + 8))(a3, a7);
      v33 = a3;
      v23 = *(v22 + 16);
      MEMORY[0x28223BE20](v22);
      *(&v31 - 2) = v21;
      *(&v31 - 8) = 0;
      os_unfair_lock_lock((v23 + 24));
      sub_20B85BDB0((v23 + 16), v35);
      os_unfair_lock_unlock((v23 + 24));
      v25 = v35[0];
      v24 = v35[1];

      if (v24)
      {
        v35[0] = v8;
        v27 = v33;
        v28 = (*(v32 + 8))(v33);
        v29 = sub_20C13CDF4();
        (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
        v30 = swift_allocObject();
        v30[2] = 0;
        v30[3] = 0;
        v30[4] = v28;
        v30[5] = v25;
        v30[6] = v24;

        sub_20B6383D0(0, 0, v17, &unk_20C15DE40, v30);

        v35[0] = v8;
        (*(a7 + 16))(v25, v24, a1, v34, v27, a7);
      }

      else
      {
        if (a1)
        {
          a1(v26);
        }
      }

      return;
    }
  }

  if (a1)
  {
    (a1)();
  }
}

void sub_20B85B96C(void *a1, id a2)
{
  v4 = [a2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 directionalLayoutMargins];
  v7 = v6;
  v9 = v8;

  v10 = [a2 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  [v10 frame];
  v13 = v12;

  v14 = [a2 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  [v14 frame];
  v17 = v16;

  v18 = [a1 view];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = v13 - (v7 + v9);
  if (v20 > 327.0)
  {
    v20 = 327.0;
  }

  [v18 sizeThatFits_];
}

void sub_20B85BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v31 = a4;
  v18 = sub_20B85A9FC(a2, a3, a5, a6, a7, a8);
  if (v18)
  {
    v32 = v18;
    if (sub_20B85AAFC(a2, a3, a5, a6, a7, a8, a9))
    {
    }

    else
    {
      v28 = a1;
      v30 = a3;
      v34 = v9;
      v19 = *(a8 + 16);
      v29 = v19(a5, a8);
      v33 = v9;
      v20 = v19(a5, a8);
      v21 = sub_20B85AF24();
      sub_20BF6C62C(v32, v29, 7, v31, v20, v21);

      v22 = [v32 popoverPresentationController];
      if (v22)
      {
        v23 = v22;
        [v22 setSourceView_];
      }

      v34 = v10;
      v24 = (*(a9 + 8))(a5, a9);
      v31 = &v28;
      v25 = *(v24 + 16);
      MEMORY[0x28223BE20](v24);
      v26 = v30;
      v27 = v32;
      os_unfair_lock_lock(v25 + 6);
      sub_20B85BF80(&v25[4]);
      os_unfair_lock_unlock(v25 + 6);

      v34 = v10;
      (*(a9 + 24))(a2, v26, 0, 0, a5, a9);
    }
  }
}

uint64_t sub_20B85BDD0(uint64_t a1)
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

  return sub_20B90C514(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_2Tm_0()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void sub_20B85BFCC()
{
  v0 = [objc_opt_self() elapsedTimeColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 gradientDarkColor];

    if (v2)
    {
      qword_27C79A8B8 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20B85C040()
{
  v0 = [objc_opt_self() elapsedTimeColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 gradientLightColor];

    if (v2)
    {
      v3 = [v2 colorWithAlphaComponent_];

      qword_27C79A8C0 = v3;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20B85C0DC()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_containerBuilder);
  v1 = OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_valueNode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_progressRing;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E38, &unk_20C15AEF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_parent);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProgressNodeBuilder(uint64_t a1)
{
  result = qword_27C766950;
  if (!qword_27C766950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B85C244(uint64_t a1)
{
  type metadata accessor for ContainerNodeBuilder(319);
  if (v1 <= 0x3F)
  {
    sub_20B592C74(319);
    if (v2 <= 0x3F)
    {
      sub_20B85C37C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B85C37C(uint64_t a1)
{
  if (!qword_27C766960)
  {
    sub_20C132184();
    sub_20B85C410(&qword_27C766968, MEMORY[0x277CE9C08], MEMORY[0x277CE9C00]);
    v1 = sub_20C132114();
    if (!v2)
    {
      atomic_store(v1, &qword_27C766960);
    }
  }
}

uint64_t sub_20B85C410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B85C458()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E38, &unk_20C15AEF0);
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  v82 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v72 - v5;
  MEMORY[0x28223BE20](v6);
  v86 = &v72 - v7;
  v8 = sub_20C132364();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v72 - v11;
  v12 = sub_20C132EE4();
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v20 = sub_20C132254();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v1;
  v24 = (v1 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_containerBuilder);
  if (qword_27C760748 != -1)
  {
    swift_once();
  }

  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0, &qword_20C154EC0) + 48);
  v26 = *MEMORY[0x277CE9C90];
  v27 = sub_20C132234();
  (*(*(v27 - 8) + 104))(v23, v26, v27);
  *&v23[v25] = 1092616192;
  v28 = *MEMORY[0x277CE9CB8];
  v29 = *(v21 + 104);
  v73 = v20;
  v29(v23, v28, v20);
  v24[1] = 2;
  sub_20C132ED4();
  sub_20C132104();
  v74 = *(v88 + 8);
  v88 += 8;
  v74(v15, v87);
  v30 = type metadata accessor for ContainerNodeBuilder(0);
  sub_20C131F24();
  (*(v17 + 8))(v19, v16);
  *v24 = 1;
  v31 = sub_20C131F44();
  v32 = &v24[v30[7]];
  *v32 = v31;
  v32[8] = v33;
  v34 = sub_20C131FD4();
  v35 = &v24[v30[8]];
  *v35 = v34;
  v35[8] = v36;
  v37 = sub_20C131FE4();
  v38 = &v24[v30[9]];
  *v38 = v37;
  *(v38 + 1) = v39;
  v38[20] = v40;
  *(v38 + 4) = v41;
  v38[21] = v42;
  v43 = sub_20C132384();
  v44 = &v24[v30[10]];
  *v44 = v43 & 0xFFFFFFFFFFLL;
  v44[12] = v45;
  *(v44 + 2) = v46;
  v44[13] = 0;
  v47 = sub_20C132004();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  (*(v21 + 8))(v23, v73);
  v54 = &v24[v30[11]];
  *v54 = v47;
  *(v54 + 1) = v49;
  *(v54 + 2) = v51;
  v54[24] = v53;
  sub_20BA6C508(3);
  v55 = v76;
  sub_20C132374();
  sub_20C1323D4();
  sub_20C132ED4();
  v56 = v75;
  sub_20C1320B4();
  v57 = v87;
  v58 = v74;
  v74(v15, v87);
  (*(v79 + 8))(v55, v80);
  sub_20C1323A4();
  v59 = v85;
  v60 = v78;
  sub_20C131FF4();
  (*(v77 + 8))(v56, v60);
  sub_20C132ED4();
  sub_20C1323D4();
  sub_20C1323B4();
  v61 = v82;
  sub_20C132044();
  v58(v15, v57);
  sub_20C1323A4();
  v62 = v81;
  v63 = v84;
  sub_20C131FF4();
  v64 = *(v83 + 8);
  v64(v61, v63);
  v65 = v62;
  if (qword_27C7607B0 != -1)
  {
    swift_once();
  }

  v66 = qword_27C79A8C0;
  sub_20C1323E4();
  if (v67 == -1)
  {
    sub_20C1323C4();
  }

  v68 = v86;
  sub_20C132014();
  v64(v65, v63);
  if (qword_27C7607A8 != -1)
  {
    swift_once();
  }

  v69 = qword_27C79A8B8;
  sub_20C1323E4();
  if (v70 == -1)
  {
    sub_20C1323D4();
  }

  sub_20C132064();
  v64(v68, v63);
  *(v59 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_parent + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v59 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_behavior) = 0;
  *(v59 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_duration) = 0;
  *(v59 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_elapsedTime) = 0;
  return v59;
}

uint64_t sub_20B85CD0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for ContainerNodeBuilder(0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E38, &unk_20C15AEF0);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_behavior))
  {
    v15 = 0.0;
    if (*(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_behavior) != 1)
    {
      v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_duration) - *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_elapsedTime);
    }
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_elapsedTime);
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if (qword_27C760838 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v16 = [qword_27C768310 stringFromTimeInterval_];
    if (v16)
    {
      v17 = v16;
      sub_20C13C954();
    }

LABEL_9:
    v42 = *(v9 + 16);
    v42(v11, v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_valueNode, v8);
    sub_20C132074();

    v19 = *(v9 + 8);
    v9 += 8;
    v18 = v19;
    v20 = v8;
    v43 = v9;
    v19(v11, v8);
    v21 = v15 / *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_duration);
    v22 = 0.0;
    if (v21 >= 0.0)
    {
      v22 = v15 / *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_duration);
    }

    v23 = v22 * 100.0;
    v24 = v21 <= 1.0 ? v23 : 100.0;
    v25 = ceil(v24);
    if (v25 >= 0.0)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v40 = v7;
  sub_20C132024();
  v41 = v18;
  v26 = OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_containerBuilder;
  swift_beginAccess();
  v39 = v14;
  sub_20B6B5ADC(v2 + v26, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88, &unk_20C16C120);
  v27 = sub_20C132264();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20C14F320;
  v32 = v31 + v30;
  v42(v32, v14, v8);
  v33 = *(v28 + 104);
  v33(v32, *MEMORY[0x277CE9CD8], v27);
  v34 = v45;
  v35 = v46;
  v36 = v40;
  (*(v45 + 16))(v32 + v29, v40, v46);
  v33(v32 + v29, *MEMORY[0x277CE9CD0], v27);
  v37 = v47;
  sub_20B7E27F8(v44);

  sub_20B593250(v37);
  (*(v34 + 8))(v36, v35);
  return v41(v39, v20);
}

double sub_20B85D218(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

double sub_20B85D268(char a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_behavior) = a1;
  v2 = OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_containerBuilder;
  v3 = a1 == 1;
  swift_beginAccess();
  *(v1 + v2) = v3;
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_parent;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_20B85D31C(double a1, double a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_elapsedTime) = a1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_duration) = a2;
  v3 = v2 + OBJC_IVAR____TtC9SeymourUI19ProgressNodeBuilder_parent;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);

    swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_20B85D3B4(uint64_t a1, double a2)
{
  v3 = sub_20C136464();
  v5 = v4;
  v7 = v6 & 1;
  sub_20B64BBC8();
  sub_20B64BC1C();
  v8 = sub_20C133C04();
  sub_20B583F4C(v3, v5, v7);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_20C136414();
  v10 = a2 - v9;
  if (v10 <= 0.0)
  {
    return 0;
  }

  if (qword_27C7609A8 != -1)
  {
    swift_once();
  }

  return v10 < *&qword_27C79BC20;
}

uint64_t sub_20B85D4A8()
{
  v1 = sub_20C135C84();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B747A04(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20B6134F0(v3);
      result = 1;
      break;
    case 2u:
      sub_20B6134F0(v3);
      result = 2;
      break;
    case 3u:
      sub_20B6134F0(v3);
      result = 3;
      break;
    case 4u:
      sub_20B6134F0(v3);
      result = 5;
      break;
    case 5u:
      sub_20B6134F0(v3);
      result = 6;
      break;
    case 6u:
      v5 = sub_20C1341A4();
      (*(*(v5 - 8) + 8))(v3, v5);
      result = 4;
      break;
    case 7u:
      sub_20B6134F0(v3);
      result = 7;
      break;
    case 8u:
      sub_20B6134F0(v3);
      result = 8;
      break;
    case 9u:
      sub_20B6134F0(v3);
      result = 9;
      break;
    case 0xAu:
      sub_20B6134F0(v3);
      result = 10;
      break;
    case 0xBu:
      sub_20B6134F0(v3);
      result = 11;
      break;
    case 0xCu:
      sub_20B6134F0(v3);
      result = 12;
      break;
    default:
      sub_20B6134F0(v3);
      result = 0;
      break;
  }

  return result;
}

id sub_20B85D654(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_20C13D664();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13D874();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PickerButton();
  v24.receiver = v4;
  v24.super_class = v20;
  v21 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20C13D844();
  (*(v13 + 104))(v15, *MEMORY[0x277D74FD0], v12);
  sub_20C13D674();
  v22 = [objc_opt_self() whiteColor];
  sub_20C13D774();
  sub_20C13D6B4();
  (*(v17 + 16))(v11, v19, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_20C13D894();

  (*(v17 + 8))(v19, v16);
  return v21;
}

id sub_20B85D988(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PickerButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for SessionHeartUIState(uint64_t a1)
{
  result = qword_281102D80;
  if (!qword_281102D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B85DA2C(uint64_t a1)
{
  sub_20B85DA8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_20B85DA8C()
{
  if (!qword_281103BD8)
  {
    v0 = sub_20C134914();
    if (!v1)
    {
      atomic_store(v0, &qword_281103BD8);
    }
  }
}

uint64_t sub_20B85DAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134914();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SessionHeartUIState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766970, &unk_20C15DF70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_20B85DE4C(a1, &v27 - v17);
  sub_20B85DE4C(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v28;
    if (EnumCaseMultiPayload)
    {
      sub_20B85DE4C(v18, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_15;
      }

      (*(v22 + 32))(v6, &v18[v20], v4);
      v23 = MEMORY[0x20F2EC030](v12, v6);
      v24 = *(v22 + 8);
      v24(v6, v4);
      v24(v12, v4);
    }

    else
    {
      sub_20B85DE4C(v18, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        v12 = v15;
LABEL_15:
        (*(v22 + 8))(v12, v4);
        goto LABEL_16;
      }

      (*(v22 + 32))(v9, &v18[v20], v4);
      v23 = MEMORY[0x20F2EC030](v15, v9);
      v25 = *(v22 + 8);
      v25(v9, v4);
      v25(v15, v4);
    }

    sub_20B85DF18(v18);
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_16:
    sub_20B85DEB0(v18);
    v23 = 0;
    return v23 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

LABEL_12:
  sub_20B85DF18(v18);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_20B85DE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHeartUIState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B85DEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766970, &unk_20C15DF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B85DF18(uint64_t a1)
{
  v2 = type metadata accessor for SessionHeartUIState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B85DF74(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      type metadata accessor for TabletShelfViewFactory();
    }

    else
    {
      type metadata accessor for PhoneShelfViewFactory();
    }

    return swift_allocObject();
  }

  if (a1 == 3)
  {
    type metadata accessor for TVShelfViewFactory();
    return swift_allocObject();
  }

  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD00000000000002BLL, 0x800000020C19D0B0);
  sub_20C13DDF4();
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

char *sub_20B85E148(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setNumberOfLines_];
  [v6 setLineBreakMode_];
  [v6 setAllowsDefaultTighteningForTruncation_];
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  [v6 setTextColor_];

  [v6 setTextAlignment_];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle_];
  [v10 pointSize];
  v12 = v11;

  v13 = [v9 boldSystemFontOfSize_];
  [v6 setFont_];

  [v6 setAdjustsFontForContentSizeCategory_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v5] = v6;
  v14 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView;
  v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v16 = [v7 whiteColor];
  [v15 setTintColor_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v14] = v15;
  v17 = *&v3[v5];
  v18 = v17;
  if (a2)
  {
    v19 = sub_20C13C914();
  }

  else
  {
    v19 = 0;
  }

  [v17 setText_];

  [*&v3[v14] setImage_];
  v56.receiver = v3;
  v56.super_class = type metadata accessor for TVRemoteParticipantMonogramContentView();
  v20 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v21 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel;
  v22 = *&v20[OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel];
  v23 = v20;
  [v23 addSubview_];
  v54 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView;
  [v23 addSubview_];
  v25 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 8);
  v26 = *(MEMORY[0x277D768C8] + 16);
  v27 = *(MEMORY[0x277D768C8] + 24);
  v28 = *&v20[v21];
  v29 = [v28 leadingAnchor];
  v30 = [v23 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v24];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  v33 = v31;
  v34 = [v28 trailingAnchor];
  v35 = [v23 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-v27];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = v36;
  v39 = [v28 topAnchor];
  v40 = [v23 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:v25];

  LODWORD(v42) = 1148846080;
  [v41 setPriority_];
  v43 = [v28 bottomAnchor];
  v44 = [v23 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-v26];

  LODWORD(v46) = 1148846080;
  [v45 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20C14FE90;
  *(v47 + 32) = v33;
  *(v47 + 40) = v38;
  *(v47 + 48) = v41;
  *(v47 + 56) = v45;
  v48 = v41;

  v49 = *&v23[v54];
  v50 = UIView.constraintsPinningCenterToCenterOfView(_:)(v23);

  sub_20B8D9310(v50);
  v51 = objc_opt_self();
  sub_20B5E29D0();
  v52 = sub_20C13CC54();

  [v51 activateConstraints_];

  return v23;
}

id sub_20B85E774(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TVRemoteParticipantMonogramContentView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20B85E818()
{
  v1 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v2 setNumberOfLines_];
  [v2 setLineBreakMode_];
  [v2 setAllowsDefaultTighteningForTruncation_];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle_];
  [v6 pointSize];
  v8 = v7;

  v9 = [v5 boldSystemFontOfSize_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v10 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v12 = [v3 whiteColor];
  [v11 setTintColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  sub_20C13DE24();
  __break(1u);
}

uint64_t static ActiveWorkoutPlanRefreshRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_20B85EAFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C136084();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_20C13B234();
    sub_20B85EBB8(v4);

    return sub_20B8600EC(v4);
  }

  return result;
}

void sub_20B85EBB8(uint64_t a1)
{
  v3 = sub_20C136C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136084();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B860148(a1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10, &qword_20C15E0D0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_galleryShelf);
    *(v11 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_syncedItems) = MEMORY[0x277D84F90];

    v12 = *(v11 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
    if (!(v12 >> 62) || v12 >> 62 == 3 && (v12 == 0xC000000000000000 ? (v13 = (*(v11 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 16) | *(v11 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 24) | *(v11 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState)) == 0) : (v13 = 0), v13))
    {
      sub_20B83E4B0(MEMORY[0x277D84F90], 0, 0, 0);
    }
  }

  else
  {
    (*(v4 + 32))(v6, &v9[*(v10 + 48)], v3);
    v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_galleryShelf);
    v15 = sub_20C136A44();
    *(v14 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_syncedItems) = v15;

    v16 = *(v14 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
    if (!(v16 >> 62) || v16 >> 62 == 3 && (v16 == 0xC000000000000000 ? (v17 = (*(v14 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 16) | *(v14 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 24) | *(v14 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState)) == 0) : (v17 = 0), v17))
    {
      sub_20B83E4B0(v15, 0, 0, 0);
    }

    (*(v4 + 8))(v6, v3);
    v18 = sub_20C135174();
    (*(*(v18 - 8) + 8))(v9, v18);
  }
}

void sub_20B85EEA4(uint64_t a1, char a2, __n128 a3)
{
  if (!a2)
  {
    v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_headerShelf);
    v8 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState;
    if (*(v7 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState) != 2)
    {
      return;
    }

LABEL_8:
    v9 = 1;
LABEL_22:
    *(v7 + v8) = v9;
    goto LABEL_23;
  }

  if (a2 == 1)
  {
    *(*(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_headerShelf) + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_upNextQueueItems) = a1;

    sub_20B9A123C();
    v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onUpNextQueueItemsChanged);
    if (v5)
    {
      v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onUpNextQueueItemsChanged + 8);

      v5(a1);

      sub_20B583ECC(v5, v6);
    }

    return;
  }

  if (!a1)
  {
    v15 = (*(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_galleryShelf) + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
    v16 = v15[1];
    if (!(v16 >> 62))
    {
      v17 = *v15;

      sub_20B83E4B0(v18, 0x4000000000000000uLL, 0, 0);
      sub_20B8403F8(v17, v16);
    }

    v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_headerShelf);
    v8 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState;
    if (*(v7 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState))
    {
      return;
    }

    goto LABEL_8;
  }

  if (a1 != 1)
  {
    v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_headerShelf);
    v8 = OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState;
    if (*(v7 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState) != 1)
    {
      return;
    }

    v9 = 2;
    goto LABEL_22;
  }

  v10 = *(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_galleryShelf);
  v11 = *(v10 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState + 8);
  if (v11 >> 62 == 1)
  {
    v12 = *(v10 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
    *(v10 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lastEditOperation) = 2;

    sub_20B83E4B0(v13, 0, 0, 0);
    sub_20B8403F8(v12, v11);
    if (v11)
    {
      sub_20B83CFBC();
    }
  }

  v14 = *(v3 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_headerShelf);
  if (*(v14 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState))
  {
    *(v14 + OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_headerCellState) = 0;
LABEL_23:
    sub_20B9A123C();
  }
}

uint64_t type metadata accessor for TVUpNextQueueListDataProvider(uint64_t a1)
{
  result = qword_27C7669D8;
  if (!qword_27C7669D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B85F290(uint64_t a1)
{
  result = sub_20C1333A4();
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

uint64_t sub_20B85F36C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

char *sub_20B85F448(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v99 = a3;
  v97 = a2;
  v92 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v5 - 8);
  *&v95 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v7 - 8);
  v96 = v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v90 - v14;
  v94 = sub_20C1333A4();
  v16 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v18 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v3[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onFocusSettled];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v3[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_onUpNextQueueItemsChanged];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v3[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_pageIdentifier];
  *v21 = 0x7478654E7055;
  *(v21 + 1) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v22 = v111[1];
  v23 = &v3[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_eventHub];
  *v23 = v111[0];
  *(v23 + 1) = v22;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v3[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_subscriptionToken] = sub_20C13A914();
  v90[1] = *v21;
  v24 = *MEMORY[0x277D51820];
  v25 = sub_20C1352F4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v15, v24, v25);
  (*(v26 + 56))(v15, 0, 1, v25);
  v27 = sub_20C132C14();
  (*(*(v27 - 8) + 56))(v91, 1, 1, v27);
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(v93, 1, 1, v28);
  v29 = sub_20C136914();
  (*(*(v29 - 8) + 56))(v96, 1, 1, v29);

  sub_20C133384();
  v30 = OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_metricPage;
  v31 = v94;
  (*(v16 + 32))(&v4[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_metricPage], v18, v94);
  (*(v16 + 16))(v18, &v4[v30], v31);
  type metadata accessor for TVUpNextQueueHeaderShelf(0);
  swift_allocObject();

  v33 = sub_20B9A8B1C(v32, v18);

  v34 = OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_headerShelf;
  *&v4[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_headerShelf] = v33;
  type metadata accessor for TVUpNextQueueGalleryShelf(0);
  swift_allocObject();

  v36 = sub_20B83FE3C(v35);

  *&v4[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_galleryShelf] = v36;
  v37 = *(v21 + 1);
  v97 = *v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v99 = v4;
  *(inited + 32) = *&v4[v34];
  *(inited + 40) = &off_2822BB288;
  *(inited + 48) = v36;
  *(inited + 56) = &off_2822AC290;
  v96 = v37;

  LODWORD(v94) = sub_20C1380F4();
  v39 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v93 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v39 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v40 = sub_20C13C724();
  v41 = type metadata accessor for CatalogPageImpressionTracker();
  v42 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v43 = MEMORY[0x277D221C0];
  v42[2] = sub_20C13C6D4();
  v42[3] = v40;
  v42[4] = v43;
  v111[3] = v41;
  v44 = sub_20B63EE48();
  v111[4] = v44;
  v111[0] = v42;
  v45 = type metadata accessor for MetricLocationStore();
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F98];
  *(v46 + 16) = MEMORY[0x277D84F90];
  *(v46 + 24) = v48;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v111, v41);
  v50 = MEMORY[0x28223BE20](v49);
  v52 = (v90 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52, v50);
  v54 = *v52;
  v110[3] = v41;
  v110[4] = v44;
  v110[0] = v54;
  v109[3] = v45;
  v109[4] = &off_2822B6968;
  v109[0] = v46;
  v108[0] = v47;
  sub_20BB5D394(0, 2, 0);
  v55 = v108[0];
  v56 = *(v108[0] + 16);
  v57 = *(v108[0] + 24);
  v95 = *(inited + 32);
  swift_unknownObjectRetain();
  if (v56 >= v57 >> 1)
  {
    sub_20BB5D394((v57 > 1), v56 + 1, 1);
    v55 = v108[0];
  }

  *(v55 + 16) = v56 + 1;
  v58 = v55 + 24 * v56;
  *(v58 + 32) = v95;
  *(v58 + 48) = 0;
  swift_unknownObjectRetain();

  v60 = *(v55 + 16);
  v59 = *(v55 + 24);
  if (v60 >= v59 >> 1)
  {
    sub_20BB5D394((v59 > 1), v60 + 1, 1);
    v55 = v108[0];
  }

  *(v55 + 16) = v60 + 1;
  v61 = v55 + 24 * v60;
  *(v61 + 32) = v36;
  *(v61 + 40) = &off_2822AC290;
  *(v61 + 48) = 0;
  sub_20B51CC64(v110, v108);
  sub_20B51CC64(v109, v107);
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v108, v108[3]);
  v63 = MEMORY[0x28223BE20](v62);
  v65 = (v90 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65, v63);
  v67 = __swift_mutable_project_boxed_opaque_existential_1(v107, v107[3]);
  v68 = MEMORY[0x28223BE20](v67);
  v70 = (v90 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70, v68);
  v72 = *v65;
  v73 = *v70;
  v105 = v41;
  v106 = v44;
  v104[0] = v72;
  v102 = v45;
  v103 = &off_2822B6968;
  v101[0] = v73;
  v74 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v75 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  v76 = MEMORY[0x28223BE20](v75);
  v78 = (v90 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78, v76);
  v80 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
  v81 = MEMORY[0x28223BE20](v80);
  v83 = (v90 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v84 + 16))(v83, v81);
  v85 = sub_20BE3AA74(v97, v96, v55, v94, v93, *v78, *v83, 2, v74);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v111);
  v86 = v99;
  *&v99[OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_page] = v85;
  v100.receiver = v86;
  v100.super_class = ObjectType;
  v87 = objc_msgSendSuper2(&v100, sel_init);
  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = v87;
  swift_unknownObjectRetain();

  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v111);
  return v88;
}

uint64_t sub_20B8600EC(uint64_t a1)
{
  v2 = sub_20C136084();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B860148(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C136084();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_20B8601AC(void *a1)
{
  v2 = [a1 allowedPressTypes];
  sub_20B8602D4();
  v3 = sub_20C13CC74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C14F580;
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = sub_20BB821F4(v3, v4);

  result = 0;
  if (v5)
  {
    v6 = (*(v1 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_galleryShelf) + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState);
    v7 = v6[1];
    if (!(v7 >> 62))
    {
      return 1;
    }

    if (v7 >> 62 == 3)
    {
      v8 = v6[2] | v6[3] | *v6;
      if (v7 == 0xC000000000000000 && v8 == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_20B8602D4()
{
  result = qword_27C765490;
  if (!qword_27C765490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C765490);
  }

  return result;
}

char *sub_20B860320(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_20C13C0B4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20C13C0D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_blurView;
  v16 = [objc_opt_self() smu:14.0 effectWithBlurRadius:?];
  v17 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v18 = v17;
  [v18 setClipsToBounds_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[v15] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_playButton;
  v20 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v19] = v20;
  if (_UISolariumEnabled())
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v21 setClipsToBounds_];
    *&v5[OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_tintView] = v21;
    v22 = v21;
    sub_20C13C084();
    sub_20C13C0E4();
    v23 = [objc_allocWithZone(MEMORY[0x277D75348]) &selRef:0.71372549 setSmu:1.0 allowsInteractiveDismissWhenFullScreen:{0.0, 1.0}];
    v24 = [v23 colorWithAlphaComponent_];

    v126[3] = v11;
    v126[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v126);
    sub_20C13C0C4();

    (*(v12 + 8))(v14, v11);
    sub_20C13D564();

    v25 = &selRef_setDescriptionTextHighlightColor_;
  }

  else
  {
    v26 = [objc_allocWithZone(type metadata accessor for SessionPlayButtonTintView()) initWithFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C151490;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.71372549 green:1.0 blue:0.0 alpha:1.0];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.71372549 green:1.0 blue:0.0 alpha:1.0];
    sub_20B898F44(inited);
    [v26 setAlpha_];
    [v26 setClipsToBounds_];
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    *&v5[OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_tintView] = v26;
    v25 = &selRef_setDescriptionTextHighlightColor_;
  }

  v28 = type metadata accessor for WorkoutPlayButtonView();
  v127.receiver = v5;
  v127.super_class = v28;
  v29 = objc_msgSendSuper2(&v127, v25[219], a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_playButton;
  v31 = *&v29[OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_playButton];
  v32 = v29;
  v33 = v31;
  v34 = sub_20C13C914();
  [v33 setAccessibilityIdentifier_];

  [*&v29[v30] setContentMode_];
  type metadata accessor for SessionIntroSequenceView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = [objc_opt_self() bundleForClass_];
  v37 = sub_20C13C914();
  v38 = [objc_opt_self() imageNamed:v37 inBundle:v36 compatibleWithTraitCollection:0];

  if (v38)
  {
    v39 = [v38 imageWithRenderingMode_];
  }

  else
  {
    v39 = 0;
  }

  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_20C151490;
  *(v40 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.847058824 green:1.0 blue:0.0 alpha:1.0];
  *(v40 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.6 green:1.0 blue:0.0 alpha:1.0];
  v41 = *&v29[v30];
  v42 = v41;
  if (v39)
  {
    v43 = v39;
    v44 = sub_20BA02094(v40);

    v123 = v43;
  }

  else
  {

    v123 = 0;
    v44 = 0;
  }

  [v41 setImage:v44 forState:0];

  v45 = *&v29[v30];
  v118 = v29;
  [v45 setUserInteractionEnabled_];
  v46 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_blurView;
  v47 = *&v32[OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_blurView];
  v48 = v32;
  [v48 addSubview_];
  v119 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_tintView;
  [v48 addSubview_];
  [v48 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  v125 = swift_initStackObject();
  *(v125 + 16) = xmmword_20C1517D0;
  v49 = *MEMORY[0x277D768C8];
  v50 = *(MEMORY[0x277D768C8] + 8);
  v52 = *(MEMORY[0x277D768C8] + 16);
  v51 = *(MEMORY[0x277D768C8] + 24);
  v53 = *&v32[v46];
  v54 = [v53 leadingAnchor];
  v55 = [v48 leadingAnchor];
  v121 = v30;
  v56 = v55;
  v57 = [v54 constraintEqualToAnchor:v55 constant:v50];

  LODWORD(v58) = 1148846080;
  [v57 setPriority_];
  v59 = v57;
  v60 = [v53 trailingAnchor];
  v61 = [v48 trailingAnchor];
  v62 = -v51;
  v63 = [v60 constraintEqualToAnchor:v61 constant:v62];

  LODWORD(v64) = 1148846080;
  [v63 &selRef_meterUnit];
  v65 = v63;
  v66 = [v53 topAnchor];
  v67 = [v48 &selRef_setLineBreakMode_];
  v68 = [v66 constraintEqualToAnchor:v67 constant:v49];

  LODWORD(v69) = 1148846080;
  [v68 &selRef_meterUnit];
  v70 = [v53 bottomAnchor];
  v71 = [v48 &selRef_secondaryLabel + 5];
  v72 = -v52;
  v73 = [v70 constraintEqualToAnchor:v71 constant:v72];

  LODWORD(v74) = 1148846080;
  [v73 &selRef_meterUnit];
  v75 = swift_allocObject();
  v124 = xmmword_20C14FE90;
  *(v75 + 16) = xmmword_20C14FE90;
  *(v75 + 32) = v59;
  *(v75 + 40) = v65;
  *(v75 + 48) = v68;
  *(v75 + 56) = v73;
  v76 = v68;

  v77 = v125;
  *(v125 + 32) = v75;
  v120 = v77 + 32;
  v78 = *&v48[v119];
  v79 = [v78 leadingAnchor];
  v80 = [v48 leadingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:v50];

  LODWORD(v82) = 1148846080;
  [v81 &selRef_meterUnit];
  v83 = v81;
  v84 = [v78 trailingAnchor];
  v85 = [v48 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:v62];

  LODWORD(v87) = 1148846080;
  [v86 &selRef_meterUnit];
  v88 = v86;
  v89 = [v78 topAnchor];
  v90 = [v48 topAnchor];
  v91 = [v89 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v92) = 1148846080;
  [v91 &selRef_meterUnit];
  v93 = [v78 bottomAnchor];
  v94 = [v48 bottomAnchor];
  v95 = [v93 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v96) = 1148846080;
  [v95 &selRef_meterUnit];
  v97 = swift_allocObject();
  *(v97 + 16) = v124;
  *(v97 + 32) = v83;
  *(v97 + 40) = v88;
  *(v97 + 48) = v91;
  *(v97 + 56) = v95;
  v98 = v91;

  v99 = v125;
  *(v125 + 40) = v97;
  v100 = swift_allocObject();
  *(v100 + 16) = v124;
  v101 = v121;
  v102 = v118;
  v103 = [*&v118[v121] centerXAnchor];
  v104 = [v48 centerXAnchor];

  v105 = [v103 constraintEqualToAnchor_];
  *(v100 + 32) = v105;
  v106 = [*&v102[v101] centerYAnchor];
  v107 = [v48 centerYAnchor];

  v108 = [v106 constraintEqualToAnchor_];
  *(v100 + 40) = v108;
  v109 = [*&v102[v101] widthAnchor];
  v110 = [v48 widthAnchor];

  v111 = [v109 constraintEqualToAnchor:v110 multiplier:0.68];
  *(v100 + 48) = v111;
  v112 = [*&v102[v101] heightAnchor];
  v113 = [*&v102[v101] widthAnchor];
  v114 = [v112 constraintEqualToAnchor_];

  *(v100 + 56) = v114;
  *(v99 + 48) = v100;
  v115 = objc_opt_self();
  sub_20BE54D20(v99);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B5E29D0();
  v116 = sub_20C13CC54();

  [v115 activateConstraints_];

  return v48;
}

void sub_20B861188(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WorkoutPlayButtonView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_blurView];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];

  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_tintView];
  v6 = [v5 layer];
  [v5 bounds];
  [v6 setCornerRadius_];
}

id sub_20B8612BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutPlayButtonView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_20B861370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_playButton);
  sub_20B68E264(a1, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_20C13DFD4();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
  }

  [v6 addTarget:v13 action:a2 forControlEvents:a3];
  swift_unknownObjectRelease();
  return result;
}

void sub_20B8614F0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_blurView;
  v2 = [objc_opt_self() smu:14.0 effectWithBlurRadius:?];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v4 = v3;
  [v4 setClipsToBounds_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlayButtonView_playButton;
  v6 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B861620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v7;
  v9 = type metadata accessor for FilterOption(0, v8, v7, v7);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = &v27 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v27 - v15;
  v18 = *(v17 + 48);
  v30 = v10;
  v19 = *(v10 + 16);
  v19(&v27 - v15, v31, v9, v14);
  (v19)(&v16[v18], a2, v9);
  v31 = v5;
  v20 = *(v5 + 48);
  if (v20(v16, 1, a3) == 1)
  {
    v21 = 1;
    if (v20(&v16[v18], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v19)(v32, v16, v9);
    if (v20(&v16[v18], 1, a3) != 1)
    {
      v22 = v31;
      v23 = v28;
      (*(v31 + 32))(v28, &v16[v18], a3);
      v24 = v32;
      v21 = sub_20C13C894();
      v25 = *(v22 + 8);
      v25(v23, a3);
      v25(v24, a3);
LABEL_8:
      v13 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, a3);
  }

  v21 = 0;
  v9 = TupleTypeMetadata2;
LABEL_9:
  (*(v13 + 8))(v16, v9);
  return v21 & 1;
}

uint64_t sub_20B86198C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_20B8619E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_20B861B68(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void *sub_20B861D94()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton);
  v2 = v1;
  return v1;
}

char *sub_20B861DC4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
  v10 = sub_20C13D5A4();
  if (!v10)
  {
    v10 = [objc_opt_self() clearColor];
  }

  v11 = &v4[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout];
  *v11 = xmmword_20C15E160;
  *(v11 + 1) = xmmword_20C15E170;
  *(v11 + 2) = xmmword_20C15E180;
  *(v11 + 6) = v10;
  v12 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  [v13 setTextAlignment_];
  v14 = objc_opt_self();
  v15 = [v14 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:1024 variant:?];
  [v13 setFont_];

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v13 setTextColor_];

  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setLineBreakMode_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v12] = v13;
  v18 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_indicatorView;
  v19 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_type;
  v21 = type metadata accessor for RemoteParticipantButton(0);
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_deviceBadgeView] = 0;
  v22 = objc_allocWithZone(type metadata accessor for TVRemoteParticipantMonogramContentView());
  v23 = sub_20B85E148(0, 0, 0);
  v24 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButtonContentView;
  *&v5[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButtonContentView] = v23;
  v25 = *MEMORY[0x277D74368];
  v26 = *&v23[OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel];
  v27 = [v14 systemFontOfSize_];
  v28 = [v27 fontDescriptor];
  v29 = [v28 fontDescriptorWithDesign_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = [v14 fontWithDescriptor:v28 size:0.0];

  [v26 setFont_];
  v32 = *(*&v5[v24] + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel);
  v33 = [v16 whiteColor];
  [v32 setTextColor_];

  v34 = *&v5[v24];
  v35 = objc_allocWithZone(type metadata accessor for TVButton());
  v36 = sub_20BB88714(v34, 1, 0, v35, 0.0, 0.0, 0.0, 0.0);
  v37 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v36[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setShadowVerticalOffset_];
  [*&v36[v37] setShadowOpacity:0 forUserInterfaceStyle:0.2];
  [*&v36[v37] setShadowOpacity:2 forUserInterfaceStyle:0.2];
  [*&v36[v37] setShadowOpacity:1 forUserInterfaceStyle:0.2];
  [*&v36[v37] setFocusedSizeIncrease_];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton] = v36;
  v38 = *(*&v5[v24] + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView);
  v39 = *&v36[v37];
  v40 = v36;
  v41 = v38;
  result = [v39 contentView];
  if (result)
  {
    v43 = result;

    v45 = *MEMORY[0x277D768C8];
    v44 = *(MEMORY[0x277D768C8] + 8);
    v46 = *(MEMORY[0x277D768C8] + 16);
    v47 = *(MEMORY[0x277D768C8] + 24);
    v48 = [v41 leadingAnchor];
    v49 = [v43 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:v44];

    LODWORD(v51) = 1148846080;
    [v50 setPriority_];
    v52 = v50;
    v53 = [v41 trailingAnchor];
    v54 = [v43 trailingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:-v47];

    LODWORD(v56) = 1148846080;
    [v55 setPriority_];
    v57 = v55;
    v58 = [v41 topAnchor];
    v59 = [v43 topAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:v45];

    LODWORD(v61) = 1148846080;
    [v60 setPriority_];
    v62 = [v41 bottomAnchor];
    v63 = [v43 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:-v46];

    LODWORD(v65) = 1148846080;
    [v64 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_20C14FE90;
    *(v66 + 32) = v52;
    *(v66 + 40) = v57;
    *(v66 + 48) = v60;
    *(v66 + 56) = v64;
    v67 = v60;

    *&v5[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_imageViewEdgeFillConstraints] = v66;
    v109.receiver = v5;
    v109.super_class = type metadata accessor for TVRemoteParticipantCell(0);
    v68 = objc_msgSendSuper2(&v109, sel_initWithFrame_, a1, a2, a3, a4);
    v69 = [v68 contentView];
    v70 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton;
    [v69 addSubview_];

    v71 = [v68 contentView];
    v72 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_titleLabel;
    [v71 addSubview_];

    v73 = *&v68[v70];
    v74 = *&v73[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
    v75 = v73;
    result = [v74 contentView];
    if (result)
    {
      v76 = result;

      v77 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_indicatorView;
      v107 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_indicatorView;
      [v76 addSubview_];

      [*&v68[v77] setHidesWhenStopped_];
      [*&v68[v70] setTranslatesAutoresizingMaskIntoConstraints_];
      v108 = objc_opt_self();
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_20C150AE0;
      v79 = [*&v68[v70] centerXAnchor];
      v80 = [v68 contentView];
      v81 = [v80 centerXAnchor];

      v82 = [v79 constraintEqualToAnchor_];
      *(v78 + 32) = v82;
      v83 = [*&v68[v70] topAnchor];
      v84 = [v68 contentView];
      v85 = [v84 topAnchor];

      v86 = [v83 constraintEqualToAnchor_];
      *(v78 + 40) = v86;
      v87 = [*&v68[v70] widthAnchor];
      v88 = [v87 constraintEqualToConstant_];

      *(v78 + 48) = v88;
      v89 = [*&v68[v70] heightAnchor];
      v90 = [v89 constraintEqualToConstant_];

      *(v78 + 56) = v90;
      v91 = [*&v68[v72] leadingAnchor];
      v92 = [v68 contentView];
      v93 = [v92 leadingAnchor];

      v94 = [v91 constraintEqualToAnchor_];
      *(v78 + 64) = v94;
      v95 = [*&v68[v72] topAnchor];
      v96 = [*&v68[v70] bottomAnchor];
      v97 = [v95 constraintEqualToAnchor:v96 constant:*&v68[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout + 8]];

      *(v78 + 72) = v97;
      v98 = [*&v68[v72] trailingAnchor];
      v99 = [v68 contentView];

      v100 = [v99 trailingAnchor];
      v101 = [v98 constraintEqualToAnchor_];

      *(v78 + 80) = v101;
      v102 = *&v68[v70];
      v103 = *&v68[v107];
      v104 = v102;
      v105 = UIView.constraintsPinningCenterToCenterOfView(_:)(v104);

      sub_20B8D9310(v105);
      sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
      v106 = sub_20C13CC54();

      [v108 activateConstraints_];

      return v68;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_20B862A48()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TVRemoteParticipantCell(0);
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_deviceBadgeView];
  if (v1)
  {
    v2 = *(*&v0[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton] + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView);
    v3 = v1;
    v4 = [v2 contentView];
    if (v4)
    {
      v5 = v4;
      [v4 bringSubviewToFront_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_20B862B40()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButtonContentView);
  v2 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView;
  [*(v1 + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView) setImage_];
  v3 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel;
  [*(v1 + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel) setText_];
  v4 = [*(v1 + v2) layer];
  [v4 setCornerRadius_];

  [*(v1 + v2) setClipsToBounds_];
  v5 = *(v1 + v3);

  return [v5 setAttributedText_];
}

double sub_20B862C5C(uint64_t a1)
{
  v3 = sub_20C135174();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteParticipantButton(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766AF8, &unk_20C15E200);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27[-1] - v12;
  sub_20B864224(a1, &v27[-1] - v12);
  (*(v8 + 56))(v13, 0, 1, v7);
  v14 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_type;
  swift_beginAccess();
  sub_20B864288(v13, v1 + v14);
  swift_endAccess();
  v15 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v16 = sub_20C13CC54();

  [v15 deactivateConstraints_];

  v17 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_deviceBadgeView;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_deviceBadgeView);
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *(v1 + v17);
  }

  else
  {
    v19 = 0;
  }

  *(v1 + v17) = 0;

  sub_20B864224(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return result;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7654B8, &unk_20C158990) + 48);
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = *(v22 + 2);
    (*(v4 + 32))(v6, v10, v3);
    v27[0] = v23;
    v27[1] = v24;
    v27[2] = v25;
    sub_20B862FAC(v6, v27);
    (*(v4 + 8))(v6, v3);
    return sub_20B7A7B44(v23, v24, v25);
  }

  sub_20B86336C(*v10, v10[1], v10[2], v10[3]);

  return result;
}

void sub_20B862FAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_titleLabel);
  sub_20C135154();
  if (v8)
  {
    v9 = sub_20C13C914();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText_];

  v10 = sub_20C1350F4();
  sub_20B863A1C(v10);
  if (v5)
  {
    v11 = *(v3 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButtonContentView);
    v12 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView;
    v13 = *(v11 + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView);
    v14 = v5;

    [v13 setImage_];
    v15 = [*(v11 + v12) layer];
    [v15 setCornerRadius_];

    [*(v11 + v12) setClipsToBounds_];
    v16 = *(v3 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton);
    v17 = [objc_opt_self() clearColor];
    v18 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
    [*(v16 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setBackgroundColor:v17 forState:8];
    [*(v16 + v18) setBackgroundColor:v17 forState:4];
    [*(v16 + v18) setBackgroundColor:v17 forState:1];
    [*(v16 + v18) setBackgroundColor:v17 forState:0];

    v19 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

    v20 = sub_20C13CC54();

    [v19 activateConstraints_];

    sub_20B7A7B44(v5, v4, v6);
  }

  else
  {
    v21 = sub_20C135154();
    if (v22)
    {
      v23 = sub_20BEDD594(v21, v22);
      v25 = v24;

      if (v25)
      {
        v26 = *(v3 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton);
        v27 = [objc_opt_self() grayColor];
        v28 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
        [*(v26 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setBackgroundColor:v27 forState:8];
        [*(v26 + v28) setBackgroundColor:v27 forState:4];
        [*(v26 + v28) setBackgroundColor:v27 forState:1];
        [*(v26 + v28) setBackgroundColor:v27 forState:0];

        v29 = *(v3 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButtonContentView);
        v32 = v25;
        sub_20B5F6EB0();
        sub_20C13D9E4();

        v30 = *(v29 + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_titleLabel);
        v31 = sub_20C13C914();
        [v30 setText_];

        [*(v29 + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView) setImage_];
      }
    }
  }
}

void sub_20B86336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() configurationWithPointSize_];
  v6 = sub_20C13C914();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  if (v7)
  {
    v8 = [v7 imageWithRenderingMode_];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButtonContentView);
  v10 = OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView;
  [*(v9 + OBJC_IVAR____TtC9SeymourUI38TVRemoteParticipantMonogramContentView_imageView) setImage_];
  v11 = [*(v9 + v10) layer];
  [v11 setMasksToBounds_];

  v12 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton);
  v13 = [objc_opt_self() grayColor];
  v14 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*(v12 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setBackgroundColor:v13 forState:8];
  [*(v12 + v14) setBackgroundColor:v13 forState:4];
  [*(v12 + v14) setBackgroundColor:v13 forState:1];
  [*(v12 + v14) setBackgroundColor:v13 forState:0];

  v15 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_titleLabel);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v18 = sub_20C13C914();

  [v15 setText_];
}

id sub_20B86365C(char *a1, double a2, double a3)
{
  [*&a1[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton] setAlpha_];

  return [a1 setAlpha_];
}

void sub_20B8636BC(void *a1, void *a2)
{
  v3 = v2;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for TVRemoteParticipantCell(0);
  objc_msgSendSuper2(&v20, sel_didUpdateFocusInContext_withAnimationCoordinator_, a1, a2);
  v6 = [a1 nextFocusedView];
  if (v6)
  {
    v7 = v6;
    sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
    if ((sub_20C13D5F4() & 1) != 0 || [v7 isDescendantOfView_])
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      v18 = sub_20B864344;
      v19 = v8;
      v14 = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_20B863940;
      v17 = &block_descriptor_22;
      v9 = _Block_copy(&v14);
      v10 = v3;

      v11 = &selRef_addCoordinatedFocusingAnimations_completion_;
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v3;
      v18 = sub_20B8642F8;
      v19 = v12;
      v14 = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_20B863940;
      v17 = &block_descriptor_27;
      v9 = _Block_copy(&v14);
      v13 = v3;

      v11 = &selRef_addCoordinatedUnfocusingAnimations_completion_;
    }

    [a2 *v11];

    _Block_release(v9);
  }
}

id sub_20B8638D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_titleLabel);
  CGAffineTransformMakeTranslation(&v4, 0.0, *(a2 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout + 16));
  return [v2 setTransform_];
}

double sub_20B863940(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

void sub_20B863A1C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = sub_20C13C914();

  v4 = [objc_opt_self() smm:v3 systemImageNamed:?];

  v5 = objc_allocWithZone(type metadata accessor for DeviceBadgeView());
  v6 = v4;
  v7 = sub_20C08842C(v6, 1);
  v8 = v2 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout;
  v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout + 48);
  v10 = v7;
  v11 = [v10 layer];
  v12 = [v9 CGColor];
  [v11 setBorderColor_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton);
  v14 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  v15 = [*(v13 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) contentView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = v15;
  [v15 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C151490;
  v18 = [v10 bottomAnchor];

  v19 = [*(v13 + v14) contentView];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [v18 constraintEqualToAnchor:v21 constant:*(v8 + 40)];
  *(v17 + 32) = v22;
  v23 = [v10 trailingAnchor];

  v24 = [*(v13 + v14) contentView];
  if (!v24)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 trailingAnchor];

  v28 = [v23 constraintEqualToAnchor:v27 constant:*(v8 + 32)];
  *(v17 + 40) = v28;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v29 = sub_20C13CC54();

  [v26 activateConstraints_];

  v30 = *(v2 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_deviceBadgeView);
  *(v2 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_deviceBadgeView) = v10;
}

void sub_20B863E1C()
{

  sub_20B8641BC(v0 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_type);
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_deviceBadgeView);
}

id sub_20B863EC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVRemoteParticipantCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVRemoteParticipantCell(uint64_t a1)
{
  result = qword_27C766AE0;
  if (!qword_27C766AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B863FFC(uint64_t a1)
{
  sub_20B8640C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B8640C0(uint64_t a1)
{
  if (!qword_27C766AF0)
  {
    type metadata accessor for RemoteParticipantButton(255);
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C766AF0);
    }
  }
}

uint64_t sub_20B864118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B864160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B8641BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766AF8, &unk_20C15E200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B864224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B864288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766AF8, &unk_20C15E200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_20B8642F8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_titleLabel);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

void sub_20B86434C()
{
  v1 = v0;
  sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
  v2 = sub_20C13D5A4();
  if (!v2)
  {
    v2 = [objc_opt_self() clearColor];
  }

  v3 = v0 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout;
  *v3 = xmmword_20C15E160;
  *(v3 + 16) = xmmword_20C15E170;
  *(v3 + 32) = xmmword_20C15E180;
  *(v3 + 48) = v2;
  v4 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  [v5 setTextAlignment_];
  v6 = [objc_opt_self() smu:*MEMORY[0x277D76938] preferredFontForTextStyle:1024 variant:?];
  [v5 setFont_];

  v7 = [objc_opt_self() labelColor];
  [v5 setTextColor_];

  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setLineBreakMode_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v5;
  v8 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_indicatorView;
  v9 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_type;
  v11 = type metadata accessor for RemoteParticipantButton(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_deviceBadgeView) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI25MetadataEntryDisplayStyleO(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 1 | (2 * *(a1 + 8))) + 2;
  }
}

uint64_t sub_20B864618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_20B864668(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
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

void *sub_20B8646C0(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 62);
  }

  else
  {
    result[1] = (a2 - 2) >> 1;
    result[2] = 0;
    *result = (a2 - 2) & 1 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_20B864704(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20C13E164();
  if (!(a1 >> 62))
  {
    v6 = 1;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    v6 = 2;
LABEL_5:
    MEMORY[0x20F2F58E0](v6);
    MEMORY[0x20F2F58E0](a1 & 1);
    sub_20C13CA64();
    return sub_20C13E1B4();
  }

  if (a1 != 0x8000000000000000 || a3 | a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x20F2F58E0](v7);
  return sub_20C13E1B4();
}

uint64_t sub_20B8647D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 2;
LABEL_5:
    MEMORY[0x20F2F58E0](v4);
    MEMORY[0x20F2F58E0](v2 & 1);

    return sub_20C13CA64();
  }

  if (v2 == 0x8000000000000000 && *(v1 + 1) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  return MEMORY[0x20F2F58E0](v7);
}

uint64_t sub_20B86488C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  sub_20C13E164();
  if (!(v3 >> 62))
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (v3 >> 62 == 1)
  {
    v5 = 2;
LABEL_5:
    MEMORY[0x20F2F58E0](v5);
    MEMORY[0x20F2F58E0](v3 & 1);
    sub_20C13CA64();
    return sub_20C13E1B4();
  }

  if (v3 == 0x8000000000000000 && (v4 | v2) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  MEMORY[0x20F2F58E0](v7);
  return sub_20C13E1B4();
}

unint64_t sub_20B864960()
{
  result = qword_27C766B00;
  if (!qword_27C766B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766B00);
  }

  return result;
}

uint64_t sub_20B8649B4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!(a1 >> 62))
  {
    if (!(a4 >> 62) && ((a4 ^ a1) & 1) == 0)
    {
      if (a2 == a5 && a3 == a6)
      {
        return 1;
      }

      return sub_20C13DFF4();
    }

    return 0;
  }

  if (a1 >> 62 != 1)
  {
    if (a1 != 0x8000000000000000 || a3 | a2)
    {
      if (a4 >> 62 == 2 && a4 == 0x8000000000000001 && !(a6 | a5))
      {
        return 1;
      }
    }

    else if (a4 >> 62 == 2 && a4 == 0x8000000000000000 && !(a6 | a5))
    {
      return 1;
    }

    return 0;
  }

  if (a4 >> 62 != 1 || ((a4 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return sub_20C13DFF4();
}

uint64_t ShelfLazyLockup.applyingRemoteBrowsingEnvironment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_20C134014();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134A74();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B864C34(v3, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    CatalogLockup.applyingRemoteBrowsingEnvironment(_:)(a1, a2);
    (*(v7 + 8))(v9, v6);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_20B864C34(v3, a2);
    return sub_20B864C98(v12);
  }
}

uint64_t sub_20B864C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134A74();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B864C98(uint64_t a1)
{
  v2 = sub_20C134A74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B864CF4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = sub_20C134014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B864C34(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    CatalogLockup.applyingRemoteBrowsingEnvironment(_:)(a1, a3);
    (*(v8 + 8))(v10, v7);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_20B864C34(v4, a3);
    return sub_20B864C98(v13);
  }
}

void sub_20B864E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  v15 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activeWorkoutPlan;
  swift_beginAccess();
  sub_20B606B6C(a1, v4 + v15, &unk_27C76A970, &qword_20C14FC10);
  swift_endAccess();
  v16 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activePlanTemplate;
  swift_beginAccess();
  sub_20B606B6C(a2, v4 + v16, &unk_27C762300, &unk_20C151350);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_templateReferences) = a3;

  v17 = sub_20C133954();
  if ((*(*(v17 - 8) + 48))(a1, 1, v17) == 1 && (v18 = sub_20C135814(), (*(*(v18 - 8) + 48))(a2, 1, v18) == 1) && !*(a3 + 16))
  {
    sub_20B8651D8();
  }

  else
  {
    v19 = sub_20C13CDF4();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    sub_20C13CDA4();

    v20 = sub_20C13CD94();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v4;
    sub_20B6383D0(0, 0, v10, &unk_20C15E470, v21);
  }
}

void sub_20B8651D8()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = 0uLL;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = 0;
  *&v29 = 0;
  WORD4(v29) = 128;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  LOBYTE(v33) = 0;
  *(&v33 + 1) = MEMORY[0x277D84F90];
  *&v34[0] = MEMORY[0x277D84F90];
  *(v34 + 8) = 0u;
  *(&v34[1] + 8) = 0u;
  *(&v34[2] + 1) = 0;
  v35 = 2;
  nullsub_1();
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 144);
  v36[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 128);
  v36[9] = v6;
  v37 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 160);
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 80);
  v36[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 64);
  v36[5] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 112);
  v36[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 96);
  v36[7] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 16);
  v36[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row);
  v36[1] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 48);
  v36[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 32);
  v36[3] = v10;
  v11 = v34[2];
  *(v5 + 128) = v34[1];
  *(v5 + 144) = v11;
  *(v5 + 160) = v35;
  v12 = v32;
  *(v5 + 64) = v31;
  *(v5 + 80) = v12;
  v13 = v34[0];
  *(v5 + 96) = v33;
  *(v5 + 112) = v13;
  v14 = v28;
  *v5 = v27;
  *(v5 + 16) = v14;
  v15 = v30;
  *(v5 + 32) = v29;
  *(v5 + 48) = v15;
  sub_20B520158(v36, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D9F0(v0, Strong);
      if (v19)
      {
        v21 = v18;
        v22 = v19;
        v23 = v20;
        v24 = v0;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
        v25 = sub_20C13C584();
        (*(v2 + 8))(v4, v1);
        if ((v25 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B620ED0(v21, v22, v23, v24, 1, v17);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20B86546C()
{
  v0[2] = sub_20C13CDA4();
  v0[3] = sub_20C13CD94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B694014;

  return sub_20B865518();
}

uint64_t sub_20B865518()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v1[13] = swift_task_alloc();
  v2 = sub_20C133154();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_20C132E94();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v1[22] = swift_task_alloc();
  v4 = sub_20C13BB84();
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B865750, 0, 0);
}

uint64_t sub_20B865750(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[22];
  v6 = v1[12];
  sub_20C13B454();
  sub_20C13BB64();
  v7 = *(v4 + 8);
  v1[27] = v7;
  v1[28] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v8 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activeWorkoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v6 + v8, v5, &unk_27C76A970, &qword_20C14FC10);
  v9 = sub_20C133954();
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v5, 1, v9);
  sub_20B520158(v5, &unk_27C76A970, &qword_20C14FC10);
  if (v8 == 1 || (v10 = v1[21], v11 = v1[12], v12 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activePlanTemplate, swift_beginAccess(), sub_20B52F9E8(v11 + v12, v10, &unk_27C762300, &unk_20C151350), v13 = sub_20C135814(), LODWORD(v11) = (*(*(v13 - 8) + 48))(v10, 1, v13), sub_20B520158(v10, &unk_27C762300, &unk_20C151350), v11 == 1))
  {
    v14 = swift_task_alloc();
    v1[34] = v14;
    *v14 = v1;
    v14[1] = sub_20B865ED0;

    return sub_20B8662DC();
  }

  else
  {
    v16 = v1[19];
    v17 = v1[17];
    v18 = v1[18];
    v20 = v1[15];
    v19 = v1[16];
    v21 = v1[14];
    v22 = v1[12];
    sub_20C132E84();
    sub_20C133014();
    sub_20C132D64();
    (*(v20 + 8))(v19, v21);
    v23 = *(v18 + 8);
    v1[29] = v23;
    v1[30] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v16, v17);
    v24 = *(v22 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_workoutPlanClient + 24);
    v25 = *(v22 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_workoutPlanClient + 32);
    __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_workoutPlanClient), v24);
    v26 = swift_task_alloc();
    v1[31] = v26;
    *v26 = v1;
    v26[1] = sub_20B865AB4;
    v27 = v1[20];
    v28 = v1[13];

    return MEMORY[0x2821ADEB8](v28, v27, v24, v25);
  }
}

uint64_t sub_20B865AB4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_20B8660BC;
  }

  else
  {
    v2 = sub_20B865BC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B865BC8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  (*(v0 + 232))(*(v0 + 160), *(v0 + 136));
  v3 = sub_20C135C54();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_nextWorkoutReference;
  swift_beginAccess();
  sub_20B86A164(v2, v1 + v4);
  swift_endAccess();
  v5 = swift_task_alloc();
  *(v0 + 264) = v5;
  *v5 = v0;
  v5[1] = sub_20B865CE4;

  return sub_20B8662DC();
}

uint64_t sub_20B865CE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B865ED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B8660BC()
{
  v21 = v0;
  v1 = *(v0 + 256);
  (*(v0 + 232))(*(v0 + 160), *(v0 + 136));
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 256);
    v19 = *(v0 + 216);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 88) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v11 = sub_20C13C9D4();
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_20B517000, v3, v4, "Unable to fetch next workout reference: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    v19(v6, v7);
  }

  else
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 200);
    v16 = *(v0 + 184);

    v14(v15, v16);
  }

  v17 = swift_task_alloc();
  *(v0 + 264) = v17;
  *v17 = v0;
  v17[1] = sub_20B865CE4;

  return sub_20B8662DC();
}

uint64_t sub_20B8662DC()
{
  v1[96] = v0;
  v2 = sub_20C13C554();
  v1[97] = v2;
  v1[98] = *(v2 - 8);
  v1[99] = swift_task_alloc();
  sub_20C132EE4();
  v1[100] = swift_task_alloc();
  v3 = sub_20C137374();
  v1[101] = v3;
  v1[102] = *(v3 - 8);
  v1[103] = swift_task_alloc();
  v4 = sub_20C1365F4();
  v1[104] = v4;
  v1[105] = *(v4 - 8);
  v1[106] = swift_task_alloc();
  v5 = sub_20C1385B4();
  v1[107] = v5;
  v1[108] = *(v5 - 8);
  v1[109] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  v1[110] = swift_task_alloc();
  v6 = sub_20C1357B4();
  v1[111] = v6;
  v1[112] = *(v6 - 8);
  v1[113] = swift_task_alloc();
  v7 = sub_20C13BB84();
  v1[114] = v7;
  v1[115] = *(v7 - 8);
  v1[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  v1[117] = swift_task_alloc();
  v8 = sub_20C135814();
  v1[118] = v8;
  v1[119] = *(v8 - 8);
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v9 = sub_20C133954();
  v1[125] = v9;
  v1[126] = *(v9 - 8);
  v1[127] = swift_task_alloc();
  sub_20C13CDA4();
  v1[128] = sub_20C13CD94();
  v11 = sub_20C13CD24();
  v1[129] = v11;
  v1[130] = v10;

  return MEMORY[0x2822009F8](sub_20B866750, v11, v10);
}

char *sub_20B866750()
{
  v122 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 768);
  v5 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activeWorkoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v4 + v5, v3, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 992);

    v7 = &unk_27C76A970;
    v8 = &qword_20C14FC10;
    v9 = v6;
    goto LABEL_5;
  }

  v10 = *(v0 + 952);
  v11 = *(v0 + 944);
  v12 = *(v0 + 936);
  v13 = *(v0 + 768);
  (*(*(v0 + 1008) + 32))(*(v0 + 1016), *(v0 + 992), *(v0 + 1000));
  v14 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activePlanTemplate;
  swift_beginAccess();
  sub_20B52F9E8(v13 + v14, v12, &unk_27C762300, &unk_20C151350);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    v15 = *(v0 + 936);
    (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));

    v7 = &unk_27C762300;
    v8 = &unk_20C151350;
    v9 = v15;
LABEL_5:
    sub_20B520158(v9, v7, v8);
    v16 = *(v0 + 768);
    sub_20B86789C(v0 + 184);
    nullsub_1();
    v17 = v16 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row;
    v19 = *(v16 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 16);
    v18 = *(v16 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 32);
    *(v0 + 16) = *(v16 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row);
    *(v0 + 32) = v19;
    *(v0 + 48) = v18;
    v20 = *(v17 + 96);
    v22 = *(v17 + 48);
    v21 = *(v17 + 64);
    *(v0 + 96) = *(v17 + 80);
    *(v0 + 112) = v20;
    *(v0 + 64) = v22;
    *(v0 + 80) = v21;
    v24 = *(v17 + 128);
    v23 = *(v17 + 144);
    v25 = *(v17 + 112);
    *(v0 + 176) = *(v17 + 160);
    *(v0 + 144) = v24;
    *(v0 + 160) = v23;
    *(v0 + 128) = v25;
    v26 = *(v0 + 184);
    v27 = *(v0 + 216);
    *(v17 + 16) = *(v0 + 200);
    *(v17 + 32) = v27;
    *v17 = v26;
    v28 = *(v0 + 232);
    v29 = *(v0 + 248);
    v30 = *(v0 + 280);
    *(v17 + 80) = *(v0 + 264);
    *(v17 + 96) = v30;
    *(v17 + 48) = v28;
    *(v17 + 64) = v29;
    v31 = *(v0 + 296);
    v32 = *(v0 + 312);
    v33 = *(v0 + 328);
    *(v17 + 160) = *(v0 + 344);
    *(v17 + 128) = v32;
    *(v17 + 144) = v33;
    *(v17 + 112) = v31;
    sub_20B520158(v0 + 16, &qword_27C762340, &unk_20C150290);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_14:

      v58 = *(v0 + 8);

      return v58();
    }

    if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
LABEL_7:
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

LABEL_11:
    v46 = Strong;
    sub_20B61D9F0(*(v0 + 768), Strong);
    if (v48)
    {
      v50 = v47;
      v51 = v48;
      v52 = v49;
      v53 = *(v0 + 792);
      v54 = *(v0 + 784);
      v55 = *(v0 + 776);
      sub_20B5E2E18();
      *v53 = sub_20C13D374();
      (*(v54 + 104))(v53, *MEMORY[0x277D85200], v55);
      v56 = sub_20C13C584();
      result = (*(v54 + 8))(v53, v55);
      if ((v56 & 1) == 0)
      {
LABEL_42:
        __break(1u);
        return result;
      }

      sub_20B620ED0(v50, v51, v52, *(v0 + 768), 1, v46);
      swift_unknownObjectRelease();

      goto LABEL_14;
    }

    sub_20C0C2D50(0);
    goto LABEL_7;
  }

  v35 = *(v0 + 928);
  v36 = *(v0 + 920);
  v37 = *(v0 + 912);
  v38 = *(v0 + 904);
  v39 = *(v0 + 896);
  v40 = *(v0 + 888);
  (*(*(v0 + 952) + 32))(*(v0 + 976), *(v0 + 936), *(v0 + 944));
  sub_20C13B454();
  sub_20C13BB64();
  (*(v36 + 8))(v35, v37);
  sub_20C135804();
  v41 = sub_20C135774();
  (*(v39 + 8))(v38, v40);
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = sub_20BEDE7D0(*(v41 + 16), 0);
    v44 = sub_20BEE2430(&v119, v43 + 4, v42, v41);
    v45 = v119;

    Strong = sub_20B583EDC(v45);
    if (v44 != v42)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v119 = v43;
  sub_20B86972C(&v119);
  v117 = *(v0 + 768);

  result = v119;
  v59 = *(v119 + 2);
  if (v59)
  {
    v60 = 0;
    v61 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_modalities;
    v62 = *(v0 + 840);
    v109 = v62;
    v111 = (v62 + 16);
    v63 = (v62 + 48);
    v106 = (v62 + 8);
    v113 = -v59;
    v115 = (v62 + 56);
    v64 = v119 + 40;
    v108 = MEMORY[0x277D84F90];
    v104 = v119 + 40;
    do
    {
      v65 = &v64[16 * v60++];
      while (1)
      {
        if ((v60 - 1) >= *(result + 2))
        {
          __break(1u);
          goto LABEL_42;
        }

        v66 = result;
        v68 = *(v65 - 1);
        v67 = *v65;
        swift_beginAccess();
        if (*(*(v117 + v61) + 16))
        {

          sub_20B65AA60(v68, v67);
          v69 = *(v0 + 832);
          if (v70)
          {
            v71 = *(v0 + 880);
            (*(v109 + 16))();
            (*(v109 + 56))(v71, 0, 1, v69);
          }

          else
          {
            (*v115)(*(v0 + 880), 1, 1, *(v0 + 832));
          }
        }

        else
        {
          (*v115)(*(v0 + 880), 1, 1, *(v0 + 832));
        }

        v72 = *(v0 + 880);
        v73 = *(v0 + 832);
        if (!(*v63)(v72, 1, v73))
        {
          break;
        }

        sub_20B520158(v72, &qword_27C771090, &qword_20C15A040);
        swift_endAccess();

        ++v60;
        v65 += 2;
        result = v66;
        if (v113 + v60 == 1)
        {
          goto LABEL_38;
        }
      }

      v74 = *(v0 + 848);
      (*v111)(v74, v72, v73);
      sub_20B520158(v72, &qword_27C771090, &qword_20C15A040);
      swift_endAccess();
      v75 = sub_20C1365E4();
      v77 = v76;

      (*v106)(v74, v73);
      v78 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_20BC05BA4(0, *(v108 + 2) + 1, 1, v108);
      }

      result = v66;
      v80 = *(v108 + 2);
      v79 = *(v108 + 3);
      if (v80 >= v79 >> 1)
      {
        v108 = sub_20BC05BA4((v79 > 1), v80 + 1, 1, v108);
        result = v66;
      }

      *(v108 + 2) = v80 + 1;
      v81 = &v108[16 * v80];
      *(v81 + 4) = v75;
      *(v81 + 5) = v78;
      v64 = v104;
    }

    while (v113 + v60);
  }

  else
  {
    v108 = MEMORY[0x277D84F90];
  }

LABEL_38:
  v82 = *(v0 + 1016);
  v110 = *(v0 + 984);
  v112 = *(v0 + 1000);
  v83 = *(v0 + 976);
  v105 = *(v0 + 960);
  v107 = *(v0 + 1008);
  v84 = *(v0 + 952);
  v102 = *(v0 + 944);
  v103 = *(v0 + 968);
  v101 = *(v0 + 824);
  v116 = *(v0 + 816);
  v118 = *(v0 + 808);
  v114 = *(v0 + 800);
  v85 = *(v0 + 768);

  v86 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  sub_20C1385A4();

  __swift_project_boxed_opaque_existential_1((v85 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_mediaTagStringBuilder), *(v85 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_mediaTagStringBuilder + 24));
  sub_20B867D3C(v82);
  v87 = sub_20C138524();
  *(v0 + 1048) = v87;

  v88 = sub_20C138104();
  LOBYTE(v88) = v88 == sub_20C138104();
  v89 = swift_allocObject();
  *(v0 + 1056) = v89;
  *(v89 + 16) = v88;
  *(v89 + 24) = sub_20C1357F4();
  *(v89 + 32) = v90;
  *(v0 + 760) = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  sub_20B86A1D4();
  v91 = sub_20C13C824();
  v93 = v92;

  *(v89 + 40) = v91;
  *(v89 + 48) = v93;
  *(v89 + 56) = v87;
  v94 = *(v84 + 16);
  v94(v103, v83, v102);
  v94(v105, v103, v102);
  (*(v107 + 56))(v110, 1, 1, v112);
  v95 = v87;
  sub_20C137344();
  sub_20C1372B4();
  v96 = *(sub_20C1372C4() + 16);

  WorkoutPlanArtwork.init(identifier:modalityIdentifiersCount:)(v114, v96, v120);
  (*(v116 + 8))(v101, v118);
  v97 = *(v84 + 8);
  *(v0 + 1064) = v97;
  *(v0 + 1072) = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v97(v103, v102);
  v98 = v120[3];
  *(v89 + 96) = v120[2];
  *(v89 + 112) = v98;
  *(v89 + 128) = v121;
  v99 = v120[1];
  *(v89 + 64) = v120[0];
  *(v89 + 80) = v99;
  *(v89 + 136) = 1;
  v100 = swift_task_alloc();
  *(v0 + 1080) = v100;
  *v100 = v0;
  v100[1] = sub_20B867338;

  return sub_20B868B70();
}

uint64_t sub_20B867338(char a1)
{
  v2 = *v1;
  *(*v1 + 1088) = a1;

  v3 = *(v2 + 1040);
  v4 = *(v2 + 1032);

  return MEMORY[0x2822009F8](sub_20B867460, v4, v3);
}

uint64_t sub_20B867460()
{
  v1 = (v0 + 1048);
  v2 = (v0 + 520);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 768);

  v6 = v3 == 0;
  if (v3)
  {
    v7 = 0x6C50657669746341;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xEA00000000006E61;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14F980;
  *(v9 + 32) = v4 | 0x9000000000000000;
  *v2 = 0u;
  *(v0 + 536) = 1;
  *(v0 + 544) = 0u;
  *(v0 + 560) = 128;
  *(v0 + 568) = 0u;
  *(v0 + 584) = v7;
  *(v0 + 592) = v8;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0;
  *(v0 + 624) = v9;
  *(v0 + 632) = MEMORY[0x277D84F90];
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0;
  *(v0 + 680) = 2;
  nullsub_1();
  v10 = v5 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row;
  v12 = *(v5 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 16);
  v11 = *(v5 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 32);
  *(v0 + 352) = *(v5 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row);
  *(v0 + 368) = v12;
  *(v0 + 384) = v11;
  v13 = *(v10 + 96);
  v15 = *(v10 + 48);
  v14 = *(v10 + 64);
  *(v0 + 432) = *(v10 + 80);
  *(v0 + 448) = v13;
  *(v0 + 400) = v15;
  *(v0 + 416) = v14;
  v17 = *(v10 + 128);
  v16 = *(v10 + 144);
  v18 = *(v10 + 112);
  *(v0 + 512) = *(v10 + 160);
  *(v0 + 480) = v17;
  *(v0 + 496) = v16;
  *(v0 + 464) = v18;
  v19 = *v2;
  v20 = *(v0 + 552);
  *(v10 + 16) = *(v0 + 536);
  *(v10 + 32) = v20;
  *v10 = v19;
  v21 = *(v0 + 568);
  v22 = *(v0 + 584);
  v23 = *(v0 + 616);
  *(v10 + 80) = *(v0 + 600);
  *(v10 + 96) = v23;
  *(v10 + 48) = v21;
  *(v10 + 64) = v22;
  v24 = *(v0 + 632);
  v25 = *(v0 + 648);
  v26 = *(v0 + 664);
  *(v10 + 160) = *(v0 + 680);
  *(v10 + 128) = v25;
  *(v10 + 144) = v26;
  *(v10 + 112) = v24;

  sub_20B520158(v0 + 352, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v47 = *v1;
    }

    else
    {
      v28 = Strong;
      sub_20B61D9F0(*(v0 + 768), Strong);
      if (v30)
      {
        v32 = v29;
        v33 = v30;
        v34 = v31;
        v35 = *(v0 + 792);
        v36 = *(v0 + 784);
        v37 = *(v0 + 776);
        sub_20B5E2E18();
        *v35 = sub_20C13D374();
        (*(v36 + 104))(v35, *MEMORY[0x277D85200], v37);
        v38 = sub_20C13C584();
        result = (*(v36 + 8))(v35, v37);
        if ((v38 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        v47 = *v1;
        sub_20B620ED0(v32, v33, v34, *(v0 + 768), 1, v28);
      }

      else
      {
        v47 = *v1;
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v47 = *v1;
  }

  v40 = *(v0 + 1064);
  v41 = *(v0 + 1016);
  v42 = *(v0 + 1008);
  v43 = *(v0 + 1000);
  v44 = *(v0 + 976);
  v45 = *(v0 + 944);
  (*(*(v0 + 864) + 8))(*(v0 + 872), *(v0 + 856));
  v40(v44, v45);
  (*(v42 + 8))(v41, v43);

  v46 = *(v0 + 8);

  return v46();
}

double sub_20B86789C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ButtonAction(0);
  v5 = v4 - 8;
  v47 = *(v4 - 8);
  *&v48 = v47;
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  v12 = *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_workoutPlanStringBuilder);
  LODWORD(v9) = *(v12 + 40);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  __swift_project_boxed_opaque_existential_1((v12 + 48), v13);
  v15 = "makeCreatePlanRow()";
  if (v9 >= 3)
  {
    v16 = 0xD000000000000015;
  }

  else
  {
    v15 = "CREATE_WORKOUT_PLAN_TITLE";
    v16 = 0xD000000000000012;
  }

  v17 = sub_20B5E107C(v16, v15 | 0x8000000000000000, v13, v14);
  v19 = v18;
  v20 = *(v5 + 36);
  v21 = sub_20C135814();
  (*(*(v21 - 8) + 56))(&v7[v20], 1, 1, v21);
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = v17;
  *(v7 + 5) = v19;
  v22 = sub_20C138104();
  LOBYTE(v22) = v22 == sub_20C138104();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = *(v12 + 40);
  if (v24 >= 3)
  {
    v25 = "TV_BUILD_WORKOUT_PLAN";
  }

  else
  {
    v25 = "CREATE_WORKOUT_PLAN_DESCRIPTION";
  }

  if (v24 >= 3)
  {
    v26 = 0xD00000000000001CLL;
  }

  else
  {
    v26 = 0xD000000000000019;
  }

  v27 = *(v12 + 72);
  v28 = *(v12 + 80);
  __swift_project_boxed_opaque_existential_1((v12 + 48), v27);
  *(v23 + 24) = sub_20B5E107C(v26, v25 | 0x8000000000000000, v27, v28);
  *(v23 + 32) = v29;
  v30 = *(v12 + 40);
  if (v30 >= 3)
  {
    v31 = "TV_CREATE_WORKOUT_PLAN_TITLE";
  }

  else
  {
    v31 = "T_PLAN_DESCRIPTION";
  }

  if (v30 >= 3)
  {
    v32 = 0xD000000000000022;
  }

  else
  {
    v32 = 0xD00000000000001FLL;
  }

  v33 = *(v12 + 72);
  v34 = *(v12 + 80);
  __swift_project_boxed_opaque_existential_1((v12 + 48), v33);
  *(v23 + 40) = sub_20B5E107C(v32, v31 | 0x8000000000000000, v33, v34);
  *(v23 + 48) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
  v36 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v37 = swift_allocObject();
  v48 = xmmword_20C14F980;
  *(v37 + 16) = xmmword_20C14F980;
  sub_20B86B3BC(v7, v37 + v36, type metadata accessor for ButtonAction);
  *(v23 + 56) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v38 = swift_allocObject();
  *(v38 + 16) = v48;
  *(v38 + 32) = v23 | 0x8000000000000007;
  v39 = *(v12 + 72);
  v40 = *(v12 + 80);
  __swift_project_boxed_opaque_existential_1((v12 + 48), v39);
  v41 = sub_20B5E107C(0x534E414C50, 0xE500000000000000, v39, v40);
  v43 = v42;
  sub_20B86B424(v7, type metadata accessor for ButtonAction);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 384;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v44 = MEMORY[0x277D84F90];
  *(a1 + 104) = v38;
  *(a1 + 112) = v44;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v41;
  *(a1 + 144) = v43;
  result = 0.0;
  *(a1 + 152) = xmmword_20C150190;
  return result;
}

uint64_t sub_20B867D3C(void (*a1)(char *, char *))
{
  v2 = v1;
  v126 = a1;
  v3 = sub_20C1327F4();
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_20C133594();
  v120 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v6 - 8);
  v114 = &v102 - v7;
  v119 = sub_20C132E94();
  v113 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = &v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762230, &qword_20C14FC08);
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v102 - v12;
  v13 = sub_20C135214();
  v123 = *(v13 - 8);
  v124 = v13;
  MEMORY[0x28223BE20](v13);
  v118 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_20C133154();
  v125 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v108 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v102 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v102 - v20;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_workoutPlanStringBuilder);
  v23 = v22[9];
  v24 = v22[10];
  __swift_project_boxed_opaque_existential_1(v22 + 6, v23);
  v25 = sub_20B5E107C(0xD000000000000019, 0x800000020C19D570, v23, v24);
  v27 = v26;
  v28 = sub_20C1357C4();
  v29 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_nextWorkoutReference;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v29, v21, &qword_27C76A410, &unk_20C14FBC0);
  v30 = sub_20C135C54();
  LODWORD(v2) = (*(*(v30 - 8) + 48))(v21, 1, v30);
  sub_20B520158(v21, &qword_27C76A410, &unk_20C14FBC0);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D83B88];
    v33 = MEMORY[0x277D83C10];
    *(v31 + 16) = xmmword_20C14F980;
    *(v31 + 56) = v32;
    *(v31 + 64) = v33;
    *(v31 + 32) = v28;
    v34 = v22[9];
    v35 = v22[10];
    __swift_project_boxed_opaque_existential_1(v22 + 6, v34);
    v36 = sub_20B5E10B0(0xD000000000000013, 0x800000020C19D590, v31, v34, v35);
    v38 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
    v39 = *(sub_20C138094() - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_20C1517D0;
    v43 = (v42 + v41);
    *v43 = v25;
    v43[1] = v27;
    v43[2] = 0;
    v43[3] = 0;
    swift_storeEnumTagMultiPayload();
    *(v43 + v40) = 1;
    swift_storeEnumTagMultiPayload();
    v44 = (v43 + 2 * v40);
    *v44 = v36;
    v44[1] = v38;
    swift_storeEnumTagMultiPayload();
    return v42;
  }

  v105 = v22;
  v106 = v25;
  v107 = v27;
  sub_20C133014();
  v46 = v121;
  sub_20C133914();
  v47 = v18;
  v49 = v123;
  v48 = v124;
  (*(v123 + 56))(v46, 0, 1, v124);
  v50 = v118;
  (*(v49 + 32))(v118, v46, v48);
  v51 = v115;
  sub_20C133944();
  v52 = v116;
  sub_20C133564();
  v53 = *(v120 + 8);
  v120 += 8;
  v103 = v53;
  v53(v51, v117);
  v54 = v114;
  sub_20C132D74();
  v55 = v113;
  v56 = *(v113 + 8);
  v57 = v119;
  v104 = v113 + 8;
  v121 = v56;
  (v56)(v52, v119);
  v58 = (*(v55 + 48))(v54, 1, v57);
  v59 = v125;
  if (v58 != 1)
  {
    v61 = v112;
    (*(v55 + 32))(v112, v54, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A88, &unk_20C15E4B0);
    v62 = sub_20C133134();
    v63 = *(v62 - 8);
    v64 = *(v63 + 80);
    v114 = v47;
    v65 = (v64 + 32) & ~v64;
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_20C14F980;
    (*(v63 + 104))(v66 + v65, *MEMORY[0x277CC9968], v62);
    sub_20BE8D12C(v66);
    swift_setDeallocating();
    v67 = v66 + v65;
    v47 = v114;
    (*(v63 + 8))(v67, v62);
    v68 = v119;
    swift_deallocClassInstance();
    sub_20C133944();
    sub_20C133564();
    v103(v51, v117);
    v69 = v109;
    sub_20C133054();

    v70 = v121;
    (v121)(v52, v68);
    v71 = sub_20C132774();
    LOBYTE(v62) = v72;
    (*(v110 + 8))(v69, v111);
    if (v62)
    {

      v70(v61, v68);
      (*(v123 + 8))(v118, v124);
      v60 = v122;
      v59 = v125;
      goto LABEL_6;
    }

    result = sub_20C135204();
    v73 = result + v71;
    v74 = v122;
    if (__OFADD__(result, v71))
    {
      __break(1u);
    }

    else
    {
      v75 = __OFADD__(v73, 1);
      v76 = v73 + 1;
      v77 = v116;
      if (!v75)
      {
        v78 = v76 + 3;
        if (!__OFADD__(v76, 3))
        {
          v79 = v78 - v78 % 7;
          if (!__OFSUB__(v78, v78 % 7))
          {
            if (v79 >= v76)
            {
              goto LABEL_21;
            }

            v80 = ceil(v76 / 7.0);
            if ((*&v80 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v80 > -9.22337204e18)
              {
                if (v80 < 9.22337204e18)
                {
                  v81 = v122;
                  v79 = 7 * v80;
                  if ((v80 * 7) >> 64 == v79 >> 63)
                  {
LABEL_22:
                    sub_20C132E84();
                    v82 = v108;
                    sub_20C133124();
                    v83 = sub_20C132D94();
                    v85 = v84;
                    v126 = *(v125 + 8);
                    v126(v82, v81);
                    v86 = v77;
                    v87 = v119;
                    v70(v86, v119);
                    if ((v85 & 1) == 0)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
                      v88 = swift_allocObject();
                      *(v88 + 16) = xmmword_20C14F320;
                      v89 = MEMORY[0x277D83B88];
                      v90 = MEMORY[0x277D83C10];
                      *(v88 + 56) = MEMORY[0x277D83B88];
                      *(v88 + 64) = v90;
                      *(v88 + 32) = ((v83 / 7) & ~((v83 / 7) >> 63)) + 1;
                      *(v88 + 96) = v89;
                      *(v88 + 104) = v90;
                      *(v88 + 72) = v79 / 7;
                      v91 = v105[9];
                      v92 = v105[10];
                      __swift_project_boxed_opaque_existential_1(v105 + 6, v91);
                      v93 = sub_20B5E10B0(0xD000000000000016, 0x800000020C19D5B0, v88, v91, v92);
                      v125 = v94;

                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
                      v95 = *(sub_20C138094() - 8);
                      v96 = *(v95 + 72);
                      v97 = (*(v95 + 80) + 32) & ~*(v95 + 80);
                      v42 = swift_allocObject();
                      *(v42 + 16) = xmmword_20C1517D0;
                      v98 = (v42 + v97);
                      v99 = v107;
                      *v98 = v106;
                      v98[1] = v99;
                      v98[2] = 0;
                      v98[3] = 0;
                      swift_storeEnumTagMultiPayload();
                      *(v98 + v96) = 1;
                      swift_storeEnumTagMultiPayload();
                      v100 = (v98 + 2 * v96);
                      v101 = v125;
                      *v100 = v93;
                      v100[1] = v101;
                      swift_storeEnumTagMultiPayload();
                      (v121)(v112, v87);
                      (*(v123 + 8))(v118, v124);
                      v126(v114, v81);
                      return v42;
                    }

                    v70(v112, v87);
                    (*(v123 + 8))(v118, v124);
                    v126(v114, v81);
                    return MEMORY[0x277D84F90];
                  }

                  __break(1u);
LABEL_21:
                  v81 = v74;
                  goto LABEL_22;
                }

LABEL_31:
                __break(1u);
                return result;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  (*(v49 + 8))(v50, v48);

  sub_20B520158(v54, &qword_27C762AC0, &qword_20C14FC90);
  v60 = v122;
LABEL_6:
  (*(v59 + 8))(v47, v60);
  return MEMORY[0x277D84F90];
}

uint64_t sub_20B868B70()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B868C30, 0, 0);
}

uint64_t sub_20B868C30()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_subscriptionCache);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_20B6162B0;

  return MEMORY[0x2821B5680](v3, v2);
}

uint64_t sub_20B868CF4()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_workoutPlanClient));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_subscriptionCache));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activeWorkoutPlan, &unk_27C76A970, &qword_20C14FC10);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activePlanTemplate, &unk_27C762300, &unk_20C151350);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_nextWorkoutReference, &qword_27C76A410, &unk_20C14FBC0);

  return v0;
}

uint64_t sub_20B868EB8()
{
  sub_20B868CF4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanGalleryActivePlanShelf(uint64_t a1)
{
  result = qword_27C766B48;
  if (!qword_27C766B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B868F64(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B869154(319, &qword_27C7629F8, MEMORY[0x277D50180]);
    if (v2 <= 0x3F)
    {
      sub_20B869154(319, &qword_27C766B58, MEMORY[0x277D51CF0]);
      if (v3 <= 0x3F)
      {
        sub_20B869154(319, &qword_281103B98, MEMORY[0x277D51FE0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20B869154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

double sub_20B8691A8()
{
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B5237AC();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

uint64_t sub_20B869344()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B86B5A4;

    return sub_20B865518();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B86944C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B695AF8;

    return sub_20B8662DC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B869534@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8695AC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row + 32);
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

uint64_t sub_20B869678()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B86546C();
}

void sub_20B86972C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A0FEC(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_20B869798(v4);
  *a1 = v2;
}

void sub_20B869798(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_20C13CCD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_20B869960(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B869890(0, v2, 1, a1);
  }
}

uint64_t sub_20B869890(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_20C13DFF4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20B869960(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_20B6A07A0(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_20B869F3C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_20C13DFF4();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_20C13DFF4()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_20BC05740(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_20BC05740((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          __break(1u);
LABEL_125:
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_20B869F3C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_20B6A07A0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_20B6A0714(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_20C13DFF4() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

uint64_t sub_20B869F3C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_20C13DFF4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_20C13DFF4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_20B86A164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B86A1D4()
{
  result = qword_27C766B60;
  if (!qword_27C766B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C765218, &qword_20C15F3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766B60);
  }

  return result;
}

uint64_t sub_20B86A238(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_row;
  sub_20B5D8060(v19);
  v5 = v19[9];
  *(v4 + 128) = v19[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v20;
  v6 = v19[5];
  *(v4 + 64) = v19[4];
  *(v4 + 80) = v6;
  v7 = v19[7];
  *(v4 + 96) = v19[6];
  *(v4 + 112) = v7;
  v8 = v19[1];
  *v4 = v19[0];
  *(v4 + 16) = v8;
  v9 = v19[3];
  *(v4 + 32) = v19[2];
  *(v4 + 48) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activeWorkoutPlan;
  v11 = sub_20C133954();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activePlanTemplate;
  v13 = sub_20C135814();
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_nextWorkoutReference;
  v15 = sub_20C135C54();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_templateReferences) = MEMORY[0x277D84FA0];
  v16 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_modalities;
  *(v2 + v16) = sub_20B6B27E8(MEMORY[0x277D84F90]);
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v18, v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_eventHub) = v18[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v18, v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_mediaTagStringBuilder);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_platform) = v18[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v18, v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20B51C710(v18, v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_workoutPlanStringBuilder) = *&v18[0];
  return v2;
}

uint64_t sub_20B86A5C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0, &unk_20C14FCE0);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - v4;
  v5 = type metadata accessor for ShelfMetricAction(0);
  v48 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_20C133954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanGalleryActivePlanShelf_activeWorkoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v17, v12, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_20B520158(v12, &unk_27C76A970, &qword_20C14FC10);
  }

  (*(v14 + 32))(v16, v12, v13);
  v19 = sub_20C136664();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = v5[5];
  v21 = *MEMORY[0x277D51488];
  v22 = sub_20C134F24();
  (*(*(v22 - 8) + 104))(&v9[v20], v21, v22);
  v23 = v5[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v9[v23], 1, 1, v24);
  v25 = v5[8];
  v26 = *MEMORY[0x277D523B0];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v9[v25], v26, v27);
  (*(v28 + 56))(&v9[v25], 0, 1, v27);
  v29 = v5[10];
  v30 = *MEMORY[0x277D51778];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v9[v29], v30, v31);
  v32 = v5[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v9[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  *&v9[v5[7]] = xmmword_20C15E380;
  v35 = &v9[v5[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v9[v5[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = v50;
    sub_20B86B3BC(v9, v50, type metadata accessor for ShelfMetricAction);
    v39 = v48;
    (*(v48 + 56))(v38, 0, 1, v5);
    v40 = v49;
    sub_20B52F9E8(v38, v49, &unk_27C7622D0, &unk_20C14FCE0);
    if ((*(v39 + 48))(v40, 1, v5) == 1)
    {
      sub_20B520158(v40, &unk_27C7622D0, &unk_20C14FCE0);
    }

    else
    {
      v41 = v40;
      v42 = v47;
      sub_20B86B354(v41, v47, type metadata accessor for ShelfMetricAction);
      sub_20BF9FD18(v0, v42, v37);
      sub_20B86B424(v42, type metadata accessor for ShelfMetricAction);
    }

    v43 = v37 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      (*(v44 + 48))(v37, v16, ObjectType, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_20B520158(v38, &unk_27C7622D0, &unk_20C14FCE0);
  }

  sub_20B86B424(v9, type metadata accessor for ShelfMetricAction);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_20B86AC4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0, &unk_20C14FCE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v51 - v6;
  v7 = type metadata accessor for ShelfMetricAction(0);
  v52 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B86B3BC(a1, v17, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B86B354(v17, v20, type metadata accessor for ButtonAction);
    sub_20B86B3BC(&v20[*(v18 + 28)], v14, type metadata accessor for ButtonAction.ActionType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20B86B424(v20, type metadata accessor for ButtonAction);
      v21 = type metadata accessor for ButtonAction.ActionType;
      v22 = v14;
    }

    else
    {
      sub_20B520158(v14, &unk_27C762300, &unk_20C151350);
      v23 = sub_20C136664();
      (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
      v24 = v7[5];
      v25 = *MEMORY[0x277D51488];
      v26 = sub_20C134F24();
      (*(*(v26 - 8) + 104))(&v11[v24], v25, v26);
      v27 = v7[6];
      v28 = sub_20C132C14();
      (*(*(v28 - 8) + 56))(&v11[v27], 1, 1, v28);
      v29 = v7[8];
      v30 = *MEMORY[0x277D523B0];
      v31 = sub_20C135ED4();
      v32 = *(v31 - 8);
      (*(v32 + 104))(&v11[v29], v30, v31);
      (*(v32 + 56))(&v11[v29], 0, 1, v31);
      v33 = v7[10];
      v34 = *MEMORY[0x277D51768];
      v35 = sub_20C1352E4();
      (*(*(v35 - 8) + 104))(&v11[v33], v34, v35);
      v36 = v7[11];
      v37 = sub_20C136E94();
      (*(*(v37 - 8) + 56))(&v11[v36], 1, 1, v37);
      v38 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      *&v11[v7[7]] = xmmword_20C15E390;
      v39 = &v11[v7[9]];
      *v39 = 0;
      *(v39 + 1) = 0;
      *&v11[v7[12]] = v38;
      v40 = v53;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_20BF9FD18(v40, v11, Strong);
        swift_unknownObjectRelease();
      }

      v42 = swift_unknownObjectWeakLoadStrong();
      v43 = v54;
      if (v42)
      {
        v44 = v42;
        v45 = v52;
        (*(v52 + 56))(v54, 1, 1, v7);
        sub_20B52F9E8(v43, v4, &unk_27C7622D0, &unk_20C14FCE0);
        if ((*(v45 + 48))(v4, 1, v7) == 1)
        {
          sub_20B520158(v4, &unk_27C7622D0, &unk_20C14FCE0);
        }

        else
        {
          v46 = v51;
          sub_20B86B354(v4, v51, type metadata accessor for ShelfMetricAction);
          sub_20BF9FD18(v40, v46, v44);
          sub_20B86B424(v46, type metadata accessor for ShelfMetricAction);
        }

        v47 = v44 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v48 = *(v47 + 8);
          ObjectType = swift_getObjectType();
          (*(v48 + 264))(v44, ObjectType, v48);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        sub_20B520158(v43, &unk_27C7622D0, &unk_20C14FCE0);
      }

      sub_20B86B424(v11, type metadata accessor for ShelfMetricAction);
      v21 = type metadata accessor for ButtonAction;
      v22 = v20;
    }
  }

  else
  {
    v21 = type metadata accessor for ShelfItemAction;
    v22 = v17;
  }

  return sub_20B86B424(v22, v21);
}

uint64_t sub_20B86B354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B86B3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B86B424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B86B484()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B869324(v0);
}

uint64_t sub_20B86B514()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20B86942C(v0);
}

id sub_20B86B858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedContentCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HostedContentCell(uint64_t a1)
{
  result = qword_27C766B70;
  if (!qword_27C766B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B86B930(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B86B9CC()
{
  v1 = type metadata accessor for ShelfCellItemInfo(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC9SeymourUI17HostedContentCell_itemInfo;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v8, v7, &qword_27C762550, &unk_20C1505A0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_20B5E2A1C(v7);
  }

  else
  {
    sub_20B86C00C(v7, v4);
    sub_20B5E2A1C(v7);
    v9 = *(v4 + 1);

    sub_20B86C070(v4);
    if (((v9 >> 57) & 0x78 | v9 & 7) == 0x1D)
    {
      sub_20B52F9E8((v9 & 0xFFFFFFFFFFFFFF8) + 16, &v12, &qword_27C766B80, &unk_20C15E550);
      v10 = v12;
      sub_20B51D9C4(&v13);

      return v10;
    }
  }

  return 0;
}

void sub_20B86BBC0(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v1 contentView];
  [v3 addSubview_];

  v4 = objc_opt_self();
  v5 = [v1 contentView];
  v7 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v8 = *(MEMORY[0x277D768C8] + 16);
  v9 = *(MEMORY[0x277D768C8] + 24);
  v10 = [a1 leadingAnchor];
  v11 = [v5 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v6];

  LODWORD(v13) = 1148846080;
  [v12 setPriority_];
  v14 = v12;
  v15 = [a1 trailingAnchor];
  v16 = [v5 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-v9];

  LODWORD(v18) = 1148846080;
  [v17 setPriority_];
  v19 = v17;
  v20 = [a1 topAnchor];
  v21 = [v5 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v7];

  LODWORD(v23) = 1148846080;
  [v22 setPriority_];
  v24 = [a1 bottomAnchor];
  v25 = [v5 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-v8];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14FE90;
  *(v28 + 32) = v14;
  *(v28 + 40) = v19;
  *(v28 + 48) = v22;
  *(v28 + 56) = v26;
  v29 = v22;

  sub_20B5E29D0();
  v30 = sub_20C13CC54();

  [v4 activateConstraints_];
}

double sub_20B86BEF8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17HostedContentCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B86BF44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17HostedContentCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B86BFAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17HostedContentCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B86C00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B86C070(uint64_t a1)
{
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B86C0DC(BOOL *a2@<X8>)
{
  v3 = sub_20C13DEA4();

  *a2 = v3 != 0;
}

unint64_t sub_20B86C154()
{
  result = qword_27C766B88;
  if (!qword_27C766B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766B88);
  }

  return result;
}

uint64_t sub_20B86C1A8()
{
  sub_20C13E164();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20B86C21C(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20B86C270()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_20B86C2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D52420];
  v3 = sub_20C135ED4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_20B86C37C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(a2 + 24))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_20B86C4DC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 24))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_20B86C624@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_20B86C8C0(a2, a3, v9);
  v4 = v10;
  v5 = v11;
  v6 = __swift_project_boxed_opaque_existential_1(v9, v10);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B86C77C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20B86C37C(a1, WitnessTable);
}

uint64_t sub_20B86C7D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20B86C4DC(a1, WitnessTable);
}

void sub_20B86C8C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a2 + 24))(a1, a2, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  sub_20B51CC64(v12 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, a3);
}

uint64_t sub_20B86CDBC@<X0>(void *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + *a1);
  v6 = *a2;
  v7 = sub_20C1333A4();
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_20B86CE54(uint64_t a1)
{
  sub_20C1380F4();
  v1 = sub_20C138104();
  result = sub_20C138104();
  v3 = 4.0;
  if (v1 != result)
  {
    v4 = sub_20C138104();
    result = sub_20C138104();
    v3 = 4.0;
    if (v4 == result)
    {
      v3 = 8.0;
    }
  }

  qword_27C79A960 = *&v3;
  return result;
}

void sub_20B86CEC0()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76938];
  v2 = [v0 preferredFontForTextStyle_];

  v3 = v1;
  v4 = [v0 preferredFontForTextStyle_];

  v5 = *MEMORY[0x277D76918];
  v6 = [v0 preferredFontForTextStyle_];

  sub_20C1380F4();
  v7 = sub_20C138104();
  v8 = sub_20C138104();
  v9 = v4;
  if (v7 != v8)
  {
    v10 = sub_20C138104();
    if (v10 == sub_20C138104())
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }
  }

  v11 = v9;

  qword_27C79A968 = v11;
}

uint64_t sub_20B86CFEC(uint64_t a1)
{
  sub_20C1380F4();
  v1 = sub_20C138104();
  result = sub_20C138104();
  if (v1 == result)
  {
    v3 = xmmword_20C15E670;
    v4 = 3.0;
  }

  else
  {
    v5 = sub_20C138104();
    result = sub_20C138104();
    v4 = 3.0;
    if (v5 == result)
    {
      v4 = 5.0;
    }

    v6 = vdup_n_s32(v5 == result);
    v7.i64[0] = v6.u32[0];
    v7.i64[1] = v6.u32[1];
    v3 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), xmmword_20C15E680, xmmword_20C15E670);
  }

  qword_27C79A970 = *&v4;
  *&qword_27C79A978 = v3;
  qword_27C79A988 = v3.i64[0];
  return result;
}

char *sub_20B86D17C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI21SummaryQueueCountView_countLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  [v10 setTextColor_];

  if (qword_27C7607C0 != -1)
  {
    swift_once();
  }

  [v10 setFont_];
  LODWORD(v13) = 1148846080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v14];

  *&v4[v9] = v10;
  v51.receiver = v4;
  v51.super_class = type metadata accessor for SummaryQueueCountView();
  v15 = objc_msgSendSuper2(&v51, sel_initWithFrame_, a1, a2, a3, a4);
  if (sub_20C1380F4() == 3)
  {
    v16 = [v11 tertiarySystemFillColor];
  }

  else
  {
    v17 = [v11 tertiarySystemBackgroundColor];
    v18 = [objc_opt_self() currentTraitCollection];
    v19 = sub_20C13D3B4();
    v16 = [v17 resolvedColorWithTraitCollection_];
  }

  [v15 setBackgroundColor_];

  v20 = [v15 layer];
  if (qword_27C7607B8 != -1)
  {
    swift_once();
  }

  [v20 setCornerRadius_];

  v21 = OBJC_IVAR____TtC9SeymourUI21SummaryQueueCountView_countLabel;
  [v15 addSubview_];
  v22 = objc_opt_self();
  v23 = qword_27C7607C8;
  v24 = *&v15[v21];
  if (v23 != -1)
  {
    swift_once();
  }

  v26 = *&qword_27C79A970;
  v25 = *&qword_27C79A978;
  v27 = *&qword_27C79A980;
  v28 = *&qword_27C79A988;
  v29 = [v24 leadingAnchor];
  v30 = [v15 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v25];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  v33 = v31;
  v34 = [v24 trailingAnchor];
  v35 = [v15 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-v28];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = v36;
  v39 = [v24 topAnchor];
  v40 = [v15 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:v26];

  LODWORD(v42) = 1148846080;
  [v41 setPriority_];
  v43 = [v24 bottomAnchor];
  v44 = [v15 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-v27];

  LODWORD(v46) = 1148846080;
  [v45 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20C14FE90;
  *(v47 + 32) = v33;
  *(v47 + 40) = v38;
  *(v47 + 48) = v41;
  *(v47 + 56) = v45;
  v48 = v41;

  sub_20B5E29D0();
  v49 = sub_20C13CC54();

  [v22 activateConstraints_];

  return v15;
}

id sub_20B86D7A4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0, &unk_20C166B80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *&v2[OBJC_IVAR____TtC9SeymourUI21SummaryQueueCountView_countLabel];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14F320;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = a2;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  sub_20C132F64();
  v14 = sub_20C132FD4();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_20C13C984();

  sub_20B86DA48(v7);
  v15 = sub_20C13C914();

  [v8 setText_];

  return [v2 invalidateIntrinsicContentSize];
}

id sub_20B86D9E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryQueueCountView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B86DA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0, &unk_20C166B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B86DAB0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI21SummaryQueueCountView_countLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  if (qword_27C7607C0 != -1)
  {
    swift_once();
  }

  [v2 setFont_];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v5];

  *(v0 + v1) = v2;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B86DC34(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_rasterizingContainer;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_snapshot;
  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v78.receiver = v4;
  v78.super_class = type metadata accessor for VibrantShadowView();
  v13 = objc_msgSendSuper2(&v78, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_rasterizingContainer];
  v15 = OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_rasterizingContainer;
  v16 = v13;
  [v16 addSubview_];
  v17 = [*&v13[v15] layer];
  [v17 setShouldRasterize_];

  v74 = v15;
  v18 = OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_snapshot;
  v76 = OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_snapshot;
  [*&v13[v15] addSubview_];
  v19 = objc_opt_self();
  v20 = [v16 layer];

  [v19 applyProgramVibrantColorFilterToLayer_];
  v21 = [*&v16[v18] layer];
  [v19 applyProgramTextFiltersToLayer_];

  v22 = *MEMORY[0x277D768C8];
  v23 = *(MEMORY[0x277D768C8] + 8);
  v25 = *(MEMORY[0x277D768C8] + 16);
  v24 = *(MEMORY[0x277D768C8] + 24);
  v26 = *&v13[v15];
  v27 = [v26 leadingAnchor];
  v28 = [v16 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v23];

  LODWORD(v30) = 1148846080;
  [v29 setPriority_];
  v75 = v29;
  v31 = [v26 trailingAnchor];
  v32 = [v16 trailingAnchor];
  v33 = -v24;
  v34 = [v31 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v35) = 1148846080;
  [v34 setPriority_];
  v36 = v34;
  v37 = [v26 topAnchor];
  v38 = [v16 &selRef_setLineBreakMode_];
  v39 = [v37 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = [v26 bottomAnchor];
  v42 = [v16 &selRef_secondaryLabel + 5];
  v43 = -v25;
  v44 = [v41 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14FE90;
  *(v46 + 32) = v75;
  *(v46 + 40) = v36;
  *(v46 + 48) = v39;
  *(v46 + 56) = v44;
  v47 = v39;

  v48 = *&v13[v74];
  v49 = *&v16[v76];
  v50 = v48;
  v51 = [v49 leadingAnchor];
  v52 = [v50 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:v23];

  LODWORD(v54) = 1148846080;
  [v53 setPriority_];
  v77 = v53;
  v55 = [v49 trailingAnchor];
  v56 = [v50 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:v33];

  LODWORD(v58) = 1148846080;
  [v57 setPriority_];
  v59 = v57;
  v60 = [v49 topAnchor];
  v61 = [v50 topAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:v22];

  LODWORD(v63) = 1148846080;
  [v62 &selRef_meterUnit];
  v64 = [v49 bottomAnchor];
  v65 = [v50 bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:v43];

  LODWORD(v67) = 1148846080;
  [v66 &selRef_meterUnit];
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20C14FE90;
  *(v68 + 32) = v77;
  *(v68 + 40) = v59;
  *(v68 + 48) = v62;
  *(v68 + 56) = v66;
  v69 = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v46;
  *(inited + 40) = v68;
  v71 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v72 = sub_20C13CC54();

  [v71 activateConstraints_];

  return v16;
}

uint64_t sub_20B86E3F4(void *a1)
{
  v3 = sub_20C13C4B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13C4F4();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v10 = sub_20C13D374();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_20B86E85C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_28;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

void sub_20B86E690(void *a1, uint64_t a2)
{
  [a1 bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (CGRectGetWidth(v13) > 0.0)
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (CGRectGetHeight(v14) > 0.0)
    {
      [a1 bounds];
      v12.width = v8;
      v12.height = v9;
      UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
      [a1 bounds];
      [a1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
      v10 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [*(a2 + OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_snapshot) setImage_];
    }
  }
}

id sub_20B86E7B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VibrantShadowView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20B86E864()
{
  v1 = OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_rasterizingContainer;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI17VibrantShadowView_snapshot;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B86E954(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_appearance] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_oldRect];
  v11 = type metadata accessor for CalendarDayIndicatorView();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v24.receiver = v4;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 bounds];
  v13 = &v12[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_oldRect];
  *v13 = v14;
  *(v13 + 1) = v15;
  *(v13 + 2) = v16;
  *(v13 + 3) = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer;
  [*&v12[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer] setLineWidth_];
  v19 = *&v12[v18];
  [v12 bounds];
  v26 = CGRectInset(v25, 0.5, 0.5);
  v20 = [objc_opt_self() bezierPathWithOvalInRect_];
  v21 = [v20 CGPath];

  [v19 setPath_];
  v22 = [v12 layer];

  [v22 addSublayer_];
  return v12;
}

void sub_20B86EC0C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for CalendarDayIndicatorView();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_oldRect];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_oldRect];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_oldRect + 8];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_oldRect + 16];
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_oldRect + 24];
  [v0 bounds];
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  v18.origin.x = v2;
  v18.origin.y = v3;
  v18.size.width = v4;
  v18.size.height = v5;
  if (!CGRectEqualToRect(v18, v21))
  {
    [v0 bounds];
    *v1 = v10;
    *(v1 + 1) = v11;
    *(v1 + 2) = v12;
    *(v1 + 3) = v13;
    v14 = *&v0[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer];
    [v0 bounds];
    [v14 setFrame_];
    [v0 bounds];
    v20 = CGRectInset(v19, 0.5, 0.5);
    v15 = [objc_opt_self() bezierPathWithOvalInRect_];
    v16 = [v15 CGPath];

    [v14 setPath_];
  }
}

void sub_20B86EDC0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      [v1 setHidden_];
      v3 = *&v1[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer];
      [v3 setFillColor_];
      v4 = [objc_opt_self() systemFillColor];
    }

    else
    {
      [v1 setHidden_];
      v3 = *&v1[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer];
      [v3 setFillColor_];
      v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    v5 = [v4 CGColor];

    [v3 setStrokeColor_];
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    if (a1 - 1 < 2)
    {
      [v1 setHidden_];
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer];
      [v2 setFillColor_];
      [v2 setStrokeColor_];

      [v1 setAccessibilityLabel_];
      return;
    }

    [v1 setHidden_];
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer];
    v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v10 = [v9 CGColor];

    [v8 setFillColor_];
    v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v12 = [v11 CGColor];

    [v8 setStrokeColor_];
    type metadata accessor for SeymourLocalizationBundle();
    v13 = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
  }

  sub_20C132964();

  v14 = sub_20C13C914();

  [v1 setAccessibilityLabel_];
}

id sub_20B86F274()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarDayIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20B86FA34()
{
  result = qword_27C766BC0;
  if (!qword_27C766BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766BC0);
  }

  return result;
}

unint64_t sub_20B86FA88()
{
  result = qword_2811028C8;
  if (!qword_2811028C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811028C8);
  }

  return result;
}

unint64_t sub_20B86FADC()
{
  result = qword_2811028C0;
  if (!qword_2811028C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811028C0);
  }

  return result;
}

unint64_t sub_20B86FB30()
{
  result = qword_281103430[0];
  if (!qword_281103430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281103430);
  }

  return result;
}

void sub_20B86FB84(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_ellipsisButton];
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI8TVButton_menu];
  *&v3[OBJC_IVAR____TtC9SeymourUI8TVButton_menu] = a1;

  v5 = a1;
  [v3 setContextMenuInteractionEnabled_];
  [v3 setShowsMenuAsPrimaryAction_];
  [v3 setHidden_];
  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsDisplay];
  }

  else
  {
    __break(1u);
  }
}

double sub_20B86FC60()
{
  v1 = v0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v48 = *(v52 - 8);
  v8 = v48;
  v7 = v48;
  v50 = *(v48 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v44 = *(v7 + 72);
  v15 = *(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C14F320;
  v43 = v16 + ((v15 + 32) & ~v15);
  __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
  v42 = v6;
  sub_20C139724();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B875FD8;
  *(v17 + 24) = v1;
  v18 = v45;
  v19 = v6;
  v20 = v46;
  (*(v2 + 16))(v45, v19, v46);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = swift_allocObject();
  (*(v2 + 32))(v22 + v21, v18, v20);
  v23 = (v22 + ((v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20B875FF0;
  v23[1] = v17;

  v24 = v43;
  sub_20C137C94();
  (*(v2 + 8))(v42, v20);
  sub_20B870D14(v24 + v44);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v25 = sub_20C13D374();
  sub_20C13A7C4();
  v26 = v47;
  sub_20C137C74();

  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20B876020;
  *(v28 + 24) = v27;
  v29 = v48;
  v30 = v49;
  v31 = v52;
  (*(v48 + 16))(v49, v26, v52);
  v32 = (v15 + 16) & ~v15;
  v33 = (v50 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v29 + 32))(v34 + v32, v30, v31);
  v35 = (v34 + v33);
  *v35 = sub_20B5D9CCC;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v36 = v51;
  sub_20C137C94();
  (*(v29 + 8))(v26, v31);
  v37 = v53;
  v38 = v36;
  v39 = sub_20C137CB4();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v39(sub_20B52347C, v40);

  (*(v54 + 8))(v38, v37);
  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v55);

  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v55);

  return result;
}

void sub_20B87035C(BOOL *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B871074();
  }

  *a2 = Strong == 0;
}

void *sub_20B8703D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v36 - v15;
  swift_beginAccess();
  v39 = a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v14;
    v36 = v9;
    __swift_project_boxed_opaque_existential_1(result + 25, result[28]);
    v37 = v13;
    sub_20C139724();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20B8761A0;
    *(v18 + 24) = v17;
    (*(v3 + 16))(v5, v8, v2);
    v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v20 = swift_allocObject();
    (*(v3 + 32))(v20 + v19, v5, v2);
    v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = sub_20B87619C;
    v21[1] = v18;
    v22 = v41;
    sub_20C137C94();
    (*(v3 + 8))(v8, v2);
    v23 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v24 = swift_allocObject();
    *(v24 + 16) = sub_20B8760B8;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20B5DF6A0;
    *(v25 + 24) = v24;
    v26 = v43;
    v27 = v40;
    v28 = v36;
    (*(v43 + 16))(v40, v22, v36);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = swift_allocObject();
    (*(v26 + 32))(v30 + v29, v27, v28);
    v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5DF4E8;
    v31[1] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
    v32 = v42;
    sub_20C137C94();
    (*(v26 + 8))(v22, v28);
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    return (*(v38 + 8))(v32, v33);
  }

  return result;
}

uint64_t sub_20B870954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B870D14(v8);

    v14 = swift_allocObject();
    *(v14 + 16) = sub_20B8761B8;
    *(v14 + 24) = a1;
    v15 = swift_allocObject();
    v26 = v10;
    v16 = v15;
    *(v15 + 16) = sub_20B5D9CB0;
    *(v15 + 24) = v14;
    (*(v3 + 16))(v5, v8, v2);
    v17 = *(v3 + 80);
    v25 = v9;
    v18 = (v17 + 16) & ~v17;
    v19 = swift_allocObject();
    (*(v3 + 32))(v19 + v18, v5, v2);
    v20 = (v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v20 = sub_20B5DF4E8;
    v20[1] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
    sub_20C137C94();
    (*(v3 + 8))(v8, v2);
    v21 = v25;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v22(sub_20B5DF6DC, v23);

    return (*(v26 + 8))(v12, v21);
  }

  return result;
}

BOOL sub_20B870CB4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B871074();
  }

  return Strong == 0;
}

uint64_t sub_20B870D14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = v1[7];
  v18[1] = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0, &qword_20C14FCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v11 = v1[31];
  *(inited + 32) = v1[30];
  *(inited + 40) = v11;

  sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  sub_20C13A1D4();

  v12 = swift_allocObject();
  *(v12 + 16) = sub_20B875F94;
  *(v12 + 24) = v2;
  v13 = v19;
  (*(v3 + 16))(v5, v8, v19);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v5, v13);
  v16 = (v15 + ((v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_20B760084;
  v16[1] = v12;

  sub_20C137C94();
  return (*(v3 + 8))(v8, v13);
}

uint64_t sub_20B870F98(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_20BEDD5DC(*a1, &v9 - v5);
  v7 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_bookmark;
  swift_beginAccess();
  sub_20B5DF2D4(v6, a2 + v7, &qword_27C763EF8, &unk_20C15E830);
  return swift_endAccess();
}

uint64_t sub_20B871074()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
  sub_20C13A0B4();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20B875F50;
  *(v12 + 24) = v11;
  (*(v2 + 16))(v4, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v13, v4, v1);
  v15 = (v14 + ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_20B80E4B0;
  v15[1] = v12;
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v16 = v21;
  v17 = sub_20C137CB4();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v17(sub_20B5DF6DC, v18);

  return (*(v8 + 8))(v10, v16);
}

double sub_20B8713A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B87141C(a1);
  }

  return result;
}

double sub_20B87141C(uint64_t a1)
{
  v25 = sub_20C134734();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_20C135AE4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_workoutDetail;
  swift_beginAccess();
  sub_20B5DF2D4(v12, v1 + v15, &qword_27C7620C8, &unk_20C14FB80);
  swift_endAccess();
  sub_20C135AA4();
  sub_20C134484();
  (*(v7 + 8))(v9, v6);
  v16 = sub_20C1346F4();
  (*(v3 + 8))(v5, v25);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v21 = *v18++;
      v20 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_20BC05A58(0, *(v19 + 2) + 1, 1, v19);
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        v19 = sub_20BC05A58((v22 > 1), v23 + 1, 1, v19);
      }

      *(v19 + 2) = v23 + 1;
      *&v19[8 * v23 + 32] = v20;
      --v17;
    }

    while (v17);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_20B87175C(v19);

  return result;
}

double sub_20B87175C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  v7 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v8 = sub_20B871ECC(a1);
  sub_20B8DA1D4(v8);
  v9 = OBJC_IVAR____TtC9SeymourUI28TVWorkoutDetailMenuPresenter_bookmark;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v9, v6, &qword_27C763EF8, &unk_20C15E830);
  v10 = sub_20C138034();
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  sub_20B520158(v6, &qword_27C763EF8, &unk_20C15E830);
  v12 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_20BC07748(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v12 = sub_20BC07748((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v15;
  v16 = &v12[16 * v14];
  *(v16 + 4) = v11;
  v16[40] = 2;
  v34 = v7;
  sub_20C13DD64();
  v17 = objc_opt_self();
  v29[1] = v12;
  v29[2] = 0x800000020C19DA60;
  v29[9] = 0x800000020C19DA80;
  v32 = "RemoveFromLibrary";
  v33 = v17;
  v31 = 0x800000020C19DA40;
  v18 = (v12 + 40);
  v30 = xmmword_20C14F980;
  v29[7] = "CONTEXTUAL_MENU_ADD_DEFAULT";
  v29[8] = "CONTEXTUAL_MENU_ADD_WALK";
  v29[5] = "ayerHostPresenter";
  v29[6] = "CONTEXTUAL_MENU_ADD_LIBRARY";
  v29[3] = "CONTEXTUAL_MENU_REMOVE_DEFAULT";
  v29[4] = "ickerShelf.swift";
  do
  {
    v24 = *(v18 - 1);
    v25 = *v18;
    __swift_project_boxed_opaque_existential_1((v2 + 152), *(v2 + 176));
    if (v25 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
      v19 = swift_allocObject();
      *(v19 + 16) = v30;
      *(v19 + 56) = MEMORY[0x277D83B88];
      *(v19 + 64) = MEMORY[0x277D83C10];
      *(v19 + 32) = v24;
      sub_20C138D24();
    }

    else
    {
      sub_20C138D34();
    }

    sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v18 += 16;
    v20 = sub_20C13C914();

    v21 = [v33 smm:v20 systemImageNamed:?];

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    *(v23 + 32) = v25;
    sub_20C13D624();
    sub_20C13DD34();
    sub_20C13DD74();
    sub_20C13DD84();
    sub_20C13DD44();
    --v15;
  }

  while (v15);

  v26 = v34;
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (v26 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    }

    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    v27 = sub_20C13D554();
    sub_20B86FB84(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

double sub_20B871DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B873C0C(a3, v4);
    if (v4)
    {
      if (v4 == 1)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_20C035DE4(0);
          swift_unknownObjectRelease();
        }

        goto LABEL_8;
      }

      if (a3 <= 1)
      {
        if (a3)
        {
          sub_20B872540();
          goto LABEL_8;
        }

        v7 = 37;
      }

      else
      {
        if (a3 != 2)
        {
          if (a3 == 3)
          {
            sub_20B872864();
          }

          else
          {
            sub_20B8735E0();
          }

          goto LABEL_8;
        }

        v7 = 52;
      }
    }

    else
    {
      v7 = a3;
    }

    sub_20B872BF4(v7);
LABEL_8:
  }

  return result;
}