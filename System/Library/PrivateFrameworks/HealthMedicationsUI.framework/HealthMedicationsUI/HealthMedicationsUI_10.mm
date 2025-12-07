id sub_22827DE0C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    sub_228392B00();
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22827DEF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_22827DF84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = v2;
    v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v8 = sub_228392AD0();
    [v7 setFont_];

    [v7 setAdjustsFontForContentSizeCategory_];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setNumberOfLines_];
    v9 = *(v6 + v3);
    *(v6 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

uint64_t sub_22827E0A4(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22827EBF4();
  return sub_22819482C(v6);
}

uint64_t sub_22827E114@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22827E16C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22827EBF4();
  return sub_22819482C(a1);
}

uint64_t (*sub_22827E1D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22827E23C;
}

uint64_t sub_22827E23C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22827EBF4();
  }

  return result;
}

char *sub_22827E270(double a1, double a2, double a3, double a4)
{
  v81[1] = swift_getObjectType();
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state] = 2;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationChevron] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronSpacer] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevron] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___nameLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medNameChevronSpacer] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medNameChevron] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___informationContentLabel] = 0;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item];
  v14 = type metadata accessor for MedicationInformationOverviewCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v84.receiver = v4;
  v84.super_class = v14;
  v15 = objc_msgSendSuper2(&v84, sel_initWithFrame_, a1, a2, a3, a4);
  v82 = sub_228392000();
  v83 = v16;
  v17 = v15;

  MEMORY[0x22AAB5C80](0xD000000000000020, 0x80000002283AFF00);

  v81[0] = v82;
  v18 = sub_22827D924();
  v19 = sub_22827D9E8();
  [v18 addArrangedSubview_];

  v20 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView;
  v21 = *&v17[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView];
  v22 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v23 = v21;
  v24 = [v22 init];
  [v23 addArrangedSubview_];

  v25 = *&v17[v20];
  v26 = sub_22827DB0C();
  [v25 addArrangedSubview_];

  v27 = sub_22827DBC8();
  v28 = sub_22827DE0C();
  [v27 addArrangedSubview_];

  v29 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack;
  v30 = *&v17[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack];
  v31 = sub_22827DC78();
  [v30 addArrangedSubview_];

  v32 = *&v17[v29];
  v33 = sub_22827DC84();
  [v32 addArrangedSubview_];

  v34 = sub_22827DB18();
  [v34 addArrangedSubview_];

  v35 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView;
  v36 = *&v17[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView];
  v37 = sub_22827DEDC();
  [v36 addArrangedSubview_];

  v38 = *&v17[v35];
  v39 = sub_22827DEEC();
  [v38 addArrangedSubview_];

  v40 = *&v17[v35];
  v41 = sub_22827DF68();
  [v40 addArrangedSubview_];

  v42 = sub_22827D84C();
  [v42 addArrangedSubview_];

  v43 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView;
  [*&v17[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView] addArrangedSubview_];
  v44 = *&v17[v43];
  v45 = sub_22827DF74();
  [v44 addArrangedSubview_];

  [*&v17[v43] setCustomSpacing:*&v17[v35] afterView:12.0];
  v46 = [v17 contentView];
  [v46 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  (*(v10 + 8))(v12, v9);
  v53 = *&v17[v43];
  v54 = [v17 contentView];
  [v53 hk:v54 alignHorizontalConstraintsWithView:v48 insets:{v50, v52, 16.0}];

  v55 = objc_opt_self();
  sub_22828036C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_228397F00;
  v57 = [*&v17[v43] topAnchor];
  v58 = [v17 contentView];
  v59 = [v58 topAnchor];

  v60 = [v57 constraintEqualToAnchor:v59 constant:16.0];
  *(v56 + 32) = v60;
  v61 = [*&v17[v43] bottomAnchor];
  v62 = [v17 contentView];
  v63 = [v62 bottomAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 constant:-16.0];
  *(v56 + 40) = v64;
  v65 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView;
  v66 = [*&v17[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView] widthAnchor];
  v67 = [v66 constraintEqualToConstant_];

  *(v56 + 48) = v67;
  v68 = [*&v17[v65] heightAnchor];
  v69 = [v68 constraintEqualToConstant_];

  *(v56 + 56) = v69;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v70 = sub_228392190();

  [v55 activateConstraints_];

  v71 = sub_22827D9E8();

  v72 = sub_228391FC0();

  [v71 setAccessibilityIdentifier_];

  v73 = sub_22827DF74();

  v74 = sub_228391FC0();

  [v73 setAccessibilityIdentifier_];

  v75 = [v17 traitCollection];
  v76 = [v75 preferredContentSizeCategory];

  v17[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state] = sub_2283928C0() & 1;
  sub_2282803BC(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_228397F40;
  v78 = sub_228391640();
  v79 = MEMORY[0x277D74DB8];
  *(v77 + 32) = v78;
  *(v77 + 40) = v79;
  sub_228392B50();

  swift_unknownObjectRelease();

  return v17;
}

uint64_t sub_22827EBF4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282803BC(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v7], v34);
  if (v34[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for MedicationInformationOverviewItem();
    if (swift_dynamicCast())
    {
      v8 = v33;
      v9 = sub_22827D924();
      [v9 setHidden_];

      sub_22827F0EC();
      v10 = sub_22827DE0C();
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      sub_228390950();

      v11 = sub_22827DEDC();
      v34[0] = *(v8 + 16);
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      sub_228390F30();
      v12 = sub_228391FC0();

      [v11 setText_];

      v13 = sub_22827DF74();
      sub_22827F81C(*(v8 + 16), *(v8 + 24));
      if (!v14)
      {
        if (qword_27D823310 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();
      }

      v15 = sub_228391FC0();

      [v13 setText_];

      v16 = *(v8 + 16);
      LOBYTE(v15) = *(v8 + 24);
      v17 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___informationContentLabel];
      sub_22827F81C(v16, v15);
      if (v18)
      {

        v19 = &selRef_labelColor;
      }

      else
      {
        v19 = &selRef_secondaryLabelColor;
      }

      v29 = [objc_opt_self() *v19];
      [v17 setTextColor_];

      sub_22827F81C(*(v8 + 16), *(v8 + 24));
      v31 = v30;
      if (v30)
      {
      }

      [v1 setUserInteractionEnabled_];
    }
  }

  else
  {
    sub_22819482C(v34);
  }

  sub_228391150();
  v20 = v1;
  v21 = sub_2283911A0();
  v22 = sub_2283925C0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136446210;
    sub_22817E6C8(&v1[v7], v34);
    sub_228181D50(0);
    v25 = sub_228392040();
    v27 = sub_2281C96FC(v25, v26, &v33);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22816B000, v21, v22, "Incorrect view model for MedicationInformationOverviewItem: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAB7B80](v24, -1, -1);
    MEMORY[0x22AAB7B80](v23, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22827F0EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v2, v26);
  if (!v27)
  {
    return sub_22819482C(v26);
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  type metadata accessor for MedicationInformationOverviewItem();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state))
    {
      if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state) != 1)
      {
        result = sub_228393300();
        __break(1u);
        return result;
      }

      v10 = sub_22827DB18();
      [v10 setAxis_];

      [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView) setAlignment_];
      sub_22827F81C(*(v25 + 16), *(v25 + 24));
      if (v11)
      {

        v12 = sub_22827CFD4();
        v13 = sub_22827DB0C();
        v14 = v13;
        if (v12)
        {
          [v13 setHidden_];
          v15 = 1;
        }

        else
        {
          [v13 setHidden_];
          v15 = 0;
        }
      }

      else
      {
        v14 = sub_22827DB0C();
        v15 = 1;
        [v14 setHidden_];
      }

      v21 = sub_22827DF68();
      [v21 setHidden_];

      v22 = sub_22827DC84();
      [v22 setHidden_];

      v23 = sub_22827DD3C();
      [v23 setActive_];

      v24 = sub_22827DC78();
      [v24 setHidden_];

      v20 = sub_22827DEEC();
      [v20 setHidden_];
    }

    else
    {
      v4 = sub_22827DB18();
      [v4 setAxis_];

      [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView) setAlignment_];
      sub_22827F81C(*(v25 + 16), *(v25 + 24));
      if (v5)
      {

        v6 = sub_22827CFD4();
        v7 = sub_22827DB0C();
        v8 = v7;
        if (v6)
        {
          [v7 setHidden_];
          v9 = 1;
        }

        else
        {
          [v7 setHidden_];
          v9 = 0;
        }
      }

      else
      {
        v8 = sub_22827DB0C();
        v9 = 1;
        [v8 setHidden_];
      }

      v16 = sub_22827DF68();
      [v16 setHidden_];

      v17 = sub_22827DC84();
      [v17 setHidden_];

      v18 = sub_22827DD3C();
      [v18 setActive_];

      v19 = sub_22827DC78();
      [v19 setHidden_];

      v20 = sub_22827DEEC();
      [v20 setHidden_];
    }
  }

  return result;
}

void sub_22827F4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22827D9E8();
  if (!a2)
  {
    sub_228392000();

    MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AFB80);
  }

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  v6 = sub_22827DF74();
  if (!a2)
  {
    sub_228392000();

    MEMORY[0x22AAB5C80](0xD000000000000019, 0x80000002283AFBA0);

    v7 = [*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___informationContentLabel) text];
    if (v7)
    {
      v8 = v7;
      v9 = sub_228392000();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    MEMORY[0x22AAB5C80](v9, v11);
  }

  v12 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];
}

id MedicationInformationOverviewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicationInformationOverviewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22827F81C(void *a1, char a2)
{
  v3 = [a1 localizedOntologyEducationContent];
  if (!a2)
  {
    if (v3)
    {
      v4 = v3;
      sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
      v5 = sub_22838FA70();
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (v3)
    {
      v4 = v3;
      sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
      v5 = sub_22838FA80();
      goto LABEL_9;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
  v5 = sub_22838FA90();
LABEL_9:
  v6 = v5;

  return v6;
}

uint64_t sub_22827F934(uint64_t a1, char a2)
{
  sub_2282803BC(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  if (a2)
  {
    if (a2 == 1)
    {
      sub_228392A10();
      v9 = sub_228390F60();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        v12 = sub_228390F40();
        (*(v10 + 8))(v8, v9);
        return v12 & 1;
      }

      v11 = v8;
    }

    else
    {
      sub_228392A10();
      v13 = sub_228390F60();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) != 1)
      {
        v12 = sub_228390F50();
        (*(v14 + 8))(v6, v13);
        return v12 & 1;
      }

      v11 = v6;
    }

    sub_228201554(v11);
    v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t _s19HealthMedicationsUI33MedicationInformationOverviewItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) semanticIdentifier];
  v4 = [v3 stringValue];

  v5 = sub_228392000();
  v7 = v6;

  v8 = [*(a2 + 16) semanticIdentifier];
  v9 = [v8 stringValue];

  v10 = sub_228392000();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_228393460();
  }

  return v14 & 1;
}

void sub_22827FC3C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = sub_22827F81C(v4, v3);
  if (!v6)
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    v5 = sub_22838F0C0();
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_22827D32C();
  v13 = sub_22824DB80(v3, v4, v7, v8, v9, v10);

  v11 = [a1 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 pushViewController:v13 animated:1];
  }
}

uint64_t sub_22827FDA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationInformationOverviewItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228280154()
{
  result = qword_27D826700;
  if (!qword_27D826700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826700);
  }

  return result;
}

void sub_2282801A8(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v5 = [v2 preferredContentSizeCategory];

  v3 = sub_2283928C0();
  v4 = a1[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state];
  a1[OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state] = v3 & 1;
  if (v4 != (v3 & 1))
  {
    sub_22827F0EC();
  }
}

void sub_228280240()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_state) = 2;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationChevron) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronSpacer) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevron) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medNameChevronSpacer) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medNameChevron) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___informationContentLabel) = 0;
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_228393300();
  __break(1u);
}

void sub_22828036C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2282803BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228280420()
{
  sub_2281AB388(0, &qword_27D823EE0, MEMORY[0x277D837D0]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F30;
  *(v0 + 32) = sub_228392000();
  *(v0 + 40) = v1;
  strcpy((v0 + 48), "DayHistoryView");
  *(v0 + 63) = -18;
  v2 = sub_228392190();

  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = sub_228392000();
    v6 = v5;

    qword_27D828D80 = v4;
    *algn_27D828D88 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_228280580(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2282805E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_22827CB04();
  v2 = v1;
  [v0 setImage_];

  [v0 setContentMode_];
  [v0 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  v4 = [objc_opt_self() systemGrayColor];
  [v0 setTintColor_];

  return v0;
}

id sub_2282806D0(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_22828073C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_228280800(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state);
  if (v2 == 2)
  {
    __break(1u);
  }

  else if (v2 != result)
  {
    sub_228281050();
    if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems))
    {
      v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext);
      if (v3 != 2 && (v3 & 1) != 0)
      {

        sub_228282A4C(v4);
      }
    }
  }
}

id sub_228280898(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___timeLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___elapsedTimeLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___chevronImage] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___headerStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView] = 0;
  v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state] = 2;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer] = 0;
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
  v11 = sub_22838F440();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext] = 2;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MedicationsDayHistoryView(0);
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228280BFC();
  sub_228281604();

  return v12;
}

id sub_228280A58()
{
  v1 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for MedicationsDayHistoryView(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_228280BFC()
{
  swift_getObjectType();
  sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F20;
  *(v1 + 32) = sub_2282806BC();
  *(v1 + 40) = sub_22828073C();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setSpacing_];
  v5 = v4;
  [v0 addSubview_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228397F00;
  v8 = [v5 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v5 trailingAnchor];

  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v5 topAnchor];

  v15 = [v0 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 48) = v16;
  v17 = [v5 bottomAnchor];

  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 56) = v19;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v20 = sub_228392190();

  [v6 activateConstraints_];

  v21 = [v0 traitCollection];
  v22 = [v21 preferredContentSizeCategory];

  v23 = sub_2283928C0() & 1;
  v24 = v0[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state];
  v0[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state] = v23;
  sub_228280800(v24);
  sub_22828482C(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_228397F40;
  v26 = sub_228391640();
  v27 = MEMORY[0x277D74DB8];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_228392B50();

  swift_unknownObjectRelease();
}

void sub_228281050()
{
  v2 = v0;
  v3 = sub_2282806BC();
  sub_228392B10();

  if (*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state))
  {
    if (*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state) == 1)
    {
      sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_22839CC40;
      *(v19 + 32) = sub_22828050C();
      *(v19 + 40) = sub_228280520();
      *(v19 + 48) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      *(v19 + 56) = sub_228280560();
      sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
      *(v19 + 64) = sub_228392B30();
      v20 = objc_allocWithZone(MEMORY[0x277D75A68]);
      v21 = sub_228392190();

      v22 = [v20 initWithArrangedSubviews_];

      [v22 setCustomSpacing:*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView) afterView:5.0];
      v6 = &off_2785F4000;
      [v22 setAxis_];
      [v22 setAlignment_];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_228397F20;
      *(inited + 32) = v22;
      v5 = (inited + 32);
      v4 = v22;
      *(inited + 40) = sub_228280540();
      v24 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___headerStackView;
      if ((inited & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x22AAB6D80](0, inited);
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v25 = *v5;
      }

      v26 = v25;
      v1 = &off_2785F4000;
      [*(v2 + v24) addArrangedSubview_];

      if ((inited & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x22AAB6D80](1, inited);
      }

      else
      {
        if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_31;
        }

        v27 = *(inited + 40);
      }

      v28 = v27;
      [*(v2 + v24) addArrangedSubview_];

      swift_setDeallocating();
      swift_arrayDestroy();
      [*(v2 + v24) setAxis_];
      [*(v2 + v24) setAlignment_];
    }

    else
    {
      sub_228393300();
      __break(1u);
    }

    return;
  }

  sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_22839F000;
  *(v4 + 32) = sub_22828050C();
  *(v4 + 40) = sub_228280520();
  *(v4 + 48) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v4 + 56) = sub_228280540();
  *(v4 + 64) = sub_228280560();
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  *(v4 + 72) = sub_228392B30();
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___headerStackView;
  v1 = (v4 & 0xFFFFFFFFFFFFFF8);
  v6 = (v4 & 0xC000000000000001);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  for (i = *(v4 + 32); ; i = MEMORY[0x22AAB6D80](0, v4))
  {
    v8 = i;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      v9 = MEMORY[0x22AAB6D80](1, v4);
    }

    else
    {
      if (v1[2] < 2)
      {
        goto LABEL_30;
      }

      v9 = *(v4 + 40);
    }

    v10 = v9;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      v11 = MEMORY[0x22AAB6D80](2, v4);
    }

    else
    {
      if (v1[2] < 3)
      {
        goto LABEL_30;
      }

      v11 = *(v4 + 48);
    }

    v12 = v11;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      v13 = MEMORY[0x22AAB6D80](3, v4);
    }

    else
    {
      if (v1[2] < 4)
      {
        goto LABEL_30;
      }

      v13 = *(v4 + 56);
    }

    v14 = v13;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      v15 = MEMORY[0x22AAB6D80](4, v4);
    }

    else
    {
      if (v1[2] < 5)
      {
        goto LABEL_30;
      }

      v15 = *(v4 + 64);
    }

    v16 = v15;
    [*(v5 + v2) addArrangedSubview_];

    if (v6)
    {
      break;
    }

    if (v1[2] >= 6)
    {
      v17 = *(v4 + 72);
      goto LABEL_20;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v17 = MEMORY[0x22AAB6D80](5, v4);
LABEL_20:
  v18 = v17;
  [*(v5 + v2) addArrangedSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [*(v5 + v2) setCustomSpacing:*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView) afterView:5.0];
  [*(v5 + v2) setCustomSpacing:*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___elapsedTimeLabel) afterView:2.0];
  [*(v5 + v2) setAxis_];
  [*(v5 + v2) setAlignment_];
}

void sub_228281604()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_2282849F0;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_228281980;
  v6[3] = &block_descriptor_15;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:60.0];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer);
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer) = v4;
}

void sub_228281718(uint64_t a1, uint64_t a2)
{
  sub_22828482C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext];
    if (v10 == 2)
    {
    }

    else
    {
      v11 = &Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache];
      v12 = *&Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache + 8];
      if (v10)
      {
        if (v12)
        {
          v13 = *v11;
          v14 = *&Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache + 8];
        }

        else
        {
          v13 = 0;
          v14 = 0xE000000000000000;
        }

        v17 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
        swift_beginAccess();
        sub_22822BFC0(&v9[v17], v5);

        sub_2282819E8(v13, v14, v5);

        v18 = MEMORY[0x277CC9578];
        v19 = v5;
      }

      else
      {
        if (v12)
        {
          v15 = *v11;
          v16 = *&Strong[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache + 8];
        }

        else
        {
          v15 = 0;
          v16 = 0xE000000000000000;
        }

        v20 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
        swift_beginAccess();
        sub_22822BFC0(&v9[v20], v7);
        if (*&v9[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems])
        {
          v21 = *&v9[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems];
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }

        sub_2282822FC(v15, v16, v7, v21);

        v18 = MEMORY[0x277CC9578];
        v19 = v7;
      }

      sub_228284980(v19, &qword_280DDCDB0, v18);
    }
  }
}

void sub_228281980(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2282819E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22838F580();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828482C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = (v4 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache);
  *v18 = a1;
  v18[1] = a2;

  sub_22822BFC0(a3, v17);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
  swift_beginAccess();
  sub_22822C098(v17, v4 + v19);
  swift_endAccess();
  v20 = sub_228280520();
  v21 = sub_228391FC0();
  [v20 setText_];

  v22 = sub_228280540();
  sub_22822BFC0(a3, v15);
  v23 = sub_22838F440();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v15, 1, v23) == 1)
  {
    sub_228284980(v15, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v25 = 0;
  }

  else
  {
    sub_22838F540();
    Date.timeElapsedToNow(locale:useShortUnitsIfNeeded:)(v11, 1);
    v27 = v26;
    (*(v9 + 8))(v11, v8);
    (*(v24 + 8))(v15, v23);
    if (v27)
    {
      v25 = sub_228391FC0();
    }

    else
    {
      v25 = 0;
    }
  }

  [v22 setText_];

  v28 = sub_22828050C();
  [v28 setHidden_];
}

uint64_t Date.timeElapsedToNow(locale:useShortUnitsIfNeeded:)(uint64_t a1, char a2)
{
  v42 = a1;
  sub_22828482C(0, &qword_27D826710, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_22838F560();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838F4D0();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838F440();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22838F6C0();
  v15 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() currentCalendar];
  sub_22838F630();

  sub_22838F3F0();
  sub_22838F360();
  v20 = v19;
  if ((sub_22838F5A0() & 1) == 0 && (sub_22838F5E0() & 1) == 0)
  {
    v22 = 0;
    goto LABEL_17;
  }

  sub_2283923F0();
  if (v20 >= v21)
  {
    v35 = v5;
    v36 = v11;
    v23 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
    v24 = sub_22838F4F0();
    [v23 setLocale_];

    [v23 setDateTimeStyle_];
    if (a2)
    {
      sub_22838F570();
      v25 = v35;
      sub_22838F550();
      (*(v38 + 8))(v8, v39);
      v26 = v40;
      v27 = v41;
      if ((*(v40 + 48))(v25, 1, v41) == 1)
      {
        sub_228284980(v25, &qword_27D826710, MEMORY[0x277CC9640]);
      }

      else
      {
        v28 = v37;
        (*(v26 + 32))(v37, v25, v27);
        if (qword_27D8232F0 != -1)
        {
          swift_once();
        }

        v42 = qword_27D826708;
        v29 = sub_22838F4C0();
        LODWORD(v42) = sub_2282845F4(v29, v30, v42);

        (*(v26 + 8))(v28, v27);
        if (v42)
        {
          v31 = 2;
LABEL_16:
          [v23 setUnitsStyle_];
          sub_22838F360();
          v32 = [v23 localizedStringFromTimeInterval_];
          v22 = sub_228392000();

          v11 = v36;
          goto LABEL_17;
        }
      }
    }

    v31 = 3;
    goto LABEL_16;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v22 = sub_22838F0C0();
LABEL_17:
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v43);
  return v22;
}

id sub_2282822FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2283911B0();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22838F580();
  v12 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828482C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = (v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache);
  *v21 = a1;
  v21[1] = a2;

  sub_22822BFC0(a3, v20);
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
  swift_beginAccess();

  sub_22822C098(v20, v5 + v22);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems) = a4;

  v23 = sub_228280520();
  v24 = sub_228391FC0();
  [v23 setText_];

  v25 = sub_228280540();
  sub_22822BFC0(a3, v18);
  v26 = sub_22838F440();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v18, 1, v26) == 1)
  {
    sub_228284980(v18, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v28 = 0;
  }

  else
  {
    sub_22838F540();
    Date.timeElapsedToNow(locale:useShortUnitsIfNeeded:)(v14, 1);
    v30 = v29;
    (*(v12 + 8))(v14, v38);
    (*(v27 + 8))(v18, v26);
    if (v30)
    {
      v28 = sub_228391FC0();
    }

    else
    {
      v28 = 0;
    }
  }

  [v25 setText_];

  if (*(a4 + 16) == 1)
  {
    v31 = sub_22828050C();
    sub_228282790((a4 + 32));

    return [*(v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView) setHidden_];
  }

  else
  {
    v33 = v39;
    sub_228391150();
    v34 = sub_2283911A0();
    v35 = sub_2283925C0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22816B000, v34, v35, "Expected 1 lineItem to exist for [MedicationDoseEvent] since we do not group\ndoses by time in the Medication Detail Room.", v36, 2u);
      MEMORY[0x22AAB7B80](v36, -1, -1);
    }

    return (*(v40 + 8))(v33, v41);
  }
}

void sub_228282790(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  LOBYTE(v4) = (*(v5 + 24))(v4, v5);
  v6 = objc_opt_self();
  v7 = &selRef_systemGrayColor;
  if ((v4 & 1) == 0)
  {
    v7 = &selRef_systemCyanColor;
  }

  v8 = [v6 *v7];
  sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228397F20;
  *(v9 + 32) = [objc_opt_self() systemWhiteColor];
  *(v9 + 40) = v8;
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  v10 = v8;
  v11 = sub_228392190();

  v12 = objc_opt_self();
  v13 = [v12 configurationWithPaletteColors_];

  v14 = [objc_opt_self() preferredFontForTextStyle_];
  v15 = [v12 configurationWithFont_];

  v21 = [v13 configurationByApplyingConfiguration_];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v16);
  (*(v17 + 8))(v16, v17);
  v18 = sub_228391FC0();

  v19 = [objc_opt_self() systemImageNamed_];

  [v2 setImage_];
  [v2 setPreferredSymbolConfiguration_];
  LODWORD(v20) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v20];
}

uint64_t sub_228282A4C(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems) = a1;

  v4 = sub_22828073C();
  sub_228392B10();

  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    sub_228393240();
    v7 = a1 + 32;
    do
    {
      sub_228180FB0(v7, v15);
      sub_228282C00(v15);
      __swift_destroy_boxed_opaque_existential_0(v15);
      sub_228393210();
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v7 += 40;
      --v5;
    }

    while (v5);
    v6 = v16;
  }

  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v9 = 0;
    v10 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAB6D80](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [*(v2 + v10) addArrangedSubview_];

      ++v9;
      if (v13 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

id sub_228282C00(void *a1)
{
  sub_22828482C(0, &qword_27D825628, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v75 - v3;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  if ((*(v5 + 24))(v4, v5))
  {
    v6 = MEMORY[0x277D837D0];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_228397F40;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v8);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    *(v7 + 56) = v6;
    *(v7 + 64) = sub_22818E210();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    v81 = sub_228391FD0();
    *&v80 = v13;
  }

  else
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v14);
    v81 = (*(v15 + 16))(v14, v15);
    *&v80 = v16;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_2281AB388(0, &qword_27D823EE0, MEMORY[0x277D837D0]);
  v18 = swift_allocObject();
  v77 = xmmword_228397F30;
  *(v18 + 16) = xmmword_228397F30;
  v19 = qword_27D8232E8;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v22 = qword_27D828D80;
  v21 = *algn_27D828D88;
  *(v18 + 32) = qword_27D828D80;
  *(v18 + 40) = v21;
  *(v18 + 48) = 0x65736F447473614CLL;
  *(v18 + 56) = 0xE800000000000000;

  v23 = sub_228392190();

  v24 = HKUIJoinStringsForAutomationIdentifier();

  [v20 setAccessibilityIdentifier_];
  [v20 setAdjustsFontForContentSizeCategory_];
  v25 = objc_opt_self();
  v26 = *MEMORY[0x277D76968];
  v27 = *MEMORY[0x277D74420];
  v78 = v25;
  v28 = [v25 _preferredFontForTextStyle_weight_];
  [v20 setFont_];

  v29 = objc_opt_self();
  v30 = [v29 secondaryLabelColor];
  [v20 setTextColor_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392050();

  v31 = sub_228391FC0();

  [v20 setText_];

  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v32);
  [v20 setHidden_];
  if (!v79[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state])
  {
    v34 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    sub_228282790(a1);
    v35 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v36 = swift_allocObject();
    *(v36 + 16) = v77;
    *(v36 + 32) = v22;
    *(v36 + 40) = v21;
    strcpy((v36 + 48), "MedicationName");
    *(v36 + 63) = -18;

    v37 = v35;
    v38 = sub_228392190();

    v39 = HKUIJoinStringsForAutomationIdentifier();

    [v37 setAccessibilityIdentifier_];
    [v37 setAdjustsFontForContentSizeCategory_];
    [v37 setNumberOfLines_];
    v40 = [v78 preferredFontForTextStyle_];
    [v37 setFont_];

    v41 = [v29 labelColor];
    [v37 setTextColor_];

    v42 = sub_228391FC0();

    [v37 &selRef:v42 didTapDay:?];

    sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
    v43 = swift_allocObject();
    v80 = xmmword_228397F20;
    *(v43 + 16) = xmmword_228397F20;
    *(v43 + 32) = v37;
    *(v43 + 40) = v20;
    v44 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v45 = sub_228392190();

    v46 = [v44 initWithArrangedSubviews_];

    v81 = v20;
    [v46 setAxis_];
    v47 = swift_allocObject();
    *(v47 + 16) = v80;
    *(v47 + 32) = v34;
    *(v47 + 40) = v46;
    v48 = objc_allocWithZone(MEMORY[0x277D75A68]);
    v49 = v34;
    v50 = v46;
    v51 = sub_228392190();

    v52 = [v48 initWithArrangedSubviews_];

    [v52 setAxis_];
    [v52 setAlignment_];
    [v52 setDistribution_];
    [v52 setSpacing_];

    return v52;
  }

  if (v79[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state] == 1)
  {
    v53 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v53 setAdjustsFontForContentSizeCategory_];
    [v53 setNumberOfLines_];
    v54 = [v29 labelColor];
    [v53 setTextColor_];

    [v53 setLineBreakMode_];
    v55 = swift_allocObject();
    *(v55 + 16) = v77;
    *(v55 + 32) = v22;
    *(v55 + 40) = v21;
    strcpy((v55 + 48), "MedicationName");
    *(v55 + 63) = -18;

    v56 = v53;
    v57 = sub_228392190();

    v58 = HKUIJoinStringsForAutomationIdentifier();

    [v56 setAccessibilityIdentifier_];
    v59 = a1[3];
    v60 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v59);
    v61 = (*(v60 + 24))(v59, v60);
    v62 = &selRef_systemGrayColor;
    if ((v61 & 1) == 0)
    {
      v62 = &selRef_systemCyanColor;
    }

    v63 = [v29 *v62];
    v64 = [v78 preferredFontForTextStyle_];
    sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
    v65 = a1[3];
    v66 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v65);
    (*(v66 + 8))(v65, v66);
    sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_228396260;
    *(v67 + 32) = v63;
    v68 = sub_228392800();
    (*(*(v68 - 8) + 56))(v76, 1, 1, v68);
    v79 = v63;
    v74 = v64;
    v69 = sub_2283927F0();
    [v56 setAttributedText_];

    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_228397F20;
    *(v70 + 32) = v56;
    *(v70 + 40) = v20;
    v71 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v72 = sub_228392190();

    v52 = [v71 initWithArrangedSubviews_];

    [v52 setAxis_];
    return v52;
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t sub_228283890(uint64_t a1)
{
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828482C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_228280540();
  v10 = [v9 text];

  if (v10)
  {
    v11 = sub_228392000();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_22822BFC0(a1, v8);
  v14 = sub_22838F440();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_228284980(v8, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if (!v13)
    {
      return 0;
    }

LABEL_17:

    return 1;
  }

  sub_22838F540();
  v16 = Date.timeElapsedToNow(locale:useShortUnitsIfNeeded:)(v5, 1);
  v18 = v17;
  (*(v3 + 8))(v5, v2);
  (*(v15 + 8))(v8, v14);
  if (v13)
  {
    if (v18)
    {
      if (v11 == v16 && v13 == v18)
      {
      }

      else
      {
        v20 = sub_228393460();

        if ((v20 & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }

    goto LABEL_17;
  }

  if (v18)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_228283B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems);
  if (!v4)
  {
    return 1;
  }

  v8 = sub_228280520();
  v9 = [v8 text];

  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = sub_228392000();
  v12 = v11;

  if (v10 == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = sub_228393460();

    if ((v14 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v16 = *(v4 + 16);
  if (v16 != *(a3 + 16))
  {
LABEL_31:

    return 1;
  }

  v17 = 0;
  v18 = 0;
  v44 = a3 + 32;
  while (1)
  {
    if (v18 == v16)
    {
      v61 = 0;
      v18 = v16;
      v59 = 0u;
      v60 = 0u;
      goto LABEL_18;
    }

    if (v18 >= v16)
    {
      break;
    }

    result = sub_228180FB0(v44 + 40 * v18, &v59);
    if (__OFADD__(v18++, 1))
    {
      goto LABEL_41;
    }

LABEL_18:
    if (v17 == v16)
    {
      v58 = 0;
      v17 = v16;
      v56 = 0u;
      v57 = 0u;
    }

    else
    {
      if (v17 >= *(v4 + 16))
      {
        goto LABEL_42;
      }

      sub_228180FB0(v4 + 32 + 40 * v17++, &v56);
    }

    v51[0] = v59;
    v51[1] = v60;
    v52 = v61;
    v53 = v56;
    v54 = v57;
    v55 = v58;
    if (!*(&v60 + 1))
    {

      if (*(&v54 + 1))
      {
        sub_2282848F8(&v53);
        return 1;
      }

      return 0;
    }

    if (!*(&v54 + 1))
    {

      v43 = v51;
LABEL_38:
      __swift_destroy_boxed_opaque_existential_0(v43);
      return 1;
    }

    sub_22819A62C(v51, v48);
    sub_22819A62C(&v53, v45);
    v26 = v49;
    v27 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v28 = (*(v27 + 8))(v26, v27);
    v30 = v29;
    v31 = v46;
    v32 = v47;
    __swift_project_boxed_opaque_existential_0(v45, v46);
    if (v28 == (*(v32 + 8))(v31, v32) && v30 == v33)
    {
    }

    else
    {
      v34 = sub_228393460();

      if ((v34 & 1) == 0)
      {
LABEL_37:

        __swift_destroy_boxed_opaque_existential_0(v45);
        v43 = v48;
        goto LABEL_38;
      }
    }

    v35 = v49;
    v36 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v37 = (*(v36 + 16))(v35, v36);
    v39 = v38;
    v40 = v46;
    v41 = v47;
    __swift_project_boxed_opaque_existential_0(v45, v46);
    if (v37 == (*(v41 + 16))(v40, v41) && v39 == v42)
    {
    }

    else
    {
      v19 = sub_228393460();

      if ((v19 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v20 = v49;
    v21 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    LOBYTE(v20) = (*(v21 + 24))(v20, v21);
    v22 = v46;
    v23 = v47;
    __swift_project_boxed_opaque_existential_0(v45, v46);
    v24 = v20 ^ (*(v23 + 24))(v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v45);
    result = __swift_destroy_boxed_opaque_existential_0(v48);
    if (v24)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_228283FA0()
{
  v0 = sub_2281F01D8(&unk_283B66E18);
  result = swift_arrayDestroy();
  qword_27D826708 = v0;
  return result;
}

uint64_t static Date.shortUnitsLocales.getter()
{
  if (qword_27D8232F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_228284048(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_228393110();

    return v4 & 1;
  }

  if (!*(a2 + 16) || (sub_228393520(), sub_228300540(), sub_2283920B0(), , v6 = sub_228393570(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0))
  {
    v41 = 0;
    return v41 & 1;
  }

  v43 = ~v7;
  v42 = a1;
  while (1)
  {
    v9 = *(*(a2 + 48) + 8 * v8);
    v10 = *(v9 + 24);
    if (!v10)
    {

      goto LABEL_18;
    }

    v11 = v10;
    v12 = [v11 metadata];
    if (!v12)
    {

      goto LABEL_18;
    }

    v13 = v12;
    v14 = sub_228391F20();

    v15 = sub_228392000();
    if (!*(v14 + 16))
    {

      goto LABEL_18;
    }

    v17 = sub_2281A76E0(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

LABEL_17:
      a1 = v42;
LABEL_18:
      v23 = [*(v9 + 16) semanticIdentifier];
      v24 = [v23 stringValue];

      v21 = sub_228392000();
      v20 = v25;

      v22 = *(a1 + 24);
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    sub_2281BC4A4(*(v14 + 56) + 32 * v17, v46);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v21 = v44;
    v20 = v45;
    a1 = v42;
    v22 = *(v42 + 24);
    if (!v22)
    {
      goto LABEL_28;
    }

LABEL_19:
    v26 = v22;
    v27 = [v26 metadata];
    if (!v27)
    {

      goto LABEL_28;
    }

    v28 = v27;
    v29 = sub_228391F20();

    v30 = sub_228392000();
    if (!*(v29 + 16))
    {

LABEL_27:

      a1 = v42;
      goto LABEL_28;
    }

    v32 = sub_2281A76E0(v30, v31);
    v34 = v33;

    if ((v34 & 1) == 0)
    {

      goto LABEL_27;
    }

    sub_2281BC4A4(*(v29 + 56) + 32 * v32, v46);

    a1 = v42;
    if (swift_dynamicCast())
    {
      v36 = v44;
      v35 = v45;
      goto LABEL_29;
    }

LABEL_28:
    v37 = [*(a1 + 16) semanticIdentifier];
    v38 = [v37 stringValue];

    v36 = sub_228392000();
    v35 = v39;

LABEL_29:
    if (v21 == v36 && v20 == v35)
    {
      break;
    }

    v41 = sub_228393460();

    if ((v41 & 1) == 0)
    {
      v8 = (v8 + 1) & v43;
      if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        continue;
      }
    }

    return v41 & 1;
  }

  v41 = 1;
  return v41 & 1;
}

uint64_t sub_2282844A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  v10 = sub_228393570();
  v11 = a5 + 56;
  v12 = -1 << *(a5 + 32);
  v13 = v10 & ~v12;
  if (((*(a5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(a5 + 48);
  while (1)
  {
    v16 = (v15 + 32 * v13);
    v17 = v16[2];
    v18 = v16[3];
    v19 = *v16 == a1 && v16[1] == a2;
    if (v19 || (sub_228393460() & 1) != 0)
    {
      v20 = v17 == a3 && v18 == a4;
      if (v20 || (sub_228393460() & 1) != 0)
      {
        break;
      }
    }

    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2282845F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_228393520();
  sub_2283920B0();
  v6 = sub_228393570();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_228393460() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t type metadata accessor for MedicationsDayHistoryView(uint64_t a1)
{
  result = qword_27D826778;
  if (!qword_27D826778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228284740(uint64_t a1)
{
  sub_22828482C(319, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22828482C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2282848A4()
{
  result = qword_27D826788;
  if (!qword_27D826788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826788);
  }

  return result;
}

uint64_t sub_2282848F8(uint64_t a1)
{
  sub_2281AEAE8(0, &qword_27D826790, &qword_27D823F08, &protocol descriptor for DayHistoryLineItemDisplayable, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228284980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22828482C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_228284A14()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  sub_2281AB388(0, &qword_27D823EE0, MEMORY[0x277D837D0]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F30;
  v2 = qword_27D8232E8;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *algn_27D828D88;
  *(v1 + 32) = qword_27D828D80;
  *(v1 + 40) = v4;
  strcpy((v1 + 48), "TimeTakenLabel");
  *(v1 + 63) = -18;

  v5 = sub_228392190();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier_];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  return v3;
}

id sub_228284BB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  sub_2281AB388(0, &qword_27D823EE0, MEMORY[0x277D837D0]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F30;
  v2 = qword_27D8232E8;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *algn_27D828D88;
  *(v1 + 32) = qword_27D828D80;
  *(v1 + 40) = v4;
  *(v1 + 48) = 0xD000000000000010;
  *(v1 + 56) = 0x80000002283B0290;

  v5 = sub_228392190();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier_];
  v7 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v3 setFont_];

  v8 = [objc_opt_self() systemGrayColor];
  [v3 setTextColor_];

  return v3;
}

void sub_228284D9C()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___doseStatusImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___timeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___elapsedTimeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___chevronImage) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___headerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView____lazy_storage___lineItemsStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state) = 2;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_lineItems) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timeTextCache);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_elapsedTimeCache;
  v3 = sub_22838F440();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext) = 2;
  sub_228393300();
  __break(1u);
}

void sub_228284ED4(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v5 = [v2 preferredContentSizeCategory];

  v3 = sub_2283928C0() & 1;
  v4 = a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state];
  a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_state] = v3;
  sub_228280800(v4);
}

void MedicationSummaryView.body.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = sub_228391C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2282852C4(0);
  sub_22828506C(v3, v4, a1 + *(v5 + 44));
  v6 = sub_228391D20();
  LOBYTE(v3) = sub_228391C60();
  sub_228285B0C(0);
  v8 = a1 + *(v7 + 36);
  *v8 = v6;
  *(v8 + 8) = v3;
}

uint64_t sub_22828506C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  sub_2282853CC(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v35 - v8);
  *v9 = sub_228391D90();
  v9[1] = v10;
  sub_228286404(0);
  sub_228285CC4((v9 + *(v11 + 44)));
  v37 = a1;
  v38 = a2;
  sub_22819DFF4();

  v12 = sub_228391CE0();
  v14 = v13;
  v16 = v15;
  sub_228391CB0();
  v17 = sub_228391CD0();
  v19 = v18;
  v21 = v20;

  sub_22828649C(v12, v14, v16 & 1);

  sub_228391C90();
  v22 = sub_228391CC0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_22828649C(v17, v19, v21 & 1);

  v29 = v35;
  sub_228286610(v9, v35, sub_2282853CC);
  v30 = v36;
  sub_228286610(v29, v36, sub_2282853CC);
  sub_22828535C(0);
  v32 = v30 + *(v31 + 48);
  *v32 = 0x402E000000000000;
  *(v32 + 8) = 0;
  v33 = v30 + *(v31 + 64);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26 & 1;
  *(v33 + 24) = v28;
  sub_2282864AC(v22, v24, v26 & 1);

  sub_228286678(v9, sub_2282853CC);
  sub_22828649C(v22, v24, v26 & 1);

  return sub_228286678(v29, sub_2282853CC);
}

void sub_2282852C4(uint64_t a1)
{
  if (!qword_27D826798)
  {
    sub_228285480(255, &qword_27D8267A0, sub_22828535C, MEMORY[0x277CE14B8]);
    v1 = sub_228391BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826798);
    }
  }
}

void sub_22828535C(uint64_t a1)
{
  if (!qword_27D8267A8)
  {
    sub_2282853CC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D8267A8);
    }
  }
}

void sub_2282853CC(uint64_t a1)
{
  if (!qword_27D8267B0)
  {
    sub_228285480(255, &qword_27D8267B8, sub_2282854E4, MEMORY[0x277CE14B8]);
    sub_228285AA8(&qword_27D826840, &qword_27D8267B8, sub_2282854E4);
    v1 = sub_228391D70();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8267B0);
    }
  }
}

void sub_228285480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2282854E4(uint64_t a1)
{
  if (!qword_27D8267C0)
  {
    sub_228285554(255);
    sub_228285684(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8267C0);
    }
  }
}

void sub_228285554(uint64_t a1)
{
  if (!qword_27D8267C8)
  {
    sub_2282855B4(255);
    v1 = sub_228391BD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8267C8);
    }
  }
}

void sub_2282855B4(uint64_t a1)
{
  if (!qword_27D8267D0)
  {
    sub_228285630();
    v1 = sub_228391B80();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8267D0);
    }
  }
}

unint64_t sub_228285630()
{
  result = qword_27D8267D8;
  if (!qword_27D8267D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8267D8);
  }

  return result;
}

void sub_228285684(uint64_t a1)
{
  if (!qword_27D8267E0)
  {
    sub_228285C54(255, &qword_27D8267E8, MEMORY[0x277CDF838], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_228285718(255);
    v1 = sub_228391BD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8267E0);
    }
  }
}

void sub_228285718(uint64_t a1)
{
  if (!qword_27D8267F0)
  {
    sub_22828577C(255);
    sub_2282858F0();
    v1 = sub_228391B90();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8267F0);
    }
  }
}

void sub_22828577C(uint64_t a1)
{
  if (!qword_27D8267F8)
  {
    sub_228285814(255);
    sub_228285480(255, &qword_27D826818, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_228391BD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8267F8);
    }
  }
}

void sub_228285814(uint64_t a1)
{
  if (!qword_27D826800)
  {
    sub_228285874(255);
    v1 = sub_228391BD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826800);
    }
  }
}

void sub_228285874(uint64_t a1)
{
  if (!qword_27D826808)
  {
    sub_22821B3F8(255, &qword_27D826810, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
    v1 = sub_228391C50();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826808);
    }
  }
}

unint64_t sub_2282858F0()
{
  result = qword_27D826820;
  if (!qword_27D826820)
  {
    sub_22828577C(255);
    sub_228285970();
    sub_228285A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826820);
  }

  return result;
}

unint64_t sub_228285970()
{
  result = qword_27D826828;
  if (!qword_27D826828)
  {
    sub_228285814(255);
    sub_228286338(&qword_27D826830, sub_228285874, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826828);
  }

  return result;
}

unint64_t sub_228285A20()
{
  result = qword_27D826838;
  if (!qword_27D826838)
  {
    sub_228285480(255, &qword_27D826818, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826838);
  }

  return result;
}

uint64_t sub_228285AA8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228285480(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228285B0C(uint64_t a1)
{
  if (!qword_27D826848)
  {
    sub_228285BA0(255);
    sub_228285C54(255, &qword_27D826860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v1 = sub_228391BD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826848);
    }
  }
}

void sub_228285BA0(uint64_t a1)
{
  if (!qword_27D826850)
  {
    sub_228285480(255, &qword_27D8267A0, sub_22828535C, MEMORY[0x277CE14B8]);
    sub_228285AA8(&qword_27D826858, &qword_27D8267A0, sub_22828535C);
    v1 = sub_228391D60();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826850);
    }
  }
}

void sub_228285C54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_228285CC4@<X0>(_OWORD *a1@<X8>)
{
  sub_228285480(0, &qword_27D826888, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  sub_228285684(0);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = objc_opt_self();
  v12 = [v11 secondarySystemBackgroundColor];
  v36 = sub_228391D30();
  sub_228391D90();
  sub_228391BA0();
  *&v44[3] = *&v44[27];
  *&v44[11] = *&v44[35];
  *&v44[19] = *&v44[43];
  sub_22821B3F8(0, &qword_27D826890, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_228397F30;
  v14 = [v11 systemCyanColor];
  *(v13 + 32) = sub_228391D30();
  v15 = [v11 systemBlueColor];
  *(v13 + 40) = sub_228391D30();
  MEMORY[0x22AAB5920](v13);
  sub_228391DA0();
  sub_228391DB0();
  sub_228391BC0();
  sub_228391D90();
  sub_228391BA0();
  v16 = sub_228391D40();
  v17 = sub_228391C80();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_228391CA0();
  sub_2282864BC(v4);
  v18 = sub_228391C70();

  KeyPath = swift_getKeyPath();
  v20 = &v10[*(v6 + 44)];
  sub_22828577C(0);
  v22 = (v20 + *(v21 + 36));
  sub_228285480(0, &qword_27D826818, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v24 = *(v23 + 28);
  v25 = *MEMORY[0x277CE1048];
  v26 = sub_228391D50();
  (*(*(v26 - 8) + 104))(v22 + v24, v25, v26);
  *v22 = swift_getKeyPath();
  *v20 = v16;
  v20[1] = KeyPath;
  v20[2] = v18;
  v27 = v41;
  *(v10 + 2) = v40;
  *(v10 + 3) = v27;
  *(v10 + 4) = v42;
  *(v10 + 10) = v43;
  v28 = v39;
  *v10 = v38;
  *(v10 + 1) = v28;
  v29 = v37;
  sub_228286610(v10, v37, sub_228285684);
  v30 = v36;
  *&v45[0] = v36;
  WORD4(v45[0]) = 256;
  *(v45 + 10) = *v44;
  *(&v45[1] + 10) = *&v44[8];
  *(&v45[2] + 10) = *&v44[16];
  *(&v45[3] + 1) = *&v44[23];
  v31 = v45[1];
  *a1 = v45[0];
  a1[1] = v31;
  v32 = v45[3];
  a1[2] = v45[2];
  a1[3] = v32;
  sub_2282854E4(0);
  sub_228286610(v29, a1 + *(v33 + 48), sub_228285684);
  sub_228286610(v45, &v46, sub_228285554);
  sub_228286678(v10, sub_228285684);
  sub_228286678(v29, sub_228285684);
  v46 = v30;
  v47 = 256;
  v48 = *v44;
  v49 = *&v44[8];
  *v50 = *&v44[16];
  *&v50[14] = *&v44[23];
  return sub_228286678(&v46, sub_228285554);
}

void sub_2282861E8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = sub_228391C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2282852C4(0);
  sub_22828506C(v3, v4, a1 + *(v5 + 44));
  v6 = sub_228391D20();
  LOBYTE(v3) = sub_228391C60();
  sub_228285B0C(0);
  v8 = a1 + *(v7 + 36);
  *v8 = v6;
  *(v8 + 8) = v3;
}

unint64_t sub_228286288()
{
  result = qword_27D826868;
  if (!qword_27D826868)
  {
    sub_228285B0C(255);
    sub_228286338(&qword_27D826870, sub_228285BA0, MEMORY[0x277CE1198]);
    sub_228286380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826868);
  }

  return result;
}

uint64_t sub_228286338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_228286380()
{
  result = qword_27D826878;
  if (!qword_27D826878)
  {
    sub_228285C54(255, &qword_27D826860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826878);
  }

  return result;
}

void sub_228286404(uint64_t a1)
{
  if (!qword_27D826880)
  {
    sub_228285480(255, &qword_27D8267B8, sub_2282854E4, MEMORY[0x277CE14B8]);
    v1 = sub_228391BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826880);
    }
  }
}

uint64_t sub_22828649C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2282864AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2282864BC(uint64_t a1)
{
  sub_228285480(0, &qword_27D826888, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228286548(uint64_t a1)
{
  v2 = sub_228391D50();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_228391BF0();
}

uint64_t sub_228286610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228286678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DDIOnboardingDataSource(uint64_t a1)
{
  result = qword_27D8268B0;
  if (!qword_27D8268B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228286724(uint64_t a1)
{
  sub_2282877B8(319, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_228286808()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + qword_27D8268A0);
  swift_allocObject();
  swift_weakInit();
  sub_228287708(0);
  sub_228287770(&qword_27D8268E0, sub_228287708, MEMORY[0x277CBCE48]);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  sub_2282877B8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v9[0] = *(*(sub_22838FEF0() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_228397F30;
  v5 = sub_228287080();
  sub_228194894(v5);

  sub_22838F490();
  sub_22838F450();
  v6 = *(v2 + 8);
  v6(v4, v1);
  sub_22838FED0();
  v7 = sub_228286B54();
  sub_228195058(v7);

  sub_22838F490();
  sub_22838F450();
  v6(v4, v1);
  sub_22838FED0();
  sub_22838FF50();
}

uint64_t sub_228286B54()
{
  v3 = MEMORY[0x277D84F90];
  sub_228393240();
  v1 = *(v0 + qword_27D826898);
  type metadata accessor for OnboardingLifestyleInteractionSwitchItem(0);
  swift_allocObject();

  sub_228385A54(1, v1);

  sub_228393210();
  sub_228393250();
  sub_228393260();
  sub_228393220();
  swift_allocObject();

  sub_228385A54(2, v1);

  sub_228393210();
  sub_228393250();
  sub_228393260();
  sub_228393220();
  swift_allocObject();

  sub_228385A54(3, v1);

  sub_228393210();
  sub_228393250();
  sub_228393260();
  sub_228393220();
  return v3;
}

uint64_t sub_228286CF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_228287080();
    sub_228194894(v3);

    sub_22838FF60();

    v4 = sub_228286B54();
    sub_228195058(v4);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_228286DE0()
{

  sub_228287628(v0 + qword_27D828D90);
}

uint64_t sub_228286E40()
{
  v0 = sub_22838FFB0();

  sub_228287628(v0 + qword_27D828D90);

  return swift_deallocClassInstance();
}

uint64_t sub_228286F00()
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for InteractionsOnboardingEducationCell();
  sub_228287770(&qword_27D8268C8, type metadata accessor for InteractionsOnboardingEducationCell, &protocol conformance descriptor for InteractionsOnboardingEducationCell);
  sub_2283926B0();
  sub_228390190();
  return sub_2283926B0();
}

uint64_t sub_228287080()
{
  sub_2282877B8(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F30;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v1 = sub_22838F0C0();
  v3 = v2;
  *(v0 + 56) = &type metadata for InteractionsOnboardingEducationItem;
  v4 = sub_22828781C();
  *(v0 + 64) = v4;
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  type metadata accessor for InteractionsOnboardingEducationCell();
  sub_228287770(&qword_27D8268C8, type metadata accessor for InteractionsOnboardingEducationCell, &protocol conformance descriptor for InteractionsOnboardingEducationCell);
  v5[4] = sub_22838FBB0();
  v5[5] = v6;
  v5[2] = v1;
  v5[3] = v3;
  v7 = sub_22838F0C0();
  v9 = v8;
  *(v0 + 96) = &type metadata for InteractionsOnboardingEducationItem;
  *(v0 + 104) = v4;
  v10 = swift_allocObject();
  *(v0 + 72) = v10;
  v10[4] = sub_22838FBB0();
  v10[5] = v11;
  v10[2] = v7;
  v10[3] = v9;
  return v0;
}

uint64_t sub_2282872B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_22838F4A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27D826898;
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_2282876B4();
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  *(v2 + v9) = sub_228390700();
  *(v2 + qword_27D8268A8) = MEMORY[0x277D84FA0];
  sub_228181FB4(a1, v2 + qword_27D828D90);
  *(v2 + qword_27D8268A0) = a2;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v15, "MutableArray<");
  HIWORD(v15[1]) = -4864;
  sub_22838F490();
  v10 = sub_22838F450();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x22AAB5C80](v10, v12);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v13 = sub_22838FF30();

  sub_228286808();

  sub_228287628(a1);
  return v13;
}

void *sub_2282874EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  if (a1 == 1)
  {
    sub_2283900B0();
    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    v7 = sub_2283900C0();
    (*(v4 + 8))(v6, v3);
    return v7;
  }

  v7 = sub_2283900C0();
  (*(v4 + 8))(v6, v3);
  [v7 setInterGroupSpacing_];
  return v7;
}

uint64_t sub_228287628(uint64_t a1)
{
  sub_2282877B8(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2282876B4()
{
  result = qword_280DDBAF0;
  if (!qword_280DDBAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDBAF0);
  }

  return result;
}

void sub_228287708(uint64_t a1)
{
  if (!qword_27D8268D8)
  {
    sub_228192BCC();
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8268D8);
    }
  }
}

uint64_t sub_228287770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2282877B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22828781C()
{
  result = qword_27D8268E8;
  if (!qword_27D8268E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8268E8);
  }

  return result;
}

uint64_t sub_228287870(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t sub_2282878D0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_22828791C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_2282879C0()
{
  sub_22838F4A0();
  sub_2282893CC(&qword_27D824618, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  swift_beginAccess();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  MEMORY[0x22AAB5C80](v2, v1);

  return v4;
}

uint64_t MedicationEducationItem.__allocating_init(primaryContent:attribution:alternateRenderingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  type metadata accessor for MedicationEducationItemCell();
  sub_2282893CC(&qword_27D8268F8, v11, type metadata accessor for MedicationEducationItemCell, &protocol conformance descriptor for MedicationEducationItemCell);
  *(v10 + 56) = sub_22838FBB0();
  *(v10 + 64) = v12;
  sub_22838F490();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  return v10;
}

uint64_t MedicationEducationItem.init(primaryContent:attribution:alternateRenderingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for MedicationEducationItemCell();
  sub_2282893CC(&qword_27D8268F8, v11, type metadata accessor for MedicationEducationItemCell, &protocol conformance descriptor for MedicationEducationItemCell);
  *(v5 + 56) = sub_22838FBB0();
  *(v5 + 64) = v12;
  sub_22838F490();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

char *MedicationEducationItem.deinit()
{

  v1 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationEducationItem_uuid;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MedicationEducationItem.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationEducationItem_uuid;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_228287D6C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_228287DBC()
{
  v1 = *v0;
  sub_22838F4A0();
  sub_2282893CC(&qword_27D824618, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v5 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  MEMORY[0x22AAB5C80](v2, v3);

  return v5;
}

uint64_t sub_228287E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228287EFC(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228288588();
  return sub_22819482C(v6);
}

uint64_t sub_228287F6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228287FC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228288588();
  return sub_22819482C(a1);
}

uint64_t (*sub_228288030(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228288094;
}

uint64_t sub_228288094(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228288588();
  }

  return result;
}

id sub_2282880C8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = sub_228288128();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228288128()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = sub_228392000();
  v8 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283A9550);

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

  v4 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setNumberOfLines_];
  LODWORD(v5) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v5];
  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

id sub_2282882D4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_22828833C(ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22828833C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_228392000();
  v4 = v3;
  sub_2282893CC(&qword_27D8268F8, v3, type metadata accessor for MedicationEducationItemCell, &protocol conformance descriptor for MedicationEducationItemCell);
  v5 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v5);

  v11 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0xD000000000000011, 0x80000002283B0420);

  v6 = sub_228391FC0();

  [v1 setAccessibilityIdentifier_];

  [v1 setNumberOfLines_];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  v8 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  LODWORD(v9) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v9];
  [v1 setAdjustsFontForContentSizeCategory_];
  return v1;
}

uint64_t sub_228288588()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v89 - v7;
  v9 = sub_2283913A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v13], v95);
  if (v95[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationEducationItem(0);
    if (swift_dynamicCast())
    {
      v14 = v94;
      sub_228391390();
      v15 = *(v14 + 48);
      v91 = v14;
      if (v15 == 2 || (v15 & 1) == 0)
      {
        v16 = &selRef_tertiarySystemBackgroundColor;
      }

      else
      {
        v16 = &selRef_tertiarySystemFillColor;
      }

      v26 = [objc_opt_self() *v16];
      sub_228391370();
      v27 = *(v10 + 16);
      v90 = v12;
      v27(v8, v12, v9);
      v92 = v9;
      v93 = v10;
      (*(v10 + 56))(v8, 0, 1, v9);
      MEMORY[0x22AAB6420](v8);
      sub_228180ED0();
      v89[1] = v28;
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_228399D40;
      v30 = sub_2282880C8();
      v31 = [v30 topAnchor];

      v32 = [v1 contentView];
      v33 = [v32 topAnchor];

      sub_22838F7D0();
      v34 = [v31 constraintEqualToAnchor:v33 constant:?];

      *(v29 + 32) = v34;
      v35 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel;
      v36 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel] leadingAnchor];
      v37 = [v1 contentView];
      v38 = [v37 layoutMarginsGuide];

      v39 = [v38 leadingAnchor];
      v40 = [v36 constraintEqualToAnchor_];

      *(v29 + 40) = v40;
      v41 = [*&v1[v35] trailingAnchor];
      v42 = [v1 contentView];
      v43 = [v42 layoutMarginsGuide];

      v44 = [v43 trailingAnchor];
      v45 = [v41 constraintEqualToAnchor_];

      v46 = v35;
      *(v29 + 48) = v45;
      v95[0] = v29;
      v47 = [v1 contentView];
      [v47 addSubview_];

      v48 = v91;
      if (*(v91 + 40))
      {

        sub_2283920A0();
        v50 = v49;

        if (v50)
        {

          v51 = [v1 contentView];
          v52 = sub_2282882D4();
          [v51 addSubview_];

          inited = swift_initStackObject();
          *(inited + 16) = xmmword_228397F00;
          v54 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel;
          v55 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel] topAnchor];
          v56 = [*&v1[v46] bottomAnchor];
          sub_22838F7D0();
          v57 = v46;
          v58 = [v55 constraintEqualToAnchor:v56 constant:?];

          *(inited + 32) = v58;
          v59 = [*&v1[v54] leadingAnchor];
          v60 = [*&v1[v57] leadingAnchor];
          v61 = [v59 constraintEqualToAnchor_];

          *(inited + 40) = v61;
          v62 = [*&v1[v54] trailingAnchor];
          v63 = [*&v1[v57] trailingAnchor];
          v64 = [v62 constraintEqualToAnchor_];

          *(inited + 48) = v64;
          v65 = [*&v1[v54] bottomAnchor];
          v66 = [v1 contentView];
          v67 = [v66 bottomAnchor];

          sub_22838F7D0();
          v69 = [v65 constraintEqualToAnchor:v67 constant:-v68];

          v46 = v57;
          *(inited + 56) = v69;
          sub_2281D5A98(inited);
        }
      }

      v70 = *(v48 + 48);
      v71 = v92;
      v72 = v90;
      if (v70 != 2 && (v70 & 1) != 0)
      {
        v73 = *&v1[v46];
        v74 = objc_opt_self();
        v75 = v73;
        v76 = [v74 secondaryLabelColor];
        [v75 setTextColor_];

        v77 = [*&v1[v46] bottomAnchor];
        v78 = [v1 contentView];
        v79 = [v78 bottomAnchor];

        sub_22838F7D0();
        v81 = [v77 constraintEqualToAnchor:v79 constant:-v80];

        MEMORY[0x22AAB5D20]();
        if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();
      }

      v82 = objc_opt_self();
      sub_2281BF1B8();
      v83 = sub_228392190();

      [v82 activateConstraints_];

      v84 = *&v1[v46];

      v85 = v84;
      v86 = sub_228391FC0();

      [v85 setText_];

      if (*(v48 + 40))
      {

        v87 = sub_2282882D4();
        v88 = sub_228391FC0();

        [v87 setText_];

        return (*(v93 + 8))(v72, v71);
      }

      else
      {
        (*(v93 + 8))(v72, v71);
      }
    }
  }

  else
  {
    sub_22819482C(v95);
  }

  sub_228391150();
  v17 = v1;
  v18 = sub_2283911A0();
  v19 = sub_2283925C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v94 = v21;
    *v20 = 136446210;
    sub_22817E6C8(&v1[v13], v95);
    sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
    v22 = sub_228392040();
    v24 = sub_2281C96FC(v22, v23, &v94);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_22816B000, v18, v19, "Incorrect view model for MedicationEducationItemCell: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AAB7B80](v21, -1, -1);
    MEMORY[0x22AAB7B80](v20, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id MedicationEducationItemCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MedicationEducationItemCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MedicationEducationItemCell();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id MedicationEducationItemCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MedicationEducationItemCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MedicationEducationItemCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id MedicationEducationItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationEducationItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282893CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for MedicationEducationItem(uint64_t a1)
{
  result = qword_27D826920;
  if (!qword_27D826920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282894C4(uint64_t a1)
{
  result = sub_22838F4A0();
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

uint64_t MedicationSearchFieldItem.init(onActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F490();
  v10 = sub_22838F450();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *a3 = v10;
  a3[1] = v12;
  type metadata accessor for MedicationSearchFieldCell();
  sub_228289814();
  result = sub_22838FBB0();
  a3[4] = result;
  a3[5] = v14;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

unint64_t sub_228289814()
{
  result = qword_27D826930;
  if (!qword_27D826930)
  {
    type metadata accessor for MedicationSearchFieldCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826930);
  }

  return result;
}

uint64_t MedicationSearchFieldItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MedicationSearchFieldItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t static MedicationSearchFieldItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t MedicationSearchFieldItem.hashValue.getter()
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

unint64_t sub_228289950()
{
  result = qword_27D826938;
  if (!qword_27D826938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826938);
  }

  return result;
}

uint64_t sub_2282899A8(uint64_t a1)
{
  v2 = sub_22828A194();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_228289A1C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D759E8]) init];
    [v4 setSearchBarStyle_];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v5 = sub_228391FC0();

    [v4 setPlaceholder_];

    [v4 setDelegate_];
    v6 = [v4 searchTextField];
    v7 = [objc_opt_self() secondarySystemBackgroundColor];
    [v6 setBackgroundColor_];

    v8 = [v4 searchTextField];
    sub_22838F7C0();
    v9 = v0;
    sub_228392B00();

    v10 = *(v0 + v1);
    *(v9 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_228289BFC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for MedicationSearchFieldCell();
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor_];

  v13 = v10;
  v14 = sub_228289A1C();
  [v13 addSubview_];

  v15 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar;
  [*&v13[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar] setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *&v13[v15];
  [v16 hk:v13 alignConstraintsWithView:?];

  return v13;
}

id sub_228289E08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationSearchFieldCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228289E88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228289EE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

void sub_228289FA0(void *a1)
{
  v3 = [a1 viewController];
  if (v3)
  {
    v6 = v3;
    type metadata accessor for NewMedicationOnboardingViewController(0);
    if (swift_dynamicCastClass())
    {
      [a1 resignFirstResponder];
      v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item;
      swift_beginAccess();
      sub_22817E6C8(v1 + v4, v9);
      if (v10)
      {
        sub_22817A700();
        if (swift_dynamicCast())
        {
          sub_228176FA8(v7, v8);

          sub_228176EC8(v7, v8);

          if (v7)
          {
            v7(v5);
            sub_228176EC8(v7, v8);
          }
        }
      }

      else
      {
        sub_22819482C(v9);
      }

      sub_2282F70D0(a1, v1);
    }

    else
    {
    }
  }
}

unint64_t sub_22828A194()
{
  result = qword_27D8269C0;
  if (!qword_27D8269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8269C0);
  }

  return result;
}

uint64_t sub_22828A210()
{
  sub_228182110(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F30;
  type metadata accessor for InteractionFactorsHeaderDataSource(0);
  swift_allocObject();
  v1 = sub_228319B08();
  v2 = sub_22828A354(&qword_27D826A30, type metadata accessor for InteractionFactorsHeaderDataSource);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_2282876B4();
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  v3 = sub_228390700();
  type metadata accessor for InteractionFactorsLifestyleOptionsDataSource(0);
  swift_allocObject();
  v4 = sub_22821301C(v3);
  v5 = sub_22828A354(&qword_27D826A38, type metadata accessor for InteractionFactorsLifestyleOptionsDataSource);
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  return v0;
}

uint64_t sub_22828A354(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

__n128 UITextFieldWithInsets.insets.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 UITextFieldWithInsets.insets.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__C::CGRect __swiftcall UITextFieldWithInsets.textRect(forBounds:)(__C::CGRect forBounds)
{
  sub_22828A4F8(&selRef_textRectForBounds_, forBounds.origin.x, forBounds.origin.y, forBounds.size.width, forBounds.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__C::CGRect __swiftcall UITextFieldWithInsets.editingRect(forBounds:)(__C::CGRect forBounds)
{
  sub_22828A4F8(&selRef_editingRectForBounds_, forBounds.origin.x, forBounds.origin.y, forBounds.size.width, forBounds.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void sub_22828A4F8(SEL *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  swift_beginAccess();
  if (v12[4])
  {
    v20.receiver = v5;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, *a1, a2, a3, a4, a5);
  }

  else
  {
    v14 = *v12;
    v13 = v12[1];
    v19.receiver = v5;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, *a1, a2, a3, a4, a5);
    UIEdgeInsetsInsetRect(v15, v16, v17, v18, v14, v13);
  }
}

void sub_22828A5F8(char *a1, double a2, double a3, double a4, double a5, uint64_t a6, SEL *a7)
{
  ObjectType = swift_getObjectType();
  v14 = &a1[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  swift_beginAccess();
  if (v14[32])
  {
    v28.receiver = a1;
    v28.super_class = ObjectType;
    objc_msgSendSuper2(&v28, *a7, a2, a3, a4, a5);
  }

  else
  {
    v16 = *v14;
    v15 = *(v14 + 1);
    v27.receiver = a1;
    v27.super_class = ObjectType;
    v17 = *a7;
    v18 = a1;
    objc_msgSendSuper2(&v27, v17, a2, a3, a4, a5);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    UIEdgeInsetsInsetRect(v20, v22, v24, v26, v16, v15);
  }
}

id UITextFieldWithInsets.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id UITextFieldWithInsets.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id UITextFieldWithInsets.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UITextFieldWithInsets.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id UITextFieldWithInsets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22828AA44()
{
  v1 = qword_280DDC1C0;
  if (*(v0 + qword_280DDC1C0))
  {
    v2 = *(v0 + qword_280DDC1C0);
  }

  else
  {
    v3 = v0;
    sub_228390890();
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    sub_2283907E0();
    swift_allocObject();
    v2 = sub_228390700();
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_22828AB18()
{
  v1 = qword_280DDC1B8;
  if (*(v0 + qword_280DDC1B8))
  {
    v2 = *(v0 + qword_280DDC1B8);
  }

  else
  {
    v3 = *(v0 + qword_280DDC1D8);
    v4 = sub_22828AA44();
    type metadata accessor for MedicationsInteractionEngine();
    swift_allocObject();
    v2 = sub_228191FE8(v3, v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t InteractionSummaryDataSource.__allocating_init(filteringMedication:listManager:healthStore:analyticsManager:roomType:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + qword_280DDC1C0) = 0;
  *(v10 + qword_280DDC1B8) = 0;
  *(v10 + qword_280DDC1D0) = MEMORY[0x277D84FA0];
  *(v10 + qword_27D826A48) = 0;
  *(v10 + qword_280DDC1C8) = a1;
  *(v10 + qword_27D826A50) = a2;
  *(v10 + qword_280DDC1D8) = a3;
  *(v10 + qword_27D826A58) = a4;
  *(v10 + qword_280DDC1B0) = a5;
  v11 = a1;

  v12 = a3;

  v13 = sub_22838F920();

  sub_22828BB74();

  return v13;
}

uint64_t InteractionSummaryDataSource.init(filteringMedication:listManager:healthStore:analyticsManager:roomType:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + qword_280DDC1C0) = 0;
  *(v5 + qword_280DDC1B8) = 0;
  *(v5 + qword_280DDC1D0) = MEMORY[0x277D84FA0];
  *(v5 + qword_27D826A48) = 0;
  *(v5 + qword_280DDC1C8) = a1;
  *(v5 + qword_27D826A50) = a2;
  *(v5 + qword_280DDC1D8) = a3;
  *(v5 + qword_27D826A58) = a4;
  *(v5 + qword_280DDC1B0) = a5;
  v7 = a1;

  v8 = a3;

  v9 = sub_22838F920();

  sub_22828BB74();

  return v9;
}

uint64_t sub_22828AE10()
{
}

void *InteractionSummaryDataSource.deinit()
{
  v1 = qword_280DDC1D0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_228393080();
    sub_228391820();
    sub_22828DFF0(&qword_27D824180, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_2283924C0();
    v5 = v19;
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_228176F04(v5);

      v17 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

      return v17;
    }

    while (1)
    {
      sub_228391810();

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_228393100())
      {
        sub_228391820();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t InteractionSummaryDataSource.__deallocating_deinit()
{
  InteractionSummaryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22828B19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_22828DF5C(0, &qword_280DDBC38, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_2283918F0();
  sub_22828E044(&qword_280DDBC40, &qword_280DDBC38, v9, MEMORY[0x277CBCEB0]);
  v10 = sub_228391990();

  *a4 = v10;
  return result;
}

void sub_22828B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_22828AB18();
  v9 = sub_228191178();

  sub_2282B96E4(v10);

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22818C470(&qword_280DDB9D8, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D85378]);
  v11 = sub_228392470();

  if (a5)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_22818C470(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0, MEMORY[0x277D85378]);
    a5 = sub_228392470();
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = sub_22818DEBC;
  v13[4] = v8;
  v15[4] = sub_22828E088;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_228276010;
  v15[3] = &block_descriptor_16;
  v14 = _Block_copy(v15);

  [v9 interactionResultsForMedications:v11 lifestyleFactors:a5 completion:v14];
  _Block_release(v14);
}

void sub_22828B538(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v32 = a2;
      v9 = a2;
      sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
      sub_22817A958(0, &qword_27D825E88, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        if ([v31 code] == 1003)
        {
          v10 = [objc_opt_self() sharedBehavior];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 isAppleInternalInstall];

            if (!v12)
            {
              v29 = v31;
              a4(v31, 1);

              return;
            }

            v30 = a4;

            v13 = 1;
            goto LABEL_17;
          }

LABEL_26:
          __break(1u);
          return;
        }
      }

      a4(a2, 1);
      goto LABEL_20;
    }

    sub_22828AA44();
    v14 = sub_228390730();

    if (v14)
    {
      v15 = [objc_opt_self() sharedBehavior];
      if (!v15)
      {
        __break(1u);
        goto LABEL_26;
      }

      v16 = v15;
      v17 = [v15 isAppleInternalInstall];

      if (!a1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      if (!a1)
      {
LABEL_11:
        v13 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }
    }

    v18 = *(v8 + qword_280DDC1C8);
    v19 = v18;
    v13 = Set<>.severities(filtering:includeMinorInteractions:)(v18, v17, a1);

LABEL_14:
    if (v13 >> 62)
    {
      v30 = a4;
      if (sub_2283930D0())
      {
        goto LABEL_17;
      }
    }

    else
    {
      v30 = a4;
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        v20 = *(v8 + qword_280DDC1C8);
        v21 = *(v8 + qword_27D826A50);
        v22 = *(v8 + qword_280DDC1D8);
        v23 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for InteractionSummaryItem();
        v24 = swift_allocObject();
        type metadata accessor for InteractionSummaryItemCell();
        sub_22828DFF0(qword_280DDC3F0, type metadata accessor for InteractionSummaryItemCell, &protocol conformance descriptor for InteractionSummaryItemCell);
        v25 = v20;

        v26 = v22;

        v24[8] = sub_22838FBB0();
        v24[9] = v27;
        v24[2] = v13;
        v24[3] = v20;
        v24[4] = v21;
        v24[5] = v26;
        v24[6] = sub_22828E0AC;
        v24[7] = v23;

        v30(v28, 0);

LABEL_20:

        return;
      }
    }

    v13 = 0;
    goto LABEL_17;
  }
}

uint64_t sub_22828B8F0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = a1;
    v4 = *(result + qword_280DDC1C8);
    v5 = *(result + qword_27D826A50);
    v6 = *(result + qword_280DDC1D8);
    v7 = *(result + qword_27D826A58);
    v19 = result;
    v18 = *(result + qword_280DDC1B0);
    v8 = type metadata accessor for InteractionSummaryOverviewViewController(0);
    v9 = objc_allocWithZone(v8);
    *&v9[qword_27D8264F0] = 0;
    *&v9[qword_27D8264F8] = 0;
    *&v9[qword_27D826500] = 0;
    v10 = &v9[qword_27D826508];
    v22 = sub_228392000();
    v23 = v11;
    v17 = v4;

    v12 = v6;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

    v13 = v23;
    *v10 = v22;
    v10[1] = v13;
    *&v9[qword_27D826510] = v4;
    *&v9[qword_27D826518] = v5;
    *&v9[qword_27D826520] = v12;
    *&v9[qword_27D826528] = v7;
    *&v9[qword_27D826530] = v18;
    v21.receiver = v9;
    v21.super_class = v8;
    v14 = v17;

    v15 = v12;

    v16 = objc_msgSendSuper2(&v21, sel_initWithCollectionViewLayout_, 0);
    [v16 setModalPresentationStyle_];
    sub_228274A00();

    [v16 setModalPresentationStyle_];
    [v20 showAdaptively:v16 sender:v19];

    sub_228390FE0();
  }

  return result;
}

uint64_t sub_22828BB74()
{
  sub_22828D988(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v70 = &v48 - v2;
  v66 = sub_228392770();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v53 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828DDA8(0, &unk_280DDBBE0, MEMORY[0x277CBCEC0]);
  v51 = v4;
  v52 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  sub_22824E8E4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E9B0(0);
  v54 = v12;
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828DC90(0, &qword_27D825DE0, sub_22824E9B0, sub_22828D9EC, MEMORY[0x277CBCCF0]);
  v15 = *(v14 - 8);
  v59 = v14;
  v60 = v15;
  MEMORY[0x28223BE20](v14);
  v50 = &v48 - v16;
  sub_22828DA20(0);
  v18 = *(v17 - 8);
  v61 = v17;
  v62 = v18;
  MEMORY[0x28223BE20](v17);
  v55 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828DBFC(0);
  v63 = v20;
  v67 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v58 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22828DC90(0, &qword_27D826A80, sub_22828DBFC, sub_22828DD74, MEMORY[0x277CBCD58]);
  v65 = v22;
  v68 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v57 = &v48 - v23;
  v71 = sub_2283906C0();
  v24 = MEMORY[0x277D77BE8];
  sub_22824EB00(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_2281A1218(0);
  sub_228279FA0(&qword_27D827D00, &qword_27D824108, v24);
  sub_2283919A0();

  v69 = v0;
  v25 = sub_22828AB18()[5];

  v72 = v25;

  sub_2281911EC();

  swift_beginAccess();
  sub_22828DDA8(0, &qword_280DDBBD0, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();

  sub_22824EB00(0, &qword_27D825DC8, sub_2281930F4);
  sub_22828DFF0(&qword_27D825DD0, sub_22824E8E4, MEMORY[0x277CBCB10]);
  sub_228279FA0(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4);
  sub_22824EB64();
  v26 = v49;
  v27 = v51;
  sub_2283919C0();
  (*(v52 + 8))(v6, v27);

  (*(v9 + 8))(v11, v8);
  v28 = v53;
  sub_228392750();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v29 = sub_228392790();
  v71 = v29;
  v30 = sub_228392730();
  v31 = *(v30 - 8);
  v51 = *(v31 + 56);
  v52 = v31 + 56;
  v32 = v70;
  v51(v70, 1, 1, v30);
  sub_22828D9EC();
  v48 = sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  v33 = v50;
  v34 = v54;
  sub_228391A80();
  sub_2281A16F0(v32);

  (*(v64 + 8))(v28, v66);
  (*(v56 + 8))(v26, v34);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_22828DDFC;
  *(v36 + 24) = v35;
  sub_2283917E0();
  v37 = MEMORY[0x277CBCD88];
  sub_22828DF5C(0, &qword_280DDBC90, MEMORY[0x277CBCD88]);
  sub_22828DB60();
  sub_22828E044(&qword_280DDBC98, &qword_280DDBC90, v37, MEMORY[0x277CBCD90]);
  v38 = v55;
  v39 = v59;
  sub_228391AF0();

  (*(v60 + 8))(v33, v39);
  v71 = 0;
  sub_22828DFF0(&qword_27D826A78, sub_22828DA20, MEMORY[0x277CBCCE0]);
  v40 = v58;
  v41 = v61;
  sub_2283919B0();
  (*(v62 + 8))(v38, v41);
  v42 = sub_228392790();
  v71 = v42;
  v43 = v70;
  v51(v70, 1, 1, v30);
  sub_22828DD74();
  v44 = v57;
  v45 = v63;
  sub_228391A70();
  sub_2281A16F0(v43);

  (*(v67 + 8))(v40, v45);
  swift_allocObject();
  swift_weakInit();
  sub_22828DE0C();
  v46 = v65;
  sub_228391AC0();

  (*(v68 + 8))(v44, v46);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22828C724(unint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v38 = a2;
  sub_22828DEA8(0);
  v7 = v6;
  v40 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v39 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22828D988(0, &qword_280DDBC58, sub_22828DB2C, MEMORY[0x277CBCE78]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v33[-v12];
  sub_22828DF5C(0, &unk_280DDB850, MEMORY[0x277CBCF38]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v33[-v17];
  if (a3)
  {
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        v41 = 0;
        sub_22828DB2C(0);
        goto LABEL_26;
      }

      v35 = v7;
      v37 = Strong;
      v21 = *(Strong + qword_280DDC1C8);
      v7 = &off_2785F4000;
      if (v21)
      {
        v36 = v21;
        v22 = [v36 firstOntologyCoding];
        if (!v22 || (v22, , v34 = sub_2283906B0(), , (v34 & 1) == 0))
        {
          v41 = 0;
          sub_22828DB2C(0);
          sub_2283918C0();
          sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
          sub_2283918A0();
          (*(v11 + 8))(v13, v10);
          sub_22828E044(&qword_27D826A98, &unk_280DDB850, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
          v31 = sub_228391990();

          goto LABEL_27;
        }
      }

      v15 = 0;
      v41 = MEMORY[0x277D84F90];
      v11 = a1 & 0xC000000000000001;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          v23 = MEMORY[0x22AAB6D80](v15, a1);
        }

        else
        {
          if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v23 = *(a1 + 8 * v15 + 32);
        }

        v18 = v23;
        v13 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v24 = [v23 firstOntologyCoding];
        if (v24)
        {

          sub_228393210();
          v16 = *(v41 + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        ++v15;
        if (v13 == i)
        {
          v25 = v41;
          v26 = swift_allocObject();
          v26[2] = v37;
          v26[3] = v25;
          v26[4] = v38;
          v27 = MEMORY[0x277CBCD88];
          sub_22828DF5C(0, &qword_280DDBC90, MEMORY[0x277CBCD88]);
          sub_22828E044(&qword_280DDBC98, &qword_280DDBC90, v27, MEMORY[0x277CBCD90]);

          v28 = v39;
          sub_228391900();
          sub_22828DFF0(&qword_280DDBC20, sub_22828DEA8, MEMORY[0x277CBCEB8]);
          v29 = v35;
          v30 = sub_228391990();
          (*(v40 + 8))(v28, v29);
          v41 = v30;
          v31 = sub_228391990();

          return v31;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }
  }

  v42 = 0;
  sub_22828DB2C(0);
LABEL_26:
  sub_2283918C0();
  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  sub_2283918A0();
  (*(v11 + 8))(v13, v10);
  sub_22828E044(&qword_27D826A98, &unk_280DDB850, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
  v31 = sub_228391990();
LABEL_27:
  (*(v16 + 8))(v18, v15);
  return v31;
}

uint64_t sub_22828CDB0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v7)
    {
      *(result + qword_27D826A48) = v7;
      swift_retain_n();

      sub_22838F910();

      v13 = sub_22838FCD0();

      sub_22828D988(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      sub_22838FEF0();
      v9 = swift_allocObject();
      v12 = xmmword_228397F40;
      *(v9 + 16) = xmmword_228397F40;
      sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
      v10 = swift_allocObject();
      *(v10 + 16) = v12;
      *(v10 + 56) = type metadata accessor for InteractionSummaryItem();
      *(v10 + 64) = sub_22828DFF0(&qword_27D824CE0, type metadata accessor for InteractionSummaryItem, &protocol conformance descriptor for InteractionSummaryItem);
      *(v10 + 32) = v7;

      sub_22838F490();
      sub_22838F450();
      (*(v4 + 8))(v6, v3);
      sub_22838FED0();
      sub_22838FF50();
    }

    else
    {
      v11 = result;

      sub_22838F910();

      sub_22838FCD0();

      sub_22838FF50();

      *(v11 + qword_27D826A48) = 0;
    }
  }

  return result;
}

uint64_t sub_22828D114(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_228390040();
  sub_228390000();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = sub_2283900C0();
  v9(v6, v2);
  return v10;
}

uint64_t InteractionSummaryDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_228392000() == a1 && v11 == a2)
  {
  }

  else
  {
    v13 = sub_228393460();

    if ((v13 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22828DFF0(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (*(v3 + qword_280DDC1C8))
  {
    v15 = 1;
  }

  else
  {
    v16 = sub_228390660();
    v17 = sub_2281BFC2C(v16);

    if (v17)
    {
      if (v17 >> 62)
      {
        v15 = sub_2283930D0();
      }

      else
      {
        v15 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v15 = 0;
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_228241A58(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98]);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D83B88];
  *(v18 + 16) = xmmword_228397F40;
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = v15;
  sub_22838F0C0();
  if (*(v18 + 16))
  {
    sub_228391FD0();
  }

  v24[0] = 0x74497265746F6F46;
  v24[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v21 = sub_22838F450();
  v23 = v22;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x22AAB5C80](v21, v23);

  a3[3] = sub_228390330();
  a3[4] = sub_22828DFF0(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

Swift::Void __swiftcall InteractionSummaryDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390340();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  type metadata accessor for InteractionSummaryItemCell();
  sub_22828DFF0(qword_280DDC3F0, type metadata accessor for InteractionSummaryItemCell, &protocol conformance descriptor for InteractionSummaryItemCell);
  sub_2283926B0();
}

uint64_t sub_22828D74C()
{
  sub_228390340();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  type metadata accessor for InteractionSummaryItemCell();
  sub_22828DFF0(qword_280DDC3F0, type metadata accessor for InteractionSummaryItemCell, &protocol conformance descriptor for InteractionSummaryItemCell);
  return sub_2283926B0();
}

uint64_t type metadata accessor for InteractionSummaryDataSource(uint64_t a1)
{
  result = qword_280DDC1A0;
  if (!qword_280DDC1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22828D988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22828DA20(uint64_t a1)
{
  if (!qword_27D826A68)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22828DF5C(255, &qword_280DDBC90, MEMORY[0x277CBCD88]);
    sub_22824EDEC(255);
    sub_22828E044(&qword_280DDBC98, &qword_280DDBC90, v1, MEMORY[0x277CBCD90]);
    sub_22828DFF0(&qword_27D825E20, sub_22824EDEC, MEMORY[0x277CBCBA0]);
    v2 = sub_228391780();
    if (!v3)
    {
      atomic_store(v2, &qword_27D826A68);
    }
  }
}

unint64_t sub_22828DB60()
{
  result = qword_27D825E10;
  if (!qword_27D825E10)
  {
    sub_22828DC90(255, &qword_27D825DE0, sub_22824E9B0, sub_22828D9EC, MEMORY[0x277CBCCF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825E10);
  }

  return result;
}

void sub_22828DBFC(uint64_t a1)
{
  if (!qword_27D826A70)
  {
    sub_22828DA20(255);
    sub_22828DFF0(&qword_27D826A78, sub_22828DA20, MEMORY[0x277CBCCE0]);
    v1 = sub_228391700();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826A70);
    }
  }
}

void sub_22828DC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = a3(255);
    v11[1] = sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    v11[2] = a4();
    v11[3] = sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22828DDA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22828DE0C()
{
  result = qword_27D826A90;
  if (!qword_27D826A90)
  {
    sub_22828DC90(255, &qword_27D826A80, sub_22828DBFC, sub_22828DD74, MEMORY[0x277CBCD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826A90);
  }

  return result;
}

void sub_22828DEA8(uint64_t a1)
{
  if (!qword_280DDBC18)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22828DF5C(255, &qword_280DDBC90, MEMORY[0x277CBCD88]);
    sub_22828E044(&qword_280DDBC98, &qword_280DDBC90, v1, MEMORY[0x277CBCD90]);
    v2 = sub_228391910();
    if (!v3)
    {
      atomic_store(v2, &qword_280DDBC18);
    }
  }
}

void sub_22828DF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22828DB2C(255);
    v7 = v6;
    v8 = sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22828DFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22828E044(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22828DF5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22828E0D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_22838F0C0();
  if (*(a9 + 16))
  {
    v10 = sub_228391FD0();

    return v10;
  }

  return result;
}

uint64_t LocalizationSource.table.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

HealthMedicationsUI::LocalizationSource __swiftcall LocalizationSource.init(bundle:table:)(NSBundle bundle, Swift::String table)
{
  *v2 = bundle;
  *(v2 + 8) = table;
  result.table = table;
  result.bundle = bundle;
  return result;
}

id sub_22828E190()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DDCED8;
  qword_280DDCF20 = qword_280DDCED8;
  *algn_280DDCF28 = 0xD00000000000001FLL;
  qword_280DDCF30 = 0x80000002283B0720;

  return v1;
}

uint64_t static LocalizationSource.healthMedicationsUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_280DDCF18 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_280DDCF20;
  v2 = *algn_280DDCF28;
  v3 = qword_280DDCF30;
  *a1 = qword_280DDCF20;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t sub_22828E298()
{
  sub_228190EB8();
  result = sub_228392C10();
  qword_27D826AA0 = result;
  *algn_27D826AA8 = 0xD000000000000014;
  qword_27D826AB0 = 0x80000002283B06D0;
  return result;
}

uint64_t static LocalizationSource.healthUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D823300 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27D826AA0;
  v2 = *algn_27D826AA8;
  v3 = qword_27D826AB0;
  *a1 = qword_27D826AA0;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t sub_22828E370()
{
  sub_228190EB8();
  result = sub_228392C20();
  qword_27D826AB8 = result;
  unk_27D826AC0 = 0xD00000000000001DLL;
  qword_27D826AC8 = 0x80000002283B06B0;
  return result;
}

uint64_t static LocalizationSource.wellnessDashboard.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D823308 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27D826AB8;
  v2 = unk_27D826AC0;
  v3 = qword_27D826AC8;
  *a1 = qword_27D826AB8;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_22828E448()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DDCED8;
  qword_27D826AD0 = qword_280DDCED8;
  *algn_27D826AD8 = 0xD000000000000029;
  qword_27D826AE0 = 0x80000002283B06F0;

  return v1;
}

uint64_t static LocalizationSource.healthMedicationsUI_Pregnancy.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D823310 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27D826AD0;
  v2 = *algn_27D826AD8;
  v3 = qword_27D826AE0;
  *a1 = qword_27D826AD0;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_22838F0C0();
  if (*(a8 + 16))
  {
    v10 = sub_228391FD0();

    return v10;
  }

  return result;
}

uint64_t type metadata accessor for MedicationSourceListNoneCell(uint64_t a1)
{
  result = qword_27D826AE8;
  if (!qword_27D826AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22828E674()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FC80();
  if (v19[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for MedicationSourceListNoneItem();
    if (swift_dynamicCast())
    {

      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v6 = sub_22838F0C0();
      v8 = v7;

      sub_22838FC90();
      v9 = sub_22838FCA0();
      v9(v6, v8, 0);
      sub_22828EE3C();

      return [v0 setUserInteractionEnabled_];
    }
  }

  else
  {
    sub_228181138(v19, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  }

  sub_228391190();
  v11 = sub_2283911A0();
  v12 = sub_2283925D0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    v19[0] = ObjectType;
    *v13 = 136446210;
    swift_getMetatypeMetadata();
    v15 = sub_228392020();
    v17 = sub_2281C96FC(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22816B000, v11, v12, "[%{public}s] item is not an MedicationSourceListNoneItem", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22828E9A0(uint64_t a1, unint64_t a2)
{
  sub_22838FC90();
  v4 = sub_22838FCA0();
  v4(a1, a2, 0);

  sub_22828EE3C();
}

uint64_t sub_22828EA30()
{
  sub_22828F110(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  sub_22838FC90();
  v6 = sub_22838FCA0();
  v7 = v6();
  MEMORY[0x22AAB6410](v7);
  v8 = sub_2283913A0();
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    sub_228205274(v5, v3);
    MEMORY[0x22AAB6420](v3);
    return sub_22828F164(v5, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  }

  else
  {
    v10 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    return MEMORY[0x22AAB6420](v5);
  }
}

id sub_22828EBC0(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_22828EC30(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_22828ECA8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22828ECE8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22828ED4C()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_22828ED80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

unint64_t sub_22828EDE8()
{
  result = qword_27D826AF8;
  if (!qword_27D826AF8)
  {
    type metadata accessor for MedicationSourceListNoneItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826AF8);
  }

  return result;
}

uint64_t sub_22828EE3C()
{
  sub_22828F110(0, &qword_27D826B00, MEMORY[0x277D74C38]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14[-1] - v1;
  v3 = sub_228391590();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x22AAB63F0](v14, v5);
  if (v15)
  {
    sub_2281810DC(0, &qword_27D826B10, MEMORY[0x277D74B78]);
    v8 = swift_dynamicCast();
    (*(v4 + 56))(v2, v8 ^ 1u, 1, v3);
    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      (*(v4 + 32))(v7, v2, v3);
      v9 = [objc_opt_self() secondaryLabelColor];
      v10 = sub_228391450();
      sub_228391420();
      v10(v14, 0);
      v15 = v3;
      v16 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
      (*(v4 + 16))(boxed_opaque_existential_1, v7, v3);
      MEMORY[0x22AAB6400](v14);
      return (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    sub_228181138(v14, &qword_27D826B08, &qword_27D826B10, MEMORY[0x277D74B78]);
    (*(v4 + 56))(v2, 1, 1, v3);
  }

  return sub_22828F164(v2, &qword_27D826B00, MEMORY[0x277D74C38]);
}

void sub_22828F110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22828F164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22828F110(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_22828F2D4()
{
  v1 = v0;
  v2 = [v0 object];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_2281A23C0();
    v3 = sub_228391FC0();

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v4 = sub_228391FC0();

    sub_22828F718();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_228397F30;
    *(v5 + 32) = sub_228392000();
    *(v5 + 40) = v6;
    *(v5 + 48) = 1702063940;
    *(v5 + 56) = 0xE400000000000000;
    v7 = sub_228392190();

    v8 = HKUIJoinStringsForAutomationIdentifier();

    [v0 addText:v3 detail:v4 baseIdentifier:{v8, 0xE000000000000000}];
    sub_2283928B0();
    if ((v9 & 1) == 0)
    {
      if (*&v0[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationDoseEventMetadataDetailSection_medication])
      {
        sub_22828F7BC();
        sub_228390AB0();
      }

      else
      {
        sub_22828F768();
        sub_228391F00();
      }

      v10 = sub_228391FC0();

      sub_22838F0C0();
      v11 = sub_228391FC0();

      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_228397F30;
      *(v12 + 32) = sub_228392000();
      *(v12 + 40) = v13;
      *(v12 + 48) = 0x67676F4C61746144;
      *(v12 + 56) = 0xEA00000000006465;
      v14 = sub_228392190();

      v15 = HKUIJoinStringsForAutomationIdentifier();

      [v1 &selRef:v10 hk:{v11, v15, 0xE000000000000000}chartBackgroundColor + 6];
    }
  }

  swift_unknownObjectRelease();
  v17.receiver = v1;
  v17.super_class = type metadata accessor for MedicationDoseEventMetadataDetailSection();
  return objc_msgSendSuper2(&v17, sel_addSampleDetailValues);
}

id sub_22828F6B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicationDoseEventMetadataDetailSection();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22828F718()
{
  if (!qword_27D823EE0)
  {
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823EE0);
    }
  }
}

unint64_t sub_22828F768()
{
  result = qword_27D826B20;
  if (!qword_27D826B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826B20);
  }

  return result;
}

unint64_t sub_22828F7BC()
{
  result = qword_280DDB9E0;
  if (!qword_280DDB9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB9E0);
  }

  return result;
}

uint64_t PauseUsePeriod.text.getter()
{
  v1 = *v0;
  if ((v0[1] & 1) == 0)
  {
    if (qword_280DDCF18 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  sub_2281BC044(0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_228397F40;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  sub_22838F0C0();
  if (*(v2 + 16))
  {
    sub_228391FD0();
  }

  v5 = sub_228391FD0();

  return v5;
}

uint64_t DisplayUnit.text.getter()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  return sub_22838F0C0();
}

uint64_t DisplayUnit.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

unint64_t sub_22828FBB8()
{
  result = qword_27D826B28;
  if (!qword_27D826B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826B28);
  }

  return result;
}

unint64_t sub_22828FC0C()
{
  result = qword_27D826B30;
  if (!qword_27D826B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826B30);
  }

  return result;
}

uint64_t sub_22828FC60()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  return sub_22838F0C0();
}

unint64_t sub_22828FD18()
{
  result = qword_27D826B38;
  if (!qword_27D826B38)
  {
    sub_22828FD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826B38);
  }

  return result;
}

void sub_22828FD70()
{
  if (!qword_27D826B40)
  {
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826B40);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PauseUsePeriod(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PauseUsePeriod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22828FEA4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v15 = MEMORY[0x277D84F90];
    v1 = 99;
    sub_2281CA154(0, 99, 0);
    v2 = 0;
    v3 = 1;
    result = v15;
    while (!v2)
    {
      v16 = result;
      v6 = *(result + 16);
      v5 = *(result + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2281CA154((v5 > 1), v6 + 1, 1);
        result = v16;
      }

      *(result + 16) = v6 + 1;
      v7 = result + 16 * v6;
      *(v7 + 32) = v3;
      *(v7 + 40) = 0;
      v2 = v3 == 99;
      if (v3 == 99)
      {
        v3 = 0;
      }

      else
      {
        v8 = __OFADD__(v3++, 1);
        if (v8)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      if (!--v1)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v9 = 99;
    sub_2281CA154(0, 99, 0);
    v10 = 0;
    result = v17;
    v11 = 1;
    while (!v10)
    {
      v18 = result;
      v13 = *(result + 16);
      v12 = *(result + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2281CA154((v12 > 1), v13 + 1, 1);
        result = v18;
      }

      *(result + 16) = v13 + 1;
      v14 = result + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = 1;
      v10 = v11 == 99;
      if (v11 == 99)
      {
        v11 = 0;
      }

      else
      {
        v8 = __OFADD__(v11++, 1);
        if (v8)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!--v9)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t OntologyShardStateObserver.__allocating_init(identifier:healthStore:settingsManager:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  OntologyShardStateObserver.init(identifier:healthStore:settingsManager:)(a1, a2, a3);
  return v6;
}

uint64_t OntologyShardStateObserver.$isImported.getter()
{
  swift_beginAccess();
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t OntologyShardStateObserver.shardState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t sub_228290194@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v4;
  return result;
}

uint64_t sub_228290214(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t OntologyShardStateObserver.$shardState.getter()
{
  swift_beginAccess();
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_228290320(void *a1)
{
  swift_beginAccess();
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_2282903BC(char *a1, uint64_t *a2)
{
  sub_228292D98(0, &qword_27D826BA8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(v5 + 16);
  v11(&v13 - v9, a1, v4);
  v11(v8, v10, v4);
  swift_beginAccess();
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v5 + 8))(v10, v4);
}

uint64_t OntologyShardStateObserver.isImported.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t sub_2282905F8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v4;
  return result;
}

uint64_t sub_228290678(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_2282906EC(void *a1)
{
  swift_beginAccess();
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_22829077C(char *a1, uint64_t *a2)
{
  v3 = MEMORY[0x277D839B0];
  sub_228292DFC(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *(v6 + 16);
  v12(&v14 - v10, a1, v5);
  v12(v9, v11, v5);
  swift_beginAccess();
  sub_228292DFC(0, &qword_280DDBBD0, v3, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v6 + 8))(v11, v5);
}

id OntologyShardStateObserver.identifier.getter()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_identifier;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

char *OntologyShardStateObserver.init(identifier:healthStore:settingsManager:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v34 = *v4;
  v7 = sub_2283911B0();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__shardState;
  v39 = 0;
  type metadata accessor for HKOntologyShardState(0);
  sub_228391920();
  (*(v16 + 32))(&v4[v19], v18, v15);
  v20 = a2;
  v21 = v37;
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__isImported;
  LOBYTE(v39) = 0;
  sub_228391920();
  (*(v11 + 32))(&v4[v22], v13, v10);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_identifier] = a1;
  v23 = objc_allocWithZone(MEMORY[0x277D10388]);
  v24 = a1;
  v25 = [v23 initWithHealthStore_];
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_ontologyStore] = v25;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_settingsManager] = v21;

  if (sub_228390740())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v39) = 1;

    sub_228391970();
    sub_228391150();
    v26 = sub_2283911A0();
    v27 = sub_2283925E0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v29;
      *v28 = 136446210;
      v30 = sub_228393600();
      v32 = sub_2281C96FC(v30, v31, &v39);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_22816B000, v26, v27, "[%{public}s] Shard check override enabled. Skipping registering for shard updates", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAB7B80](v29, -1, -1);
      MEMORY[0x22AAB7B80](v28, -1, -1);
    }

    else
    {
    }

    (*(v35 + 8))(v38, v36);
  }

  else
  {
    sub_228290E20();
    sub_22829103C();
  }

  return v4;
}

void sub_228290E20()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v6 = sub_2283911A0();
  v7 = sub_2283925E0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_228393600();
    v12 = sub_2281C96FC(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_22816B000, v6, v7, "[%{public}s] Registering for shard updates.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAB7B80](v9, -1, -1);
    MEMORY[0x22AAB7B80](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_ontologyStore);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v14 = sub_228392790();
  [v13 registerObserver:v1 queue:v14];
}

void sub_22829103C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v7 = sub_2283911A0();
  v8 = sub_2283925E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    v11 = sub_228393600();
    v19 = v3;
    v13 = sub_2281C96FC(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22816B000, v7, v8, "[%{public}s] Querying for ontology shard registry entries.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    (*(v4 + 8))(v6, v19);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v14 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_ontologyStore);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v2;
  aBlock[4] = sub_228292EC8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2282919C8;
  aBlock[3] = &block_descriptor_24;
  v17 = _Block_copy(aBlock);

  [v14 ontologyShardRegistryEntriesWithCompletion_];
  _Block_release(v17);
}

uint64_t sub_2282912FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v36 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v14 = a2;
      sub_228391150();
      v15 = a2;
      v16 = sub_2283911A0();
      v17 = sub_2283925C0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v36[0] = swift_slowAlloc();
        v37 = v36[0];
        *v18 = 136446466;
        v19 = sub_228393600();
        v21 = v7;
        v22 = sub_2281C96FC(v19, v20, &v37);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2082;
        v36[1] = a2;
        v23 = a2;
        sub_228192C1C();
        v24 = sub_228392020();
        v26 = sub_2281C96FC(v24, v25, &v37);

        *(v18 + 14) = v26;
        _os_log_impl(&dword_22816B000, v16, v17, "[%{public}s] Failed to get ontology shard registry entries, error: %{public}s", v18, 0x16u);
        v27 = v36[0];
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v27, -1, -1);
        MEMORY[0x22AAB7B80](v18, -1, -1);

        (*(v21 + 8))(v12, v6);
      }

      else
      {

        (*(v7 + 8))(v12, v6);
      }

      sub_2282916B8(MEMORY[0x277D84F90]);
    }

    else
    {
      if (a1)
      {
        v28 = a1;
      }

      else
      {
        sub_228391150();
        v29 = sub_2283911A0();
        v30 = sub_2283925C0();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v37 = v32;
          *v31 = 136446210;
          v33 = sub_228393600();
          v35 = sub_2281C96FC(v33, v34, &v37);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_22816B000, v29, v30, "[%{public}s] Failed to get ontology shard registry entries, entries were unexpectedly nil.", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x22AAB7B80](v32, -1, -1);
          MEMORY[0x22AAB7B80](v31, -1, -1);
        }

        (*(v7 + 8))(v10, v6);
        v28 = MEMORY[0x277D84F90];
      }

      sub_2282916B8(v28);
    }
  }

  return result;
}

uint64_t sub_2282916B8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_228391DC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_228391DF0();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v11 = sub_228392790();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = v3;
  aBlock[4] = sub_228292E4C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228292E70();
  sub_228292D98(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v10, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_2282919C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_22817A958(0, &qword_27D826BB0, 0x277CCD760);
    v4 = sub_2283921A0();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_228291A6C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver_identifier;
  swift_beginAccess();
  v75 = HKOntologyShardSchemaTypeForShardIdentifier();
  v77 = v14;
  v15 = HKCurrentSchemaVersionForShardIdentifier();
  v73 = v5;
  v74 = v15;
  v78 = a2;
  v71 = v9;
  v72 = v6;
  v69 = v11;
  v70 = a3;
  if (a2 >> 62)
  {
LABEL_30:
    v16 = sub_2283930D0();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_31:
    v57 = v71;
    sub_228391150();

    v58 = sub_2283911A0();
    v59 = sub_2283925C0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v79 = v61;
      *v60 = 136446466;
      v62 = sub_228393600();
      v64 = sub_2281C96FC(v62, v63, &v79);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2082;
      v65 = sub_228392000();
      v67 = sub_2281C96FC(v65, v66, &v79);

      *(v60 + 14) = v67;
      _os_log_impl(&dword_22816B000, v58, v59, "[%{public}s] Failed to find %{public}s shard in registry entries.", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v61, -1, -1);
      MEMORY[0x22AAB7B80](v60, -1, -1);
    }

    else
    {
    }

    (*(v72 + 8))(v57, v73);
    return;
  }

  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_31;
  }

LABEL_4:
  v17 = 0;
  v76 = v78 & 0xC000000000000001;
  v18 = v78 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v76)
    {
      v20 = MEMORY[0x22AAB6D80](v17, v78);
    }

    else
    {
      if (v17 >= *(v18 + 16))
      {
        goto LABEL_29;
      }

      v20 = *(v78 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v23 = [v20 identifier];
    v24 = v13;
    v25 = sub_228392000();
    v27 = v26;
    if (v25 == sub_228392000() && v27 == v28)
    {
    }

    else
    {
      v30 = sub_228393460();

      if ((v30 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v31 = [v21 schemaType];
    v32 = sub_228392000();
    v34 = v33;
    if (v32 == sub_228392000() && v34 == v35)
    {
    }

    else
    {
      v36 = sub_228393460();

      if ((v36 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v19 = [v21 schemaVersion];
    if (v19 == v74)
    {
      break;
    }

LABEL_7:

    ++v17;
    v13 = v24;
    if (v22 == v16)
    {
      goto LABEL_31;
    }
  }

  v37 = [v21 currentVersion];
  v38 = v69;
  sub_228391150();

  v39 = v21;
  v40 = sub_2283911A0();
  v41 = sub_2283925E0();

  v42 = &selRef_localizedStringFromTimeInterval_;
  if (os_log_type_enabled(v40, v41))
  {
    LODWORD(v78) = v37 > 0;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v79 = v44;
    *v43 = 136446978;
    v45 = sub_228393600();
    v47 = sub_2281C96FC(v45, v46, &v79);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    v48 = sub_228392000();
    v50 = sub_2281C96FC(v48, v49, &v79);

    *(v43 + 14) = v50;
    *(v43 + 22) = 2082;
    [v39 availableState];
    v51 = HKStringFromOntologyShardState();
    v52 = sub_228392000();
    v54 = v53;

    v55 = sub_2281C96FC(v52, v54, &v79);
    v42 = &selRef_localizedStringFromTimeInterval_;

    *(v43 + 24) = v55;
    *(v43 + 32) = 1026;
    *(v43 + 34) = v78;
    _os_log_impl(&dword_22816B000, v40, v41, "[%{public}s] Current %{public}s availability state: %{public}s isImported: %{BOOL,public}d", v43, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v44, -1, -1);
    MEMORY[0x22AAB7B80](v43, -1, -1);

    (*(v72 + 8))(v69, v73);
  }

  else
  {

    (*(v72 + 8))(v38, v73);
  }

  v56 = [v39 v42[17]];
  swift_getKeyPath();
  swift_getKeyPath();
  v79 = v56;

  sub_228391970();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v79) = v37 > 0;
  sub_228391970();
}

uint64_t OntologyShardStateObserver.deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__shardState;
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__isImported;
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t OntologyShardStateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__shardState;
  sub_228292D98(0, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26OntologyShardStateObserver__isImported;
  sub_228292DFC(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_228292460(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a4;

  a5(v8);
}

uint64_t sub_22829252C(void *a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v6 = a1;
  v7 = sub_2283911A0();
  v8 = sub_2283925E0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136446467;
    v13 = sub_228393600();
    v15 = sub_2281C96FC(v13, v14, &v19);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2117;
    *(v10 + 14) = v6;
    *v11 = v6;
    v16 = v6;
    _os_log_impl(&dword_22816B000, v7, v8, "[%{public}s] Did stage registry entry: %{sensitive}@", v10, 0x16u);
    sub_228193354(v11);
    MEMORY[0x22AAB7B80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAB7B80](v12, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_22829275C(void *a1)
{
  v2 = v1;
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v8 = a1;
  v9 = sub_2283911A0();
  v10 = sub_2283925E0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136446467;
    v15 = sub_228393600();
    v17 = sub_2281C96FC(v15, v16, &v26);
    v24 = v4;
    v18 = v17;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2117;
    *(v12 + 14) = v8;
    *v13 = v8;
    v19 = v8;
    _os_log_impl(&dword_22816B000, v9, v10, "[%{public}s] Did import registry entry: %{sensitive}@", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_228292DFC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_228396260;
  *(v20 + 32) = v8;
  v21 = v8;
  sub_2282916B8(v20);
}

void _s19HealthMedicationsUI26OntologyShardStateObserverC13ontologyStore12didReconnectySo010HKOntologyI0C_tF_0()
{
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v4 = sub_2283911A0();
  v5 = sub_2283925E0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_228393600();
    v10 = sub_2281C96FC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s] did reconnect to healthd", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAB7B80](v7, -1, -1);
    MEMORY[0x22AAB7B80](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_22829103C();
}

uint64_t type metadata accessor for OntologyShardStateObserver(uint64_t a1)
{
  result = qword_280DDC2D0;
  if (!qword_280DDC2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228292C2C(uint64_t a1)
{
  sub_228292D98(319, &qword_280DDBBC8, type metadata accessor for HKOntologyShardState, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_228292DFC(319, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_228292D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228292DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_228292E70()
{
  result = qword_280DDCF10;
  if (!qword_280DDCF10)
  {
    sub_228391DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCF10);
  }

  return result;
}

uint64_t type metadata accessor for NicknameAndNotesDataSource(uint64_t a1)
{
  result = qword_27D826BD0;
  if (!qword_27D826BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228292F84(uint64_t a1, __int128 *a2)
{
  v5 = sub_22838F4A0();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_27D826BC0) = *MEMORY[0x277D11408];
  *(v2 + qword_27D826BC8) = *MEMORY[0x277D11410];
  *(v2 + qword_27D826BB8) = a1;

  if (sub_228294620(a2))
  {
    v17[0] = v7;
    v17[1] = v2;
    v18 = a2;
    v19 = a1;
    sub_228294EB8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    sub_22838FEF0();
    *(swift_allocObject() + 16) = xmmword_228397F30;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_22838FED0();
    sub_22838F0C0();
    sub_22838FED0();
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_2283931D0();

    strcpy(v22, "MutableArray<");
    HIWORD(v22[1]) = -4864;
    v8 = v17[0];
    sub_22838F490();
    v9 = sub_22838F450();
    v11 = v10;
    (*(v20 + 8))(v8, v21);
    MEMORY[0x22AAB5C80](v9, v11);

    MEMORY[0x22AAB5C80](62, 0xE100000000000000);
    v12 = sub_22838FF30();

    sub_22829359C();
    sub_22838FF60();
    a2 = v18;
  }

  else
  {
    sub_228294EB8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    sub_22838FEF0();
    *(swift_allocObject() + 16) = xmmword_228397F40;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_22838FED0();
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_2283931D0();

    strcpy(v22, "MutableArray<");
    HIWORD(v22[1]) = -4864;
    sub_22838F490();
    v13 = sub_22838F450();
    v15 = v14;
    (*(v20 + 8))(v7, v21);
    MEMORY[0x22AAB5C80](v13, v15);

    MEMORY[0x22AAB5C80](62, 0xE100000000000000);
    v12 = sub_22838FF30();

    sub_22829359C();
    sub_22838FF60();
  }

  sub_2282951AC(a2, &unk_27D826BF0, &type metadata for TransientSchedule, MEMORY[0x277D83D88], sub_228295034);

  return v12;
}

uint64_t sub_22829359C()
{
  v1 = v0;
  v54 = type metadata accessor for TextViewItem(0);
  MEMORY[0x28223BE20](v54);
  v55 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FieldItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v0 + qword_27D826BB8);
  sub_228391870();
  v6 = v57;
  if (v57 == 1 || (v8 = v58, v7 = v59, v9 = v56, , sub_228294FEC(v9, v6, v8, v7), !v6))
  {

    v9 = 0;
    v6 = 0xE000000000000000;
  }

  v48 = v9;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v49 = qword_280DDCF30;
  v50 = *algn_280DDCF28;
  v51 = qword_280DDCF20;
  v10 = sub_22838F0C0();
  v45 = v11;
  v46 = v10;
  v47 = *(v1 + qword_27D826BC0);
  v12 = swift_allocObject();
  v53 = v1;
  swift_weakInit();
  sub_22838F490();
  v13 = &v5[v3[5]];
  v14 = &v5[v3[6]];
  v15 = &v5[v3[10]];
  v16 = &v5[v3[14]];
  v17 = &v5[v3[15]];
  type metadata accessor for FieldCell();
  sub_2282945D8(&qword_27D828780, type metadata accessor for FieldCell, &unk_2283A6C1C);
  *v17 = sub_22838FBB0();
  v17[1] = v18;
  *v13 = v48;
  *(v13 + 1) = v6;
  v19 = v45;
  *v14 = v46;
  *(v14 + 1) = v19;
  *&v5[v3[7]] = 0x404A000000000000;
  *v15 = v47;
  v15[8] = 0;
  v5[v3[9]] = 0;
  v5[v3[8]] = 1;
  *&v5[v3[12]] = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  v20 = &v5[v3[13]];
  *v20 = sub_228294F1C;
  v20[1] = v12;
  v5[v3[11]] = 0;
  sub_228391870();
  v21 = v57;
  if (v57 == 1)
  {
    v52 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v24 = v58;
    v23 = v59;
    v25 = v56;

    sub_228294FEC(v25, v21, v24, v23);
    if (v23)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v52 = v26;
    v22 = 0xE000000000000000;
    if (v23)
    {
      v22 = v23;
    }
  }

  v48 = v22;
  v27 = sub_22838F0C0();
  v50 = v28;
  v51 = v27;
  v49 = *(v53 + qword_27D826BC8);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v55;
  sub_22838F490();
  v31 = v54;
  v32 = (v30 + v54[5]);
  v33 = (v30 + v54[6]);
  v34 = v30 + v54[7];
  v35 = (v30 + v54[11]);
  type metadata accessor for TextItemCell();
  sub_2282945D8(&qword_27D826280, type metadata accessor for TextItemCell, &unk_22839F838);
  *v35 = sub_22838FBB0();
  v35[1] = v36;
  v37 = v48;
  *v32 = v52;
  v32[1] = v37;
  *(v30 + v31[8]) = 0x4064800000000000;
  v38 = v50;
  *v33 = v51;
  v33[1] = v38;
  *v34 = v49;
  *(v34 + 8) = 0;
  *(v30 + v31[9]) = 1;
  v39 = (v30 + v31[10]);
  *v39 = sub_228294F24;
  v39[1] = v29;
  sub_228294EB8(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_228397F30;
  *(v40 + 56) = v3;
  *(v40 + 64) = sub_2282945D8(&unk_27D828790, type metadata accessor for FieldItem, &protocol conformance descriptor for FieldItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v40 + 32));
  sub_228294F2C(v5, boxed_opaque_existential_1);
  *(v40 + 96) = v31;
  *(v40 + 104) = sub_2282945D8(&unk_27D826290, type metadata accessor for TextViewItem, &protocol conformance descriptor for TextViewItem);
  v42 = __swift_allocate_boxed_opaque_existential_1((v40 + 72));
  sub_22826D724(v30, v42);
  sub_228294F90(v5);
  return v40;
}

uint64_t sub_228293B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391870();
    if (v13 == 1)
    {
      sub_228391870();
      if (v10 == 1)
      {
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = v11;
        v8 = v12;

        sub_228294FEC(v9, v10, v11, v12);
      }
    }

    else
    {
      v7 = v14;
      v8 = v15;
    }

    sub_228391850();
    sub_228294FEC(a2, a3, v7, v8);
  }

  return result;
}

uint64_t sub_228293C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391870();
    v7 = v14;
    if (v14 == 1)
    {
      sub_228391870();
      v7 = v10;
      if (v10 == 1)
      {
        v8 = 0;
        v7 = 0;
      }

      else
      {
        v8 = v9;

        sub_228294FEC(v9, v10, v11, v12);
      }
    }

    else
    {
      v8 = v13;
    }

    sub_228391850();
    sub_228294FEC(v8, v7, a2, a3);
  }

  return result;
}

unint64_t sub_228293DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_228294EB8(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_22838FEF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_228392000() == a1 && v13 == a2)
  {

LABEL_8:
    v16 = sub_22838FF40();
    result = sub_22838F750();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v16 + 16))
    {
      (*(v10 + 16))(v12, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * result, v9);

      sub_22838FEE0();
      v19 = v18;
      (*(v10 + 8))(v12, v9);
      if (v19)
      {
        v20 = sub_228390130();
        (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
        a3[3] = sub_228390150();
        a3[4] = sub_2282945D8(&qword_27D824EC8, MEMORY[0x277D10FE8], MEMORY[0x277D10FD8]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        return sub_228390140();
      }

      goto LABEL_12;
    }

    __break(1u);
    return result;
  }

  v15 = sub_228393460();

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_12:
  a3[3] = sub_22838FC00();
  a3[4] = sub_2282945D8(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_22838FBF0();
}

uint64_t sub_2282940F8(unint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22838FD40();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v8 = result + 16 * a1;
    v10 = *(v8 + 32);
    v9 = *(v8 + 40);

    if (v10 == 0x656C756465686373 && v9 == 0xEF6E6F6974636553)
    {
    }

    else
    {
      v12 = sub_228393460();

      if ((v12 & 1) == 0)
      {
        sub_228390010();
        sub_228390070();
LABEL_11:
        v13 = sub_2283900C0();
        (*(v4 + 8))(v6, v3);
        return v13;
      }
    }

    sub_228390010();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_22829430C()
{
  sub_22838FFB0();

  return swift_deallocClassInstance();
}

uint64_t sub_228294364()
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for FieldCell();
  sub_2282945D8(&qword_27D828780, type metadata accessor for FieldCell, &unk_2283A6C1C);
  sub_2283926B0();
  type metadata accessor for TextItemCell();
  sub_2282945D8(&qword_27D826280, type metadata accessor for TextItemCell, &unk_22839F838);
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for ScheduleIntervalCell();
  sub_2282945D8(&qword_27D8244F0, type metadata accessor for ScheduleIntervalCell, &unk_2283A26C0);
  return sub_2283926B0();
}

uint64_t sub_2282945D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_228294620(__int128 *a1)
{
  v56 = sub_22838FEF0();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228295034(0, &qword_27D8245C0, MEMORY[0x277D839B0], MEMORY[0x277CBCE78]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - v7;
  v9 = sub_228390EC0();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = *(a1 + 5);
  if (!v10)
  {
    return 0;
  }

  v48 = v8;
  v49 = v6;
  v50 = v5;
  v11 = *(a1 + 4);
  v12 = a1[1];
  v59 = *a1;
  v60 = v12;
  v61[0] = v11;
  sub_228390890();
  v13 = v10;
  sub_228295084(a1, v58, &unk_27D826BF0, &type metadata for TransientSchedule, MEMORY[0x277D83D88], sub_228295034);
  sub_228295084(v61, v58, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, sub_2281BC2E4);
  sub_228390880();
  v14 = sub_228390830();

  sub_228391020();
  swift_allocObject();
  v15 = sub_228390FF0();
  v53 = type metadata accessor for ScheduleDataSource(0);
  v16 = swift_allocObject();
  v58[3] = &type metadata for TransientSchedule;
  v58[4] = sub_2282950F8();
  v17 = swift_allocObject();
  v58[0] = v17;
  v18 = v60;
  *(v17 + 16) = v59;
  *(v17 + 32) = v18;
  *(v17 + 48) = v11;
  *(v17 + 56) = v13;
  v19 = (v16 + qword_27D8244C0);
  *v19 = 0xD000000000000014;
  v19[1] = 0x80000002283A9440;
  v20 = qword_27D8244C8;
  v21 = v13;
  sub_228295084(v61, v57, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, sub_2281BC2E4);
  sub_228390EB0();
  v22 = objc_allocWithZone(sub_228390EF0());
  *(v16 + v20) = sub_228390EE0();
  v23 = qword_27D8244D0;
  *(v16 + qword_27D8244D0) = 0;
  v24 = qword_27D8244E0;
  *(v16 + qword_27D8244E0) = 0;
  *(v16 + qword_27D8244E8) = MEMORY[0x277D84FA0];
  sub_228180FB0(v58, v16 + qword_27D8244B0);
  *(v16 + v23) = v14;
  *(v16 + qword_27D8244D8) = v15;
  v57[0] = v10;
  sub_2281BC72C(0);
  swift_allocObject();
  v25 = v21;
  v52 = v14;

  *(v16 + qword_27D8244B8) = sub_228391890();
  *(v16 + qword_27D8244A8) = 1;
  *(v16 + v24) = 0;

  sub_228294EB8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v54 = *(v2 + 72);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v51 = v26;
  sub_22838FED0();
  v27 = *(sub_22838F920() + qword_27D8244E0);
  if (v27)
  {

    v28 = v27;
  }

  else
  {
    LOBYTE(v57[0]) = 1;

    v30 = v48;
    sub_2283918C0();
    sub_2281ED0F4();
    v31 = v50;
    v28 = sub_228391990();
    (*(v49 + 8))(v30, v31);
  }

  v57[0] = v28;
  swift_allocObject();
  swift_weakInit();
  sub_22829514C();
  sub_2282945D8(&qword_27D8245D8, sub_22829514C, MEMORY[0x277CBCD90]);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  sub_2281AFAAC();
  sub_2282951AC(v61, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, sub_2281BC2E4);

  __swift_destroy_boxed_opaque_existential_0(v58);
  sub_2282945D8(&qword_27D826C00, type metadata accessor for ScheduleDataSource, MEMORY[0x277D12500]);
  v32 = sub_22838FD20();

  v33 = v32[2];
  if (!v33)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_25:
    sub_2282951AC(v61, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, sub_2281BC2E4);

    return v29;
  }

  v52 = v32;
  v53 = v25;
  v34 = v32 + v51;
  v35 = *(v2 + 16);
  v36 = (v2 + 8);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    v39 = v55;
    v38 = v56;
    v35(v55, v34, v56);
    v40 = sub_22838FEC0();
    result = (*v36)(v39, v38);
    v41 = *(v40 + 16);
    v42 = v29[2];
    v43 = v42 + v41;
    if (__OFADD__(v42, v41))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v43 <= v29[3] >> 1)
    {
      if (*(v40 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v42 <= v43)
      {
        v44 = v42 + v41;
      }

      else
      {
        v44 = v42;
      }

      result = sub_22819872C(result, v44, 1, v29);
      v29 = result;
      if (*(v40 + 16))
      {
LABEL_19:
        if ((v29[3] >> 1) - v29[2] < v41)
        {
          goto LABEL_29;
        }

        sub_228182780();
        swift_arrayInitWithCopy();

        if (v41)
        {
          v45 = v29[2];
          v46 = __OFADD__(v45, v41);
          v47 = v45 + v41;
          if (v46)
          {
            goto LABEL_30;
          }

          v29[2] = v47;
        }

        goto LABEL_9;
      }
    }

    if (v41)
    {
      goto LABEL_28;
    }

LABEL_9:
    v34 += v54;
    if (!--v33)
    {

      v25 = v53;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_228294EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228294F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FieldItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228294F90(uint64_t a1)
{
  v2 = type metadata accessor for FieldItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228294FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_228295034(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_228295084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2282950F8()
{
  result = qword_27D826BF8;
  if (!qword_27D826BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826BF8);
  }

  return result;
}

void sub_22829514C()
{
  if (!qword_27D8245D0)
  {
    v0 = sub_2283917F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8245D0);
    }
  }
}

uint64_t sub_2282951AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_22829520C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27D826C08);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_228295278()
{
  v1 = (v0 + qword_27D826C08);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2282952D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D826C08);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t FrequencyPickerDataSource.__allocating_init(frequencyPublisher:frequencyIntervalPublisher:cycleUnitPublisher:context:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v9 = (v8 + qword_27D826C08);
  v17 = sub_228392000();
  v18 = v10;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);
  v15 = a4[1];
  v16 = *a4;

  *v9 = v17;
  v9[1] = v18;
  *(v8 + qword_27D826C10) = 0;
  *(v8 + qword_27D826C18) = a1;
  *(v8 + qword_27D826C20) = a2;
  *(v8 + qword_27D826C28) = a3;
  v11 = (v8 + qword_27D826C30);
  *v11 = v16;
  v11[1] = v15;

  v12 = sub_228390380();

  v13 = sub_228296ABC();
  sub_228194894(v13);

  sub_22838FF60();

  sub_228296E9C();
  sub_2282957D8();

  return v12;
}

uint64_t FrequencyPickerDataSource.init(frequencyPublisher:frequencyIntervalPublisher:cycleUnitPublisher:context:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = (v4 + qword_27D826C08);
  v17 = sub_228392000();
  v18 = v10;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);
  v15 = a4[1];
  v16 = *a4;

  *v9 = v17;
  v9[1] = v18;
  *(v4 + qword_27D826C10) = 0;
  *(v4 + qword_27D826C18) = a1;
  *(v4 + qword_27D826C20) = a2;
  *(v4 + qword_27D826C28) = a3;
  v11 = (v4 + qword_27D826C30);
  *v11 = v16;
  v11[1] = v15;

  v12 = sub_228390380();

  v13 = sub_228296ABC();
  sub_228194894(v13);

  sub_22838FF60();

  sub_228296E9C();
  sub_2282957D8();

  return v12;
}

void *sub_2282956E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  [v6 contentInsets];
  [v6 setContentInsets_];
  return v6;
}

uint64_t sub_2282957D8()
{
  v1 = v0;
  sub_228297B20(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_228297B74(0);
  v15 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + qword_27D826C18);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v9 = sub_228392790();
  v16 = v9;
  v10 = sub_228392730();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_228297C40(0);
  sub_2282976E0(&qword_27D825868, sub_228297C40, MEMORY[0x277CBCE48]);
  sub_2281A1504();
  sub_228391A70();
  sub_2281A16F0(v4);

  swift_allocObject();
  swift_weakInit();
  sub_2282976E0(&qword_27D826CA0, sub_228297B74, MEMORY[0x277CBCD60]);
  v11 = v15;
  v12 = sub_228391AC0();

  (*(v6 + 8))(v8, v11);
  *(v1 + qword_27D826C10) = v12;
}

uint64_t sub_228295AB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228296E9C();
  }

  return result;
}

uint64_t sub_228295B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v30 = *v1;
  v3 = sub_228390460();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228297B20(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v31 = sub_22838FFC0();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_228391590();
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391870();
  sub_2281F8E98(v40);
  sub_228391580();
  v13 = [objc_opt_self() linkColor];
  v14 = sub_2283914A0();
  sub_228391420();
  v14(&v40, 0);
  sub_228391540();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_2283913D0();
  v15 = sub_2283914C0();
  *v16 = *v16 + 4.0;
  v15(&v40, 0);
  v17 = sub_2283914C0();
  *(v18 + 16) = *(v18 + 16) + 4.0;
  v17(&v40, 0);
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_2283931D0();
  v19 = sub_228393600();
  v21 = v20;

  v40 = v19;
  v41 = v21;
  MEMORY[0x22AAB5C80](0xD000000000000010, 0x80000002283B0DF0);
  v30 = v40;
  v22 = v32;
  v42 = v32;
  v43 = MEMORY[0x277D74C30];
  v23 = __swift_allocate_boxed_opaque_existential_1(&v40);
  (*(v10 + 16))(v23, v12, v22);
  swift_allocObject();
  swift_weakInit();
  v24 = v33;
  *v33 = 1;
  (*(v8 + 104))(v24, *MEMORY[0x277D10F90], v31);

  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v25 = sub_2283913A0();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  v26 = (v2 + qword_27D826C08);
  swift_beginAccess();
  v27 = v26[1];
  v38 = *v26;
  v39 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283B0E10);
  (*(v35 + 104))(v34, *MEMORY[0x277D11140], v36);
  sub_228390160();
  (*(v10 + 8))(v12, v22);
}

void sub_228296108(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_27D826C18);
    v5 = *(Strong + qword_27D826C30 + 8);
    v6 = *(Strong + qword_27D826C30 + 16);
    v7 = *(Strong + qword_27D826C30 + 24);
    v10[0] = *(Strong + qword_27D826C30);
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    objc_allocWithZone(type metadata accessor for ScheduleTypePickerViewController(0));

    sub_228267888(v10[0], v5, v6, v7);
    v8 = sub_228267B30(v4, v10);
    v9 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
    [v9 setModalPresentationStyle_];
    [v9 setModalInPresentation_];
    [a1 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_228296248@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22838F4A0();
  MEMORY[0x28223BE20](v2 - 8);
  sub_228297B20(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v10[1] = sub_22830F9DC();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v6 = sub_2283913A0();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_22838F490();
  v7 = MEMORY[0x277D10E20];
  sub_228297AB0(0, &qword_27D826C88, sub_228297728, &type metadata for FrequencyInterval, MEMORY[0x277D10E20]);
  a1[3] = v8;
  a1[4] = sub_22829777C(&qword_27D826C90, &qword_27D826C88, v7, MEMORY[0x277D10E28]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_228297728();
  return sub_22838FB70();
}

uint64_t sub_228296568@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391870();
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  return result;
}

uint64_t sub_2282965E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391850();
  }

  return result;
}

uint64_t sub_228296664@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22838F4A0();
  MEMORY[0x28223BE20](v2 - 8);
  sub_228297B20(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v6 = sub_2283913A0();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_22838F490();
  v7 = MEMORY[0x277D10E20];
  sub_228297AB0(0, &qword_27D826C78, sub_2282977E0, &type metadata for DisplayUnit, MEMORY[0x277D10E20]);
  a1[3] = v8;
  a1[4] = sub_228297A3C(&qword_27D826C80, &qword_27D826C78, v7, MEMORY[0x277D10E28]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2282977E0();
  return sub_22838FB70();
}

uint64_t sub_228296974@<X0>(_BYTE *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391870();
  }

  else
  {
    *a2 = 2;
  }

  return result;
}

uint64_t sub_2282969EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391850();
  }

  if (v3 != 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_228391850();
    }
  }

  return result;
}

void *sub_228296ABC()
{
  v0 = sub_228390170();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228295B0C(v3);
  v4 = sub_228198710(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_228198710((v5 > 1), v6 + 1, 1, v4);
  }

  v26 = v0;
  v27 = sub_2282976E0(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  v4[2] = v6 + 1;
  sub_22816DFFC(&v25, &v4[5 * v6 + 4]);
  (*(v1 + 8))(v3, v0);
  sub_228391870();
  if (v25 == 1)
  {
    sub_228296248(&v25);
    v28 = v4;
    v9 = v4[2];
    v8 = v4[3];
    if (v9 >= v8 >> 1)
    {
      v4 = sub_228198710((v8 > 1), v9 + 1, 1, v4);
      v28 = v4;
    }

    v10 = v26;
    v11 = v27;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
    MEMORY[0x28223BE20](v12);
    v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    sub_228199BA4(v9, v14, &v28, v10, v11);
    __swift_destroy_boxed_opaque_existential_0(&v25);
  }

  sub_228391870();
  if ((v25 - 7) <= 1)
  {
    sub_228296664(&v25);
    v28 = v4;
    v17 = v4[2];
    v16 = v4[3];
    if (v17 >= v16 >> 1)
    {
      v4 = sub_228198710((v16 > 1), v17 + 1, 1, v4);
      v28 = v4;
    }

    v18 = v26;
    v19 = v27;
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
    MEMORY[0x28223BE20](v20);
    v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    sub_228199BA4(v17, v22, &v28, v18, v19);
    __swift_destroy_boxed_opaque_existential_0(&v25);
  }

  return v4;
}

void *sub_228296E9C()
{
  v0 = sub_228296ABC();
  sub_228194894(v0);

  sub_22838FF60();

  result = sub_228391870();
  if (v2 == 1)
  {
    result = sub_228391870();
    if (v3 == 1)
    {
      return sub_228391850();
    }
  }

  return result;
}

uint64_t sub_228296FD0()
{

  sub_228267618(*(v0 + qword_27D826C30), *(v0 + qword_27D826C30 + 8), *(v0 + qword_27D826C30 + 16), *(v0 + qword_27D826C30 + 24));
}

uint64_t FrequencyPickerDataSource.deinit()
{
  v0 = sub_2283903B0();

  sub_228267618(*(v0 + qword_27D826C30), *(v0 + qword_27D826C30 + 8), *(v0 + qword_27D826C30 + 16), *(v0 + qword_27D826C30 + 24));

  return v0;
}

uint64_t FrequencyPickerDataSource.__deallocating_deinit()
{
  v0 = sub_2283903B0();

  sub_228267618(*(v0 + qword_27D826C30), *(v0 + qword_27D826C30 + 8), *(v0 + qword_27D826C30 + 16), *(v0 + qword_27D826C30 + 24));

  return swift_deallocClassInstance();
}

uint64_t FrequencyPickerDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (sub_228392000() == a1 && v5 == a2)
  {
  }

  else
  {
    v7 = sub_228393460();

    if ((v7 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_2282976E0(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v9 = sub_22838F0C0();
  v11 = v10;
  type metadata accessor for ScheduleHeaderCell();
  sub_2282976E0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
  v12 = sub_22838FBB0();
  v14 = v13;
  sub_22838FBB0();

  a3[3] = &type metadata for ScheduleHeaderItem;
  a3[4] = sub_228194464();
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = v9;
  *(result + 24) = v11;
  *(result + 32) = 0;
  *(result + 40) = nullsub_1;
  *(result + 48) = 0;
  *(result + 56) = v12;
  *(result + 64) = v14;
  return result;
}

Swift::Void __swiftcall FrequencyPickerDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for ScheduleHeaderCell();
  sub_2282976E0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  v1 = MEMORY[0x277D11008];
  sub_228297AB0(0, &qword_27D826C38, sub_228297728, &type metadata for FrequencyInterval, MEMORY[0x277D11008]);
  v2 = MEMORY[0x277D11010];
  sub_22829777C(&qword_27D826C48, &qword_27D826C38, v1, MEMORY[0x277D11010]);
  sub_2283926B0();
  sub_228297AB0(0, &qword_27D826C50, sub_2282977E0, &type metadata for DisplayUnit, v1);
  sub_228297A3C(&qword_27D826C60, &qword_27D826C50, v1, v2);
  sub_2283926B0();
}

uint64_t sub_228297560()
{
  type metadata accessor for ScheduleHeaderCell();
  sub_2282976E0(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  v0 = MEMORY[0x277D11008];
  sub_228297AB0(0, &qword_27D826C38, sub_228297728, &type metadata for FrequencyInterval, MEMORY[0x277D11008]);
  v1 = MEMORY[0x277D11010];
  sub_22829777C(&qword_27D826C48, &qword_27D826C38, v0, MEMORY[0x277D11010]);
  sub_2283926B0();
  sub_228297AB0(0, &qword_27D826C50, sub_2282977E0, &type metadata for DisplayUnit, v0);
  sub_228297A3C(&qword_27D826C60, &qword_27D826C50, v0, v1);
  return sub_2283926B0();
}

uint64_t sub_2282976E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_228297728()
{
  result = qword_27D826C40;
  if (!qword_27D826C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826C40);
  }

  return result;
}

uint64_t sub_22829777C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228297AB0(255, a2, sub_228297728, &type metadata for FrequencyInterval, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2282977E0()
{
  result = qword_27D826C58;
  if (!qword_27D826C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826C58);
  }

  return result;
}

uint64_t type metadata accessor for FrequencyPickerDataSource(uint64_t a1)
{
  result = qword_27D826C68;
  if (!qword_27D826C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228297A3C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228297AB0(255, a2, sub_2282977E0, &type metadata for DisplayUnit, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228297AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_228297B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228297B74(uint64_t a1)
{
  if (!qword_27D826C98)
  {
    sub_228297C40(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2282976E0(&qword_27D825868, sub_228297C40, MEMORY[0x277CBCE48]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826C98);
    }
  }
}

void sub_228297C40(uint64_t a1)
{
  if (!qword_27D825850)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825850);
    }
  }
}

uint64_t type metadata accessor for ThirdPartyAuthorizationDataSource(uint64_t a1)
{
  result = qword_27D826CB8;
  if (!qword_27D826CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228297D78(void *a1, unint64_t a2)
{
  v39 = a1;
  v3 = sub_22838F4A0();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAB6D80](v6, a2);
      }

      else
      {
        if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(a2 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v7;
      v12 = sub_2281A7870(v9);
      v14 = v7[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_23;
      }

      v18 = v13;
      if (v7[3] < v17)
      {
        sub_22829969C(v17, isUniquelyReferenced_nonNull_native);
        v12 = sub_2281A7870(v9);
        if ((v18 & 1) != (v19 & 1))
        {
          sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
          result = sub_2283934A0();
          __break(1u);
          return result;
        }

LABEL_15:
        v7 = v44[0];
        if (v18)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v22 = v12;
      sub_22829AFE8();
      v12 = v22;
      v7 = v44[0];
      if (v18)
      {
LABEL_4:
        *(v7[7] + v12) = 0;

        goto LABEL_5;
      }

LABEL_16:
      v7[(v12 >> 6) + 8] |= 1 << v12;
      *(v7[6] + 8 * v12) = v9;
      *(v7[7] + v12) = 0;
      v20 = v7[2];
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_24;
      }

      v7[2] = v21;
LABEL_5:
      ++v6;
      if (v10 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v7 = MEMORY[0x277D84F98];
LABEL_27:
  v44[0] = v7;
  sub_22829C0BC(0);
  swift_allocObject();
  v23 = sub_228391890();
  v24 = v43;
  *(v43 + qword_27D826CA8) = v23;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v25 = v39;
  v26 = sub_228392790();
  v27 = objc_allocWithZone(MEMORY[0x277D12AD0]);
  sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
  v28 = sub_228392190();

  v29 = [v27 initWithHealthStore:v25 sources:v28 queue:v26];

  *(v24 + qword_27D826CB0) = v29;
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v44, "MutableArray<");
  HIWORD(v44[1]) = -4864;
  v30 = v40;
  sub_22838F490();
  v31 = sub_22838F450();
  v33 = v32;
  (*(v41 + 8))(v30, v42);
  MEMORY[0x22AAB5C80](v31, v33);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v34 = sub_22838FF30();
  v35 = qword_27D826CB0;
  v36 = *(v34 + qword_27D826CB0);

  [v36 registerObserver_];
  [*(v34 + v35) setShouldFetchAppIcons_];
  [*(v34 + v35) setShouldFetchAppInstallationStatus_];

  return v34;
}

unint64_t sub_2282981C0(void *a1, char a2)
{

  sub_228391870();

  v4 = v9;
  if (v9)
  {
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = sub_2281A875C(MEMORY[0x277D84F90]);
    if (!*(v4 + 16))
    {
LABEL_7:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v4;
      sub_22829ACB8(a2 & 1, a1, isUniquelyReferenced_nonNull_native);

      sub_228391850();

      goto LABEL_8;
    }
  }

  v5 = sub_2281A7870(a1);
  if ((v6 & 1) == 0 || *(*(v4 + 56) + v5) != (a2 & 1))
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  sub_228393590();

  return v9;
}

uint64_t sub_228298300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22829BCF8(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (sub_22838F750())
  {
    goto LABEL_2;
  }

  if (sub_228392000() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_228393460();

    if ((v12 & 1) == 0)
    {
LABEL_2:
      a3[3] = sub_22838FC00();
      a3[4] = sub_228299288(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v13 = sub_228390130();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  a3[3] = sub_228390150();
  a3[4] = sub_228299288(&qword_27D824EC8, MEMORY[0x277D10FE8], MEMORY[0x277D10FD8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390140();
}

uint64_t sub_2282985A4(void *a1)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 sources];
  v61 = v1;
  if (!v7)
  {
    sub_22829BCF8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v31 = *(sub_22838FEF0() - 8);
    *&v60 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v32 = swift_allocObject();
    v59 = xmmword_228397F40;
    *(v32 + 16) = xmmword_228397F40;
    sub_2281BBE0C(0);
    v33 = swift_allocObject();
    *(v33 + 16) = v59;
    v34 = type metadata accessor for MedicationSourceListNoneItem();
    v35 = swift_allocObject();
    type metadata accessor for MedicationSourceListNoneCell(0);
    v35[2] = sub_22838FBB0();
    v35[3] = v36;
    sub_22838F490();
    v37 = sub_22838F450();
    v39 = v38;
    v40 = *(v4 + 8);
    v40(v6, v3);
    v35[4] = v37;
    v35[5] = v39;
    *(v33 + 56) = v34;
    *(v33 + 64) = sub_228299288(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem, &unk_2283A0CA0);
    *(v33 + 32) = v35;
    sub_22838F490();
    sub_22838F450();
    v40(v6, v3);
    sub_22838FED0();
    sub_22838FF50();
  }

  v54 = v7;
  v8 = [v7 orderedAppSources];
  sub_22817A958(0, &qword_27D824A00, 0x277D12AC0);
  v9 = sub_2283921A0();

  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v3;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_17:

    v30 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v41 = v9;
  v11 = sub_2283930D0();
  v10 = v41;
  v55 = v3;
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_4:
  v12 = v10;
  v62 = MEMORY[0x277D84F90];
  result = sub_228393240();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v53 = v6;
    v14 = objc_opt_self();
    v15 = 0;
    v16 = v12;
    v56 = v12 & 0xC000000000000001;
    v57 = v14;
    *&v60 = v4;
    v58 = v11;
    *&v59 = v12;
    do
    {
      if (v56)
      {
        v22 = MEMORY[0x22AAB6D80](v15, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v15 + 32);
      }

      v23 = v22;
      v24 = [v57 tertiarySystemGroupedBackgroundColor];
      type metadata accessor for MedicationSourceListToggleItem(0);
      v25 = swift_allocObject();
      *(v25 + qword_27D8251F8 + 8) = 0;
      v26 = swift_unknownObjectWeakInit();
      *(v25 + qword_27D825200) = 0;
      *(v25 + qword_27D825208) = v23;
      *(v25 + qword_27D8251F0) = 0;
      *(v26 + 8) = &off_283B6B478;
      swift_unknownObjectWeakAssign();
      v27 = v23;
      v28 = [v27 icon];
      v17 = v28;
      if (!v28)
      {
        sub_22838FAC0();
        v29 = sub_22838FAB0();
        if (!v29)
        {
          v29 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        }

        v17 = v29;
      }

      ++v15;
      v18 = v28;
      v19 = v17;
      v20 = [v27 source];
      v21 = [v20 name];

      sub_228392000();
      sub_2283901A0();

      sub_228393210();
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v16 = v59;
      v4 = v60;
    }

    while (v58 != v15);

    v30 = v62;
    v6 = v53;
LABEL_18:
    sub_22829BCF8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    sub_22838FEF0();
    v42 = swift_allocObject();
    v43 = xmmword_228397F40;
    *(v42 + 16) = xmmword_228397F40;
    if (v30 >> 62)
    {
      v60 = xmmword_228397F40;
      v45 = sub_2283930D0();
      v43 = v60;
      if (v45)
      {
        goto LABEL_20;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      sub_22819665C(v30);

      v44 = v55;
LABEL_23:
      sub_22838F490();
      sub_22838F450();
      (*(v4 + 8))(v6, v44);
      sub_22838FED0();
      sub_22838FF50();
    }

    v60 = v43;

    sub_2281BBE0C(0);
    v46 = swift_allocObject();
    *(v46 + 16) = v60;
    v47 = type metadata accessor for MedicationSourceListNoneItem();
    v48 = swift_allocObject();
    type metadata accessor for MedicationSourceListNoneCell(0);
    v48[2] = sub_22838FBB0();
    v48[3] = v49;
    sub_22838F490();
    v50 = sub_22838F450();
    v52 = v51;
    v44 = v55;
    (*(v4 + 8))(v6, v55);
    v48[4] = v50;
    v48[5] = v52;
    *(v46 + 56) = v47;
    *(v46 + 64) = sub_228299288(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem, &unk_2283A0CA0);
    *(v46 + 32) = v48;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_228298D80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_2282985A4(v3);
}

void sub_228298E00()
{

  v1 = *(v0 + qword_27D826CB0);
}

uint64_t sub_228298E40()
{
  v0 = sub_22838FFB0();

  v1 = *(v0 + qword_27D826CB0);

  return swift_deallocClassInstance();
}

uint64_t sub_228298EB8()
{
  type metadata accessor for MedicationSourceListNoneCell(0);
  sub_2283926B0();
  sub_228390190();
  sub_2283926B0();
  sub_228390120();
  return sub_2283926D0();
}

uint64_t sub_228298F20(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_22829901C(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_2283922A0();
  *(v3 + 32) = sub_228392290();
  v5 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282990B8, v5, v4);
}

uint64_t sub_2282990B8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = sub_2282981C0(v2, v1);
  v4 = *(v0 + 8);
  v6 = v5 & 1;

  return v4(v3, v6);
}

unint64_t sub_2282991B4()
{
  result = qword_27D826D28;
  if (!qword_27D826D28)
  {
    sub_22829BBA8(255, &qword_27D827830, MEMORY[0x277D834F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826D28);
  }

  return result;
}

uint64_t sub_228299288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2282992D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_228391130();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_22829BD5C(0);
  v39 = v4;
  result = sub_228393340();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_228299288(&qword_27D8242E0, MEMORY[0x277D11768], MEMORY[0x277D11770]);
      result = sub_228391F60();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22829969C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22829BBA8(0, &qword_27D824248, MEMORY[0x277D84460]);
  result = sub_228393340();
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
      v21 = *(*(v5 + 56) + v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_228392C50();
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
      *(*(v7 + 56) + v15) = v21;
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

uint64_t sub_228299910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2281A9A64(0);
  result = sub_228393340();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
        v23 = v21;
      }

      result = sub_228392C50();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}