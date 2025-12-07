unint64_t sub_228225590()
{
  result = qword_27D825710;
  if (!qword_27D825710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825710);
  }

  return result;
}

uint64_t sub_2282255E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

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

uint64_t sub_228225640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t InteractionFactorsHeaderItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InteractionFactorsHeaderItem.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_228225980(&qword_27D825718, 255, type metadata accessor for InteractionFactorsHeaderCell, &protocol conformance descriptor for InteractionFactorsHeaderCell);
  *(v0 + 16) = sub_22838FBB0();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t InteractionFactorsHeaderItem.init()()
{
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_228225980(&qword_27D825718, 255, type metadata accessor for InteractionFactorsHeaderCell, &protocol conformance descriptor for InteractionFactorsHeaderCell);
  *(v0 + 16) = sub_22838FBB0();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t static InteractionFactorsHeaderItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t InteractionFactorsHeaderItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22822585C(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t sub_228225980(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2282259C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t InteractionStackedMedmojiDataProvider.firstItemConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InteractionStackedMedmojiDataProvider(0) + 20);

  return sub_2281C5FCC(v3, a1);
}

uint64_t InteractionStackedMedmojiDataProvider.firstItemConfig.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InteractionStackedMedmojiDataProvider(0) + 20);

  return sub_228227E20(a1, v3);
}

uint64_t InteractionStackedMedmojiDataProvider.secondItemConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InteractionStackedMedmojiDataProvider(0) + 24);

  return sub_2281C5FCC(v3, a1);
}

uint64_t InteractionStackedMedmojiDataProvider.secondItemConfig.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InteractionStackedMedmojiDataProvider(0) + 24);

  return sub_228227E20(a1, v3);
}

uint64_t InteractionStackedMedmojiDataProvider.reversedItemConfig()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for InteractionStackedMedmojiDataProvider(0);
  v5 = *(v4 + 24);
  a1[3] = v4;
  a1[4] = sub_228228208(&qword_27D825730, type metadata accessor for InteractionStackedMedmojiDataProvider, &protocol conformance descriptor for InteractionStackedMedmojiDataProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_2281C5FCC(v1 + v5, boxed_opaque_existential_1 + *(v4 + 20));
  result = sub_2281C5FCC(v1 + *(v4 + 20), boxed_opaque_existential_1 + *(v4 + 24));
  *boxed_opaque_existential_1 = v3;
  return result;
}

BOOL static InteractionStackedMedmojiDataProvider.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for InteractionStackedMedmojiDataProvider(0);
  if (!_s19HealthMedicationsUI34DrugInteractionVisualizationConfigO2eeoiySbAC_ACtFZ_0(a1 + *(v4 + 20), a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return _s19HealthMedicationsUI34DrugInteractionVisualizationConfigO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_228225E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = *(a1 + 24);
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_2281C5FCC(v3 + v6, boxed_opaque_existential_1 + *(a1 + 20));
  result = sub_2281C5FCC(v3 + *(a1 + 20), boxed_opaque_existential_1 + *(a1 + 24));
  *boxed_opaque_existential_1 = v5;
  return result;
}

uint64_t sub_228225EAC(void *a1, void *a2)
{
  if (*a1 != *a2 || (static DrugInteractionVisualizationConfig.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static DrugInteractionVisualizationConfig.== infix(_:_:)();
}

id sub_228225F54(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    v6 = v1;
    sub_228392B00();
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v7 = *(v1 + v2);
    *(v6 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

id sub_228226040(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_2282260C4(uint64_t a1, uint64_t *a2)
{
  sub_228227E84(a1, v6, &qword_27D823888, sub_228227EF0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  sub_228227F54(v6, v3 + v4);
  swift_endAccess();
  sub_228226168();
  return sub_2282285E8(v6, &qword_27D823888, sub_228227EF0);
}

void sub_228226168()
{
  v1 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v2 = MEMORY[0x28223BE20](v1);
  v91 = &v89[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x28223BE20](v2);
  v94 = &v89[-v5];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v89[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v89[-v9];
  sub_228228328(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v92 = &v89[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v89[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v89[-v16];
  v18 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig);
  swift_beginAccess();
  v19 = v18[3];
  if (v19)
  {
    v93 = v0;
    v20 = v18[4];
    v21 = __swift_project_boxed_opaque_existential_0(v18, v19);
    v22 = *(v19 - 8);
    MEMORY[0x28223BE20](v21);
    v24 = &v89[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v22 + 16))(v24);
    (*(v20 + 24))(v19, v20);
    (*(v22 + 8))(v24, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_228228588(v10, type metadata accessor for DrugInteractionVisualizationConfig);
      v25 = v18[3];
      v26 = v93;
      if (!v25)
      {
        return;
      }

      v27 = v18[4];
      v28 = __swift_project_boxed_opaque_existential_0(v18, v18[3]);
      v29 = *(v25 - 8);
      MEMORY[0x28223BE20](v28);
      v31 = &v89[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v29 + 16))(v31);
      (*(v27 + 24))(v25, v27);
      (*(v29 + 8))(v31, v25);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = sub_228227FF8(*v8);
        v33 = sub_228225F3C();
        [v33 setImage_];

        [*(v26 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView) setHidden_];
        v34 = sub_228225F30();
        [v34 setHidden_];

        v35 = v18[3];
        if (!v35)
        {
          return;
        }
      }

      else
      {
        sub_228228588(v8, type metadata accessor for DrugInteractionVisualizationConfig);
        v35 = v18[3];
        if (!v35)
        {
          return;
        }
      }
    }

    else
    {
      sub_2281AA8D4(v10, v17);
      v26 = v93;
      v36 = sub_228225F30();
      v37 = MEMORY[0x277D116C8];
      sub_228227E84(v17, v95, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      [*(v26 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView) setHidden_];
      v38 = sub_228225F3C();
      [v38 setHidden_];

      sub_2282285E8(v17, &qword_280DDBD20, v37);
      v35 = v18[3];
      if (!v35)
      {
        return;
      }
    }

    v39 = v18[4];
    v40 = __swift_project_boxed_opaque_existential_0(v18, v35);
    v41 = *(v35 - 8);
    MEMORY[0x28223BE20](v40);
    v43 = &v89[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v41 + 16))(v43);
    v44 = v94;
    (*(v39 + 32))(v35, v39);
    (*(v41 + 8))(v43, v35);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_228228588(v44, type metadata accessor for DrugInteractionVisualizationConfig);
      v45 = v18[3];
      if (v45)
      {
        v46 = v18[4];
        v47 = __swift_project_boxed_opaque_existential_0(v18, v18[3]);
        v48 = *(v45 - 8);
        MEMORY[0x28223BE20](v47);
        v50 = &v89[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v48 + 16))(v50);
        v51 = v91;
        (*(v46 + 32))(v45, v46);
        (*(v48 + 8))(v50, v45);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v52 = EnumCaseMultiPayload;
          v53 = sub_228227FF8(*v51);
          v54 = v26;
          v55 = sub_228226034();
          [v55 setImage_];

          v56 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView;
          [*(v54 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView) setHidden_];
          v57 = sub_228225F48();
          [v57 setHidden_];

          v58 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint;
          v59 = *(v54 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint);
          if (v59)
          {
            v60 = objc_opt_self();
            sub_228180ED0();
            v61 = swift_allocObject();
            *(v61 + 16) = xmmword_228396260;
            *(v61 + 32) = v59;
            sub_2281BF1B8();
            v62 = v59;
            v63 = sub_228392190();

            [v60 deactivateConstraints_];
          }

          v64 = v93;
          v65 = [*(v93 + v56) topAnchor];
          if (v52 == 1)
          {
            v66 = sub_228225F3C();
          }

          else
          {
            v66 = sub_228225F30();
          }

          v67 = [v66 bottomAnchor];

          v86 = [v65 constraintEqualToAnchor:v67 constant:-4.0];
          v87 = *(v64 + v58);
          *(v64 + v58) = v86;
          v88 = v86;

          [v88 setActive_];
        }

        else
        {
          sub_228228588(v51, type metadata accessor for DrugInteractionVisualizationConfig);
        }
      }
    }

    else
    {
      v68 = EnumCaseMultiPayload;
      v69 = v92;
      sub_2281AA8D4(v44, v92);
      v70 = sub_228225F48();
      sub_228227E84(v69, v95, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      v71 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView;
      [*(v26 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView) setHidden_];
      v72 = sub_228226034();
      [v72 setHidden_];

      v73 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint;
      v74 = *(v26 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint);
      if (v74)
      {
        v75 = objc_opt_self();
        sub_228180ED0();
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_228396260;
        *(v76 + 32) = v74;
        sub_2281BF1B8();
        v77 = v74;
        v78 = sub_228392190();

        [v75 deactivateConstraints_];
      }

      v79 = [*(v26 + v71) topAnchor];
      if (v68 == 1)
      {
        v80 = sub_228225F3C();
      }

      else
      {
        v80 = sub_228225F30();
      }

      v81 = v80;
      v82 = [v80 bottomAnchor];

      v83 = [v79 constraintEqualToAnchor:v82 constant:-4.0];
      v84 = *(v26 + v73);
      *(v26 + v73) = v83;
      v85 = v83;

      [v85 setActive_];
      sub_2282285E8(v69, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }
  }
}

uint64_t sub_228226CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  return sub_228227E84(v1 + v3, a1, &qword_27D823888, sub_228227EF0);
}

uint64_t sub_228226D14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  swift_beginAccess();
  sub_228227F54(a1, v1 + v3);
  swift_endAccess();
  sub_228226168();
  return sub_2282285E8(a1, &qword_27D823888, sub_228227EF0);
}

void (*sub_228226D9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228226E00;
}

void sub_228226E00(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_228226168();
  }
}

char *InteractionStackedMedmojiView.init(width:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView] = 0;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView] = 0;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView] = 0;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView] = 0;
  v3 = &v2[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_width] = a2;
  v70.receiver = v2;
  v70.super_class = type metadata accessor for InteractionStackedMedmojiView();
  v4 = objc_msgSendSuper2(&v70, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_228225F48();
  [v4 addSubview_];

  v6 = sub_228226034();
  [v4 addSubview_];

  v7 = sub_228225F30();
  [v4 addSubview_];

  v8 = sub_228225F3C();
  [v4 addSubview_];

  v69 = objc_opt_self();
  sub_228180ED0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22839D300;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView;
  v11 = [*&v4[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView] leadingAnchor];
  v12 = [v4 &selRef_logTimeChanged_ + 1];

  v13 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v13;
  v14 = [*&v4[v10] trailingAnchor];
  v15 = [v4 trailingAnchor];

  v16 = [v14 constraintEqualToAnchor_];
  *(v9 + 40) = v16;
  v17 = [*&v4[v10] topAnchor];
  v18 = [v4 topAnchor];

  v19 = [v17 constraintEqualToAnchor_];
  *(v9 + 48) = v19;
  v20 = [*&v4[v10] widthAnchor];
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_width;
  v22 = [v20 constraintEqualToConstant_];

  *(v9 + 56) = v22;
  v23 = [*&v4[v10] heightAnchor];
  v24 = [v23 &selRef:*&v4[v21] setDateTimeStyle:? + 1];

  *(v9 + 64) = v24;
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView;
  v26 = [*&v4[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView] &selRef_logTimeChanged_ + 1];
  v27 = [v4 &selRef_logTimeChanged_ + 1];

  v28 = [v26 constraintEqualToAnchor_];
  *(v9 + 72) = v28;
  v29 = [*&v4[v25] trailingAnchor];
  v30 = [v4 trailingAnchor];

  v31 = [v29 constraintEqualToAnchor_];
  *(v9 + 80) = v31;
  v32 = [*&v4[v25] topAnchor];
  v33 = [v4 topAnchor];

  v34 = [v32 constraintEqualToAnchor_];
  *(v9 + 88) = v34;
  v35 = [*&v4[v25] widthAnchor];
  v36 = [v35 constraintEqualToConstant_];

  *(v9 + 96) = v36;
  v37 = [*&v4[v25] heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v9 + 104) = v38;
  v39 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView;
  v40 = [*&v4[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView] leadingAnchor];
  v41 = [v4 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v9 + 112) = v42;
  v43 = [*&v4[v39] trailingAnchor];
  v44 = [v4 trailingAnchor];

  v45 = [v43 constraintEqualToAnchor_];
  *(v9 + 120) = v45;
  v46 = [*&v4[v39] bottomAnchor];
  v47 = [v4 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v9 + 128) = v48;
  v49 = [*&v4[v39] widthAnchor];
  v50 = [v49 constraintEqualToConstant_];

  *(v9 + 136) = v50;
  v51 = [*&v4[v39] heightAnchor];
  v52 = [v51 constraintEqualToConstant_];

  *(v9 + 144) = v52;
  v53 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView;
  v54 = [*&v4[OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView] leadingAnchor];
  v55 = [v4 leadingAnchor];

  v56 = [v54 constraintEqualToAnchor_];
  *(v9 + 152) = v56;
  v57 = [*&v4[v53] trailingAnchor];
  v58 = [v4 trailingAnchor];

  v59 = [v57 constraintEqualToAnchor_];
  *(v9 + 160) = v59;
  v60 = [*&v4[v53] bottomAnchor];
  v61 = [v4 bottomAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v9 + 168) = v62;
  v63 = [*&v4[v53] widthAnchor];
  v64 = [v63 constraintEqualToConstant_];

  *(v9 + 176) = v64;
  v65 = [*&v4[v53] heightAnchor];
  v66 = [v65 constraintEqualToConstant_];

  *(v9 + 184) = v66;
  sub_2281BF1B8();
  v67 = sub_228392190();

  [v69 activateConstraints_];

  return v4;
}

id InteractionStackedMedmojiView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InteractionStackedMedmojiView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionStackedMedmojiView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InteractionStackedMedmojiView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL _s19HealthMedicationsUI34DrugInteractionVisualizationConfigO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390D50();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228228328(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - v7;
  sub_228228644(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_2282286C4(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 56);
  sub_2281C5FCC(a1, v21);
  sub_2281C5FCC(a2, &v21[v22]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2281C5FCC(v21, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2282285E8(v17, &qword_280DDBD20, MEMORY[0x277D116C8]);
      v25 = 0;
      v24 = sub_2282286C4;
      goto LABEL_15;
    }

    v26 = *(v9 + 48);
    sub_2281AA8D4(v17, v11);
    sub_2281AA8D4(&v21[v22], &v11[v26]);
    v27 = v37;
    v28 = *(v37 + 48);
    if (v28(v11, 1, v4) == 1)
    {
      if (v28(&v11[v26], 1, v4) == 1)
      {
        sub_2282285E8(v11, &qword_280DDBD20, MEMORY[0x277D116C8]);
        v25 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      v29 = v36;
      sub_228227E84(v11, v36, &qword_280DDBD20, MEMORY[0x277D116C8]);
      if (v28(&v11[v26], 1, v4) != 1)
      {
        v31 = v35;
        (*(v27 + 32))(v35, &v11[v26], v4);
        sub_228228208(&qword_27D8257B8, MEMORY[0x277D116C8], MEMORY[0x277D116D0]);
        v32 = sub_228391FB0();
        v33 = *(v27 + 8);
        v33(v31, v4);
        v33(v29, v4);
        sub_2282285E8(v11, &qword_280DDBD20, MEMORY[0x277D116C8]);
        v24 = type metadata accessor for DrugInteractionVisualizationConfig;
        if (v32)
        {
          v25 = 1;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      (*(v27 + 8))(v29, v4);
    }

    sub_228228588(v11, sub_228228644);
LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  sub_2281C5FCC(v21, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = sub_2282286C4;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = *v15 == *&v21[v22];
LABEL_14:
    v24 = type metadata accessor for DrugInteractionVisualizationConfig;
    goto LABEL_15;
  }

  v25 = 0;
LABEL_15:
  sub_228228588(v21, v24);
  return v25;
}

uint64_t sub_228227E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_228227E84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228228328(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_228227EF0()
{
  result = qword_27D826170;
  if (!qword_27D826170)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D826170);
  }

  return result;
}

uint64_t sub_228227F54(uint64_t a1, uint64_t a2)
{
  sub_228228328(0, &qword_27D823888, sub_228227EF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_228227FF8(uint64_t a1)
{
  if (a1 != 1 && a1 != 3 && a1 != 2)
  {
    return 0;
  }

  type metadata accessor for InteractionFactorsCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_228391FC0();

  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  return v4;
}

void _s19HealthMedicationsUI29InteractionStackedMedmojiViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstMedmojiView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___firstImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondMedmojiView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView____lazy_storage___secondImageView) = 0;
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_secondTopConstraint) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2282281B0(uint64_t a1)
{
  result = sub_228228208(&qword_27D825770, type metadata accessor for InteractionStackedMedmojiDataProvider, &protocol conformance descriptor for InteractionStackedMedmojiDataProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228228208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228228250(uint64_t a1)
{
  sub_2282282C4();
  if (v1 <= 0x3F)
  {
    sub_22822837C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2282282C4()
{
  if (!qword_27D825788)
  {
    sub_228228328(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if (!v1)
    {
      atomic_store(v0, &qword_27D825788);
    }
  }
}

void sub_228228328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_22822837C()
{
  if (!qword_27D825790)
  {
    type metadata accessor for HKDrugInteractionLifestyleFactor(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27D825790);
    }
  }
}

void sub_22822843C(uint64_t a1)
{
  type metadata accessor for HKDrugInteractionSeverityLevel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DrugInteractionVisualizationConfig(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_228228588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282285E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228228328(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228228644(uint64_t a1)
{
  if (!qword_27D8257A8)
  {
    sub_228228328(255, &qword_280DDBD20, MEMORY[0x277D116C8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8257A8);
    }
  }
}

void sub_2282286C4(uint64_t a1)
{
  if (!qword_27D8257B0)
  {
    type metadata accessor for DrugInteractionVisualizationConfig(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8257B0);
    }
  }
}

uint64_t sub_2282287A8()
{
  v1 = v0;
  v2 = *v0;
  sub_22822A63C(0);
  v15 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + qword_27D8257C8);
  v16 = *(v0 + qword_27D8257C0);
  v17 = v7;
  sub_22822A740(0, &qword_27D825850, type metadata accessor for HKMedicationScheduleType);
  sub_22822A740(0, &qword_27D825858, sub_22822A7A4);
  sub_22822A8F4(&qword_27D825868, &qword_27D825850, type metadata accessor for HKMedicationScheduleType);
  sub_22822A8F4(&qword_27D825870, &qword_27D825858, sub_22822A7A4);
  sub_2283919E0();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22822A7F4;
  *(v10 + 24) = v9;
  sub_228229B24(&qword_27D825878, sub_22822A63C, MEMORY[0x277CBCAF0]);
  v11 = v15;
  v12 = sub_228391AC0();

  (*(v4 + 8))(v6, v11);
  *(v1 + qword_27D8257E0) = v12;
}

uint64_t sub_228228A5C(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  if (v3 != 2)
  {
    v4 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = result;
      if ((v4 - 7) > 1)
      {
      }

      else
      {
        v6 = *(result + qword_27D8257D8);
        v9 = v3 & 1;
        sub_22822A3C4(v6, &v9, 1);
        v7 = *(v5 + qword_27D8257D0);
        v9 = v3 & 1;
        sub_22822A3C4(v7, &v9, 0);
        v9 = v3 & 1;
        v8 = sub_228228B54(&v9);
        sub_228194894(v8);

        sub_22838FF60();
      }
    }
  }

  return result;
}

uint64_t sub_228228B54(unsigned __int8 *a1)
{
  v3 = sub_22838F4A0();
  MEMORY[0x28223BE20](v3 - 8);
  sub_228229BC0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = *a1;
  sub_228229BC0(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F30;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v27 = *algn_280DDCF28;
  v28 = qword_280DDCF20;
  v26 = qword_280DDCF30;
  v9 = sub_22838F0C0();
  v21 = v10;
  v22 = v9;
  sub_228391390();
  v25 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v11 = sub_2283913A0();
  v12 = *(v11 - 8);
  v23 = *(v12 + 56);
  v24 = v12 + 56;
  v23(v6, 0, 1, v11);
  v30 = v7;
  sub_22828FEA4(&v30);
  swift_allocObject();
  v19 = v7;
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_22838F490();
  v18 = v1;
  v13 = MEMORY[0x277D10E20];
  sub_22822A54C(0, &qword_27D825838, MEMORY[0x277D10E20]);
  v20 = v14;
  *(v8 + 56) = v14;
  v15 = sub_22822A5B0(&qword_27D825840, &qword_27D825838, v13, MEMORY[0x277D10E28]);
  *(v8 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  sub_228229B6C();
  sub_22838FB70();
  sub_22838F0C0();
  v28 = v16;
  sub_228391390();
  sub_228392BD0();
  sub_228391370();
  v23(v6, 0, 1, v11);
  v29 = v19;
  sub_22828FEA4(&v29);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_22838F490();
  *(v8 + 96) = v20;
  *(v8 + 104) = v15;
  __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  sub_22838FB70();
  return v8;
}

uint64_t sub_228229050@<X0>(uint64_t a2@<X8>)
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
    *(a2 + 8) = -1;
  }

  return result;
}

uint64_t sub_2282290D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391850();
  }

  return result;
}

uint64_t sub_228229184()
{
}

uint64_t sub_2282291F4()
{
  sub_22838FFB0();

  return swift_deallocClassInstance();
}

uint64_t sub_228229300()
{
  type metadata accessor for ScheduleDurationCell();
  sub_228229B24(&qword_27D825810, type metadata accessor for ScheduleDurationCell, &protocol conformance descriptor for ScheduleDurationCell);
  sub_2283926D0();
  v0 = MEMORY[0x277D11008];
  sub_22822A54C(0, &qword_27D825818, MEMORY[0x277D11008]);
  sub_22822A5B0(&qword_27D825828, &qword_27D825818, v0, MEMORY[0x277D11010]);
  return sub_2283926B0();
}

uint64_t sub_2282293E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
      a3[4] = sub_228229B24(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
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
  sub_228229B24(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
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

uint64_t sub_228229600(uint64_t a1, uint64_t a2)
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

uint64_t sub_228229748@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22838F4A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22822ABC0(*a1);
  sub_228229BC0(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228397F40;
  sub_228194894(v8);

  sub_22838F490();
  sub_22838F450();
  (*(v5 + 8))(v7, v4);
  result = sub_22838FED0();
  *a2 = v9;
  return result;
}

void *sub_22822995C()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  sub_2283901C0();
  v4 = sub_2283900C0();
  swift_unknownObjectRelease();
  [v4 contentInsets];
  [v4 setContentInsets_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_228229AA4()
{
  sub_22838FE20();

  return swift_deallocClassInstance();
}

uint64_t sub_228229B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_228229B6C()
{
  result = qword_27D825820;
  if (!qword_27D825820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825820);
  }

  return result;
}

void sub_228229BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228229C24(void *a1)
{
  v2 = v1;
  v50 = v2;
  v49 = *v2;
  v42 = MEMORY[0x277D85248];
  sub_228229BC0(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = sub_228391DD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22822A82C(0);
  v38 = v11;
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22822A944(0);
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22822AA10(0);
  v45 = v18;
  v47 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v39 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22822AAEC(0);
  v46 = v20;
  v48 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v41 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  sub_22822A740(0, &qword_27D8245A0, sub_2281DFB88);
  sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
  sub_22822A8F4(&qword_27D8245A8, &qword_27D8245A0, sub_2281DFB88);
  sub_2283919A0();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851C0], v7);
  v22 = sub_2283927C0();
  (*(v8 + 8))(v10, v7);
  v51 = v22;
  v23 = sub_228392730();
  v24 = *(v23 - 8);
  v36 = *(v24 + 56);
  v37 = v24 + 56;
  v36(v6, 1, 1, v23);
  sub_228229B24(&qword_27D825890, sub_22822A82C, MEMORY[0x277CBCB10]);
  v35[1] = sub_2281A1504();
  v25 = v38;
  sub_228391A70();
  v26 = v42;
  sub_22822B114(v6, &qword_280DDBAD0, v42);

  (*(v40 + 8))(v13, v25);
  *(swift_allocObject() + 16) = v49;
  sub_228229BC0(0, &qword_27D8258A0, MEMORY[0x277D10F78], MEMORY[0x277D83940]);
  v27 = MEMORY[0x277CBCD60];
  sub_228229B24(&qword_27D8258A8, sub_22822A944, MEMORY[0x277CBCD60]);
  v28 = v39;
  v29 = v43;
  sub_2283919F0();

  (*(v44 + 8))(v17, v29);
  v30 = sub_228392790();
  v51 = v30;
  v36(v6, 1, 1, v23);
  sub_228229B24(&qword_27D8258B8, sub_22822AA10, MEMORY[0x277CBCC08]);
  v31 = v41;
  v32 = v45;
  sub_228391A70();
  sub_22822B114(v6, &qword_280DDBAD0, v26);

  (*(v47 + 8))(v28, v32);
  sub_228229B24(&qword_27D8258C0, sub_22822AAEC, v27);
  v33 = v46;
  sub_228391980();
  (*(v48 + 8))(v31, v33);
  sub_228390260();
  sub_22838FD50();

  return sub_22838FE10();
}

void *sub_22822A3C4(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v3 = *a2;
  sub_228391870();
  if (v7 == 255)
  {
    return sub_228391850();
  }

  result = sub_228391870();
  if ((v3 ^ v7))
  {
    return result;
  }

  if ((v3 & 1) == 0)
  {
    if ((v7 & 1) != 0 || (v6 * 7) >> 64 == (7 * v6) >> 63)
    {
      return sub_228391850();
    }

    goto LABEL_15;
  }

  if (v7)
  {
    v5 = ceil(v6 / 7.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 < 9.22337204e18)
        {
          return sub_228391850();
        }

LABEL_17:
        __break(1u);
        return result;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return sub_228391850();
}

void sub_22822A54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228229B6C();
    v7 = a3(a1, &type metadata for PauseUsePeriod, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22822A5B0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22822A54C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22822A63C(uint64_t a1)
{
  if (!qword_27D825848)
  {
    sub_22822A740(255, &qword_27D825850, type metadata accessor for HKMedicationScheduleType);
    sub_22822A740(255, &qword_27D825858, sub_22822A7A4);
    sub_22822A8F4(&qword_27D825868, &qword_27D825850, type metadata accessor for HKMedicationScheduleType);
    sub_22822A8F4(&qword_27D825870, &qword_27D825858, sub_22822A7A4);
    v1 = sub_228391670();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825848);
    }
  }
}

void sub_22822A740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228391880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22822A7A4()
{
  if (!qword_27D825860)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825860);
    }
  }
}

void sub_22822A82C(uint64_t a1)
{
  if (!qword_27D825880)
  {
    sub_22822A740(255, &qword_27D8245A0, sub_2281DFB88);
    sub_22817A958(255, &unk_280DDBA68, 0x277D11570);
    sub_22822A8F4(&qword_27D8245A8, &qword_27D8245A0, sub_2281DFB88);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825880);
    }
  }
}

uint64_t sub_22822A8F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22822A740(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22822A944(uint64_t a1)
{
  if (!qword_27D825888)
  {
    sub_22822A82C(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228229B24(&qword_27D825890, sub_22822A82C, MEMORY[0x277CBCB10]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825888);
    }
  }
}

void sub_22822AA10(uint64_t a1)
{
  if (!qword_27D825898)
  {
    sub_22822A944(255);
    sub_228229BC0(255, &qword_27D8258A0, MEMORY[0x277D10F78], MEMORY[0x277D83940]);
    sub_228229B24(&qword_27D8258A8, sub_22822A944, MEMORY[0x277CBCD60]);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825898);
    }
  }
}

void sub_22822AAEC(uint64_t a1)
{
  if (!qword_27D8258B0)
  {
    sub_22822AA10(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228229B24(&qword_27D8258B8, sub_22822AA10, MEMORY[0x277CBCC08]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8258B0);
    }
  }
}

uint64_t sub_22822ABC0(void *a1)
{
  v2 = sub_2283911B0();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838F4A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838F6C0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228229BC0(0, &qword_27D824550, type metadata accessor for CycleData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for CycleData(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v34 = v6;
    v19 = a1;
    sub_22838F620();
    sub_2282CD948(v19, v11, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      sub_22822B114(v14, &qword_27D824550, type metadata accessor for CycleData);
    }

    else
    {
      sub_22822B184(v14, v18);
      CycleData.localizedNextPhaseDateChangeDescription.getter();
      if (v20)
      {
        sub_228229BC0(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_228397F40;
        v37[0] = 0x74497265746F6F46;
        v37[1] = 0xEB000000005F6D65;
        sub_22838F490();
        v22 = sub_22838F450();
        v24 = v23;
        (*(v34 + 8))(v8, v5);
        MEMORY[0x22AAB5C80](v22, v24);

        *(v21 + 56) = sub_228390330();
        *(v21 + 64) = sub_228229B24(&qword_27D8258C8, MEMORY[0x277D110D8], MEMORY[0x277D110D0]);
        __swift_allocate_boxed_opaque_existential_1((v21 + 32));
        sub_228390320();

        sub_22822B1E8(v18);
        return v21;
      }

      sub_22822B1E8(v18);
    }
  }

  sub_228391190();
  v26 = a1;
  v27 = sub_2283911A0();
  v28 = sub_2283925C0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v29 = 136315138;
    v37[2] = a1;
    sub_2281DFB88(0);
    v31 = sub_228392EF0();
    v33 = sub_2281C96FC(v31, v32, v37);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_22816B000, v27, v28, "[MedicationsPauseDataSource] Unable to set the next phase footer information because contextual information is nil. Current Schedule: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAB7B80](v30, -1, -1);
    MEMORY[0x22AAB7B80](v29, -1, -1);
  }

  (*(v35 + 8))(v4, v36);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22822B114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228229BC0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22822B184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22822B1E8(uint64_t a1)
{
  v2 = type metadata accessor for CycleData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22822B254()
{
  sub_228390360();
  sub_228390350();
  qword_27D8258D0 = v0;
}

double sub_22822B288()
{
  if (qword_27D8232D0 != -1)
  {
    swift_once();
  }

  result = *&qword_27D8258D0 * 0.5;
  *&qword_27D8258D8 = *&qword_27D8258D0 * 0.5;
  return result;
}

uint64_t DurationDatePickerItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DurationDatePickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t DurationDatePickerItem.uniqueIdentifier.getter()
{
  type metadata accessor for DurationDatePickerItem(0);
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000017;
}

uint64_t type metadata accessor for DurationDatePickerItem(uint64_t a1)
{
  result = qword_27D825938;
  if (!qword_27D825938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DurationDatePickerItem.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DurationDatePickerItem(0) + 20);
  v4 = sub_22838F4A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DurationDatePickerItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for DurationDatePickerItem(0) + 24));

  return v1;
}

uint64_t DurationDatePickerItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DurationDatePickerItem.placeholderText.getter()
{
  v1 = *(v0 + *(type metadata accessor for DurationDatePickerItem(0) + 28));

  return v1;
}

uint64_t DurationDatePickerItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DurationDatePickerItem.cellAccessories.getter()
{
  type metadata accessor for DurationDatePickerItem(0);
}

uint64_t DurationDatePickerItem.cellAccessories.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DurationDatePickerItem(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DurationDatePickerItem.backgroundConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DurationDatePickerItem(0) + 36);
  v4 = sub_2283913A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DurationDatePickerItem.backgroundConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DurationDatePickerItem(0) + 36);
  v4 = sub_2283913A0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22822B840(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for DurationDatePickerItem(0) + 40));
  v6 = *v5;
  v7 = v5[1];
  sub_228176FA8(v2, v3);
  result = sub_228176EC8(v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t DurationDatePickerItem.dataProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationDatePickerItem(0) + 40));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t DurationDatePickerItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem(0) + 40));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22822B980@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DurationDatePickerItem(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F0D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_22822BA14(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DurationDatePickerItem(0) + 44));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3, v4);
  result = sub_228176EC8(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DurationDatePickerItem.updateHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationDatePickerItem(0) + 44));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t DurationDatePickerItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem(0) + 44));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22822BB94@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DurationDatePickerItem(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F100;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4, v5);
}

uint64_t sub_22822BC28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DurationDatePickerItem(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3, v4);
  result = sub_228176EC8(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DurationDatePickerItem.deletionHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationDatePickerItem(0) + 48));
  v2 = *v1;
  sub_228176FA8(*v1, v1[1]);
  return v2;
}

uint64_t DurationDatePickerItem.deletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DurationDatePickerItem(0) + 48));
  result = sub_228176EC8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DurationDatePickerItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for DurationDatePickerItem(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t DurationDatePickerItem.datePickerMode.setter(uint64_t a1)
{
  result = type metadata accessor for DurationDatePickerItem(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t DurationDatePickerItem.datePickerStyle.setter(uint64_t a1)
{
  result = type metadata accessor for DurationDatePickerItem(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t DurationDatePickerItem.minimumDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DurationDatePickerItem(0) + 64);

  return sub_22822BFC0(v3, a1);
}

uint64_t sub_22822BFC0(uint64_t a1, uint64_t a2)
{
  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DurationDatePickerItem.minimumDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DurationDatePickerItem(0) + 64);

  return sub_22822C098(a1, v3);
}

uint64_t sub_22822C098(uint64_t a1, uint64_t a2)
{
  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static DurationDatePickerItem.defaultBackgroundConfiguration.getter(uint64_t a1)
{
  sub_228391390();
  v1 = [objc_opt_self() systemBackgroundColor];
  return sub_228391370();
}

uint64_t DurationDatePickerItem.init(uuid:title:placeholderText:isEditEnabled:cellAccessories:backgroundConfiguration:datePickerMode:datePickerStyle:minimumDate:dataProvider:updateHandler:deletionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  type metadata accessor for DurationDatePickerCollectionViewCell();
  sub_22822EC78(&qword_27D8258E8, v20, type metadata accessor for DurationDatePickerCollectionViewCell, &protocol conformance descriptor for DurationDatePickerCollectionViewCell);
  *a9 = sub_22838FBB0();
  *(a9 + 1) = v21;
  v22 = type metadata accessor for DurationDatePickerItem(0);
  v23 = &a9[v22[7]];
  v24 = &a9[v22[10]];
  v25 = &a9[v22[11]];
  v26 = &a9[v22[12]];
  v27 = v22[16];
  v28 = sub_22838F440();
  (*(*(v28 - 8) + 56))(&a9[v27], 1, 1, v28);
  v29 = v22[5];
  v30 = sub_22838F4A0();
  (*(*(v30 - 8) + 32))(&a9[v29], a1, v30);
  v31 = &a9[v22[6]];
  *v31 = a2;
  *(v31 + 1) = a3;
  *v23 = a4;
  *(v23 + 1) = a5;
  a9[v22[13]] = a6;
  *&a9[v22[14]] = a10;
  *&a9[v22[15]] = a11;
  sub_22822C098(a12, &a9[v27]);
  *v24 = a13;
  *(v24 + 1) = a14;
  *v25 = a15;
  *(v25 + 1) = a16;
  *v26 = a17;
  *(v26 + 1) = a18;
  *&a9[v22[8]] = a7;
  v32 = v22[9];
  v33 = sub_2283913A0();
  v34 = *(*(v33 - 8) + 32);

  return v34(&a9[v32], a8, v33);
}

uint64_t sub_22822C430(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_22822C474(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  sub_228176FA8(*v2, v2[1]);
  return v3;
}

uint64_t sub_22822C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 40));
  result = sub_228176EC8(*v6, v6[1]);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_22822C4F8(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 40);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822C53C;
}

uint64_t sub_22822C540(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  sub_228176FA8(*v2, v2[1]);
  return v3;
}

uint64_t sub_22822C580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 44));
  result = sub_228176EC8(*v6, v6[1]);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_22822C5C4(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 44);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822F0FC;
}

uint64_t sub_22822C608(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (*(result + 16) + *(result + 24));
  if (!*result)
  {
    v1 = 0;
  }

  *v2 = *result;
  v2[1] = v1;
  return result;
}

unint64_t sub_22822C628(uint64_t a1)
{
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0xD000000000000017;
}

uint64_t sub_22822C68C(uint64_t a1)
{
  v2 = sub_22822EC78(&qword_27D825920, 255, type metadata accessor for DurationDatePickerItem, &protocol conformance descriptor for DurationDatePickerItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_22822C70C(uint64_t a1, void **a2)
{
  sub_22817E6C8(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(v5);
  return sub_22822E05C(v7, sub_228181D50);
}

uint64_t sub_22822C7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22822C818(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0xC0))(v4);
  return sub_22822E05C(a1, sub_228181D50);
}

uint64_t (*sub_22822C8C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22822C92C;
}

uint64_t sub_22822C92C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xC0))(result);
  }

  return result;
}

id sub_22822C990()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_22822C9F8(ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22822C9F8(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_228392000();
  v4 = v3;
  sub_22822EC78(&qword_27D8258E8, v3, type metadata accessor for DurationDatePickerCollectionViewCell, &protocol conformance descriptor for DurationDatePickerCollectionViewCell);
  v5 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v5);

  v10 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v6 = sub_228391FC0();

  [v1 setAccessibilityIdentifier_];

  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v7 = sub_228392AD0();
  [v1 setFont_];

  [v1 setTextAlignment_];
  [v1 setAdjustsFontForContentSizeCategory_];
  v8 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setNumberOfLines_];
  [v1 setUserInteractionEnabled_];
  return v1;
}

id sub_22822CC6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setPreferredDatePickerStyle_];
  [v0 setDatePickerMode_];
  v4 = sub_228392000();
  v5 = v1;

  MEMORY[0x22AAB5C80](0xD000000000000022, 0x80000002283AD8C0);

  v2 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  return v0;
}

id DurationDatePickerCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DurationDatePickerCollectionViewCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel) = 0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker;
  *(v0 + v2) = sub_22822CC6C();
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints) = MEMORY[0x277D84F90];
  sub_228393300();
  __break(1u);
}

uint64_t sub_22822CFDC()
{
  v1 = [v0 contentView];
  v2 = sub_22822C990();
  [v1 addSubview_];

  v3 = [v0 contentView];
  [v3 addSubview_];

  sub_22822DF3C();
  sub_22822D8B4(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228397F40;
  v5 = sub_228391640();
  v6 = MEMORY[0x277D74DB8];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_22822D154(void *a1, void *a2, uint64_t a3)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = sub_2283928C0() & 1;
  v6 = [a2 preferredContentSizeCategory];
  LODWORD(v5) = sub_2283928C0() & 1;

  if (v4 != v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_22822DF3C();
    }
  }
}

uint64_t sub_22822D22C()
{
  v1 = v0;
  v2 = sub_22838F440();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  sub_22822D8B4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], v4);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  sub_22822D8B4(0, &qword_27D825918, type metadata accessor for DurationDatePickerItem, v4);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for DurationDatePickerItem(0);
  v18 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v21], v38);
  if (!v39)
  {
    sub_22822E05C(v38, sub_228181D50);
    (*(v18 + 56))(v16, 1, 1, v17);
    return sub_22822D97C(v16, &qword_27D825918, type metadata accessor for DurationDatePickerItem);
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v22 = swift_dynamicCast();
  (*(v18 + 56))(v16, v22 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_22822D97C(v16, &qword_27D825918, type metadata accessor for DurationDatePickerItem);
  }

  sub_22822D918(v16, v20);
  v23 = v17[9];
  v24 = sub_2283913A0();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, &v20[v23], v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  MEMORY[0x22AAB6420](v13);
  v26 = sub_22822C990();
  v27 = sub_228391FC0();
  [v26 setText_];

  v28 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker];
  [v28 setDatePickerMode_];
  [v28 setPreferredDatePickerStyle_];
  sub_22822BFC0(&v20[v17[16]], v10);
  v29 = *(v37 + 48);
  v30 = 0;
  if (v29(v10, 1, v2) != 1)
  {
    v30 = sub_22838F380();
    (*(v37 + 8))(v10, v2);
  }

  [v28 setMinimumDate_];

  [v1 setUserInteractionEnabled_];
  v31 = *&v20[v17[10]];
  if (!v31)
  {
    (*(v37 + 56))(v8, 1, 1, v2);
    goto LABEL_11;
  }

  v31(v20);
  if (v29(v8, 1, v2) == 1)
  {
LABEL_11:
    sub_22822D97C(v8, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    goto LABEL_12;
  }

  v33 = v36;
  v32 = v37;
  (*(v37 + 32))(v36, v8, v2);
  v34 = sub_22838F380();
  [v28 setDate:v34 animated:1];

  (*(v32 + 8))(v33, v2);
LABEL_12:
  sub_22822DF3C();
  [v28 addTarget:v1 action:sel_pickerDateChanged_ forControlEvents:0xFFFFFFFFLL];
  sub_22822D9EC(v28);

  sub_2283928F0();
  return sub_22822E05C(v20, type metadata accessor for DurationDatePickerItem);
}

void sub_22822D8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22822D918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DurationDatePickerItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22822D97C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22822D8B4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22822D9EC(void *a1)
{
  v2 = v1;
  v31[0] = a1;
  v31[1] = swift_getObjectType();
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_22822D8B4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  sub_22822D8B4(0, &qword_27D825918, type metadata accessor for DurationDatePickerItem, v7);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v31 - v12;
  v14 = type metadata accessor for DurationDatePickerItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_22817E6C8(v2 + v18, v32);
  if (v32[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v19 = swift_dynamicCast();
    (*(v15 + 56))(v13, v19 ^ 1u, 1, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_22822D918(v13, v17);
      v20 = *&v17[*(v14 + 44)];
      if (v20)
      {
        v21 = [v31[0] date];
        sub_22838F3E0();

        v22 = sub_22838F440();
        (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
        v20(v17, v10);
        sub_22822D97C(v10, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      }

      return sub_22822E05C(v17, type metadata accessor for DurationDatePickerItem);
    }
  }

  else
  {
    sub_22822E05C(v32, sub_228181D50);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_22822D97C(v13, &qword_27D825918, type metadata accessor for DurationDatePickerItem);
  sub_228391170();
  v24 = sub_2283911A0();
  v25 = sub_2283925E0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32[0] = v27;
    *v26 = 136315138;
    v28 = sub_228393600();
    v30 = sub_2281C96FC(v28, v29, v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22816B000, v24, v25, "[%s] item is not a DatePickerItem", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAB7B80](v27, -1, -1);
    MEMORY[0x22AAB7B80](v26, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_22822DF3C()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v3 = sub_228392190();

  [v1 deactivateConstraints_];

  *&v0[v2] = MEMORY[0x277D84F90];

  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_2283928C0();
  if (v4)
  {
    sub_22822E0BC();
  }

  else
  {
    sub_22822E57C();
  }

  return [v0 setNeedsLayout];
}

uint64_t sub_22822E05C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22822E0BC()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399E10;
  v2 = sub_22822C990();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  if (qword_27D8232D0 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27D8258D0;
  v7 = [v3 constraintEqualToAnchor:v5 constant:*&qword_27D8258D0];

  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:6.0];
  *(v1 + 40) = v12;
  v13 = [v0 separatorLayoutGuide];
  v14 = [v13 leadingAnchor];

  v15 = [*&v0[v8] leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v1 + 48) = v16;
  v17 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker];
  v18 = [v17 leadingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:v6];
  *(v1 + 56) = v21;
  v22 = [v17 trailingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 trailingAnchor];

  if (qword_27D8232D8 != -1)
  {
    swift_once();
  }

  v25 = [v22 constraintLessThanOrEqualToAnchor:v24 constant:-*&qword_27D8258D8];

  *(v1 + 64) = v25;
  v26 = [v17 topAnchor];
  v27 = [*&v0[v8] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:6.0];

  *(v1 + 72) = v28;
  v29 = [v17 bottomAnchor];
  v30 = [v0 contentView];
  v31 = [v30 bottomAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:-6.0];
  *(v1 + 80) = v32;
  v33 = objc_opt_self();
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v34 = sub_228392190();
  [v33 activateConstraints_];

  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints] = v1;
}

uint64_t sub_22822E57C()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399190;
  v2 = sub_22822C990();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  if (qword_27D8232D0 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27D8258D0;
  v7 = [v3 constraintEqualToAnchor:v5 constant:*&qword_27D8258D0];

  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:6.0];
  *(v1 + 40) = v12;
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [*&v0[v8] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:6.0];

  *(v1 + 48) = v16;
  v17 = [v0 separatorLayoutGuide];
  v18 = [v17 leadingAnchor];

  v19 = [*&v0[v8] leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v1 + 56) = v20;
  v21 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker];
  v22 = [v21 leadingAnchor];
  v23 = [*&v0[v8] trailingAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:v6];

  *(v1 + 64) = v24;
  v25 = [v0 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [v21 trailingAnchor];
  if (qword_27D8232D8 != -1)
  {
    swift_once();
  }

  v28 = [v26 constraintEqualToAnchor:v27 constant:*&qword_27D8258D8];

  *(v1 + 72) = v28;
  v29 = [v21 topAnchor];
  v30 = [v0 contentView];
  v31 = [v30 topAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:6.0];
  *(v1 + 80) = v32;
  v33 = [v0 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v21 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:6.0];

  *(v1 + 88) = v36;
  v37 = objc_opt_self();
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v38 = sub_228392190();
  [v37 activateConstraints_];

  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints] = v1;
}

id DurationDatePickerCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DurationDatePickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DurationDatePickerCollectionViewCell.deselectionBehavior(in:)@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22822EC78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22822ED34@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_22822EDD8(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    sub_22821B3F8(319, &qword_27D825070, v1, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_22822D8B4(319, &qword_27D825950, MEMORY[0x277D74AE0], MEMORY[0x277D83940]);
      if (v4 <= 0x3F)
      {
        sub_2283913A0();
        if (v5 <= 0x3F)
        {
          sub_22822D8B4(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
          if (v6 <= 0x3F)
          {
            type metadata accessor for Mode(319);
            if (v7 <= 0x3F)
            {
              type metadata accessor for UIDatePickerStyle(319);
              if (v8 <= 0x3F)
              {
                sub_22822D8B4(319, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
                if (v9 <= 0x3F)
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
}

uint64_t type metadata accessor for MedicationSourceListViewController(uint64_t a1)
{
  result = qword_27D825958;
  if (!qword_27D825958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22822F190(void *a1, void *a2)
{
  sub_22822F844(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  type metadata accessor for MedicationSourceListDataSource(0);
  swift_allocObject();
  v7 = sub_2282B9378(a2, a1);
  sub_2283901F0();
  sub_22822F844(0, &qword_27D827750, sub_228212470, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F40;
  v9 = MEMORY[0x277D10F80];
  *(v8 + 32) = v7;
  *(v8 + 40) = v9;

  sub_228390220();

  v10 = sub_228390480();
  v11 = sub_2283922D0();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_2283922A0();

  v12 = v10;
  v13 = sub_228392290();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v7;
  sub_2281DC568(0, 0, v6, &unk_22839D7F8, v14);

  [v12 setModalPresentationStyle_];

  return v12;
}

void sub_22822F444()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MedicationSourceListViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setPreservesSuperviewLayoutMargins_];

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v3 = sub_228391FC0();

    [v0 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

void sub_22822F560(void *a1)
{
  v1 = a1;
  sub_22822F444();
}

id sub_22822F608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationSourceListViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22822F648()
{
  [v0 setModalPresentationStyle_];
  v1 = [v0 navigationItem];
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v3 = sub_228392640();
  [v1 setRightBarButtonItem_];
}

void sub_22822F790(void *a1)
{
  v1 = a1;
  sub_22822F648();
}

void sub_22822F7D8(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

void sub_22822F844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22822F8A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819D87C;

  return sub_2282B4618(a1, v4, v5, v6);
}

uint64_t MedicationRegularEducationDataSource.init(with:analyticsManager:)(uint64_t a1, uint64_t a2)
{
  v4 = qword_27D825968;
  *(v2 + qword_27D825968) = 0;
  *(v2 + qword_27D825970) = MEMORY[0x277D84FA0];
  *(v2 + qword_27D825978) = a2;
  *(v2 + v4) = a1;
  v5 = qword_280DDCF18;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_22838F0C0();
  v7 = (v2 + qword_27D825980);
  *v7 = v6;
  v7[1] = v8;
  v9 = sub_22838F920();

  sub_22822FB8C(a1);
  sub_228391870();
  sub_228230A78(v11, v9);

  return v9;
}

uint64_t MedicationRegularEducationDataSource.__allocating_init(with:analyticsManager:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_228231C1C(a1, a2);

  return v4;
}

uint64_t MedicationRegularEducationDataSource.init(with:analyticsManager:)(void *a1, uint64_t a2)
{
  v2 = sub_228231C1C(a1, a2);

  return v2;
}

uint64_t sub_22822FB8C(uint64_t a1)
{
  v17[0] = a1;
  v2 = MEMORY[0x277D85248];
  sub_228231FE8(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  sub_228232114(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[2] = a1;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v11 = sub_228392790();
  v17[5] = v11;
  v12 = sub_228392730();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_2281A65B4(0);
  sub_228231DB4(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
  sub_2281A1504();
  sub_228391A70();
  sub_2282321E0(v5, &qword_280DDBAD0, v2);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v17[0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  sub_228231DB4(&unk_27D8259C0, sub_228232114, MEMORY[0x277CBCD60]);

  sub_228391AC0();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22822FEAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_228391870();
    sub_228230A78(v4, v3);
  }

  return result;
}

uint64_t sub_22822FF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v11 = sub_228390090();
  *(v12 + 16) = 0x4024000000000000;
  v11(v22, 0);
  if (*(v2 + qword_27D825968))
  {
    v23 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    v24 = &protocol witness table for HKMedicationUserDomainConcept;

    sub_228391870();
    v13 = v23;
    v14 = v24;
    __swift_project_boxed_opaque_existential_0(v22, v23);
    (v14[6])(v20, v13, v14);
    if (v21)
    {
      __swift_project_boxed_opaque_existential_0(v20, v21);
      v15 = sub_22838F960();
      __swift_destroy_boxed_opaque_existential_0(v20);
      if (v15)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            v16 = sub_228390090();
            *v17 = 0x4024000000000000;
            v16(v20, 0);
          }
        }

        else
        {
          sub_228390000();
          (*(v5 + 8))(v10, v4);
          (*(v5 + 32))(v10, v8, v4);
        }
      }
    }

    else
    {

      sub_22823203C(v20, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
    }

    sub_228231D60(v22);
  }

  v18 = sub_2283900C0();
  (*(v5 + 8))(v10, v4);
  return v18;
}

uint64_t sub_228230220()
{
}

uint64_t MedicationRegularEducationDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return v1;
}

uint64_t MedicationRegularEducationDataSource.__deallocating_deinit(uint64_t a1)
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationRegularEducationDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390420();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  type metadata accessor for MedicationEducationAndComponentsItemCell();
  sub_228231DB4(&qword_27D824620, type metadata accessor for MedicationEducationAndComponentsItemCell, &protocol conformance descriptor for MedicationEducationAndComponentsItemCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
}

uint64_t sub_2282304C0()
{
  sub_228390420();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  type metadata accessor for MedicationEducationAndComponentsItemCell();
  sub_228231DB4(&qword_27D824620, type metadata accessor for MedicationEducationAndComponentsItemCell, &protocol conformance descriptor for MedicationEducationAndComponentsItemCell);
  sub_2283926B0();
  sub_2283904F0();
  return sub_2283926B0();
}

uint64_t MedicationRegularEducationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391590();
  MEMORY[0x28223BE20](v11 - 8);
  if (sub_228392000() == a1 && v12 == a2)
  {

    goto LABEL_13;
  }

  v14 = sub_228393460();

  if (v14)
  {
LABEL_13:

    sub_228391500();
    v18 = sub_22838FB60();
    swift_allocObject();
    v19 = sub_22838FB50();
    a3[3] = v18;
    result = sub_228231DB4(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
    a3[4] = result;
    *a3 = v19;
    return result;
  }

  if (sub_228392000() == a1 && v15 == a2)
  {
  }

  else
  {
    v17 = sub_228393460();

    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!*(v3 + qword_27D825968))
  {
LABEL_20:
    a3[3] = sub_22838FC00();
    a3[4] = sub_228231DB4(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_22838FBF0();
  }

  sub_228391870();
  v21 = v30;
  v22 = [v30 localizedOntologyEducationContent];
  if (v22 && (v23 = v22, v24 = [v22 primarySection], v23, v24))
  {
    v25 = sub_228392A90();

    v32 = v25;
    sub_228231DFC();
    sub_228231DB4(&qword_27D825080, sub_228231DFC, MEMORY[0x277D83958]);
    sub_228391F90();

    v30 = 0x74497265746F6F46;
    v31 = 0xEB000000005F6D65;
    sub_22838F490();
    v26 = sub_22838F450();
    v28 = v27;
    (*(v8 + 8))(v10, v7);
    MEMORY[0x22AAB5C80](v26, v28);

    a3[3] = sub_228390330();
    a3[4] = sub_228231DB4(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_228390320();
  }

  else
  {

    a3[3] = sub_22838FC00();
    a3[4] = sub_228231DB4(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_22838FBF0();
  }
}

uint64_t sub_228230A78(void *a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228231FE8(0, &qword_27D8259B0, MEMORY[0x277D10F78]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_22838FEF0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v51 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v66[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v66[4] = &protocol witness table for HKMedicationUserDomainConcept;
  v66[0] = a1;
  sub_228180FB0(v66, v65);
  v20 = a1;
  sub_22832642C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2282321E0(v8, &qword_27D8259B0, MEMORY[0x277D10F78]);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v51 = v4;
    v52 = v3;
    v22 = *(v10 + 32);
    v22(v19, v8, v9);
    (*(v10 + 16))(v17, v19, v9);
    v21 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_228198AA0((v23 > 1), v24 + 1, 1, v21);
    }

    (*(v10 + 8))(v19, v9);
    *(v21 + 2) = v24 + 1;
    v22(&v21[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24], v17, v9);
    v3 = v52;
    v4 = v51;
  }

  sub_2283266DC(2, &v59);
  if (v60)
  {
    sub_22816DFFC(&v59, v62);
    v25 = *(v56 + qword_27D825978);
    LOBYTE(v59) = 0;
    sub_228327428(&v59, v25, &v57);
    if (v58)
    {
      sub_22816DFFC(&v57, &v59);
    }

    else
    {
      sub_22823203C(&v57, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
      LOBYTE(v57) = 0;
      sub_228326FA8(&v59);
    }

    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_228397F30;
    v30 = v63;
    v29 = v64;
    v31 = __swift_project_boxed_opaque_existential_0(v62, v63);
    *(v28 + 56) = v30;
    *(v28 + 64) = *(v29 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
    (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v31, v30);
    v34 = v60;
    v33 = v61;
    v35 = __swift_project_boxed_opaque_existential_0(&v59, v60);
    *(v28 + 96) = v34;
    *(v28 + 104) = *(v33 + 8);
    v36 = __swift_allocate_boxed_opaque_existential_1((v28 + 72));
    (*(*(v34 - 8) + 16))(v36, v35, v34);
    v37 = v55;
    sub_22838F490();
    sub_22838F450();
    (*(v4 + 8))(v37, v3);
    v38 = v54;
    sub_22838FED0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_228198AA0(0, *(v21 + 2) + 1, 1, v21);
    }

    v40 = *(v21 + 2);
    v39 = *(v21 + 3);
    if (v40 >= v39 >> 1)
    {
      v21 = sub_228198AA0((v39 > 1), v40 + 1, 1, v21);
    }

    *(v21 + 2) = v40 + 1;
    (*(v10 + 32))(&v21[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v40], v38, v9);
    __swift_destroy_boxed_opaque_existential_0(&v59);
  }

  else
  {
    sub_22823203C(&v59, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v26 = *(v56 + qword_27D825978);
    LOBYTE(v62[0]) = 0;
    sub_228327428(v62, v26, &v59);
    v27 = v4;
    if (v60)
    {
      sub_22816DFFC(&v59, v62);
    }

    else
    {
      sub_22823203C(&v59, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
      LOBYTE(v59) = 0;
      sub_228326FA8(v62);
    }

    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_228397F40;
    v43 = v63;
    v42 = v64;
    v44 = __swift_project_boxed_opaque_existential_0(v62, v63);
    *(v41 + 56) = v43;
    *(v41 + 64) = *(v42 + 8);
    v45 = __swift_allocate_boxed_opaque_existential_1((v41 + 32));
    (*(*(v43 - 8) + 16))(v45, v44, v43);
    v46 = v55;
    sub_22838F490();
    sub_22838F450();
    (*(v27 + 8))(v46, v3);
    v47 = v53;
    sub_22838FED0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_228198AA0(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    if (v49 >= v48 >> 1)
    {
      v21 = sub_228198AA0((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v49 + 1;
    (*(v10 + 32))(&v21[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v49], v47, v9);
  }

  __swift_destroy_boxed_opaque_existential_0(v62);
  sub_22838F910();
  sub_22838FCD0();

  sub_22838FF50();

  sub_228231D60(v65);
  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t sub_228231340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v7 = sub_22838F4A0();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228231FE8(0, &qword_27D8259B0, MEMORY[0x277D10F78]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v12 = sub_22838FEF0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v53 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v68[3] = a3;
  v68[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_228180FB0(v68, v67);
  sub_22832642C(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2282321E0(v11, &qword_27D8259B0, MEMORY[0x277D10F78]);
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = v7;
    v25 = *(v13 + 32);
    v25(v22, v11, v12);
    (*(v13 + 16))(v20, v22, v12);
    v24 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_228198AA0((v26 > 1), v27 + 1, 1, v24);
    }

    (*(v13 + 8))(v22, v12);
    *(v24 + 2) = v27 + 1;
    v25(&v24[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v27], v20, v12);
    v7 = v53;
  }

  sub_2283266DC(2, &v61);
  if (v62)
  {
    sub_22816DFFC(&v61, v64);
    v28 = *(v58 + qword_27D825978);
    LOBYTE(v61) = 0;
    sub_228327428(&v61, v28, &v59);
    if (v60)
    {
      sub_22816DFFC(&v59, &v61);
    }

    else
    {
      sub_22823203C(&v59, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
      LOBYTE(v59) = 0;
      sub_228326FA8(&v61);
    }

    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_228397F30;
    v31 = v65;
    v32 = v66;
    v33 = __swift_project_boxed_opaque_existential_0(v64, v65);
    *(v30 + 56) = v31;
    *(v30 + 64) = *(v32 + 8);
    v34 = __swift_allocate_boxed_opaque_existential_1((v30 + 32));
    (*(*(v31 - 8) + 16))(v34, v33, v31);
    v35 = v62;
    v36 = v63;
    v37 = __swift_project_boxed_opaque_existential_0(&v61, v62);
    *(v30 + 96) = v35;
    *(v30 + 104) = *(v36 + 8);
    v38 = __swift_allocate_boxed_opaque_existential_1((v30 + 72));
    (*(*(v35 - 8) + 16))(v38, v37, v35);
    v39 = v56;
    sub_22838F490();
    sub_22838F450();
    (*(v57 + 8))(v39, v7);
    v40 = v55;
    sub_22838FED0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_228198AA0(0, *(v24 + 2) + 1, 1, v24);
    }

    v42 = *(v24 + 2);
    v41 = *(v24 + 3);
    if (v42 >= v41 >> 1)
    {
      v24 = sub_228198AA0((v41 > 1), v42 + 1, 1, v24);
    }

    *(v24 + 2) = v42 + 1;
    (*(v13 + 32))(&v24[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v42], v40, v12);
    __swift_destroy_boxed_opaque_existential_0(&v61);
  }

  else
  {
    sub_22823203C(&v61, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v29 = *(v58 + qword_27D825978);
    LOBYTE(v64[0]) = 0;
    sub_228327428(v64, v29, &v61);
    if (v62)
    {
      sub_22816DFFC(&v61, v64);
    }

    else
    {
      sub_22823203C(&v61, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
      LOBYTE(v61) = 0;
      sub_228326FA8(v64);
    }

    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_228397F40;
    v44 = v65;
    v45 = v66;
    v46 = __swift_project_boxed_opaque_existential_0(v64, v65);
    *(v43 + 56) = v44;
    *(v43 + 64) = *(v45 + 8);
    v47 = __swift_allocate_boxed_opaque_existential_1((v43 + 32));
    (*(*(v44 - 8) + 16))(v47, v46, v44);
    v48 = v56;
    sub_22838F490();
    sub_22838F450();
    (*(v57 + 8))(v48, v7);
    v49 = v54;
    sub_22838FED0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_228198AA0(0, *(v24 + 2) + 1, 1, v24);
    }

    v51 = *(v24 + 2);
    v50 = *(v24 + 3);
    if (v51 >= v50 >> 1)
    {
      v24 = sub_228198AA0((v50 > 1), v51 + 1, 1, v24);
    }

    *(v24 + 2) = v51 + 1;
    (*(v13 + 32))(&v24[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v51], v49, v12);
  }

  __swift_destroy_boxed_opaque_existential_0(v64);
  sub_22838F910();
  sub_22838FCD0();

  sub_22838FF50();

  sub_228231D60(v67);
  return __swift_destroy_boxed_opaque_existential_0(v68);
}

uint64_t sub_228231C1C(void *a1, uint64_t a2)
{
  *(v2 + qword_27D825968) = 0;
  *(v2 + qword_27D825970) = MEMORY[0x277D84FA0];
  *(v2 + qword_27D825978) = a2;
  v4 = qword_280DDCF18;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_22838F0C0();
  v6 = (v2 + qword_27D825980);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_22838F920();
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_0(a1, v9);

  sub_228231340(v11, v8, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_228231DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228231DFC()
{
  if (!qword_27D827E10)
  {
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827E10);
    }
  }
}

uint64_t type metadata accessor for MedicationRegularEducationDataSource(uint64_t a1)
{
  result = qword_27D8259A0;
  if (!qword_27D8259A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of MedicationRegularEducationDataSource.__allocating_init(with:analyticsManager:)()
{
  return (*(v0 + class metadata base offset for MedicationRegularEducationDataSource + 80))();
}

{
  return (*(v0 + class metadata base offset for MedicationRegularEducationDataSource + 88))();
}

void sub_228231FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_22823203C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2282320AC(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2282320AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_228232114(uint64_t a1)
{
  if (!qword_27D8259B8)
  {
    sub_2281A65B4(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228231DB4(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8259B8);
    }
  }
}

uint64_t sub_2282321E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228231FE8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id MedicationChartUserInfo.__allocating_init(takenCount:skippedCount:statisticsInterval:medication:windowTakenCount:windowSkippedCount:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_takenCount] = a5;
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_skippedCount] = a6;
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval;
  v16 = sub_22838F080();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v14[v15], a1, v16);
  sub_228180FB0(a2, &v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication]);
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowTakenCount] = a3;
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowSkippedCount] = a4;
  v20.receiver = v14;
  v20.super_class = v7;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v17 + 8))(a1, v16);
  return v18;
}

id MedicationChartUserInfo.init(takenCount:skippedCount:statisticsInterval:medication:windowTakenCount:windowSkippedCount:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_takenCount] = a5;
  *&v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_skippedCount] = a6;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval;
  v12 = sub_22838F080();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v6[v11], a1, v12);
  sub_228180FB0(a2, &v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication]);
  *&v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowTakenCount] = a3;
  *&v6[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowSkippedCount] = a4;
  v16.receiver = v6;
  v16.super_class = type metadata accessor for MedicationChartUserInfo(0);
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v13 + 8))(a1, v12);
  return v14;
}

uint64_t sub_2282325DC()
{
  sub_228233E5C(0, &unk_280DDCD70, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - v2;
  sub_228233E5C(0, &qword_280DDCD80, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_22838F080();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_statisticsInterval;
  v12 = sub_22838F6C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v25 = v13 + 56;
  v26 = v14;
  v14(v6, 1, 1, v12);
  v15 = sub_22838F700();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v23[2] = v16 + 56;
  v24 = v17;
  v17(v3, 1, 1, v15);
  v28 = v3;
  sub_22838F060();
  v18 = sub_228233EB0();
  v30 = v0;
  v27 = v11;
  v23[1] = v18;
  LOBYTE(v3) = sub_228391FB0();
  v19 = *(v8 + 8);
  v29 = v8 + 8;
  v19(v10, v7);
  v20 = 0;
  if ((v3 & 1) == 0)
  {
    v26(v6, 1, 1, v12);
    v24(v28, 1, 1, v15);
    sub_22838F060();
    v21 = sub_228391FB0();
    v19(v10, v7);
    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

double sub_2282329D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount);
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount) / v1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowSkippedCount);
  if (v4)
  {
    v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount) / v4;
  }

  return v3 + v2;
}

id MedicationChartPoint.__allocating_init(startDate:endDate:takenCount:skippedCount:statisticsInterval:medication:windowTakenCount:windowSkippedCount:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v17 = a4[3];
  v18 = a4[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v20 = sub_2282338CC(a1, a2, a3, v19, a5, a6, a7, a8, v8, v17, v18);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v20;
}

id MedicationChartPoint.init(startDate:endDate:takenCount:skippedCount:statisticsInterval:medication:windowTakenCount:windowSkippedCount:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v17 = a4[3];
  v18 = a4[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_228233688(a1, a2, a3, v21, a5, a6, v8, v17, a7, a8, v18);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v23;
}

uint64_t sub_228232C30@<X0>(uint64_t *a1@<X8>)
{
  sub_228233E5C(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v3 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = sub_22838F380();
  v7 = sub_22838F380();
  v8 = HKUIMidDate();

  if (v8)
  {
    sub_22838F3E0();

    v9 = sub_22838F440();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v10 = sub_22838F440();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2281E793C(v5, boxed_opaque_existential_1);
}

id sub_228232DB4(void *a1)
{
  v1 = a1;
  sub_228232C30(v4);

  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  v2 = sub_228393450();
  __swift_destroy_boxed_opaque_existential_0(v4);

  return v2;
}

void sub_228232E2C(uint64_t a1@<X8>)
{
  if (sub_2282325DC())
  {
    v3 = sub_2282329D8();
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount) + *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount);
  }

  *(a1 + 24) = MEMORY[0x277D839F8];
  *a1 = v3;
}

uint64_t sub_228232F18()
{
  v1 = sub_2282325DC();
  sub_228233A0C();
  result = swift_allocObject();
  *(result + 16) = xmmword_228397F30;
  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount) / v3;
    }

    else
    {
      v4 = 0.0;
    }

    v8 = MEMORY[0x277D839F8];
    *(result + 56) = MEMORY[0x277D839F8];
    *(result + 32) = v4;
    v9 = result;
    v10 = sub_2282329D8();
    result = v9;
    *(v9 + 88) = v8;
    *(v9 + 64) = v10;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount);
    v6 = MEMORY[0x277D839F8];
    *(result + 56) = MEMORY[0x277D839F8];
    *(result + 32) = v5;
    v7 = v5 + *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount);
    *(result + 88) = v6;
    *(result + 64) = v7;
  }

  return result;
}

uint64_t sub_228233054@<X0>(uint64_t a1@<X8>)
{
  result = sub_2282325DC();
  if (result)
  {
    v4 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount);
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount) / v4;
    }

    else
    {
      v5 = 0.0;
    }
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount);
  }

  *(a1 + 24) = MEMORY[0x277D839F8];
  *a1 = v5;
  return result;
}

id sub_228233204(void *a1)
{
  v1 = a1;
  if (sub_2282325DC())
  {
    sub_2282329D8();
  }

  v2 = sub_228393480();

  return v2;
}

id sub_228233294()
{
  v1 = sub_22838F080();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount);
  v6 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount);
  v7 = *(v2 + 16);
  v7(v4, v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_statisticsInterval, v1);
  sub_228180FB0(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_medication, v16);
  v8 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount);
  v9 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowSkippedCount);
  v10 = type metadata accessor for MedicationChartUserInfo(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_takenCount] = v5;
  *&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_skippedCount] = v6;
  v7(&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval], v4, v1);
  sub_228180FB0(v16, &v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication]);
  *&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowTakenCount] = v8;
  *&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowSkippedCount] = v9;
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v16);
  (*(v2 + 8))(v4, v1);
  return v12;
}

id MedicationChartPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_228233568(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_228233688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v33[3] = a8;
  v33[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  *&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount] = a9;
  *&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount] = a10;
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_startDate;
  v22 = sub_22838F440();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v24(&a7[v21], a1, v22);
  v24(&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_endDate], a2, v22);
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_statisticsInterval;
  v26 = sub_22838F080();
  v27 = *(v26 - 8);
  (*(v27 + 16))(&a7[v25], a3, v26);
  sub_228180FB0(v33, &a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_medication]);
  *&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount] = a5;
  *&a7[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowSkippedCount] = a6;
  v32.receiver = a7;
  v32.super_class = type metadata accessor for MedicationChartPoint(0);
  v28 = objc_msgSendSuper2(&v32, sel_init);
  (*(v27 + 8))(a3, v26);
  v29 = *(v23 + 8);
  v29(a2, v22);
  v29(a1, v22);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v28;
}

id sub_2282338CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a6;
  v19 = *(a10 - 8);
  MEMORY[0x28223BE20](a1);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(type metadata accessor for MedicationChartPoint(0));
  (*(v19 + 16))(v21, a4, a10);
  return sub_228233688(a1, a2, a3, v21, a5, v25, v22, a10, a7, a8, a11);
}

void sub_228233A0C()
{
  if (!qword_27D8247D8)
  {
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8247D8);
    }
  }
}

uint64_t sub_228233A88(uint64_t a1)
{
  result = sub_22838F080();
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

uint64_t sub_228233B68(uint64_t a1)
{
  result = sub_22838F440();
  if (v2 <= 0x3F)
  {
    result = sub_22838F080();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_228233E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_228233EB0()
{
  result = qword_27D825A80;
  if (!qword_27D825A80)
  {
    sub_22838F080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825A80);
  }

  return result;
}

uint64_t type metadata accessor for FormStepResult(uint64_t a1)
{
  result = qword_27D825A90;
  if (!qword_27D825A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228233F74(uint64_t a1)
{
  sub_228390C30();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKMedicationFreeTextFormTypeCode(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_228234030()
{
  v1 = v0;
  v2 = sub_228390C30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormStepResult(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228393520();
  sub_228234878(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x22AAB7100](*v8);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_22823493C(&unk_27D825AB0, MEMORY[0x277D116A0], MEMORY[0x277D116A8]);
    sub_228391F70();
    (*(v3 + 8))(v5, v2);
  }

  return sub_228393570();
}

uint64_t sub_2282341F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_228390C30();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228234878(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return MEMORY[0x22AAB7100](*v9);
  }

  (*(v4 + 32))(v7, v9, v3);
  sub_22823493C(&unk_27D825AB0, MEMORY[0x277D116A0], MEMORY[0x277D116A8]);
  sub_228391F70();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22823439C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_228390C30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228393520();
  sub_228234878(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x22AAB7100](*v10);
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    sub_22823493C(&unk_27D825AB0, MEMORY[0x277D116A0], MEMORY[0x277D116A8]);
    sub_228391F70();
    (*(v5 + 8))(v8, v4);
  }

  return sub_228393570();
}

uint64_t sub_22823455C(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390C30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormStepResult(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  sub_228234814(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_228234878(a1, v17);
  sub_228234878(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_228234878(v17, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = sub_228234814;
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *v11 == *&v17[v18];
LABEL_8:
      v20 = type metadata accessor for FormStepResult;
      goto LABEL_9;
    }

    v21 = 0;
  }

  else
  {
    sub_228234878(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      v21 = sub_228390C20();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v13, v4);
      goto LABEL_8;
    }

    (*(v5 + 8))(v13, v4);
    v21 = 0;
    v20 = sub_228234814;
  }

LABEL_9:
  sub_2282348DC(v17, v20);
  return v21 & 1;
}

void sub_228234814(uint64_t a1)
{
  if (!qword_27D825AA8)
  {
    type metadata accessor for FormStepResult(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D825AA8);
    }
  }
}

uint64_t sub_228234878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormStepResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282348DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22823493C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2282349D0(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = v3;
    v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v9 = sub_228392AD0();
    [v8 setFont_];

    [v8 setNumberOfLines_];
    v10 = [objc_opt_self() labelColor];
    [v8 setTextColor_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v7 + v4);
    *(v7 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

uint64_t sub_228234B14@<X0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v3, v10);
  if (v10[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    result = swift_dynamicCast();
    if (result)
    {
      v5 = v9[3];
      a1[2] = v9[2];
      a1[3] = v5;
      a1[4] = v9[4];
      v6 = v9[1];
      *a1 = v9[0];
      a1[1] = v6;
      return result;
    }

    v7 = v1;
  }

  else
  {
    v7 = v1;
    sub_22819482C(v10);
  }

  *&v9[0] = 0;
  *(&v9[0] + 1) = 0xE000000000000000;
  sub_2283931D0();

  v10[0] = 0xD000000000000026;
  v10[1] = 0x80000002283ADC30;
  sub_22817E6C8(v7 + v3, v9);
  sub_228181D50(0);
  v8 = sub_228392040();
  MEMORY[0x22AAB5C80](v8);

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t sub_228234C7C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228234CEC();
  return sub_22819482C(v6);
}

uint64_t sub_228234CEC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v1, v17);
  if (!v17[3])
  {
    sub_22819482C(v17);
    goto LABEL_11;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_2283931D0();

    v17[0] = 0xD000000000000026;
    v17[1] = 0x80000002283ADC30;
    sub_22817E6C8(v0 + v1, v10);
    sub_228181D50(0);
    v9 = sub_228392040();
    MEMORY[0x22AAB5C80](v9);

    result = sub_228393300();
    __break(1u);
    return result;
  }

  v2 = sub_2282349A0();
  v3 = v2;
  if (v13)
  {
    [v2 setAttributedText_];
  }

  else
  {
    v4 = sub_228391FC0();
    [v3 setText_];
  }

  v5 = sub_2282349B8();
  v6 = v5;
  if (v16)
  {
    [v5 setAttributedText_];
  }

  else
  {
    v7 = sub_228391FC0();
    [v6 setText_];
  }

  sub_2282354CC();

  sub_2281EA7E0(v11, v12, v13);
  sub_2281EA7E0(v14, v15, v16);
}

uint64_t sub_228234F40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228234F98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228234CEC();
  return sub_22819482C(a1);
}

uint64_t (*sub_228235004(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228235068;
}

uint64_t sub_228235068(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228234CEC();
  }

  return result;
}

id TitleWithSubtitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TitleWithSubtitleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_customConstraints] = MEMORY[0x277D84F90];
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item];
  v10 = type metadata accessor for TitleWithSubtitleView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228235358();

  return v11;
}

uint64_t sub_228235358()
{
  v1 = sub_2282349A0();
  [v0 addSubview_];

  v2 = sub_2282349B8();
  [v0 addSubview_];

  sub_2282354CC();
  sub_2282355CC(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228397F30;
  v4 = sub_2283915A0();
  v5 = MEMORY[0x277D74C50];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = sub_228391640();
  v7 = MEMORY[0x277D74DB8];
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_228235478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2282354CC();
  }
}

id sub_2282354CC()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_customConstraints;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v3 = sub_228392190();

  [v1 deactivateConstraints_];

  *&v0[v2] = sub_22823562C();

  v4 = sub_228392190();

  [v1 activateConstraints_];

  return [v0 setNeedsLayout];
}

void sub_2282355CC(uint64_t a1)
{
  if (!qword_27D825090)
  {
    sub_2281D51F0();
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825090);
    }
  }
}

uint64_t sub_22823562C()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399E10;
  v2 = sub_2282349A0();
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___titleLabel;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___titleLabel] leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:2.0];

  *(v1 + 40) = v9;
  v10 = [v0 trailingAnchor];
  v11 = [*&v0[v6] trailingAnchor];
  v12 = [v10 &selRef_resignFirstResponder + 6];

  *(v1 + 48) = v12;
  v13 = sub_2282349B8();
  v14 = [v13 topAnchor];

  v15 = [*&v0[v6] bottomAnchor];
  v16 = [v14 &selRef_resignFirstResponder + 6];

  *(v1 + 56) = v16;
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___subtitleLabel;
  v18 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___subtitleLabel] leadingAnchor];
  v19 = [*&v0[v6] leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v1 + 64) = v20;
  v21 = [*&v0[v17] trailingAnchor];
  v22 = [*&v0[v6] trailingAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v1 + 72) = v23;
  v24 = [v0 bottomAnchor];
  v25 = [*&v0[v17] lastBaselineAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

  *(v1 + 80) = v26;
  return v1;
}

id TitleWithSubtitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleWithSubtitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282359F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_228235A50(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_228234CEC();
  return sub_22819482C(a1);
}

uint64_t (*sub_228235AC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_228235068;
}

uint64_t MedicationSecondaryEducationType.shouldShowCriticalButton(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v2);

  return sub_228236718(v4, v1, v2, v3);
}

uint64_t MedicationSecondaryEducationType.title.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v1 = &qword_27D826AD0;
        goto LABEL_8;
      }
    }

    else if (qword_27D823310 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v1 = &qword_280DDCF20;
LABEL_8:
  v2 = *v1;

  v3 = sub_22838F0C0();

  return v3;
}

uint64_t MedicationSecondaryEducationType.content(from:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v2);

  return sub_22823651C(v4, v1, v2, v3);
}

uint64_t MedicationSecondaryEducationType.automationSuffix.getter()
{
  v1 = 0x636E616E67657250;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617463614CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6666452065646953;
  }
}

uint64_t MedicationSecondaryEducationType.titleKey.getter()
{
  v1 = 0x434E414E47455250;
  if (*v0 != 1)
  {
    v1 = 0x4F4954415443414CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t MedicationSecondaryEducationType.source.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    if (qword_27D823310 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v2 = &qword_27D826AD0;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      v9 = a1;
      swift_once();
      a1 = v9;
    }

    v2 = &qword_280DDCF20;
  }

  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a1 = *v2;
  a1[1] = v4;
  a1[2] = v5;
  v6 = v3;
}

uint64_t MedicationSecondaryEducationType.text.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v1 = &qword_27D826AD0;
        goto LABEL_8;
      }
    }

    else if (qword_27D823310 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v1 = &qword_280DDCF20;
LABEL_8:
  v2 = *v1;

  v3 = sub_22838F0C0();

  return v3;
}

uint64_t MedicationSecondaryEducationType.textKey.getter()
{
  v1 = 0x434E414E47455250;
  if (*v0 != 1)
  {
    v1 = 0x4F4954415443414CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t MedicationSecondaryEducationType.unavailableText.getter()
{
  if (*v0)
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    v1 = &qword_27D826AD0;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v1 = &qword_280DDCF20;
  }

  v2 = *v1;

  v3 = sub_22838F0C0();

  return v3;
}

unint64_t MedicationSecondaryEducationType.unavailableKey.getter()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t MedicationSecondaryEducationType.uniqueIdentifier.getter()
{
  v1 = 0x636E616E67657270;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617463616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6566664565646973;
  }
}

uint64_t MedicationSecondaryEducationType.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_22823651C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  if (!*a2)
  {
    (*(a4 + 48))(v14, a3, a4);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v10 = sub_22838F980();
      goto LABEL_9;
    }

LABEL_10:
    sub_228236928(v14);
    v11 = 0;
    goto LABEL_11;
  }

  if (*a2 != 1)
  {
    (*(a4 + 48))(v14, a3, a4);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v10 = sub_22838F9A0();
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  (*(a4 + 48))(v14, a3, a4);
  if (!v15)
  {
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_0(v14, v15);
  v10 = sub_22838F9B0();
LABEL_9:
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_11:
  (*(v7 + 8))(v9, a3);
  return v11;
}

uint64_t sub_228236718(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  if (!*a2)
  {
    goto LABEL_9;
  }

  if (*a2 != 1)
  {
    (*(a4 + 48))(v14, a3, a4);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v10 = sub_22838F9C0();
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  (*(a4 + 48))(v14, a3, a4);
  if (!v15)
  {
LABEL_8:
    sub_228236928(v14);
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_0(v14, v15);
  v10 = sub_22838F9D0();
LABEL_7:
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_10:
  (*(v7 + 8))(v9, a3);
  return v11 & 1;
}

unint64_t sub_2282368C4()
{
  result = qword_27D825AE0;
  if (!qword_27D825AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825AE0);
  }

  return result;
}

uint64_t sub_228236928(uint64_t a1)
{
  sub_228236984(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228236984(uint64_t a1)
{
  if (!qword_27D825988)
  {
    sub_2282369DC();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825988);
    }
  }
}

unint64_t sub_2282369DC()
{
  result = qword_27D825990;
  if (!qword_27D825990)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D825990);
  }

  return result;
}

uint64_t sub_228236A40@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v19 = sub_22838F250();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F270();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838F440();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 16);
  v21 = *a1;
  v22 = v12;
  LoggableDose.scheduleDate.getter(v13);
  sub_22838F260();
  sub_22838F240();
  v14 = sub_22838F400();
  v16 = v15;
  (*(v3 + 8))(v5, v19);
  (*(v7 + 8))(v9, v6);
  result = (*(v11 + 8))(v13, v10);
  v18 = v20;
  *v20 = v14;
  v18[1] = v16;
  return result;
}

uint64_t sub_228236C88(__int128 *a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = *(a1 + 16);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v19 = *a1;
  v20 = v11;
  LoggableDose.scheduleDate.getter(v17 - v9);
  v17[1] = v12;
  v17[2] = v13;
  v18 = v14;
  LoggableDose.scheduleDate.getter(v8);
  LOBYTE(a2) = sub_22838F3A0();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a2 & 1;
}

uint64_t sub_228236DE4@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v19 = sub_22838F250();
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22838F270();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228390A10();
  v13 = [v12 startDate];

  sub_22838F3E0();
  sub_22838F260();
  sub_22838F240();
  v14 = sub_22838F400();
  v16 = v15;
  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v11, v8);
  v18 = v20;
  *v20 = v14;
  v18[1] = v16;
  return result;
}

uint64_t sub_228237048()
{
  v0 = sub_22838F440();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = sub_228390A10();
  v8 = [v7 startDate];

  sub_22838F3E0();
  v9 = sub_228390A10();
  v10 = [v9 startDate];

  sub_22838F3E0();
  LOBYTE(v9) = sub_22838F3A0();
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v6, v0);
  return v9 & 1;
}

uint64_t sub_228237284(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_2282373C8(255, a3, a4, a5);
  v6 = sub_2283916D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  sub_2283919A0();
  swift_getWitnessTable();
  v10 = sub_228391990();
  (*(v7 + 8))(v9, v6);
  return v10;
}

void sub_2282373C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2281810DC(255, a3, a4);
    v5 = sub_228392240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228237474@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, void, uint64_t, void, void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  a4(a2, 0, a3, 0, *a1);
  v8 = a5();

  *a6 = v8;
  return result;
}

uint64_t Publisher.delayIf<A>(condition:for:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a2;
  v54 = a8;
  v55 = a3;
  v57 = a4;
  v58 = a1;
  v51 = a6;
  v53 = *(a6 - 8);
  v56 = *(v53 + 64);
  MEMORY[0x28223BE20](a1);
  v52 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v43 - v14;
  swift_getAssociatedTypeWitness();
  v16 = sub_2283917F0();
  v17 = swift_getAssociatedTypeWitness();
  v18 = v16;
  v50 = v16;
  WitnessTable = swift_getWitnessTable();
  v49 = WitnessTable;
  v45 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = v18;
  v61 = v17;
  v62 = WitnessTable;
  v63 = AssociatedConformanceWitness;
  v21 = sub_228391710();
  v22 = swift_getWitnessTable();
  v60 = v21;
  v61 = a5;
  v23 = a5;
  v43[1] = a5;
  v62 = v22;
  v63 = a7;
  v24 = sub_228391780();
  v25 = *(v24 - 8);
  v47 = v24;
  v48 = v25;
  MEMORY[0x28223BE20](v24);
  v46 = v43 - v26;
  v27 = v12;
  v28 = *(v12 + 16);
  v29 = v15;
  v28(v15, v55, AssociatedTypeWitness);
  v31 = v52;
  v30 = v53;
  v32 = v51;
  (*(v53 + 16))(v52, v57, v51);
  v33 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v34 = (v13 + *(v30 + 80) + v33) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v23;
  *(v35 + 3) = v32;
  v36 = v44;
  v37 = v54;
  *(v35 + 4) = v45;
  *(v35 + 5) = v37;
  v38 = v59;
  *(v35 + 6) = v58;
  *(v35 + 7) = v38;
  (*(v27 + 32))(&v35[v33], v29, v36);
  (*(v30 + 32))(&v35[v34], v31, v32);

  sub_2283917E0();
  v39 = v46;
  sub_228391A40();

  v40 = v47;
  swift_getWitnessTable();
  v41 = sub_228391990();
  (*(v48 + 8))(v39, v40);
  return v41;
}

uint64_t sub_228237970@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t *a8@<X8>, uint64_t a9)
{
  v56 = a4;
  v47 = a3;
  v51 = a2;
  v52 = a1;
  v58 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_2283918B0();
  WitnessTable = swift_getWitnessTable();
  v59 = v11;
  v60 = a6;
  v61 = WitnessTable;
  v62 = a9;
  v13 = sub_2283917D0();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v44 = &v40 - v14;
  v49 = swift_getAssociatedTypeWitness();
  v15 = sub_228392F00();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x28223BE20](v15);
  v50 = &v40 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v41 = swift_getAssociatedTypeWitness();
  v17 = sub_228392F00();
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v40 - v23;
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v40 - v25;
  v57 = v11;
  v59 = v11;
  v60 = a6;
  v55 = WitnessTable;
  v61 = WitnessTable;
  v62 = a9;
  v27 = sub_228391760();
  v40 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v40 - v29;
  v31 = v51(v28);
  (*(v21 + 16))(v24, v52, AssociatedTypeWitness);
  sub_2283918C0();
  if (v31)
  {
    (*(*(v41 - 8) + 56))(v20, 1, 1);
    v32 = v50;
    (*(*(v49 - 8) + 56))(v50, 1, 1);
    v33 = v57;
    sub_228391A20();
    (*(v53 + 8))(v32, v54);
    (*(v42 + 8))(v20, v43);
    (*(v48 + 8))(v26, v33);
    swift_getWitnessTable();
    v34 = sub_228391990();
    result = (*(v40 + 8))(v30, v27);
  }

  else
  {
    v36 = v50;
    (*(*(v49 - 8) + 56))(v50, 1, 1);
    v37 = v44;
    v38 = v57;
    sub_228391A70();
    (*(v53 + 8))(v36, v54);
    (*(v48 + 8))(v26, v38);
    v39 = v46;
    swift_getWitnessTable();
    v34 = sub_228391990();
    result = (*(v45 + 8))(v37, v39);
  }

  *v58 = v34;
  return result;
}

uint64_t sub_228237FD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  return sub_228237970(a1, *(v2 + 48), v2 + v8, v2 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v5, a2, v6);
}

uint64_t type metadata accessor for ShapeSelectionViewController(uint64_t a1)
{
  result = qword_27D825B00;
  if (!qword_27D825B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2282381D4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ShapeSelectionViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  [result setPreservesSuperviewLayoutMargins_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  result = sub_228390490();
  if (result)
  {
    sub_2283902D0();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2282382D0(void *a1)
{
  v1 = a1;
  sub_2282381D4();
}

void sub_228238374(void *a1)
{
  sub_22823894C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  sub_22823894C(0, &qword_27D8238B0, sub_228181CBC);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  sub_228181CBC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v13 animated:1];

  v14 = sub_22838F710();
  v23 = [a1 cellForItemAtIndexPath_];

  if (v23)
  {
    type metadata accessor for ShapeCell();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
      v17 = v15;
      swift_beginAccess();
      sub_22817E6C8(v17 + v16, v24);
      if (!v25)
      {

        sub_2282389A0(v24, &qword_280DDCD50, sub_22817A700);
        (*(v10 + 56))(v7, 1, 1, v9);
        goto LABEL_10;
      }

      sub_22817A700();
      v18 = swift_dynamicCast();
      (*(v10 + 56))(v7, v18 ^ 1u, 1, v9);
      if ((*(v10 + 48))(v7, 1, v9) == 1)
      {

LABEL_10:
        sub_2282389A0(v7, &qword_27D8238B0, sub_228181CBC);
        return;
      }

      sub_228181E18(v7, v12);
      v20 = sub_2283909E0();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v4, v12, v20);
      (*(v21 + 56))(v4, 0, 1, v20);

      sub_228391850();

      sub_2282389A0(v4, &qword_27D8238A8, MEMORY[0x277D11640]);
      sub_2282389FC(v12);
    }

    else
    {
      v19 = v23;
    }
  }
}

uint64_t sub_228238790(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_228238374(v10);

  return (*(v7 + 8))(v9, v6);
}

id sub_2282388FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeSelectionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22823894C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2282389A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22823894C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282389FC(uint64_t a1)
{
  sub_228181CBC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_228238A58()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v4 setNumberStyle_];
    [v4 setMaximumFractionDigits_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_228238AF4(unint64_t a1, uint64_t a2)
{
  v3 = sub_2281BFC38(a1);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  v38 = a2;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v3 & 0xC000000000000001;
  if (v6)
  {
    while (1)
    {
      v8 = 0;
      v9 = 0.0;
      v10 = 0.0;
      while (v7)
      {
        v11 = MEMORY[0x22AAB6D80](v8, v4);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_12:
          __break(1u);
          return MEMORY[0x277D84F90];
        }

LABEL_8:
        v9 = v9 + *&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_takenCount];
        v13 = *&v11[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_skippedCount];

        v10 = v10 + v13;
        ++v8;
        if (v12 == v6)
        {
          goto LABEL_17;
        }
      }

      if (v8 < *(v5 + 16))
      {
        break;
      }

      __break(1u);
LABEL_15:
      v6 = sub_2283930D0();
      v7 = v4 & 0xC000000000000001;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    v11 = *(v4 + 8 * v8 + 32);
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_16:
  v10 = 0.0;
  v9 = 0.0;
LABEL_17:
  v15 = v4;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  while (v6 != v16)
  {
    if (v7)
    {
      v19 = MEMORY[0x22AAB6D80](v16, v4);
      if (__OFADD__(v16, 1))
      {
LABEL_28:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v16 >= *(v5 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v19 = *(v4 + 8 * v16 + 32);
      if (__OFADD__(v16, 1))
      {
        goto LABEL_28;
      }
    }

    v20 = *&v19[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowTakenCount];
    v21 = __OFADD__(v18, v20);
    v18 += v20;
    if (v21)
    {
      goto LABEL_45;
    }

    a2 = *&v19[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_windowSkippedCount];

    ++v16;
    v21 = __OFADD__(v17, a2);
    v17 += a2;
    if (v21)
    {
      goto LABEL_46;
    }
  }

  a2 = [objc_allocWithZone(MEMORY[0x277D12A38]) initWithStatisticsType_];
  if (qword_280DDCF18 == -1)
  {
    goto LABEL_30;
  }

LABEL_47:
  swift_once();
LABEL_30:
  sub_22838F0C0();
  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_228391FC0();

  v24 = [v22 initWithString_];

  [a2 setAttributedString_];
  sub_228180ED0();
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = xmmword_228396260;
  *(result + 32) = a2;
  if (v9 <= 0.0 && v10 <= 0.0 || !v6)
  {

    return v14;
  }

  v37 = a2;
  if (v7)
  {
    v36 = a2;
    v28 = MEMORY[0x22AAB6D80](0, v15);
LABEL_36:
    v29 = v28;

    v30 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication;
    v31 = OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval;
    v32 = sub_228238FAC(&v29[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_medication], 0x1C, v18, &v29[OBJC_IVAR____TtC19HealthMedicationsUI23MedicationChartUserInfo_statisticsInterval], v38, v9);
    if (v32)
    {
      v33 = v32;
      v34 = sub_228238FAC(&v29[v30], 0x1D, v17, &v29[v31], v38, v10);
      if (!v34)
      {

        goto LABEL_42;
      }

      v35 = v34;

      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_228397F20;
      *(v14 + 32) = v33;
      *(v14 + 40) = v35;
    }

LABEL_42:
    return v14;
  }

  if (*(v5 + 16))
  {
    v26 = *(v15 + 32);
    v27 = a2;
    v28 = v26;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

id sub_228238FAC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, double a6)
{
  v80 = a4;
  v77 = a5;
  v78 = a3;
  v70 = a1;
  v71 = a2;
  v6 = MEMORY[0x277D83D88];
  sub_228239B40(0, &unk_280DDCD70, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v67 - v8;
  sub_228239B40(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v67 - v11;
  *&v76 = sub_22838F080();
  v13 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22838F6C0();
  v17 = *(v16 - 8);
  v74 = *(v17 + 56);
  v75 = (v17 + 56);
  v74(v12, 1, 1, v16);
  v18 = sub_22838F700();
  v19 = *(v18 - 8);
  v72 = *(v19 + 56);
  v73 = v19 + 56;
  v72(v9, 1, 1, v18);
  sub_22838F060();
  v81 = MEMORY[0x22AAB2B60](v80, v15);
  v20 = *(v13 + 8);
  v21 = v76;
  v20(v15, v76);
  v74(v12, 1, 1, v16);
  v72(v9, 1, 1, v18);
  sub_22838F060();
  v22 = MEMORY[0x22AAB2B60](v80, v15);
  v20(v15, v21);
  if (v77)
  {
    v23 = v81;
    if (v77 != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v23 = v81 | v22;
  }

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 8;
  }

  v25 = sub_228238A58();
  v26 = sub_22838F770();
  v27 = [v25 stringForObjectValue_];

  if (!v27)
  {
    return 0;
  }

  v67[0] = v24;
  v81 = v23;
  __swift_project_boxed_opaque_existential_0(v70, v70[3]);
  v77 = sub_228390DA0();
  v78 = v28;
  v80 = [objc_allocWithZone(MEMORY[0x277D12A38]) initWithStatisticsType_];
  [v80 setDataType_];
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228399D40;
  sub_228239B40(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  v31 = v30;
  v32 = swift_initStackObject();
  v76 = xmmword_228397F30;
  *(v32 + 16) = xmmword_228397F30;
  v33 = *MEMORY[0x277D740A8];
  *(v32 + 32) = *MEMORY[0x277D740A8];
  v34 = objc_opt_self();
  v35 = v33;
  v75 = v34;
  v36 = [v34 hk_chartCurrentValueValueFont];
  v37 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  *(v32 + 40) = v36;
  v38 = *MEMORY[0x277D740C0];
  v73 = v37;
  *(v32 + 64) = v37;
  *(v32 + 72) = v38;
  v39 = objc_opt_self();
  v71 = v38;
  v72 = v39;
  v40 = [v39 hk_chartLollipopValueColor];
  v68 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  *(v32 + 104) = v68;
  *(v32 + 80) = v40;
  sub_2281A859C(v32);
  swift_setDeallocating();
  sub_2281D50E8(0);
  v67[1] = v41;
  swift_arrayDestroy();
  v42 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  v44 = v43;
  sub_228239BA4();
  v70 = v44;
  v45 = sub_228391F10();

  v46 = [v42 initWithString:v27 attributes:v45];

  *(inited + 32) = v46;
  v69 = inited + 32;
  v74 = v31;
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_228397F40;
  v48 = v35;
  *(v47 + 32) = v35;
  v49 = [v79 minorFont];
  if (v49)
  {
    v50 = v73;
    *(v47 + 64) = v73;
    *(v47 + 40) = v49;
    sub_2281A859C(v47);
    swift_setDeallocating();
    sub_228239BFC(v47 + 32);
    v51 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v52 = sub_228391FC0();
    v53 = sub_228391F10();

    v54 = [v51 initWithString:v52 attributes:v53];

    *(inited + 40) = v54;
    v55 = swift_initStackObject();
    *(v55 + 16) = v76;
    *(v55 + 32) = v48;
    *(v55 + 40) = [v75 hk_chartCurrentValueUnitFont];
    v57 = v71;
    v56 = v72;
    *(v55 + 64) = v50;
    *(v55 + 72) = v57;
    v58 = [v56 hk_chartLollipopLabelColor];
    *(v55 + 104) = v68;
    *(v55 + 80) = v58;
    sub_2281A859C(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    v59 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v60 = sub_228391FC0();

    v61 = sub_228391F10();

    v62 = [v59 initWithString:v60 attributes:v61];

    *(inited + 48) = v62;
    sub_2281960E8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v63 = sub_228392190();

    v64 = HKUIJoinAttributedStringsForLocale();

    if (v64)
    {
      v65 = v80;
      [v80 setAttributedString_];
      if ((v81 & 1) == 0)
      {
        [v65 setStatisticsType_];
      }

      return v65;
    }

    return 0;
  }

  __break(1u);
LABEL_17:
  result = sub_228393300();
  __break(1u);
  return result;
}

id MedicationChartDataFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationChartDataFormatter.init()()
{
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationChartDataFormatter____lazy_storage___numberFormatter] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationChartDataFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MedicationChartDataFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationChartDataFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_228239ADC()
{
  result = qword_27D825B28;
  if (!qword_27D825B28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D825B28);
  }

  return result;
}

void sub_228239B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228239BA4()
{
  result = qword_280DDBA40;
  if (!qword_280DDBA40)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBA40);
  }

  return result;
}

uint64_t sub_228239BFC(uint64_t a1)
{
  sub_2281D50E8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_228239C58(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_formatter;
  sub_22823AB9C();
  *&v1[v4] = sub_228392600();
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_day;
  v8 = sub_228391060();
  v9 = *(v8 - 8);
  v36 = v8;
  (*(v9 + 16))(&v2[v7], a1);
  v37.receiver = v2;
  v37.super_class = type metadata accessor for DayPickerDay(0);
  v10 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel;
  v12 = *&v10[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_formatter;
  v14 = *&v10[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_formatter];
  v15 = v10;
  v16 = v12;
  v17 = v14;
  sub_228392620();
  v19 = v18;

  if (v19)
  {
    v20 = sub_228391FC0();
  }

  else
  {
    v20 = 0;
  }

  [v16 setText_];

  v21 = *&v10[v13];
  v22 = v15;
  v23 = v21;
  sub_228392610();
  v25 = v24;

  if (v25)
  {
    v26 = sub_228391FC0();
  }

  else
  {
    v26 = 0;
  }

  [v22 setLargeContentTitle_];

  v27 = [v22 layer];
  [v27 addSublayer_];

  [v22 addSubview_];
  sub_22823A03C();
  sub_2282355CC(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228398270;
  v29 = sub_228391640();
  v30 = MEMORY[0x277D74DB8];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v31 = sub_228391320();
  v32 = MEMORY[0x277D74B98];
  *(v28 + 48) = v31;
  *(v28 + 56) = v32;
  v33 = sub_2283915A0();
  v34 = MEMORY[0x277D74C50];
  *(v28 + 64) = v33;
  *(v28 + 72) = v34;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  (*(v9 + 8))(a1, v36);
  return v22;
}

void sub_228239FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22823A03C();
  }
}

id sub_22823A03C()
{
  v1 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
  result = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  if (result)
  {
    v3 = result;
    [v1 setFont_];

    [v0 setShowsLargeContentViewer_];
    [v0 setScalesLargeContentImage_];
    v4 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v0 addInteraction_];

    sub_22823A148();

    return [v0 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22823A148()
{
  v1 = v0;
  if ([v0 isEnabled])
  {
    v2 = [v0 isSelected];
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background];
    if (v2)
    {
      v4 = [v0 tintColor];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      v6 = [v1 traitCollection];
      v7 = sub_228392BE0();

      [v3 setFillColor_];
      v8 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
      v9 = [objc_opt_self() whiteColor];
      [v8 setTextColor_];

      v10 = sub_228391FC0();
      v11 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      v18 = objc_opt_self();
      v19 = [v18 clearColor];
      v20 = [v1 traitCollection];
      v21 = sub_228392BE0();

      [v3 setFillColor_];
      v22 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
      v23 = [v18 labelColor];
      [v22 setTextColor_];

      v10 = sub_228391FC0();
      v11 = [objc_opt_self() systemImageNamed_];
    }
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background];
    v13 = objc_opt_self();
    v14 = [v13 clearColor];
    v15 = [v14 CGColor];

    [v12 setFillColor_];
    v16 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
    v17 = [v13 tertiaryLabelColor];
    [v16 setTextColor_];

    v10 = sub_228391FC0();
    v11 = [objc_opt_self() systemImageNamed_];
  }

  v24 = v11;

  [v1 setLargeContentImage_];
}

id sub_22823A4A4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for DayPickerDay(0);
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v2 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3 = [v1 traitCollection];
  [v2 scaledValueForValue:v3 compatibleWithTraitCollection:34.0];
  v5 = v4;

  [v1 bounds];
  v6 = CGRectGetHeight(v14) + -4.0;
  [v1 bounds];
  v7 = CGRectGetWidth(v15) + -4.0;
  if (v5 <= 34.0)
  {
    if (v7 >= v6)
    {
      if (v6 <= 34.0)
      {
        v5 = v6;
      }

      else
      {
        v5 = 34.0;
      }
    }

    else if (v7 <= 34.0)
    {
      v5 = v7;
    }

    else
    {
      v5 = 34.0;
    }
  }

  else
  {
    if (v7 >= v6)
    {
      v7 = v6;
    }

    if (v5 >= v7)
    {
      v5 = v7;
    }
  }

  v8 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background];
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v5;
  v16.size.height = v5;
  v9 = CGPathCreateWithEllipseInRect(v16, 0);
  [v8 setPath_];

  v10 = [v8 path];
  [v8 setShadowPath_];

  [v8 setFrame_];
  [v1 bounds];
  sub_228392AB0();
  sub_228392B60();
  v11 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel];
  [v11 sizeToFit];
  [v1 bounds];
  sub_228392AB0();
  return [v11 setCenter_];
}

id sub_22823A908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayPickerDay(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DayPickerDay(uint64_t a1)
{
  result = qword_280DDCD08;
  if (!qword_280DDCD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22823AA30(uint64_t a1)
{
  result = sub_228391060();
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

void sub_22823AAD0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_formatter;
  sub_22823AB9C();
  *(v0 + v2) = sub_228392600();
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_background;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_228393300();
  __break(1u);
}

unint64_t sub_22823AB9C()
{
  result = qword_27D825B98;
  if (!qword_27D825B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D825B98);
  }

  return result;
}

uint64_t InteractionCriticalAlertItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_22823AC2C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = [v4 uniqueIdentifier];

  v6 = sub_228392000();
  v8 = v7;

  MEMORY[0x22AAB5C80](v6, v8);

  return v1;
}

uint64_t InteractionCriticalAlertItem.learnMoreAction.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t InteractionCriticalAlertItem.dismissAction.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void *InteractionCriticalAlertItem.__allocating_init(resultDisplayable:learnMoreAction:dismissAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = sub_22823B82C(v13, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

void *InteractionCriticalAlertItem.init(resultDisplayable:learnMoreAction:dismissAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_22823B72C(v15, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v17;
}

uint64_t static InteractionCriticalAlertItem.== infix(_:_:)(void *a1, void *a2)
{
  sub_2281A2270();
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_0(a1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = [v6 identifier];

  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_0(a2 + 2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 identifier];

  v12 = sub_228392C60();
  return v12 & 1;
}

uint64_t sub_22823AFF4(uint64_t a1)
{
  sub_2283920B0();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = [v4 identifier];

  v6 = [v5 rawIdentifier];
  return MEMORY[0x22AAB7100](v6);
}

void *InteractionCriticalAlertItem.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t InteractionCriticalAlertItem.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22823B120()
{
  sub_228393520();
  sub_2283920B0();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = [v3 identifier];

  v5 = [v4 rawIdentifier];
  MEMORY[0x22AAB7100](v5);
  return sub_228393570();
}

uint64_t sub_22823B1E0()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t sub_22823B214(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2281A2270();
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = [v6 identifier];

  v8 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 identifier];

  v12 = sub_228392C60();
  return v12 & 1;
}

uint64_t sub_22823B35C(uint64_t a1)
{
  v2 = *v1;
  sub_2283920B0();
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 identifier];

  v7 = [v6 rawIdentifier];
  return MEMORY[0x22AAB7100](v7);
}

uint64_t sub_22823B404(uint64_t a1)
{
  sub_228393520();
  v2 = *v1;
  sub_2283920B0();
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 identifier];

  v7 = [v6 rawIdentifier];
  MEMORY[0x22AAB7100](v7);
  return sub_228393570();
}

uint64_t sub_22823B4C4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_0((*v0 + 16), v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = [v4 uniqueIdentifier];

  v6 = sub_228392000();
  v8 = v7;

  MEMORY[0x22AAB5C80](v6, v8);

  return v1;
}

uint64_t sub_22823B58C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t InteractionCriticalAlertItem.deselectionBehavior(in:)(uint64_t a1)
{
  type metadata accessor for InteractionCriticalAlertItem();
  sub_22823BA94(&qword_27D825BA0, v1, type metadata accessor for InteractionCriticalAlertItem, &protocol conformance descriptor for InteractionCriticalAlertItem);
  return sub_22838FE80();
}

void *sub_22823B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v19 = a7;
  v20 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  type metadata accessor for InteractionCriticalAlertCell();
  sub_22823BA94(&unk_280DDC1E0, 255, type metadata accessor for InteractionCriticalAlertCell, &protocol conformance descriptor for InteractionCriticalAlertCell);
  a6[7] = sub_22838FBB0();
  a6[8] = v16;
  sub_22816DFFC(&v18, (a6 + 2));
  a6[9] = a2;
  a6[10] = a3;
  a6[11] = a4;
  a6[12] = a5;
  return a6;
}

void *sub_22823B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionCriticalAlertItem();
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, a7);
  return sub_22823B72C(v17, a2, a3, a4, a5, v18, a7, a8);
}

uint64_t sub_22823BA94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22823BADC(uint64_t a1, uint64_t *a2)
{
  sub_22817A890(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22823BD14();
  return sub_22817A8FC(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22823BB80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22823BBF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22823BD14();
  return sub_22817A8FC(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22823BC7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22823BCE0;
}

uint64_t sub_22823BCE0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22823BD14();
  }

  return result;
}

uint64_t sub_22823BD14()
{
  v1 = sub_228391590();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-1] - v9;
  [v0 setUserInteractionEnabled_];
  sub_228391390();
  v11 = sub_2283913A0();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = MEMORY[0x22AAB6420](v10);
  MEMORY[0x22AAB6410](v13);
  if ((*(v12 + 48))(v8, 1, v11))
  {
    v14 = MEMORY[0x277D74BD0];
    sub_22817A890(v8, v10, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v10);
    v15 = sub_22817A8FC(v8, &unk_280DDBCD0, v14);
  }

  else
  {
    v16 = [objc_opt_self() tertiarySystemFillColor];
    sub_228391370();
    v15 = MEMORY[0x22AAB6420](v8);
  }

  MEMORY[0x22AAB64A0](v15);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v17 = [objc_opt_self() secondaryLabelColor];
  v18 = sub_228391450();
  sub_228391420();
  v18(v23, 0);
  sub_22823C530();
  sub_228392AD0();
  v19 = sub_228391450();
  sub_228391410();
  v19(v23, 0);
  v23[3] = v1;
  v23[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
  MEMORY[0x22AAB6400](v23);
  return (*(v2 + 8))(v4, v1);
}

id InteractionNoneFoundCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionNoneFoundCell.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item];
  found = type metadata accessor for InteractionNoneFoundCell();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v13.receiver = v5;
  v13.super_class = found;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

id InteractionNoneFoundCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InteractionNoneFoundCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item];
  found = type metadata accessor for InteractionNoneFoundCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = found;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id InteractionNoneFoundCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionNoneFoundCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22823C530()
{
  result = qword_280DDB9C0;
  if (!qword_280DDB9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB9C0);
  }

  return result;
}

uint64_t type metadata accessor for ManualNameDataSource(uint64_t a1)
{
  result = qword_27D825BD0;
  if (!qword_27D825BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22823C620(uint64_t a1)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + qword_27D825BC8);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v1 + qword_27D825BC0) = a1;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v14, "MutableArray<");
  HIWORD(v14[1]) = -4864;
  sub_22838F490();
  v8 = sub_22838F450();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  MEMORY[0x22AAB5C80](v8, v10);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v11 = sub_22838FF30();

  v12 = sub_22823C7F4();
  sub_228194894(v12);

  sub_22838FF60();

  return v11;
}

uint64_t sub_22823C7F4()
{
  sub_2281BBDA4(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F40;
  sub_228391870();
  if (v20)
  {
    v18 = v20;
    v17 = v19;
  }

  else
  {
    v17 = *(v0 + qword_27D825BC8);
    v18 = *(v0 + qword_27D825BC8 + 8);
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v2 = sub_22838F0C0();
  v15 = v3;
  v16 = v2;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = type metadata accessor for FieldItem(0);
  *(v1 + 56) = v5;
  *(v1 + 64) = sub_22823CE88(&qword_27D825BF0, type metadata accessor for FieldItem, &protocol conformance descriptor for FieldItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_22838F490();
  v7 = (boxed_opaque_existential_1 + v5[5]);
  v8 = (boxed_opaque_existential_1 + v5[6]);
  v9 = boxed_opaque_existential_1 + v5[10];
  v10 = (boxed_opaque_existential_1 + v5[14]);
  v11 = (boxed_opaque_existential_1 + v5[15]);
  type metadata accessor for FieldCell();
  sub_22823CE88(&qword_27D828780, type metadata accessor for FieldCell, &unk_2283A6C1C);
  *v11 = sub_22838FBB0();
  v11[1] = v12;
  *v7 = v17;
  v7[1] = v18;
  *v8 = v16;
  v8[1] = v15;
  *(boxed_opaque_existential_1 + v5[7]) = 0x404A000000000000;
  *v9 = 0;
  v9[8] = 1;
  *(boxed_opaque_existential_1 + v5[9]) = 0;
  *(boxed_opaque_existential_1 + v5[8]) = 1;
  *(boxed_opaque_existential_1 + v5[12]) = 0;
  *v10 = 0;
  v10[1] = 0;
  v13 = (boxed_opaque_existential_1 + v5[13]);
  *v13 = sub_22823CE80;
  v13[1] = v4;
  *(boxed_opaque_existential_1 + v5[11]) = 1;
  return v1;
}

uint64_t sub_22823CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = (Strong + qword_27D825BC8);
    *v7 = a2;
    v7[1] = a3;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_228391850();
  }

  return result;
}

uint64_t sub_22823CB9C()
{
}

uint64_t sub_22823CBE0()
{
  sub_22838FFB0();

  return swift_deallocClassInstance();
}

uint64_t sub_22823CC60()
{
  type metadata accessor for FieldCell();
  sub_22823CE88(&qword_27D828780, type metadata accessor for FieldCell, &unk_2283A6C1C);
  return sub_2283926B0();
}

uint64_t sub_22823CCE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_22823CE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall InputAccessoryPresenting.setInputAccessoryViewToToolbar(items:)(Swift::OpaquePointer items)
{
  v3 = v2;
  v4 = v1;
  v5 = [objc_allocWithZone(MEMORY[0x277D75C58]) init];
  [v5 setBarStyle_];
  sub_22823CFB4();
  v6 = sub_228392190();
  [v5 setItems_];

  v7 = v5;
  [v7 sizeToFit];
  (*(v3 + 16))(v7, v4, v3);
}

unint64_t sub_22823CFB4()
{
  result = qword_27D824138;
  if (!qword_27D824138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D824138);
  }

  return result;
}

void (*sub_22823D000(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 inputAccessoryView];
  return sub_22823D15C;
}

void (*sub_22823D05C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 inputAccessoryView];
  return sub_22823D0B8;
}

void sub_22823D0B8(id *a1)
{
  v1 = *a1;
  [a1[1] setInputAccessoryView_];
}

uint64_t sub_22823D160()
{
  v1 = [v0 educationContent];
  if (v1 && (v2 = v1, v3 = [v1 firstSectionWithType_], v2, v3) && (v4 = objc_msgSend(v3, sel_localizedText), v3, v4))
  {
    v5 = sub_228392000();

    return v5;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    return sub_22838F0C0();
  }
}

uint64_t sub_22823D284()
{
  v1 = [v0 educationContent];
  if (v1 && (v2 = v1, v3 = [v1 firstSectionWithType_], v2, v3) && (v4 = objc_msgSend(v3, sel_attributions), v3, v4))
  {
    sub_2283921A0();

    sub_228231DFC();
    sub_2281BF13C();
    v5 = sub_228391F90();

    return v5;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    return sub_22838F0C0();
  }
}

uint64_t sub_22823D414(double a1, double a2)
{
  sub_2281AF0A0();
  v4 = objc_opt_self();
  v5 = [v4 systemCyanColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v4 systemCyanColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = sub_228392B90();
  return v9;
}

void static UIColor.medicationTimelineCurrentDayCompleteGradientStart.getter()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DDCED8;
  v1 = sub_228391FC0();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

void static UIColor.medicationTimelineCurrentDayCompleteGradientMiddle.getter()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DDCED8;
  v1 = sub_228391FC0();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

void static UIColor.medicationTimelineCurrentDayCompleteGradientEnd.getter()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DDCED8;
  v1 = sub_228391FC0();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t static MedicationVisualizationConfig.random()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_228390FD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2283908E0();
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228390E20();
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v77 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199E70(0);
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  v80 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_22823E1E0(0, &qword_27D825BF8, MEMORY[0x277D11618], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v63 - v13;
  sub_228199F10(0);
  v87 = v14;
  v84 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22823E1E0(0, &qword_27D8238A8, MEMORY[0x277D11640], v11);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v63 - v18;
  v20 = sub_2283909E0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v72 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v63 - v24;
  v25 = sub_2283909C0();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_22823E154(v26);
    if ((v27 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v27 >= *(v25 + 16))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    (*(v21 + 16))(v19, v25 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v27, v20);
    v28 = v21;

    (*(v21 + 56))(v19, 0, 1, v20);
  }

  else
  {

    (*(v21 + 56))(v19, 1, 1, v20);
    v28 = v21;
  }

  result = (*(v28 + 48))(v19, 1, v20);
  v30 = v80;
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v69 = v16;
  v70 = v5;
  v31 = v73;
  (*(v28 + 32))(v73, v19, v20);
  v67 = v28;
  v32 = *(v28 + 16);
  v68 = v20;
  v32(v72, v31, v20);
  v33 = sub_2283909D0();
  v34 = *(v33 + 16);
  if (v34)
  {
    v64 = v3;
    v65 = v2;
    v66 = a1;
    v91 = MEMORY[0x277D84F90];
    v35 = v33;
    sub_2281C9E84(0, v34, 0);
    v36 = v35;
    v37 = 0;
    v39 = v77;
    v38 = v78;
    v86 = v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v40 = v91;
    v82 = (v84 + 56);
    v83 = (v78 + 8);
    v74 = v81 + 8;
    v75 = v81 + 16;
    v84 = v35;
    v85 = v78 + 16;
    while (v37 < *(v36 + 16))
    {
      v41 = v34;
      v42 = *(v38 + 16);
      v42(v39, v86 + *(v38 + 72) * v37, v7);
      v43 = *(v89 + 48);
      v42(v30, v39, v7);
      if (sub_228390E10())
      {
        v44 = v7;
        v45 = sub_2283908A0();
        v46 = *(v45 + 16);
        if (!v46)
        {
          goto LABEL_37;
        }

        v90 = 0;
        MEMORY[0x22AAB7BA0](&v90, 8);
        v47 = (v90 * v46) >> 64;
        if (v46 > v90 * v46)
        {
          v48 = -v46 % v46;
          if (v48 > v90 * v46)
          {
            do
            {
              v90 = 0;
              MEMORY[0x22AAB7BA0](&v90, 8);
            }

            while (v48 > v90 * v46);
            v47 = (v90 * v46) >> 64;
          }
        }

        if (v47 >= *(v45 + 16))
        {
          goto LABEL_32;
        }

        v49 = v81;
        v50 = v76;
        v51 = v79;
        (*(v81 + 16))(v76, v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v81 + 72) * v47, v79);

        sub_2283908D0();
        (*(v49 + 8))(v50, v51);
        sub_2281AF0A0();
        v30 = v80;
        sub_228391E50();
        v52 = 0;
        v7 = v44;
        v39 = v77;
        v38 = v78;
      }

      else
      {
        v52 = 1;
      }

      (*v83)(v39, v7);
      (*v82)(&v30[v43], v52, 1, v87);
      v91 = v40;
      v53 = v30;
      v55 = *(v40 + 16);
      v54 = *(v40 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_2281C9E84((v54 > 1), v55 + 1, 1);
        v40 = v91;
      }

      ++v37;
      *(v40 + 16) = v55 + 1;
      sub_2281CE830(v53, v40 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v55);
      v34 = v41;
      v30 = v53;
      v36 = v84;
      if (v37 == v41)
      {

        v2 = v65;
        v3 = v64;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_24:
  v56 = sub_2283908B0();
  v57 = *(v56 + 16);
  v58 = v79;
  v59 = v81;
  if (v57)
  {
    v60 = sub_22823E154(v57);
    if ((v60 & 0x8000000000000000) != 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:

      __break(1u);
      goto LABEL_38;
    }

    if (v60 >= *(v56 + 16))
    {
      goto LABEL_36;
    }

    v61 = v71;
    (*(v59 + 16))(v71, v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v60, v58);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v61 = v71;
  }

  (*(v59 + 56))(v61, v62, 1, v58);
  result = (*(v59 + 48))(v61, 1, v58);
  if (result != 1)
  {
    sub_2283908D0();
    (*(v59 + 8))(v61, v58);
    sub_2281AF0A0();
    sub_228391E50();
    (*(v3 + 104))(v70, *MEMORY[0x277D11728], v2);
    sub_228390D30();
    return (*(v67 + 8))(v73, v68);
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_22823E154(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AAB7BA0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AAB7BA0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22823E1E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for StartDateEndDateEditDataSource(uint64_t a1)
{
  result = qword_27D825C28;
  if (!qword_27D825C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22823E2A0(uint64_t a1)
{
  result = type metadata accessor for DurationDatePickerItem(319);
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

uint64_t sub_22823E354@<X0>(void *a1@<X8>)
{
  sub_228391870();
  v2 = sub_22838F440();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_22823E3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a3;
  v4 = sub_22838F6C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = sub_22838F440();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v24 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v24 - v19;
  sub_22822BFC0(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_228241F04(v10, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  }

  (*(v12 + 32))(v20, v10, v11);
  sub_22838F680();
  sub_22838F590();
  (*(v5 + 8))(v7, v4);
  sub_228391870();
  sub_228241F80(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v22 = sub_228391FB0();
  v23 = *(v12 + 8);
  v23(v15, v11);
  if ((v22 & 1) == 0)
  {
    sub_228391850();
  }

  v23(v18, v11);
  return (v23)(v20, v11);
}

uint64_t sub_22823E70C()
{
  v0 = MEMORY[0x277CC9578];
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_22838F440();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_228391850();
  return sub_228241F04(v3, &qword_280DDCDB0, v0);
}

uint64_t sub_22823E808@<X0>(void *a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_228391870();
  }

  else
  {
    v4 = sub_22838F440();
    return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_22823E8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22838F6C0();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_22838F440();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - v18;
  sub_22822BFC0(a2, v13);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    v21 = MEMORY[0x277CC9578];
    v22 = v13;
    return sub_228241F04(v22, &qword_280DDCDB0, v21);
  }

  v31 = v4;
  v32 = v19;
  v23 = v13;
  v24 = *(v15 + 32);
  v24(v19, v23, v14);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v15 + 56))(v11, 1, 1, v14);
    goto LABEL_10;
  }

  sub_228391870();

  if (v20(v11, 1, v14) == 1)
  {
LABEL_10:
    (*(v15 + 8))(v32, v14);
    v21 = MEMORY[0x277CC9578];
    v22 = v11;
    return sub_228241F04(v22, &qword_280DDCDB0, v21);
  }

  v25 = v36;
  v24(v36, v11, v14);
  sub_228241F80(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v26 = v32;
  if ((sub_228391FB0() & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = v34;
      sub_22838F680();
      v28 = v33;
      sub_22838F590();
      (*(v35 + 8))(v27, v31);
      (*(v15 + 56))(v28, 0, 1, v14);
      sub_228391850();

      sub_228241F04(v28, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    }
  }

  v29 = *(v15 + 8);
  v29(v25, v14);
  return (v29)(v26, v14);
}

uint64_t sub_22823ED50()
{
  v1 = v0;
  v32 = MEMORY[0x277D85248];
  sub_2282419CC(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_228392770();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228241C50(0);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228241E38(0);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  MEMORY[0x28223BE20](v12);
  v25 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + qword_27D825C00);
  v33 = *(v1 + qword_27D825C08);
  v34 = v15;
  sub_228241D38(0);
  sub_228241DA0(0);
  v16 = MEMORY[0x277CBCE48];
  sub_228241F80(&qword_27D825C50, sub_228241D38, MEMORY[0x277CBCE48]);
  sub_228241F80(&qword_27D825C58, sub_228241DA0, v16);

  sub_228391680();
  sub_228392740();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v17 = sub_228392790();
  v34 = v17;
  v18 = sub_228392730();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_228241F80(&qword_27D825C68, sub_228241C50, MEMORY[0x277CBCAF0]);
  sub_2281A1504();
  v19 = v25;
  v20 = v26;
  sub_228391A80();
  sub_228241F04(v4, &qword_280DDBAD0, v32);

  (*(v28 + 8))(v7, v29);
  (*(v27 + 8))(v11, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_228241F74;
  *(v21 + 24) = v1;
  sub_228241F80(&qword_27D825C70, sub_228241E38, MEMORY[0x277CBCCF8]);

  v22 = v30;
  v23 = sub_228391AC0();

  (*(v31 + 8))(v19, v22);
  *(v1 + qword_27D825C10) = v23;
}

uint64_t sub_22823F234(char *a1, uint64_t a2)
{
  v100 = a2;
  v116 = a1;
  sub_228241B70();
  *&v95 = v2;
  v94 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228390460();
  v106 = *(v5 - 8);
  v107 = v5;
  MEMORY[0x28223BE20](v5);
  v108 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22838FFC0();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v109 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2282419CC(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v93 - v10;
  v11 = sub_228390170();
  v113 = *(v11 - 8);
  v114 = v11;
  MEMORY[0x28223BE20](v11);
  v112 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22838F6C0();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_228391590();
  v111 = *(v117 - 8);
  v14 = MEMORY[0x28223BE20](v117);
  v99 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v93 - v16;
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], v8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v93 - v22;
  v24 = sub_22838F440();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v28 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v93 - v29;
  v120 = sub_2283913A0();
  v110 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391390();
  v115 = objc_opt_self();
  v33 = [v115 secondarySystemGroupedBackgroundColor];
  v119 = v32;
  sub_228391370();
  sub_22822BFC0(v100, v23);
  v34 = (*(v25 + 48))(v23, 1, v24);
  v102 = v24;
  v101 = v25;
  if (v34 == 1)
  {
    sub_228241F04(v23, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v35 = v118;
    sub_22838FFA0();
    v36 = v95;
    v37 = sub_2283915B0();
    (*(v94 + 8))(v4, v36);
    if (v37 >= 2)
    {
      sub_22838FF10();
    }

    v38 = v35;
    v39 = v99;
    sub_228391580();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391540();
    sub_22838F0C0();
    sub_2283913D0();
    v40 = [v115 linkColor];
    v41 = sub_2283914A0();
    sub_228391420();
    v41(v121, 0);
    v42 = v101;
    v43 = v102;
    (*(v101 + 16))(v28, v116, v102);
    v44 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v45 = swift_allocObject();
    v46 = v38;
    *(v45 + 16) = v38;
    (*(v42 + 32))(v45 + v44, v28, v43);
    v47 = v117;
    v122 = v117;
    v123 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
    v49 = v111;
    (*(v111 + 16))(boxed_opaque_existential_1, v39, v47);
    v50 = v110;
    v51 = v105;
    v52 = v120;
    (*(v110 + 16))(v105, v119, v120);
    (*(v50 + 56))(v51, 0, 1, v52);
    (*(v103 + 104))(v109, *MEMORY[0x277D10F98], v104);
    (*(v106 + 104))(v108, *MEMORY[0x277D11140], v107);

    v53 = v112;
    sub_228390160();
    sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_228397F30;
    v55 = qword_27D825C18;
    *(v54 + 56) = type metadata accessor for DurationDatePickerItem(0);
    *(v54 + 64) = sub_228241F80(&unk_27D825928, type metadata accessor for DurationDatePickerItem, &protocol conformance descriptor for DurationDatePickerItem);
    v56 = __swift_allocate_boxed_opaque_existential_1((v54 + 32));
    sub_228241AB0(v46 + v55, v56);
    v57 = v114;
    *(v54 + 96) = v114;
    *(v54 + 104) = sub_228241F80(&qword_27D823AB0, MEMORY[0x277D11000], MEMORY[0x277D10FF0]);
    v58 = __swift_allocate_boxed_opaque_existential_1((v54 + 72));
    v59 = v113;
    (*(v113 + 16))(v58, v53, v57);
    sub_22838FF60();

    (*(v59 + 8))(v53, v57);
    (*(v49 + 8))(v39, v117);
  }

  else
  {
    (*(v25 + 32))(v30, v23, v24);
    sub_228240648(v116, v21);
    (*(v25 + 56))(v21, 0, 1, v24);
    v60 = v118 + qword_27D825C20;
    swift_beginAccess();
    v99 = type metadata accessor for DurationDatePickerItem(0);
    v61 = *(v99 + 16);
    v100 = v60;
    sub_22822C098(v21, v60 + v61);
    swift_endAccess();
    sub_228391580();
    v62 = v17;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391540();
    v63 = [v115 labelColor];
    v64 = sub_228391450();
    sub_228391420();
    v64(v121, 0);
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    sub_228392AD0();
    v65 = sub_228391450();
    sub_228391410();
    v65(v121, 0);
    v66 = qword_280DDCF20;
    sub_228241A58(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98]);
    v67 = swift_allocObject();
    v95 = xmmword_228397F40;
    *(v67 + 16) = xmmword_228397F40;
    v68 = v66;

    v69 = v96;
    sub_22838F680();
    v70 = sub_22838F5F0();
    (*(v97 + 8))(v69, v98);
    v71 = MEMORY[0x277D83C10];
    *(v67 + 56) = MEMORY[0x277D83B88];
    *(v67 + 64) = v71;
    *(v67 + 32) = v70;
    sub_22838F0C0();
    v72 = *(v67 + 16);
    v93 = v30;
    if (v72)
    {
      sub_228391FD0();
    }

    else
    {
    }

    sub_2283913D0();
    v73 = [v115 labelColor];
    v74 = sub_2283914A0();
    sub_228391420();
    v74(v121, 0);
    v75 = v117;
    v122 = v117;
    v123 = MEMORY[0x277D74C30];
    v76 = __swift_allocate_boxed_opaque_existential_1(v121);
    v77 = v111;
    (*(v111 + 16))(v76, v62, v75);
    v78 = *(v110 + 16);
    v79 = v105;
    v80 = v120;
    v116 = v62;
    v50 = v110;
    v78(v105, v119, v120);
    (*(v50 + 56))(v79, 0, 1, v80);
    (*(v103 + 104))(v109, *MEMORY[0x277D10F98], v104);
    (*(v106 + 104))(v108, *MEMORY[0x277D11140], v107);
    v81 = v112;
    sub_228390160();
    sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_228397F30;
    v83 = qword_27D825C18;
    v84 = v99;
    *(v82 + 56) = v99;
    v85 = sub_228241F80(&unk_27D825928, type metadata accessor for DurationDatePickerItem, &protocol conformance descriptor for DurationDatePickerItem);
    *(v82 + 64) = v85;
    v86 = __swift_allocate_boxed_opaque_existential_1((v82 + 32));
    sub_228241AB0(v118 + v83, v86);
    *(v82 + 96) = v84;
    *(v82 + 104) = v85;
    v87 = __swift_allocate_boxed_opaque_existential_1((v82 + 72));
    sub_228241AB0(v100, v87);
    sub_22838FF60();

    v88 = swift_allocObject();
    *(v88 + 16) = v95;
    v89 = v114;
    *(v88 + 56) = v114;
    *(v88 + 64) = sub_228241F80(&qword_27D823AB0, MEMORY[0x277D11000], MEMORY[0x277D10FF0]);
    v90 = __swift_allocate_boxed_opaque_existential_1((v88 + 32));
    v91 = v113;
    (*(v113 + 16))(v90, v81, v89);
    sub_22838FF60();

    (*(v91 + 8))(v81, v89);
    (*(v77 + 8))(v116, v75);
    (*(v101 + 8))(v93, v102);
  }

  return (*(v50 + 8))(v119, v120);
}

uint64_t sub_2282403E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22838F6A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F6C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9578];
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v16 - v13;

  sub_22838F680();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  sub_22838F660();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  sub_228391850();

  return sub_228241F04(v14, &qword_280DDCDB0, v11);
}

uint64_t sub_228240648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v23 = a2;
  v2 = sub_22838F6A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F440();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838F6C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  sub_228390700();
  v13 = sub_228390720();

  if (v13)
  {
    v14 = v23;
    v15 = *(v24 + 16);
    v16 = v25;

    return v15(v14, v16, v6);
  }

  else
  {
    v18 = v23;
    sub_22838F680();
    sub_22838F3F0();
    (*(v3 + 104))(v5, *MEMORY[0x277CC9968], v2);
    v19 = sub_22838F670();
    (*(v3 + 8))(v5, v2);
    v20 = *(v24 + 8);
    v20(v8, v6);
    v21 = *(v10 + 8);
    v21(v12, v9);
    if (v19 == -1)
    {
      return (*(v24 + 16))(v18, v25, v6);
    }

    else
    {
      sub_22838F680();
      sub_22838F3F0();
      sub_22838F590();
      v20(v8, v6);
      return (v21)(v12, v9);
    }
  }
}

uint64_t sub_228240A10()
{

  sub_228241B14(v0 + qword_27D825C18);
  v1 = v0 + qword_27D825C20;

  return sub_228241B14(v1);
}

uint64_t sub_228240A80()
{
  v0 = sub_22838FFB0();

  sub_228241B14(v0 + qword_27D825C18);
  sub_228241B14(v0 + qword_27D825C20);

  return swift_deallocClassInstance();
}

uint64_t sub_228240B4C()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  sub_2283901C0();
  v4 = sub_2283900C0();
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_228240C40()
{
  type metadata accessor for DurationDatePickerCollectionViewCell();
  sub_228241F80(&qword_27D8258E8, type metadata accessor for DurationDatePickerCollectionViewCell, &protocol conformance descriptor for DurationDatePickerCollectionViewCell);
  return sub_2283926B0();
}

uint64_t sub_228240CB0(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D83D88];
  sub_2282419CC(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = (v75 - v7);
  v8 = sub_2283912D0();
  v86 = *(v8 - 1);
  v87 = v8;
  MEMORY[0x28223BE20](v8);
  *&v88 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391280();
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x28223BE20](v10);
  v101 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v75 - v13;
  v15 = type metadata accessor for DurationDatePickerItem(0);
  MEMORY[0x28223BE20](v15);
  v17 = (v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_2283913A0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_27D825C10) = 0;
  *(v2 + qword_27D825C00) = a1;
  v100 = v2;
  *(v2 + qword_27D825C08) = a2;
  v97 = a1;

  v91 = a2;

  sub_228391390();
  v76 = objc_opt_self();
  v22 = [v76 secondarySystemGroupedBackgroundColor];
  sub_228391370();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v79 = qword_280DDCF20;
  v78 = *algn_280DDCF28;
  v77 = qword_280DDCF30;
  v85 = sub_22838F0C0();
  v84 = v23;
  v24 = v15[9];
  v25 = *(v19 + 16);
  v80 = v19 + 16;
  v81 = v25;
  v25(v17 + v24, v21, v18);
  v26 = sub_22838F440();
  v27 = *(v26 - 8);
  v95 = *(v27 + 56);
  v96 = v26;
  v28 = v27 + 56;
  v29 = v14;
  v95(v14, 1, 1, v26);
  v30 = v28;
  v99 = v18;
  swift_retain_n();
  sub_22838F490();
  v31 = type metadata accessor for DurationDatePickerCollectionViewCell();
  v83 = sub_228241F80(&qword_27D8258E8, type metadata accessor for DurationDatePickerCollectionViewCell, &protocol conformance descriptor for DurationDatePickerCollectionViewCell);
  v82 = v31;
  *v17 = sub_22838FBB0();
  v17[1] = v32;
  v33 = (v17 + v15[7]);
  v34 = v15[11];
  v35 = (v17 + v15[10]);
  v94 = v29;
  v36 = (v17 + v34);
  v37 = v15[12];
  v90 = v19;
  v38 = (v17 + v37);
  v98 = v21;
  v39 = v15[16];
  v95(v17 + v39, 1, 1, v26);
  v75[1] = v30;
  v40 = (v17 + v15[6]);
  v41 = v84;
  *v40 = v85;
  v40[1] = v41;
  *v33 = 0;
  v33[1] = 0;
  *(v17 + v15[13]) = 1;
  *(v17 + v15[14]) = 1;
  *(v17 + v15[15]) = 2;
  sub_22822C098(v29, v17 + v39);
  v42 = v97;
  *v35 = sub_228241A30;
  v35[1] = v42;
  *v36 = sub_228241A38;
  v36[1] = v42;
  *v38 = 0;
  v38[1] = 0;
  *(v17 + v15[8]) = MEMORY[0x277D84F90];
  v85 = qword_27D825C18;
  sub_22822D918(v17, v100 + qword_27D825C18);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v43 = sub_228391FC0();
  v44 = [objc_opt_self() systemImageNamed_];

  v45 = sub_228392C90();
  sub_22817A958(0, &unk_280DDB940, 0x277D75220);
  v84 = v45;
  v46 = sub_228392E20();
  v47 = [v76 secondaryLabelColor];
  [v46 setTintColor_];

  sub_22820DC6C(0);
  v49 = v88;
  v50 = (v88 + *(v48 + 48));
  v51 = *MEMORY[0x277D74A98];
  v52 = sub_228391220();
  (*(*(v52 - 8) + 104))(v49, v51, v52);
  *v50 = sub_2281AF1B4;
  v50[1] = 0;
  (*(v86 + 104))(v49, *MEMORY[0x277D74AD8], v87);
  v53 = sub_228391230();
  (*(*(v53 - 8) + 56))(v89, 1, 1, v53);
  v87 = v46;
  sub_228391270();
  v86 = sub_22838F0C0();
  v79 = v54;
  v89 = MEMORY[0x277D84560];
  sub_2282419CC(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_2283912F0();
  v78 = swift_allocObject();
  v88 = xmmword_228397F40;
  *(v78 + 16) = xmmword_228397F40;
  sub_2283911D0();
  v81(v17 + v15[9], v98, v99);
  v55 = v94;
  sub_228391870();
  v56 = v95;
  v95(v55, 0, 1, v96);
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  swift_weakInit();

  sub_22838F490();
  *v17 = sub_22838FBB0();
  v17[1] = v59;
  v60 = (v17 + v15[7]);
  v61 = (v17 + v15[10]);
  v62 = (v17 + v15[11]);
  v63 = (v17 + v15[12]);
  v64 = v15[16];
  v56(v17 + v64, 1, 1, v96);
  v65 = (v17 + v15[6]);
  v66 = v79;
  *v65 = v86;
  v65[1] = v66;
  *v60 = 0;
  v60[1] = 0;
  *(v17 + v15[13]) = 1;
  *(v17 + v15[14]) = 1;
  *(v17 + v15[15]) = 2;
  sub_22822C098(v94, v17 + v64);

  *v61 = sub_228241A48;
  v61[1] = v57;
  *v62 = sub_228241A50;
  v62[1] = v58;
  *v63 = 0;
  v63[1] = 0;
  *(v17 + v15[8]) = v78;
  v67 = qword_27D825C20;
  v68 = v100;
  sub_22822D918(v17, v100 + qword_27D825C20);
  sub_2282419CC(0, &qword_27D823910, MEMORY[0x277D10F78], v89);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = v88;
  sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_228397F30;
  *(v69 + 56) = v15;
  v70 = sub_228241F80(&unk_27D825928, type metadata accessor for DurationDatePickerItem, &protocol conformance descriptor for DurationDatePickerItem);
  *(v69 + 64) = v70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v69 + 32));
  sub_228241AB0(v68 + v85, boxed_opaque_existential_1);
  swift_beginAccess();
  *(v69 + 96) = v15;
  *(v69 + 104) = v70;
  v72 = __swift_allocate_boxed_opaque_existential_1((v69 + 72));
  sub_228241AB0(v68 + v67, v72);
  sub_22838FED0();
  v73 = sub_22838FF30();

  sub_22823ED50();

  (*(v92 + 8))(v101, v93);
  (*(v90 + 8))(v98, v99);
  return v73;
}

void sub_2282419CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228241A58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2281810DC(255, a3, a4);
    v5 = sub_228393430();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228241AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DurationDatePickerItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228241B14(uint64_t a1)
{
  v2 = type metadata accessor for DurationDatePickerItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228241B70()
{
  if (!qword_27D827C20)
  {
    v0 = sub_2283915E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827C20);
    }
  }
}

uint64_t sub_228241BDC(uint64_t a1)
{
  v3 = *(sub_22838F440() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2282403E4(a1, v4, v5);
}

void sub_228241C50(uint64_t a1)
{
  if (!qword_27D825C38)
  {
    sub_228241D38(255);
    sub_228241DA0(255);
    v1 = MEMORY[0x277CBCE48];
    sub_228241F80(&qword_27D825C50, sub_228241D38, MEMORY[0x277CBCE48]);
    sub_228241F80(&qword_27D825C58, sub_228241DA0, v1);
    v2 = sub_228391670();
    if (!v3)
    {
      atomic_store(v2, &qword_27D825C38);
    }
  }
}

void sub_228241D38(uint64_t a1)
{
  if (!qword_27D825C40)
  {
    sub_22838F440();
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825C40);
    }
  }
}

void sub_228241DA0(uint64_t a1)
{
  if (!qword_27D825C48)
  {
    sub_2282419CC(255, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825C48);
    }
  }
}

void sub_228241E38(uint64_t a1)
{
  if (!qword_27D825C60)
  {
    sub_228241C50(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228241F80(&qword_27D825C68, sub_228241C50, MEMORY[0x277CBCAF0]);
    sub_2281A1504();
    v1 = sub_228391790();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825C60);
    }
  }
}

uint64_t sub_228241F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282419CC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228241F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static ScheduleUnavailableDeviceState.Device.resolvedLocal.getter(char *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a1 = v4;
}

HealthMedicationsUI::ScheduleUnavailableDeviceState __swiftcall ScheduleUnavailableDeviceState.init(localDevice:location:isHealthSharing:medicationCount:)(HealthMedicationsUI::ScheduleUnavailableDeviceState::Device localDevice, HealthMedicationsUI::ScheduleUnavailableDeviceState::Location location, Swift::Bool isHealthSharing, Swift::Int medicationCount)
{
  v5 = *location;
  *v4 = *localDevice;
  *(v4 + 1) = v5;
  *(v4 + 2) = isHealthSharing;
  *(v4 + 8) = medicationCount;
  LOBYTE(result.medicationCount) = location;
  result.localDevice = localDevice;
  return result;
}

uint64_t ScheduleUnavailableDeviceState.bodyText.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  result = ScheduleUnavailableDeviceState.localizationKey.getter();
  if (v4)
  {
    if (v1)
    {
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v5 = sub_22838F0C0();

      return v5;
    }

    else
    {
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_2281BC044(0);
      v6 = swift_allocObject();
      v7 = MEMORY[0x277D83B88];
      *(v6 + 16) = xmmword_228397F40;
      v8 = MEMORY[0x277D83C10];
      *(v6 + 56) = v7;
      *(v6 + 64) = v8;
      *(v6 + 32) = v2;
      v9 = sub_22838F0C0();

      if (*(v6 + 16))
      {
        v10 = sub_228391FD0();

        return v10;
      }

      else
      {

        return v9;
      }
    }
  }

  return result;
}

uint64_t ScheduleUnavailableDeviceState.localizationKey.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  if (v0[1])
  {
    v5 = 0x5F545045434E4F43;
  }

  else
  {
    v5 = 0x59524F4745544143;
  }

  if ((v1 & 1) != 0 || ![objc_opt_self() hasSupportedAppleWatchPaired])
  {
    if (v3)
    {
      v6 = 0xEF474E4952414853;
      v7 = 0xE000000000000000;
      if ((v2 & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = 0;
      v9 = 0x5F48544C4145485FLL;
LABEL_14:
      if (v4 == 1)
      {
        goto LABEL_15;
      }

LABEL_22:

LABEL_23:

      return 0;
    }

    v8 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    if (v3)
    {
      goto LABEL_23;
    }

    v8 = 0xD000000000000013;
    v7 = 0x80000002283AE400;
  }

  v9 = 0;
  v6 = 0xE000000000000000;
  if (v2)
  {
    goto LABEL_14;
  }

LABEL_15:

  MEMORY[0x22AAB5C80](0xD000000000000026, 0x80000002283AE3D0);

  v10 = v1 == 0;
  if (v1)
  {
    v11 = 0x444150495FLL;
  }

  else
  {
    v11 = 0x454E4F4850495FLL;
  }

  if (v10)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x22AAB5C80](v11, v12);

  MEMORY[0x22AAB5C80](v8, v7);

  MEMORY[0x22AAB5C80](v9, v6);

  return v5;
}

unint64_t sub_2282424E8()
{
  result = qword_27D825C78;
  if (!qword_27D825C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825C78);
  }

  return result;
}

unint64_t sub_228242540()
{
  result = qword_27D825C80;
  if (!qword_27D825C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825C80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleUnavailableDeviceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScheduleUnavailableDeviceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t ScheduleDurationItem.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduleDurationItem(0) + 20);
  v4 = sub_22838F440();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScheduleDurationItem(uint64_t a1)
{
  result = qword_27D825CD0;
  if (!qword_27D825CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScheduleDurationItem.init(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22838F490();
  v6 = type metadata accessor for ScheduleDurationItem(0);
  v7 = (a3 + v6[7]);
  type metadata accessor for ScheduleDurationCell();
  sub_228245BE0(&qword_27D825810, v8, type metadata accessor for ScheduleDurationCell, &protocol conformance descriptor for ScheduleDurationCell);
  *v7 = sub_22838FBB0();
  v7[1] = v9;
  v10 = v6[5];
  v11 = sub_22838F440();
  (*(*(v11 - 8) + 32))(a3 + v10, a1, v11);
  v12 = a3 + v6[6];

  return sub_2281E793C(a2, v12);
}

uint64_t ScheduleDurationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScheduleDurationItem(0) + 28));

  return v1;
}

unint64_t ScheduleDurationItem.uniqueIdentifier.getter()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  MEMORY[0x22AAB5C80](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t ScheduleDurationItem.hash(into:)(uint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  v10 = type metadata accessor for ScheduleDurationItem(0);
  sub_228245BE0(&qword_27D825C90, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  sub_228244F00(v1 + *(v10 + 24), v9, &qword_280DDCDB0, v6);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    return sub_228393540();
  }

  (*(v3 + 32))(v5, v9, v2);
  sub_228393540();
  sub_228391F70();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ScheduleDurationItem.hashValue.getter()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_228393520();
  v9 = type metadata accessor for ScheduleDurationItem(0);
  sub_228245BE0(&qword_27D825C90, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  sub_228244F00(v0 + *(v9 + 24), v8, &qword_280DDCDB0, v5);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    sub_228393540();
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    sub_228393540();
    sub_228391F70();
    (*(v2 + 8))(v4, v1);
  }

  return sub_228393570();
}

uint64_t sub_228242EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_228245BE0(&qword_27D825C90, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  sub_228244F00(v2 + *(a2 + 24), v11, &qword_280DDCDB0, v8);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    return sub_228393540();
  }

  (*(v5 + 32))(v7, v11, v4);
  sub_228393540();
  sub_228391F70();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2282430DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_228393520();
  sub_228245BE0(&qword_27D825C90, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  sub_228244F00(v2 + *(a2 + 24), v11, &qword_280DDCDB0, v8);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_228393540();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_228393540();
    sub_228391F70();
    (*(v5 + 8))(v7, v4);
  }

  return sub_228393570();
}

unint64_t sub_228243330()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  MEMORY[0x22AAB5C80](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2282433C0(uint64_t a1)
{
  v2 = sub_228245BE0(&qword_27D825CE8, 255, type metadata accessor for ScheduleDurationItem, &protocol conformance descriptor for ScheduleDurationItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_228243440()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView];
  }

  else
  {
    v4 = sub_2282434A4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282434A4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_2283928C0();
  [v2 setAxis_];
  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_2283928C0();
  v7 = 8.0;
  if (v5)
  {
    v7 = 12.0;
  }

  [v2 setSpacing_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

id sub_2282435DC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v5 setAxis_];
    v6 = [v1 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_2283928C0();
    v8 = 6.0;
    if (v6)
    {
      v8 = 0.0;
    }

    [v5 setSpacing_];
    v9 = *&v1[v2];
    *&v1[v2] = v5;
    v4 = v5;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

uint64_t sub_2282436D0(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22824389C();
  return sub_22819482C(v6);
}

uint64_t sub_228243740@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228243798(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22824389C();
  return sub_22819482C(a1);
}

uint64_t (*sub_228243804(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228243868;
}

uint64_t sub_228243868(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22824389C();
  }

  return result;
}

uint64_t sub_22824389C()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v52 - v8;
  sub_228244E94(0, &unk_27D825CF0, type metadata accessor for ScheduleDurationItem, v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v52 - v11;
  v13 = type metadata accessor for ScheduleDurationItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v17], v55);
  if (v56)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v18 = swift_dynamicCast();
    (*(v14 + 56))(v12, v18 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_2282451C8(v12, v16);
      v19 = sub_228243440();
      sub_228392B10();

      v20 = sub_2282435C4();
      sub_228392B10();

      v21 = sub_2282435D0();
      sub_228392B10();

      v22 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___startDateStackView;
      v23 = qword_280DDCF18;
      v24 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___startDateStackView];
      if (v23 != -1)
      {
        swift_once();
      }

      v52[0] = *algn_280DDCF28;
      v52[1] = qword_280DDCF20;
      v25 = sub_22838F0C0();
      v27 = sub_22824522C(v25, v26);

      [v24 addArrangedSubview_];

      v53 = v22;
      v28 = *&v1[v22];
      v29 = *(v13 + 20);
      v30 = sub_22838F440();
      v31 = *(v30 - 8);
      (*(v31 + 16))(v9, &v16[v29], v30);
      (*(v31 + 56))(v9, 0, 1, v30);
      v32 = v28;
      v33 = sub_228245478(v9);
      sub_228245A7C(v9, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      [v32 addArrangedSubview_];

      v34 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___endDateStackView;
      v35 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___endDateStackView];
      v36 = sub_22838F0C0();
      v38 = sub_22824522C(v36, v37);

      [v35 addArrangedSubview_];

      v39 = *(v13 + 24);
      v40 = *&v1[v34];
      v41 = sub_228245478(&v16[v39]);
      [v40 addArrangedSubview_];

      v42 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView;
      [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView] addArrangedSubview_];
      [*&v1[v42] addArrangedSubview_];
      return sub_228245B80(v16, type metadata accessor for ScheduleDurationItem);
    }
  }

  else
  {
    sub_22819482C(v55);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_228245A7C(v12, &unk_27D825CF0, type metadata accessor for ScheduleDurationItem);
  sub_228391150();
  v44 = v1;
  v45 = sub_2283911A0();
  v46 = sub_2283925C0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v47 = 136446210;
    sub_22817E6C8(&v1[v17], v55);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v49 = sub_228392040();
    v51 = sub_2281C96FC(v49, v50, &v54);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_22816B000, v45, v46, "Incorrect view model for ScheduleDurationItem: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AAB7B80](v48, -1, -1);
    MEMORY[0x22AAB7B80](v47, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id ScheduleDurationCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ScheduleDurationCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___startDateStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___endDateStackView] = 0;
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item];
  v10 = type metadata accessor for ScheduleDurationCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v40.receiver = v4;
  v40.super_class = v10;
  v11 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_228243440();
  [v12 addSubview_];

  v39 = objc_opt_self();
  sub_228180ED0();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228397F00;
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView;
  v16 = [*&v11[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView] leadingAnchor];
  v17 = [v11 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 leadingAnchor];
  v20 = [v16 constraintEqualToAnchor_];

  *(v14 + 32) = v20;
  v21 = [*&v11[v15] trailingAnchor];
  v22 = [v11 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor_];

  *(v14 + 40) = v25;
  v26 = [*&v11[v15] topAnchor];
  v27 = [v11 contentView];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:12.0];
  *(v14 + 48) = v29;
  v30 = [*&v11[v15] bottomAnchor];
  v31 = [v11 contentView];
  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:-12.0];
  *(v14 + 56) = v33;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v34 = sub_228392190();

  [v39 activateConstraints_];

  sub_228244E94(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_228397F40;
  v36 = sub_228391640();
  v37 = MEMORY[0x277D74DB8];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v11;
}

void sub_2282444B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_228243440();
    v6 = [v4 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_2283928C0();
    [v5 setAxis_];

    v8 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView];
    v9 = [v4 traitCollection];
    v10 = [v9 preferredContentSizeCategory];

    LOBYTE(v9) = sub_2283928C0();
    v11 = 8.0;
    if (v9)
    {
      v11 = 12.0;
    }

    [v8 setSpacing_];

    v12 = sub_2282435C4();
    v13 = [v4 traitCollection];
    v14 = [v13 preferredContentSizeCategory];

    LOBYTE(v13) = sub_2283928C0();
    if (v13)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 6.0;
    }

    [v12 setSpacing_];

    v16 = sub_2282435D0();
    v17 = [v4 traitCollection];
    v18 = [v17 preferredContentSizeCategory];

    LOBYTE(v17) = sub_2283928C0();
    if (v17)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 6.0;
    }

    [v16 setSpacing_];
  }
}

uint64_t sub_228244784()
{
  v1 = v0;
  sub_228244E94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = sub_228391330();
  v9 = type metadata accessor for ScheduleDurationCell();
  v13.receiver = v1;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, sel__bridgedUpdateConfigurationUsingState_, v8);

  MEMORY[0x22AAB6410]();
  v10 = sub_2283913A0();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    v11 = MEMORY[0x277D74BD0];
    sub_228244F00(v7, v5, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v5);
    return sub_228245A7C(v7, &unk_280DDBCD0, v11);
  }

  else
  {
    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BD0();
    sub_228391370();
    return MEMORY[0x22AAB6420](v7);
  }
}

id ScheduleDurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleDurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s19HealthMedicationsUI20ScheduleDurationItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  sub_228245AEC(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScheduleDurationItem(0);
  if ((sub_22838F3D0() & 1) == 0)
  {
    v23 = 0;
    return v23 & 1;
  }

  v29 = v7;
  v16 = v5;
  v17 = *(v15 + 24);
  v18 = *(v12 + 48);
  v19 = MEMORY[0x277CC9578];
  sub_228244F00(a1 + v17, v14, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v20 = a2 + v17;
  v21 = v16;
  sub_228244F00(v20, &v14[v18], &qword_280DDCDB0, v19);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v4) != 1)
  {
    sub_228244F00(v14, v10, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if (v22(&v14[v18], 1, v4) != 1)
    {
      v24 = *(v16 + 32);
      v25 = v29;
      v24(v29, &v14[v18], v4);
      sub_228245BE0(&unk_27D827B20, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v23 = sub_228391FB0();
      v26 = *(v21 + 8);
      v26(v25, v4);
      v26(v10, v4);
      sub_228245A7C(v14, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      return v23 & 1;
    }

    (*(v16 + 8))(v10, v4);
    goto LABEL_8;
  }

  if (v22(&v14[v18], 1, v4) != 1)
  {
LABEL_8:
    sub_228245B80(v14, sub_228245AEC);
    v23 = 0;
    return v23 & 1;
  }

  sub_228245A7C(v14, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v23 = 1;
  return v23 & 1;
}

void sub_228244E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228244F00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228244E94(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_228245040(uint64_t a1)
{
  sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    sub_22838F440();
    if (v2 <= 0x3F)
    {
      sub_228244E94(319, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2282451C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDurationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22824522C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CC9788];
  sub_228244E94(0, &unk_27D825D00, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  [v8 setFont_];

  v10 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  [v8 setNumberOfLines_];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v14[0] = a1;
  v14[1] = a2;
  sub_22838F500();
  v11 = sub_22838F580();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  sub_22819DFF4();
  sub_228392F40();
  sub_228245A7C(v7, &unk_27D825D00, v4);
  v12 = sub_228391FC0();

  [v8 setText_];

  return v8;
}

id sub_228245478(uint64_t a1)
{
  v27 = a1;
  v1 = sub_22838F6C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_22838F440();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = [objc_opt_self() preferredFontForTextStyle_];
  [v13 setFont_];

  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setLineBreakMode_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setNumberOfLines_];
  v15 = v5;
  v16 = v10;
  sub_228244F00(v27, v8, &qword_280DDCDB0, v15);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_228245A7C(v8, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v17 = sub_228391FC0();

    [v13 setText_];

    v18 = [objc_opt_self() secondaryLabelColor];
    [v13 setTextColor_];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_22838F680();
    v19 = sub_22838F5A0();
    (*(v2 + 8))(v4, v1);
    if (v19)
    {
      sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_228397F40;
      v21 = Date.formattedWithYearIfDifferent()();
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_22818E210();
      *(v20 + 32) = v21;
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v22 = qword_280DDCF20;

      sub_22838F0C0();
      if (*(v20 + 16))
      {
        sub_228391FD0();
      }

      else
      {
      }
    }

    else
    {
      Date.formattedWithYearIfDifferent()();
    }

    v23 = sub_228391FC0();

    [v13 setText_];

    v24 = [objc_opt_self() labelColor];
    [v13 setTextColor_];

    (*(v16 + 8))(v12, v9);
  }

  return v13;
}

uint64_t sub_228245A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228244E94(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228245AEC(uint64_t a1)
{
  if (!qword_27D825D10)
  {
    sub_228244E94(255, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D825D10);
    }
  }
}

uint64_t sub_228245B80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228245BE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t InteractionNotCheckedItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_228245C60()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) semanticIdentifier];
  v3 = [v2 description];
  v4 = sub_228392000();
  v6 = v5;

  MEMORY[0x22AAB5C80](v4, v6);

  return v1;
}

void *InteractionNotCheckedItem.__allocating_init(medication:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for InteractionNotCheckedCell();
  sub_2282460D0(&qword_27D825D18, 255, type metadata accessor for InteractionNotCheckedCell, &protocol conformance descriptor for InteractionNotCheckedCell);
  v2[3] = sub_22838FBB0();
  v2[4] = v3;
  v2[2] = a1;
  return v2;
}

void *InteractionNotCheckedItem.init(medication:)(uint64_t a1)
{
  type metadata accessor for InteractionNotCheckedCell();
  sub_2282460D0(&qword_27D825D18, 255, type metadata accessor for InteractionNotCheckedCell, &protocol conformance descriptor for InteractionNotCheckedCell);
  v1[3] = sub_22838FBB0();
  v1[4] = v3;
  v1[2] = a1;
  return v1;
}

uint64_t InteractionNotCheckedItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228245F08()
{
  sub_228393520();
  sub_2283920B0();
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2282460D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_228246118(uint64_t a1)
{
  sub_228393520();
  v2 = *v1;
  sub_2283920B0();
  v3 = *(v2 + 16);
  sub_228392C70();

  return sub_228393570();
}

uint64_t sub_228246174()
{
  v1 = *(*v0 + 24);
  v2 = [*(*v0 + 16) semanticIdentifier];
  v3 = [v2 description];
  v4 = sub_228392000();
  v6 = v5;

  MEMORY[0x22AAB5C80](v4, v6);

  return v1;
}