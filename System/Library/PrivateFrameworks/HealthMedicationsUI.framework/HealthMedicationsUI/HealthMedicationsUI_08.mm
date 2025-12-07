uint64_t sub_228246220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_22824631C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  v5 = MEMORY[0x277D10D48];
  sub_228181014(v7, v3 + v4, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  swift_endAccess();
  sub_2282470C8();
  return sub_228181138(v7, &qword_280DDCD50, &qword_280DDCD60, v5);
}

uint64_t sub_2282463CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228246424(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x277D10D48];
  sub_228181014(a1, v1 + v3, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  swift_endAccess();
  sub_2282470C8();
  return sub_228181138(a1, &qword_280DDCD50, &qword_280DDCD60, v4);
}

uint64_t (*sub_2282464C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22824652C;
}

uint64_t sub_22824652C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282470C8();
  }

  return result;
}

id sub_228246638(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionResultDetailCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_228246750()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_228246838(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for InteractionDetailFactorView()) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_2282468BC()
{
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228399D40;
  *(inited + 32) = sub_228246744();
  *(inited + 40) = sub_228246750();
  *(inited + 48) = sub_22824682C();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v4 = i;
    v5 = [v0 contentView];
    [v5 addSubview_];

    if (v2)
    {
      v6 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v6 = *(inited + 40);
    }

    v7 = v6;
    v8 = [v0 contentView];
    [v8 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v9 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v9 = MEMORY[0x22AAB6D80](2, inited);
LABEL_10:
  v10 = v9;
  v11 = [v0 contentView];
  [v11 addSubview_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_228246A74()
{
  v52 = objc_opt_self();
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399D50;
  v2 = sub_228246744();
  v3 = [v2 topAnchor];

  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView;
  v53 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView;
  v8 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView) leadingAnchor];
  v9 = [v0 &selRef_didTapDay_];
  v10 = [v9 layoutMarginsGuide];

  v11 = [v10 &selRef_logTimeChanged_ + 1];
  v12 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v12;
  v13 = [*(v0 + v7) trailingAnchor];
  v14 = [v0 &selRef_didTapDay_];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 trailingAnchor];
  v17 = [v13 constraintEqualToAnchor_];

  *(v1 + 48) = v17;
  v18 = sub_228246750();
  v19 = [v18 leadingAnchor];

  v20 = [v0 &selRef_didTapDay_];
  v21 = [v20 layoutMarginsGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintEqualToAnchor_];

  *(v1 + 56) = v23;
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView;
  v25 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView) trailingAnchor];
  v26 = [v0 &selRef_didTapDay_];
  v27 = [v26 layoutMarginsGuide];

  v28 = [v27 trailingAnchor];
  v29 = [v25 constraintEqualToAnchor_];

  *(v1 + 64) = v29;
  v30 = [*(v0 + v24) topAnchor];
  v31 = [*&v53[v0] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:20.0];

  *(v1 + 72) = v32;
  v33 = sub_22824682C();
  v34 = [v33 leadingAnchor];

  v35 = [v0 contentView];
  v36 = [v35 &selRef_addSubview_ + 1];

  v37 = [v36 leadingAnchor];
  v38 = [v34 constraintEqualToAnchor_];

  *(v1 + 80) = v38;
  v39 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView;
  v40 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView) trailingAnchor];
  v41 = [v0 contentView];
  v42 = [v41 layoutMarginsGuide];

  v43 = [v42 trailingAnchor];
  v44 = [v40 constraintEqualToAnchor_];

  *(v1 + 88) = v44;
  v45 = [*(v0 + v39) topAnchor];
  v46 = [*(v0 + v24) bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:17.0];

  *(v1 + 96) = v47;
  v48 = [*(v0 + v39) bottomAnchor];
  v49 = [v0 contentView];
  v50 = [v49 bottomAnchor];

  v51 = [v48 constraintEqualToAnchor:v50 constant:-16.0];
  *(v1 + 104) = v51;
  sub_2281BF1B8();
  v54 = sub_228392190();

  [v52 activateConstraints_];
}

uint64_t sub_2282470C8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v6], v42);
  if (v42[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    sub_22819F29C(0);
    if (swift_dynamicCast())
    {
      v7 = v41[0];
      v8 = sub_228246744();
      v9 = (v7 + *(*v7 + 120));
      v10 = v9[3];
      v11 = v9[4];
      __swift_project_boxed_opaque_existential_0(v9, v10);
      v12 = (*(v11 + 40))(v10, v11);
      v13 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
      swift_beginAccess();
      *&v8[v13] = v12;

      v14 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView];
      v15 = v9[3];
      v16 = v9[4];
      __swift_project_boxed_opaque_existential_0(v9, v15);
      v17 = *(v16 + 32);
      v18 = v14;
      v17(v42, v15, v16);
      v19 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
      swift_beginAccess();
      sub_228181014(v42, v18 + v19, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding);
      swift_endAccess();
      sub_2281C1E30();

      sub_228181138(v42, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding);
      v20 = sub_22824682C();
      v21 = v9[3];
      v22 = v9[4];
      __swift_project_boxed_opaque_existential_0(v9, v21);
      v23 = (*(v22 + 64))(v21, v22);
      v24 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
      swift_beginAccess();
      *&v20[v24] = v23;

      v25 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView];
      v26 = v9[3];
      v27 = v9[4];
      __swift_project_boxed_opaque_existential_0(v9, v26);
      v28 = *(v27 + 56);
      v29 = v25;
      v28(v42, v26, v27);
      v30 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
      swift_beginAccess();
      sub_228181014(v42, v29 + v30, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding);
      swift_endAccess();
      sub_2281C1E30();

      return sub_228181138(v42, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding);
    }
  }

  else
  {
    sub_228181138(v42, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  }

  sub_228391150();
  v32 = v1;
  v33 = sub_2283911A0();
  v34 = sub_2283925C0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41[0] = v36;
    *v35 = 136446210;
    sub_22817E6C8(&v1[v6], v42);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v37 = sub_228392040();
    v39 = sub_2281C96FC(v37, v38, v41);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_22816B000, v33, v34, "Incorrect view model for InteractionResultDetailCell: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AAB7B80](v36, -1, -1);
    MEMORY[0x22AAB7B80](v35, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_2282475E8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for InteractionResultDetailCell();
  return objc_msgSendSuper2(&v4, *a1);
}

Swift::Void __swiftcall OntologyInfoInternalViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2282477F4();
}

void sub_2282477F4()
{
  v1 = v0;
  v2 = sub_228391FC0();
  [v1 setTitle_];

  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setAllowsSelection_];

  v5 = [v1 tableView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_22838FA60();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_22838FA50();
  v8 = sub_228391FC0();

  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  v9 = [v1 tableView];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  sub_22838FA10();
  v11 = swift_getObjCClassFromMetadata();
  sub_22838F9F0();
  v12 = sub_228391FC0();

  [v10 registerClass:v11 forCellReuseIdentifier:v12];

  v13 = [v1 tableView];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 reloadData];
}

Swift::Int __swiftcall OntologyInfoInternalViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource) + 88);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, 2);
    result = v4 + 2;
    if (!v5)
    {
      return result;
    }

LABEL_6:
    __break(1u);
    return result;
  }

  v7 = sub_2283930D0();
  v5 = __OFADD__(v7, 2);
  result = v7 + 2;
  if (v5)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t OntologyInfoInternalViewController.tableView(_:cellForRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_22838FA10();
  sub_22838F9F0();
  v6 = sub_228391FC0();

  v7 = sub_22838F710();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  v9 = swift_dynamicCastClassUnconditional();
  if (!sub_22838F740() || sub_22838F740() == 1)
  {
    v10 = sub_22838F9E0();
    v11 = sub_228391FC0();
    [v10 setText_];

    v12 = sub_22838FA00();

    v13 = sub_228391FC0();

    [v12 setText_];

    goto LABEL_4;
  }

  v15 = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource);

  v16 = a2;
  v17 = sub_22838F740();
  v18 = v17 - 2;
  if (__OFSUB__(v17, 2))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = *(v15 + 88);

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v19 = MEMORY[0x22AAB6D80](v18, v16);
    goto LABEL_11;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v16 + 8 * v18 + 32);
LABEL_11:
    v20 = v19;

    v35 = v20;
    sub_228183178();
    sub_228247F14();
    v13 = v20;
    if (swift_dynamicCast())
    {
      sub_22816DFFC(v33, v36);
      v21 = sub_22838F9E0();
      v22 = v37;
      v23 = v38;
      __swift_project_boxed_opaque_existential_0(v36, v37);
      (*(v23 + 8))(v22, v23);
      v24 = sub_228391FC0();

      [v21 setText_];

      v25 = sub_22838FA00();
      v26 = v37;
      v27 = v38;
      __swift_project_boxed_opaque_existential_0(v36, v37);
      (*(v27 + 16))(v26, v27);
      v28 = sub_228391FC0();

      [v25 setText_];

      __swift_destroy_boxed_opaque_existential_0(v36);
      return v9;
    }

    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_228247F78(v33);
    v29 = sub_22838F9E0();
    v30 = sub_228391FC0();
    [v29 setText_];

    v31 = sub_22838FA00();
    v32 = sub_228391FC0();
    [v31 setText_];

LABEL_4:
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_228247F14()
{
  result = qword_27D825D58;
  if (!qword_27D825D58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D825D58);
  }

  return result;
}

uint64_t sub_228247F78(uint64_t a1)
{
  sub_228247FD4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228247FD4(uint64_t a1)
{
  if (!qword_27D825D60)
  {
    sub_228247F14();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825D60);
    }
  }
}

id OntologyInfoInternalViewController.__allocating_init(usingInsetStyling:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithUsingInsetStyling_];
}

id OntologyInfoInternalViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id OntologyInfoInternalViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_228391FC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OntologyInfoInternalViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2282483E8(void *a1)
{
  v3 = objc_opt_self();
  sub_228180ED0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228397F00;
  v5 = [v1 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 topAnchor];
  v9 = [a1 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [a1 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_2281BF1B8();
  v17 = sub_228392190();

  [v3 activateConstraints_];

  return [v1 setTranslatesAutoresizingMaskIntoConstraints_];
}

id HKDrugInteractionLifestyleFactor.image.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2 && a1 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (a1 && a1 != 1)
  {
    goto LABEL_12;
  }

  type metadata accessor for DrugInteractionVisualizationView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_228391FC0();

  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  if (v4)
  {

    return v4;
  }

  __break(1u);
LABEL_12:
  sub_2283931D0();

  v6 = sub_228393420();
  MEMORY[0x22AAB5C80](v6);

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t HKDrugInteractionLifestyleFactor.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t HKDrugInteractionLifestyleFactor.localizedString(variant:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v4 = 0xE700000000000000;
      v5 = 0x4F434341424F54;
LABEL_10:
      sub_2283931D0();

      MEMORY[0x22AAB5C80](v5, v4);

      MEMORY[0x22AAB5C80](95, 0xE100000000000000);
      if (v3)
      {
        v6 = 0x4445444445424D45;
      }

      else
      {
        v6 = 0x4F4C41444E415453;
      }

      if (v3)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xEA0000000000454ELL;
      }

      MEMORY[0x22AAB5C80](v6, v7);

      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v2 = sub_22838F0C0();

      return v2;
    }

    if (a2 == 2)
    {
      v4 = 0xE900000000000041;
      v5 = 0x4E41554A4952414DLL;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a2)
    {
      return v2;
    }

    if (a2 == 1)
    {
      v4 = 0xE700000000000000;
      v5 = 0x4C4F484F434C41;
      goto LABEL_10;
    }
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

unint64_t sub_228248AF0()
{
  result = qword_27D825D68;
  if (!qword_27D825D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825D68);
  }

  return result;
}

uint64_t sub_228248B5C()
{
  v1 = qword_27D825D70;
  if (*(v0 + qword_27D825D70))
  {
    v2 = *(v0 + qword_27D825D70);
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

void *sub_228248C30()
{
  v1 = qword_27D825D78;
  if (*(v0 + qword_27D825D78))
  {
    v2 = *(v0 + qword_27D825D78);
  }

  else
  {
    v3 = *(v0 + qword_27D825D98);
    v4 = sub_228248B5C();
    type metadata accessor for MedicationsInteractionEngine();
    swift_allocObject();
    v2 = sub_228191FE8(v3, v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t MedicationInformationDataSource.__allocating_init(displayContext:listManager:healthStore:analyticsManager:)(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *a1;
  *(v8 + qword_27D825D70) = 0;
  *(v8 + qword_27D825D78) = 0;
  *(v8 + qword_27D825D80) = MEMORY[0x277D84FA0];
  *(v8 + qword_27D825D88) = v9;
  *(v8 + qword_27D825D90) = a2;
  *(v8 + qword_27D825D98) = a3;
  *(v8 + qword_27D825DA0) = a4;
  v10 = v9;

  v11 = a3;

  v12 = sub_22838F920();

  if (v9)
  {
    v13 = [v10 firstOntologyCoding];

    if (!v13)
    {

      goto LABEL_6;
    }
  }

  sub_2282495C0();

LABEL_6:

  return v12;
}

uint64_t MedicationInformationDataSource.init(displayContext:listManager:healthStore:analyticsManager:)(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *a1;
  *(v4 + qword_27D825D70) = 0;
  *(v4 + qword_27D825D78) = 0;
  *(v4 + qword_27D825D80) = MEMORY[0x277D84FA0];
  *(v4 + qword_27D825D88) = v6;
  *(v4 + qword_27D825D90) = a2;
  *(v4 + qword_27D825D98) = a3;
  *(v4 + qword_27D825DA0) = a4;
  v7 = v6;

  v8 = a3;

  v9 = sub_22838F920();

  if (v6)
  {
    v10 = [v7 firstOntologyCoding];

    if (!v10)
    {

      goto LABEL_6;
    }
  }

  sub_2282495C0();

LABEL_6:

  return v9;
}

uint64_t sub_228248F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_22824F270(0, &qword_27D825E78, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_2283918F0();
  sub_22824F320(&qword_27D825E80, &qword_27D825E78, v9, MEMORY[0x277CBCEB0]);
  v10 = sub_228391990();

  *a4 = v10;
  return result;
}

void sub_2282490C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_228248C30();
  v8 = sub_228191178();

  sub_2282B96E4(v9);

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22818C470(&qword_280DDB9D8, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D85378]);
  v10 = sub_228392470();

  if (a5)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_22818C470(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0, MEMORY[0x277D85378]);
    a5 = sub_228392470();
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v14[4] = sub_22824F40C;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_228276010;
  v14[3] = &block_descriptor_11;
  v13 = _Block_copy(v14);

  [v8 interactionResultsForMedications:v10 lifestyleFactors:a5 completion:v13];
  _Block_release(v13);
}

void sub_228249300(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v23 = a2;
      v9 = a2;
      sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
      sub_22817A958(0, &qword_27D825E88, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        if ([v22 code] == 1003)
        {
          v10 = [objc_opt_self() sharedBehavior];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 isAppleInternalInstall];

            if (!v12)
            {
              v24 = v22;
              v25 = 1;
              v21 = v22;
              a4(&v24);

              sub_22824F430(v24, v25);

              return;
            }

            v13 = 1;
            goto LABEL_17;
          }

LABEL_26:
          __break(1u);
          return;
        }
      }

      v24 = a2;
      v25 = 1;
      v20 = a2;
      goto LABEL_20;
    }

    sub_228248B5C();
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

    v18 = *(v8 + qword_27D825D88);
    v19 = v18;
    v13 = Set<>.severities(filtering:includeMinorInteractions:)(v18, v17, a1);

LABEL_14:
    if (v13 >> 62)
    {
      if (sub_2283930D0())
      {
        goto LABEL_17;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      v24 = v13;
      v25 = 0;
LABEL_20:
      a4(&v24);

      sub_22824F430(v24, v25);
      return;
    }

    v13 = 0;
    goto LABEL_17;
  }
}

uint64_t sub_2282495C0()
{
  sub_22824E864(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v71 = &v49 - v2;
  v63 = sub_228392770();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824F0F0(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v51 = v4;
  v52 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  sub_22824E8E4(0);
  v49 = v7;
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E9B0(0);
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824EBE0(0);
  v60 = v14;
  v62 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824ECE0(0);
  v17 = *(v16 - 8);
  v64 = v16;
  v65 = v17;
  MEMORY[0x28223BE20](v16);
  v57 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824EF10(0);
  v20 = *(v19 - 8);
  v66 = v19;
  v67 = v20;
  MEMORY[0x28223BE20](v19);
  v58 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824EFA4(0);
  v23 = *(v22 - 8);
  v68 = v22;
  v69 = v23;
  MEMORY[0x28223BE20](v22);
  v59 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2283906C0();
  v25 = MEMORY[0x277D77BE8];
  sub_22824EB00(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_2281A1218(0);
  sub_22824EEBC(&qword_27D827D00, &qword_27D824108, v25, sub_22824EB00);
  sub_2283919A0();

  v70 = v0;
  v26 = sub_228248C30()[5];

  v73 = v26;

  sub_2281911EC();

  swift_beginAccess();
  sub_22824F0F0(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();

  sub_22824EB00(0, &qword_27D825DC8, sub_2281930F4);
  sub_22824F370(&qword_27D825DD0, sub_22824E8E4, MEMORY[0x277CBCB10]);
  sub_22824EEBC(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4, sub_22824EB00);
  sub_22824EB64();
  v27 = v49;
  v28 = v51;
  sub_2283919C0();
  (*(v52 + 8))(v6, v28);

  (*(v50 + 8))(v9, v27);
  v29 = v54;
  sub_228392750();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v30 = sub_228392790();
  v72 = v30;
  v31 = sub_228392730();
  v32 = *(v31 - 8);
  v51 = *(v32 + 56);
  v52 = v32 + 56;
  v33 = v71;
  v51(v71, 1, 1, v31);
  sub_22824F370(&qword_27D825DE8, sub_22824E9B0, MEMORY[0x277CBCAF8]);
  v50 = sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  v34 = v53;
  v35 = v55;
  sub_228391A80();
  sub_2281A16F0(v33);

  (*(v61 + 8))(v29, v63);
  (*(v56 + 8))(v13, v35);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_22824F0A4;
  *(v37 + 24) = v36;
  sub_2283917E0();
  v38 = MEMORY[0x277CBCD88];
  sub_22824F270(0, &qword_27D825DF8, MEMORY[0x277CBCD88]);
  sub_22824F370(&qword_27D825E10, sub_22824EBE0, MEMORY[0x277CBCCF8]);
  sub_22824EEBC(&qword_27D825E18, &qword_27D825DF8, v38, sub_22824F270);
  v39 = v57;
  v40 = v60;
  sub_228391AF0();

  (*(v62 + 8))(v34, v40);
  v72 = 2;
  sub_22824F370(&qword_27D825E30, sub_22824ECE0, MEMORY[0x277CBCCE0]);
  v41 = v58;
  v42 = v64;
  sub_2283919B0();
  (*(v65 + 8))(v39, v42);
  v43 = sub_228392790();
  v72 = v43;
  v44 = v71;
  v51(v71, 1, 1, v31);
  sub_22824F370(&qword_27D825E40, sub_22824EF10, MEMORY[0x277CBCB78]);
  v45 = v59;
  v46 = v66;
  sub_228391A70();
  sub_2281A16F0(v44);

  (*(v67 + 8))(v41, v46);
  swift_allocObject();
  swift_weakInit();
  sub_22824F370(&qword_27D825E48, sub_22824EFA4, MEMORY[0x277CBCD60]);
  v47 = v68;
  sub_228391AC0();

  (*(v69 + 8))(v45, v47);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22824A1E0(unint64_t a1, uint64_t a2, char a3, __objc2_class **a4)
{
  v33 = a2;
  sub_22824F140(0);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824F1F4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824F270(0, &qword_27D825E60, MEMORY[0x277CBCF38]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  if ((a3 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v32 = Strong;
      v14 = 0;
      v37[0] = MEMORY[0x277D84F90];
      v10 = a1 & 0xC000000000000001;
      v15 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10)
        {
          v20 = MEMORY[0x22AAB6D80](v14, a1);
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v20 = *(a1 + 8 * v14 + 32);
        }

        v17 = v20;
        v21 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v22 = [v20 firstOntologyCoding];
        if (v22)
        {

          v12 = v37;
          sub_228393210();
          v9 = *(v37[0] + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        ++v14;
        if (v21 == v18)
        {
          v23 = v37[0];
          v24 = swift_allocObject();
          v24[2] = v32;
          v24[3] = v23;
          v24[4] = v33;
          v25 = MEMORY[0x277CBCD88];
          sub_22824F270(0, &qword_27D825DF8, MEMORY[0x277CBCD88]);
          sub_22824EEBC(&qword_27D825E18, &qword_27D825DF8, v25, sub_22824F270);

          v26 = v34;
          sub_228391900();
          sub_22824F370(&qword_27D825E70, sub_22824F140, MEMORY[0x277CBCEB8]);
          v27 = v36;
          v28 = sub_228391990();
          (*(v35 + 8))(v26, v27);
          v37[0] = v28;
          v29 = sub_228391990();

          return v29;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v18 = sub_2283930D0();
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v37[0] = 2;
    sub_22824F0F0(0, &qword_27D825E00, &type metadata for InteractionSummaryItemState, MEMORY[0x277D83D88]);
  }

  else
  {
LABEL_20:
    v37[1] = 2;
    sub_22824F0F0(0, &qword_27D825E00, &type metadata for InteractionSummaryItemState, MEMORY[0x277D83D88]);
  }

  sub_2283918C0();
  sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
  sub_2283918A0();
  (*(v10 + 8))(v12, v9);
  sub_22824F320(&qword_27D825E68, &qword_27D825E60, MEMORY[0x277CBCF38], MEMORY[0x277CBCF40]);
  v29 = sub_228391990();
  (*(v15 + 8))(v17, v14);
  return v29;
}

uint64_t sub_22824A750(uint64_t *a1, uint64_t a2)
{
  v3 = sub_22838F4A0();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838FEF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228390170();
  v43 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  v41 = v7;
  v16 = qword_27D825D88;
  v17 = *(result + qword_27D825D88);
  if (v17)
  {
    v18 = [v17 firstOntologyCoding];
    if (!v18)
    {
    }
  }

  v40 = v6;
  v19 = sub_228390660();
  v20 = sub_2281BFC2C(v19);

  if (!v20)
  {
LABEL_15:

    sub_22838F910();

    sub_22838FCD0();

    sub_22838FF50();
  }

  if (v20 >> 62)
  {
    if (sub_2283930D0() >= 1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v21 = *(v15 + v16);
  if (v21)
  {
    v22 = v21;

    sub_22824F0F0(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_228396260;
    *(v20 + 32) = v22;

    v23 = *(v15 + v16);
  }

  else
  {

    v23 = 0;
  }

  v48[0] = v13;
  v24 = v23;
  sub_22824ADC0(v48, v23, v12);

  LOBYTE(v45[0]) = 1;
  sub_22824BFFC(v45, v20, v48);

  v44 = 2;
  sub_22824BFFC(&v44, v20, v45);

  sub_22819A064(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], 1);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_228398270;
  *(v25 + 56) = v10;
  *(v25 + 64) = sub_22824F370(&qword_27D823AB0, MEMORY[0x277D11000], MEMORY[0x277D10FF0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
  (*(v43 + 16))(boxed_opaque_existential_1, v12, v10);
  v28 = v49;
  v27 = v50;
  v29 = __swift_project_boxed_opaque_existential_0(v48, v49);
  *(v25 + 96) = v28;
  *(v25 + 104) = *(v27 + 8);
  v30 = __swift_allocate_boxed_opaque_existential_1((v25 + 72));
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  v32 = v46;
  v31 = v47;
  v33 = __swift_project_boxed_opaque_existential_0(v45, v46);
  *(v25 + 136) = v32;
  *(v25 + 144) = *(v31 + 8);
  v34 = __swift_allocate_boxed_opaque_existential_1((v25 + 112));
  (*(*(v32 - 8) + 16))(v34, v33, v32);
  sub_22838F490();
  sub_22838F450();
  (*(v42 + 8))(v5, v3);
  sub_22838FED0();

  sub_22838F910();

  sub_22838FCD0();

  sub_22824E864(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v35 = v41;
  v36 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_228397F40;
  v38 = v37 + v36;
  v39 = v40;
  (*(v35 + 16))(v38, v9, v40);
  sub_22838FF50();

  (*(v35 + 8))(v9, v39);
  (*(v43 + 8))(v12, v10);
  __swift_destroy_boxed_opaque_existential_0(v45);
  return __swift_destroy_boxed_opaque_existential_0(v48);
}

uint64_t sub_22824ADC0@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v86 = a3;
  v6 = *v4;
  v78 = v4;
  v79 = v6;
  v80 = a2;
  v7 = sub_228390460();
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_22824E864(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v59 - v11;
  v12 = sub_22838FFC0();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2283912A0();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E864(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v9);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = &v59 - v16;
  v66 = sub_2283911F0();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_228391220();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2283912F0();
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v68 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_228391590();
  v88 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_2283913C0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v26 = sub_22838F0C0();
  v87 = v27;
  if (v25 == 2)
  {
    sub_22838F0C0();
  }

  else
  {
    v89[0] = v25;
    sub_22824BB04();
  }

  v74 = v26;
  sub_228391540();
  sub_2283913D0();
  v28 = [objc_opt_self() secondaryLabelColor];
  v29 = sub_2283914A0();
  sub_228391420();
  v29(v89, 0);
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  sub_228392AD0();
  v30 = sub_2283914A0();
  sub_228391410();
  v30(v89, 0);
  sub_228391510();
  sub_2283928D0();
  sub_2283914E0();
  if (v25 < 3 || Array<A>.count.getter(v25) < 1)
  {
    sub_22824E864(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    *(swift_allocObject() + 16) = xmmword_228397F40;
    (*(v19 + 104))(v21, *MEMORY[0x277D74A98], v18);
    v45 = sub_228391230();
    (*(*(v45 - 8) + 56))(v70, 1, 1, v45);
    v46 = v71;
    sub_228391290();
    sub_228391260();
    (*(v72 + 8))(v46, v73);
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    sub_22819A064(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], 1);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_228397F40;
    v32 = Array<A>.count.getter(v25);
    v33 = MEMORY[0x277D83C10];
    *(v31 + 56) = MEMORY[0x277D83B88];
    *(v31 + 64) = v33;
    *(v31 + 32) = v32;
    sub_228391FD0();

    v63 = *MEMORY[0x277D74A98];
    v62 = *(v19 + 104);
    v34 = v18;
    v62(v21);
    v60 = sub_228391230();
    v35 = *(v60 - 8);
    v59 = *(v35 + 56);
    v61 = v35 + 56;
    v36 = v70;
    v59(v70, 1, 1, v60);
    v37 = v64;
    sub_2283911E0();
    v38 = v68;
    sub_2283912B0();

    (*(v65 + 8))(v37, v66);
    v65 = *(v19 + 8);
    v66 = v19 + 8;
    (v65)(v21, v34);
    sub_22824E864(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v39 = v69;
    v40 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_228397F30;
    v42 = v38;
    v43 = v67;
    (*(v39 + 16))(v41 + v40, v42, v67);
    (v62)(v21, v63, v34);
    v59(v36, 1, 1, v60);
    v44 = v71;
    sub_228391290();
    sub_228391260();
    (*(v72 + 8))(v44, v73);
    (v65)(v21, v34);
    (*(v39 + 8))(v68, v43);
  }

  v47 = v75;
  v89[3] = v75;
  v89[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
  (*(v88 + 16))(boxed_opaque_existential_1, v24, v47);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  v51 = v79;
  v52 = v80;
  v50[2] = v49;
  v50[3] = v52;
  v50[4] = v51;
  v53 = v81;
  *v81 = 1;
  (*(v76 + 104))(v53, *MEMORY[0x277D10F90], v77);
  v54 = sub_2283913A0();
  (*(*(v54 - 8) + 56))(v82, 1, 1, v54);
  v55 = v52;

  v56 = sub_228392190();
  v57 = HKUIJoinStringsForAutomationIdentifier();

  if (v57)
  {
    sub_228392000();
  }

  (*(v84 + 104))(v83, *MEMORY[0x277D11140], v85);
  sub_228390160();
  (*(v88 + 8))(v24, v47);
}

id sub_22824BB04()
{
  v1 = *v0;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  result = sub_22838F0C0();
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = result;
      result = [objc_opt_self() sharedBehavior];
      if (result)
      {
        v4 = result;
        v5 = [result isAppleInternalInstall];

        if (v5)
        {

          return 0xD00000000000001DLL;
        }

        else
        {
          return v3;
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return Array<A>.interactionSummaryTitle()(v1);
    }
  }

  return result;
}

uint64_t sub_22824BC44(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + qword_27D825D90);
    v12 = *(Strong + qword_27D825D98);
    v32 = Strong;
    v33 = qword_27D825DA0;
    v13 = *(Strong + qword_27D825DA0);
    v14 = type metadata accessor for InteractionSummaryOverviewViewController(0);
    v15 = objc_allocWithZone(v14);
    *&v15[qword_27D8264F0] = 0;
    *&v15[qword_27D8264F8] = 0;
    *&v15[qword_27D826500] = 0;
    v31 = a1;
    v16 = &v15[qword_27D826508];
    v35 = sub_228392000();
    v36 = v17;

    v18 = v12;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

    v19 = v36;
    *v16 = v35;
    *(v16 + 1) = v19;
    *&v15[qword_27D826510] = a3;
    *&v15[qword_27D826518] = v11;
    *&v15[qword_27D826520] = v18;
    *&v15[qword_27D826528] = v13;
    *&v15[qword_27D826530] = 2;
    v34.receiver = v15;
    v34.super_class = v14;

    v20 = v18;

    v21 = a3;
    v22 = objc_msgSendSuper2(&v34, sel_initWithCollectionViewLayout_, 0);
    [v22 setModalPresentationStyle_];
    sub_228274A00();

    [v22 setModalPresentationStyle_];
    [v31 showAdaptively:v22 sender:v32];

    sub_228390FE0();
  }

  else
  {
    sub_228391150();
    v24 = sub_2283911A0();
    v25 = sub_2283925C0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      v28 = sub_228393600();
      v30 = sub_2281C96FC(v28, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_22816B000, v24, v25, "[%s] Unable to launch InteractionSummaryOverviewViewController as self was deallocated.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAB7B80](v27, -1, -1);
      MEMORY[0x22AAB7B80](v26, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_22824BFFC@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v97 = a3;
  v7 = *v4;
  v90 = v4;
  v89 = v7;
  v94 = sub_228390460();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v96 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_22824E864(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v74 - v11;
  v92 = sub_22838FFC0();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v105 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2283911F0();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2283912F0();
  v15 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v85 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E864(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v9);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = v74 - v18;
  v99 = sub_2283912A0();
  v107 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_228391220();
  v20 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v22 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_228391590();
  v103 = *(v23 - 8);
  v104 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *a1;
  LOBYTE(v110[0]) = v108;
  v26 = Array<A>.cellContent(for:)(v110, a2);
  v74[1] = v27;
  v29 = v28;
  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], 1);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D83B88];
  v100 = xmmword_228397F40;
  *(v30 + 16) = xmmword_228397F40;
  v32 = MEMORY[0x277D83C10];
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  v86 = v26;
  *(v30 + 32) = v26;
  v74[4] = sub_228391FD0();
  v87 = v33;

  v88 = v29;
  v95 = v12;
  if (v29)
  {
    sub_2283913C0();
  }

  else
  {
    sub_228391580();
  }

  LOBYTE(v110[0]) = v108;
  MedicationSecondaryEducationType.text.getter();
  sub_228391540();
  v34 = [objc_opt_self() secondaryLabelColor];
  v35 = sub_2283914A0();
  sub_228391420();
  v35(v110, 0);
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  sub_228392AD0();
  v36 = sub_2283914A0();
  sub_228391410();
  v36(v110, 0);
  sub_228391510();
  sub_2283928D0();
  v106 = v25;
  sub_2283914E0();
  sub_22824E864(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v37 = *(v15 + 72);
  v78 = v15;
  v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v74[3] = v37;
  v74[2] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v100;
  v41 = *(v20 + 104);
  v84 = *MEMORY[0x277D74A98];
  v42 = v101;
  v83 = v41;
  v41(v22);
  v43 = sub_228391230();
  v44 = *(v43 - 8);
  v82 = *(v44 + 56);
  v81 = v44 + 56;
  v82(v102, 1, 1, v43);
  v45 = v98;
  sub_228391290();
  *&v100 = v40;
  sub_228391260();
  v46 = *(v107 + 8);
  v107 += 8;
  v46(v45, v99);
  v80 = *(v20 + 8);
  v80(v22, v42);
  v47 = swift_allocObject();
  v48 = v90;
  swift_weakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v108;
  *(v49 + 32) = v89;
  if (!*(v48 + qword_27D825D88) || v86 > 0)
  {
    v89 = v46;
    v90 = v49;
    v54 = v101;
    v83(v22, v84, v101);
    v82(v102, 1, 1, v43);
    v55 = v75;
    sub_2283911E0();
    v56 = v85;
    sub_2283912B0();

    (*(v76 + 8))(v55, v77);
    v80(v22, v54);
    if (v88)
    {
      v87 = v20 + 8;

      sub_2283913D0();
    }

    else
    {
      if (v86 < 1)
      {
        v60 = v79;
        v59 = v78;
        v53 = v90;
        goto LABEL_14;
      }

      v87 = v20 + 8;
    }

    v53 = v90;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_228397F30;
    *&v100 = v57;
    v58 = v57 + v38;
    v59 = v78;
    v56 = v85;
    v60 = v79;
    (*(v78 + 16))(v58, v85, v79);
    v61 = v101;
    v83(v22, v84, v101);
    v82(v102, 1, 1, v43);
    v62 = v98;
    sub_228391290();
    sub_228391260();
    v89(v62, v99);
    v80(v22, v61);
LABEL_14:
    (*(v59 + 8))(v56, v60);
    v52 = sub_22824E8C8;
    v50 = v95;
    v51 = v106;
    goto LABEL_15;
  }

  v50 = v95;
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v51 = v106;
  sub_2283913D0();

  v52 = 0;
  v53 = 0;
LABEL_15:
  v63 = v108;
  v111 = v108;
  v107 = MedicationSecondaryEducationType.text.getter();
  v64 = v104;
  v110[3] = v104;
  v110[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v110);
  (*(v103 + 16))(boxed_opaque_existential_1, v51, v64);
  *v105 = 1;
  (*(v91 + 104))();
  v66 = sub_2283913A0();
  (*(*(v66 - 8) + 56))(v50, 1, 1, v66);
  sub_22824F0F0(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_228398270;
  *(v67 + 32) = 0xD000000000000015;
  *(v67 + 40) = 0x80000002283A6D10;
  v109 = v63;
  sub_228176FA8(v52, v53);
  *(v67 + 48) = MedicationSecondaryEducationType.text.getter();
  *(v67 + 56) = v68;
  *(v67 + 64) = 1819043139;
  *(v67 + 72) = 0xE400000000000000;
  v69 = sub_228392190();

  v70 = HKUIJoinStringsForAutomationIdentifier();

  if (v70)
  {
    sub_228392000();
  }

  (*(v93 + 104))(v96, *MEMORY[0x277D11140], v94);
  v71 = sub_228390170();
  v72 = v97;
  v97[3] = v71;
  v72[4] = sub_22824F370(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  __swift_allocate_boxed_opaque_existential_1(v72);
  sub_228390160();
  sub_228176EC8(v52, v53);
  return (*(v103 + 8))(v106, v104);
}

void sub_22824CEE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + qword_27D825D88);
    if (v11)
    {
      v12 = Strong;
      type metadata accessor for MedicationInformationOverviewItem();
      inited = swift_initStackObject();
      type metadata accessor for MedicationInformationOverviewCell();
      sub_22824F370(&qword_27D824F98, type metadata accessor for MedicationInformationOverviewCell, &protocol conformance descriptor for MedicationInformationOverviewCell);
      v14 = v11;
      sub_22838FBB0();
      *(inited + 16) = v14;
      *(inited + 24) = a3;
      if ((a3 - 1) > 1u)
      {
        sub_228393300();
        __break(1u);
      }

      else
      {
        v15 = v14;
        v16 = sub_22827F81C(v15, a3);
        if (!v17)
        {
          if (qword_27D823310 != -1)
          {
            swift_once();
          }

          v16 = sub_22838F0C0();
        }

        v18 = v16;
        v19 = v17;
        v20 = sub_22827D32C();
        v22 = sub_22824DB80(a3, v15, v18, v19, v20, v21);

        [a1 showAdaptively:v22 sender:v12];
      }
    }

    else
    {
      LOBYTE(v35) = a3;
      v30 = Strong;
      objc_allocWithZone(type metadata accessor for PregnancyLactationEducationViewController(0));

      v32 = PregnancyLactationEducationViewController.init(listManager:educationType:)(v31, &v35);
      [v32 setModalPresentationStyle_];
      v33 = v32;
      [a1 showAdaptively:v33 sender:v30];
    }
  }

  else
  {
    sub_228391150();
    v23 = sub_2283911A0();
    v24 = sub_2283925C0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      v27 = sub_228393600();
      v29 = sub_2281C96FC(v27, v28, &v35);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22816B000, v23, v24, "[%s] Unable to launch PregnancyLactationEducationViewController as self was deallocated.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAB7B80](v26, -1, -1);
      MEMORY[0x22AAB7B80](v25, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_22824D350()
{
}

uint64_t MedicationInformationDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return v1;
}

uint64_t MedicationInformationDataSource.__deallocating_deinit(uint64_t a1)
{
  MedicationInformationDataSource.deinit(a1);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationInformationDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_2283904F0();
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
}

uint64_t sub_22824D594()
{
  sub_2283904F0();
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t MedicationInformationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391590();
  MEMORY[0x28223BE20](v10 - 8);
  if (sub_228392000() == a1 && v11 == a2)
  {

    goto LABEL_13;
  }

  v13 = sub_228393460();

  if (v13)
  {
LABEL_13:
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391500();
    v18 = sub_22838FB60();
    swift_allocObject();
    v19 = sub_22838FB50();
    a3[3] = v18;
    result = sub_22824F370(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
    a3[4] = result;
    *a3 = v19;
    return result;
  }

  if (sub_228392000() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = sub_228393460();

    if ((v16 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22824F370(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], 1);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_228397F40;
  v21 = sub_228390660();
  v22 = sub_2281BFC2C(v21);

  if (v22)
  {
    if (v22 >> 62)
    {
      v23 = sub_2283930D0();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x277D83C10];
  *(v20 + 56) = MEMORY[0x277D83B88];
  *(v20 + 64) = v24;
  *(v20 + 32) = v23;
  sub_22838F0C0();
  if (*(v20 + 16))
  {
    sub_228391FD0();
  }

  v28[0] = 0x74497265746F6F46;
  v28[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v25 = sub_22838F450();
  v27 = v26;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x22AAB5C80](v25, v27);

  a3[3] = sub_228390330();
  a3[4] = sub_22824F370(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

id sub_22824DB80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(type metadata accessor for MedicationSecondaryEducationViewController(0));
  v12[qword_27D825360] = a1;
  type metadata accessor for MedicationSecondaryEducationCompoundDataSource(0);
  swift_allocObject();
  type metadata accessor for MedicationSecondaryEducationDataSource(0);
  v13 = swift_allocObject();
  v14 = a2;
  v15 = sub_22824DD0C(a1, v14, a3, a4, a5, a6, v13);
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228397F40;
  v17 = sub_22824F370(&qword_27D825378, type metadata accessor for MedicationSecondaryEducationDataSource, MEMORY[0x277D12500]);
  *(v16 + 32) = v15;
  *(v16 + 40) = v17;
  sub_228390210();

  v18 = sub_228390480();
  [v18 setModalPresentationStyle_];

  return v18;
}

uint64_t sub_22824DD0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v68 = a4;
  v12 = a1;
  v13 = a1;
  v71 = sub_22838F4A0();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22838FEF0();
  v72 = *(v74 - 8);
  v16 = MEMORY[0x28223BE20](v74);
  v73 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = &v68 - v18;
  sub_22824E864(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v68 - v20;
  v75 = a7;
  *(a7 + qword_27D824318) = v12;
  if (v13)
  {
    v22 = a5;
    v23 = sub_22827F934(a2, v12);
    v24 = type metadata accessor for MedicationMarkdownItem();
    v25 = swift_allocObject();
    type metadata accessor for MedicationMarkdownItemCell();
    sub_22824F370(&qword_27D824340, type metadata accessor for MedicationMarkdownItemCell, &protocol conformance descriptor for MedicationMarkdownItemCell);
    *(v25 + 16) = sub_22838FBB0();
    *(v25 + 24) = v26;
    v27 = v68;
    *(v25 + 32) = a3;
    *(v25 + 40) = v27;
    *(v25 + 48) = v22;
    *(v25 + 56) = a6;
    *(v25 + 64) = v23 & 1;
    v28 = &qword_27D824350;
    v29 = type metadata accessor for MedicationMarkdownItem;
    v30 = &unk_22839D100;
  }

  else
  {
    v24 = type metadata accessor for MedicationSideEffectsItem();
    v25 = swift_allocObject();
    type metadata accessor for MedicationSideEffectsItemCell();
    sub_22824F370(&qword_27D823838, type metadata accessor for MedicationSideEffectsItemCell, &protocol conformance descriptor for MedicationSideEffectsItemCell);
    *(v25 + 16) = sub_22838FBB0();
    *(v25 + 24) = v31;
    v32 = v68;
    *(v25 + 32) = a3;
    *(v25 + 40) = v32;
    *(v25 + 48) = a5;
    *(v25 + 56) = a6;
    v28 = &unk_27D824360;
    v29 = type metadata accessor for MedicationSideEffectsItem;
    v30 = &unk_22839ED8C;
  }

  v33 = sub_22824F370(v28, v29, v30);
  v78 = v24;
  v79 = v33;
  v77[0] = v25;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  v34 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE5titleSSvg_0();
  v36 = v35;
  v37 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE16doseFormStrengthSSSgvg_0();
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  v70 = a2;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v41 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE10componentsSaySSGSgvg_0();
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v43 = type metadata accessor for MedicationInfoItem(0);
  v44 = swift_allocObject();
  type metadata accessor for MedicationInfoItemCell();
  sub_22824F370(&qword_27D824338, type metadata accessor for MedicationInfoItemCell, &protocol conformance descriptor for MedicationInfoItemCell);
  *(v44 + 16) = sub_22838FBB0();
  *(v44 + 24) = v45;
  sub_2281AA8D4(v21, v44 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji);
  v46 = (v44 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
  *v46 = v34;
  v46[1] = v36;
  v47 = (v44 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
  *v47 = v39;
  v47[1] = v40;
  *(v44 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients) = v42;
  sub_22819A064(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], 1);
  v48 = swift_allocObject();
  v68 = xmmword_228397F40;
  *(v48 + 16) = xmmword_228397F40;
  *(v48 + 56) = v43;
  *(v48 + 64) = sub_22824F370(&qword_27D824358, type metadata accessor for MedicationInfoItem, &protocol conformance descriptor for MedicationInfoItem);
  *(v48 + 32) = v44;

  sub_22838F490();
  sub_22838F450();
  v49 = *(v69 + 8);
  v50 = v71;
  v49(v15, v71);
  sub_22838FED0();
  v51 = swift_allocObject();
  *(v51 + 16) = v68;
  v52 = v78;
  v53 = v79;
  v54 = __swift_project_boxed_opaque_existential_0(v77, v78);
  *(v51 + 56) = v52;
  *(v51 + 64) = *(v53 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v51 + 32));
  (*(*(v52 - 8) + 16))(boxed_opaque_existential_1, v54, v52);
  sub_22838F490();
  sub_22838F450();
  v49(v15, v50);
  v56 = v73;
  sub_22838FED0();
  sub_22824E864(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v57 = v72;
  v58 = *(v72 + 72);
  v59 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_228397F30;
  v61 = v60 + v59;
  v62 = *(v57 + 16);
  v63 = v76;
  v64 = v74;
  v62(v61, v76, v74);
  v62(v61 + v58, v56, v64);
  v65 = sub_22838F920();

  v66 = *(v57 + 8);
  v66(v56, v64);
  v66(v63, v64);
  __swift_destroy_boxed_opaque_existential_0(v77);
  return v65;
}

BOOL _s19HealthMedicationsUI31MedicationInformationDataSourceC14DisplayContextO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
      v4 = v3;
      v5 = v2;
      v6 = sub_228392C60();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_22824E4C8(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if (*(v1 + qword_27D825D88))
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  sub_228390000();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = sub_2283900C0();
  v9(v6, v2);
  return v10;
}

uint64_t type metadata accessor for MedicationInformationDataSource(uint64_t a1)
{
  result = qword_27D825DB0;
  if (!qword_27D825DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22824E798(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22824E7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22824E83C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22824E864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22824E8E4(uint64_t a1)
{
  if (!qword_27D827CF0)
  {
    v1 = MEMORY[0x277D77BE8];
    sub_22824EB00(255, &qword_27D824108, MEMORY[0x277D77BE8]);
    sub_2281A1218(255);
    sub_22824EEBC(&qword_27D827D00, &qword_27D824108, v1, sub_22824EB00);
    v2 = sub_2283916D0();
    if (!v3)
    {
      atomic_store(v2, &qword_27D827CF0);
    }
  }
}

void sub_22824E9B0(uint64_t a1)
{
  if (!qword_27D825DC0)
  {
    sub_22824E8E4(255);
    sub_22824EB00(255, &qword_27D825DC8, sub_2281930F4);
    sub_22824F0F0(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    sub_22824F370(&qword_27D825DD0, sub_22824E8E4, MEMORY[0x277CBCB10]);
    sub_22824EEBC(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4, sub_22824EB00);
    sub_22824EB64();
    v1 = sub_228391690();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825DC0);
    }
  }
}

void sub_22824EB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2283917F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22824EB64()
{
  result = qword_280DDBBF0;
  if (!qword_280DDBBF0)
  {
    sub_22824F0F0(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBBF0);
  }

  return result;
}

void sub_22824EBE0(uint64_t a1)
{
  if (!qword_27D825DE0)
  {
    sub_22824E9B0(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22824F370(&qword_27D825DE8, sub_22824E9B0, MEMORY[0x277CBCAF8]);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_228391790();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825DE0);
    }
  }
}

void sub_22824ECE0(uint64_t a1)
{
  if (!qword_27D825DF0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22824F270(255, &qword_27D825DF8, MEMORY[0x277CBCD88]);
    sub_22824EDEC(255);
    sub_22824EEBC(&qword_27D825E18, &qword_27D825DF8, v1, sub_22824F270);
    sub_22824F370(&qword_27D825E20, sub_22824EDEC, MEMORY[0x277CBCBA0]);
    v2 = sub_228391780();
    if (!v3)
    {
      atomic_store(v2, &qword_27D825DF0);
    }
  }
}

void sub_22824EDEC(uint64_t a1)
{
  if (!qword_27D825E08)
  {
    sub_22824EBE0(255);
    sub_22818217C(255, &qword_280DDB860, MEMORY[0x277D84948], 1);
    sub_22824F370(&qword_27D825E10, sub_22824EBE0, MEMORY[0x277CBCCF8]);
    v1 = sub_228391710();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825E08);
    }
  }
}

uint64_t sub_22824EEBC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    a4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22824EF10(uint64_t a1)
{
  if (!qword_27D825E28)
  {
    sub_22824ECE0(255);
    sub_22824F370(&qword_27D825E30, sub_22824ECE0, MEMORY[0x277CBCCE0]);
    v1 = sub_228391700();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825E28);
    }
  }
}

void sub_22824EFA4(uint64_t a1)
{
  if (!qword_27D825E38)
  {
    sub_22824EF10(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22824F370(&qword_27D825E40, sub_22824EF10, MEMORY[0x277CBCB78]);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825E38);
    }
  }
}

uint64_t sub_22824F0AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

void sub_22824F0F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22824F140(uint64_t a1)
{
  if (!qword_27D825E50)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22824F270(255, &qword_27D825DF8, MEMORY[0x277CBCD88]);
    sub_22824EEBC(&qword_27D825E18, &qword_27D825DF8, v1, sub_22824F270);
    v2 = sub_228391910();
    if (!v3)
    {
      atomic_store(v2, &qword_27D825E50);
    }
  }
}

void sub_22824F1F4(uint64_t a1)
{
  if (!qword_27D825E58)
  {
    sub_22824F0F0(255, &qword_27D825E00, &type metadata for InteractionSummaryItemState, MEMORY[0x277D83D88]);
    v1 = sub_2283918B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825E58);
    }
  }
}

void sub_22824F270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22824F0F0(255, &qword_27D825E00, &type metadata for InteractionSummaryItemState, MEMORY[0x277D83D88]);
    v7 = v6;
    v8 = sub_22818217C(255, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22824F320(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22824F270(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22824F370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22824F430(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    sub_22824F43C(a1);
  }
}

unint64_t sub_22824F43C(unint64_t result)
{
  if (result != 2)
  {
    return sub_2281E8530(result);
  }

  return result;
}

id MedicationCustomizationDataProvider.medication.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t MedicationCustomizationDataProvider.caption.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MedicationCustomizationDataProvider.caption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MedicationCustomizationDataProvider.strengthDisplay.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MedicationCustomizationDataProvider.strengthDisplay.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MedicationCustomizationDataProvider.medMoji.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 28);

  return sub_22824F65C(a1, v3);
}

uint64_t sub_22824F65C(uint64_t a1, uint64_t a2)
{
  sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MedicationCustomizationDataProvider.nickname.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 32));

  return v1;
}

uint64_t MedicationCustomizationDataProvider.nickname.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MedicationCustomizationDataProvider.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 36));

  return v1;
}

uint64_t MedicationCustomizationDataProvider.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MedicationCustomizationDataProvider.init(medication:caption:medMoji:nickname:notes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for MedicationCustomizationDataProvider(0);
  v17 = v16[7];
  v18 = sub_228390D50();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = &a9[v16[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = 0;
  *(a9 + 4) = 0xE000000000000000;
  result = sub_22824F65C(a4, &a9[v17]);
  v21 = &a9[v16[8]];
  *v21 = a5;
  *(v21 + 1) = a6;
  *v19 = a7;
  *(v19 + 1) = a8;
  return result;
}

uint64_t MedicationCustomizationDataProvider.title.getter()
{
  type metadata accessor for MedicationCustomizationDataProvider(0);
  sub_2283920A0();
  v18 = v1;
  if (*v0)
  {
    v2 = [*v0 localizedPreferredName];
    if (v2)
    {
      v3 = v2;
      v4 = sub_228392000();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v19 = v4;
    v20 = v6;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
LABEL_8:
  v9 = &v18 + 2 * v7;
  while (++v7 != 3)
  {
    v10 = v9 + 2;
    v11 = *v9;
    v9 += 2;
    if (v11)
    {
      v12 = *(v10 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_228198748(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_228198748((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      goto LABEL_8;
    }
  }

  sub_22824FE6C(0, &qword_27D825070, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  sub_22824FE6C(0, &qword_27D827E10, MEMORY[0x277D83940]);
  sub_2281BF13C();
  v16 = sub_228391F90();

  return v16;
}

uint64_t sub_22824FBA0()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_22824FBD0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t MedicationDetailsDataProvider.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MedicationDetailsDataProvider.caption.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MedicationDetailsDataProvider.strengthDisplay.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MedicationDetailsDataProvider.strengthDisplay.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_22824FD08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_2281BF64C(v4, a2);
}

uint64_t MedicationDetailsDataProvider.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationDetailsDataProvider(0) + 32));

  return v1;
}

uint64_t MedicationDetailsDataProvider.init(title:caption:strengthDisplay:medMoji:notes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v13 = type metadata accessor for MedicationDetailsDataProvider(0);
  result = sub_2281AA8D4(a7, a9 + *(v13 + 28));
  v15 = (a9 + *(v13 + 32));
  *v15 = a8;
  v15[1] = a10;
  return result;
}

uint64_t sub_22824FE04()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22824FE34(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

void sub_22824FE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22824FF6C(uint64_t a1)
{
  sub_22825006C(319, &unk_27D8277B0, sub_2282500C0);
  if (v1 <= 0x3F)
  {
    sub_22825006C(319, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if (v2 <= 0x3F)
    {
      sub_22824FE6C(319, &qword_27D825070, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22825006C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_2282500C0()
{
  result = qword_27D823BD8;
  if (!qword_27D823BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D823BD8);
  }

  return result;
}

void sub_228250134(uint64_t a1)
{
  sub_22825006C(319, &qword_280DDBD20, MEMORY[0x277D116C8]);
  if (v1 <= 0x3F)
  {
    sub_22824FE6C(319, &qword_27D825070, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::String __swiftcall Date.formattedWithYearIfDifferent()()
{
  v0 = sub_22838F2F0();
  v55 = *(v0 - 8);
  v56 = v0;
  MEMORY[0x28223BE20](v0);
  v54 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22838F440();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v65 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22838F6A0();
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v67 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22838F2D0();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22838F310();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F1A0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22838F700();
  MEMORY[0x28223BE20](v8 - 8);
  v64 = sub_22838F6C0();
  v71 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838F580();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = MEMORY[0x277D83D88];
  sub_228250B20(0, &qword_27D825EB0, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v53 - v14;
  sub_228250B20(0, &qword_27D825EB8, MEMORY[0x277CC93A0], v12);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53 - v17;
  v70 = sub_22838F320();
  v19 = *(v70 - 8);
  v20 = MEMORY[0x28223BE20](v70);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v23);
  v57 = &v53 - v26;
  v27 = sub_22838F270();
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  v28 = sub_22838F250();
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  sub_22838F500();
  sub_22838F620();
  sub_22838F6E0();
  sub_22838F190();
  v29 = v10;
  sub_22838F290();
  v30 = v58;
  sub_22838F300();
  sub_22838F2B0();
  (*(v59 + 8))(v30, v62);
  v59 = v19;
  v31 = *(v19 + 8);
  v32 = v70;
  v31(v22, v70);
  v33 = v31;
  v62 = v31;
  v34 = v61;
  sub_22838F2C0();
  sub_22838F280();
  (*(v60 + 8))(v34, v63);
  v58 = v25;
  v33(v25, v32);
  v35 = v29;
  sub_22838F680();
  LODWORD(v61) = *MEMORY[0x277CC9988];
  v36 = v72;
  v60 = *(v72 + 104);
  v38 = v66;
  v37 = v67;
  (v60)(v67);
  v39 = v65;
  sub_22838F3F0();
  v63 = sub_22838F6B0();
  (*(v68 + 8))(v39, v69);
  v40 = *(v36 + 8);
  v72 = v36 + 8;
  v41 = v38;
  v40(v37, v38);
  v42 = *(v71 + 8);
  v71 += 8;
  v43 = v64;
  v42(v35, v64);
  sub_22838F680();
  (v60)(v37, v61, v41);
  v44 = sub_22838F6B0();
  v40(v37, v41);
  v45 = v62;
  v46 = v70;
  v42(v35, v43);
  v47 = v57;
  if (v63 != v44)
  {
    v48 = v54;
    sub_22838F2E0();
    v49 = v58;
    sub_22838F2A0();
    (*(v55 + 8))(v48, v56);
    v45(v47, v46);
    (*(v59 + 32))(v47, v49, v46);
  }

  sub_22825303C(&qword_27D825EC0, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_22838F410();
  v45(v47, v46);
  v50 = v73;
  v51 = v74;
  result._object = v51;
  result._countAndFlagsBits = v50;
  return result;
}

void sub_228250B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for StartDateDataSource(uint64_t a1)
{
  result = qword_27D825EE8;
  if (!qword_27D825EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228250BD0(uint64_t a1)
{
  result = sub_22838FEF0();
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

uint64_t sub_228250CD0(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_27D825ED8) = 0;
  sub_22838FEB0();
  *(v2 + qword_27D825EC8) = a1;
  *(v2 + qword_27D825ED0) = a2;
  sub_228250B20(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F40;

  sub_22838FED0();
  v5 = sub_22838FF30();

  sub_228250E84();

  return v5;
}

uint64_t sub_228250E84()
{
  v1 = v0;
  sub_228241C50(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + qword_27D825EC8);
  v13[0] = *(v0 + qword_27D825ED0);
  v13[1] = v7;
  sub_228241D38(0);
  sub_228241DA0(0);
  v8 = MEMORY[0x277CBCE48];
  sub_22825303C(&qword_27D825C50, sub_228241D38, MEMORY[0x277CBCE48]);
  sub_22825303C(&qword_27D825C58, sub_228241DA0, v8);
  sub_2283919E0();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_228252FEC;
  *(v10 + 24) = v9;
  sub_22825303C(&qword_27D825C68, sub_228241C50, MEMORY[0x277CBCAF0]);
  v11 = sub_228391AC0();

  (*(v4 + 8))(v6, v3);
  *(v1 + qword_27D825ED8) = v11;
}

uint64_t sub_2282510D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228251148(a1, a2);
  }

  return result;
}

uint64_t sub_228251148(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390460();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228250B20(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v42 - v7;
  v46 = sub_22838FFC0();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228390170();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2283913A0();
  v47 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_228391590();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ScheduleDurationItem(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 20);
  v23 = sub_22838F440();
  (*(*(v23 - 8) + 16))(&v21[v22], a1, v23);
  sub_22822BFC0(a2, &v21[*(v18 + 24)]);
  sub_22838F490();
  v45 = v18;
  v24 = *(v18 + 28);
  v48 = v21;
  v25 = &v21[v24];
  type metadata accessor for ScheduleDurationCell();
  sub_22825303C(&qword_27D825810, type metadata accessor for ScheduleDurationCell, &protocol conformance descriptor for ScheduleDurationCell);
  *v25 = sub_22838FBB0();
  v25[1] = v26;
  sub_228391580();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v27 = [objc_opt_self() linkColor];
  v43 = v17;
  v28 = sub_228391450();
  sub_228391420();
  v28(v57, 0);
  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v57[3] = v14;
  v57[4] = MEMORY[0x277D74C30];
  v42 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(v15 + 16))(boxed_opaque_existential_1, v17, v14);
  swift_allocObject();
  swift_weakInit();
  v30 = v44;
  *v44 = 1;
  (*(v8 + 104))(v30, *MEMORY[0x277D10F90], v46);
  v31 = v47;
  v32 = v49;
  v33 = v53;
  (*(v47 + 16))(v49, v13, v53);
  (*(v31 + 56))(v32, 0, 1, v33);
  (*(v51 + 104))(v50, *MEMORY[0x277D11140], v52);
  v34 = v54;
  sub_228390160();
  sub_22819A064(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], 1);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_228397F30;
  *(v35 + 56) = v45;
  *(v35 + 64) = sub_22825303C(&unk_27D825CC0, type metadata accessor for ScheduleDurationItem, &protocol conformance descriptor for ScheduleDurationItem);
  v36 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
  v37 = v48;
  sub_228252E18(v48, v36);
  v38 = v56;
  *(v35 + 96) = v56;
  *(v35 + 104) = sub_22825303C(&qword_27D823AB0, MEMORY[0x277D11000], MEMORY[0x277D10FF0]);
  v39 = __swift_allocate_boxed_opaque_existential_1((v35 + 72));
  v40 = v55;
  (*(v55 + 16))(v39, v34, v38);
  sub_22838FF60();

  sub_22838FF70();
  (*(v40 + 8))(v34, v38);
  (*(v31 + 8))(v13, v33);
  (*(v15 + 8))(v43, v42);
  return sub_228252E7C(v37);
}

uint64_t sub_22825195C(void *a1, uint64_t a2)
{
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v46 - v7;
  v51 = sub_22838F440();
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v51);
  v12 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v46 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v47 = a1;
    v17 = qword_27D825EC8;

    sub_228391870();

    v50 = v14;
    v18 = qword_27D825ED0;

    sub_228391870();

    v19 = *(v16 + v17);
    v49 = v8;
    v20 = *(v16 + v18);
    type metadata accessor for StartDateEndDateEditDataSource(0);
    swift_allocObject();

    v21 = sub_228240CB0(v19, v20);

    sub_2283901F0();
    sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_228397F40;
    v23 = MEMORY[0x277D10F80];
    *(v22 + 32) = v21;
    *(v22 + 40) = v23;
    v46[1] = v21;

    sub_228390220();
    v24 = objc_allocWithZone(sub_2283904D0());
    v25 = sub_228390480();
    v26 = qword_280DDCF18;
    v27 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v28 = sub_228391FC0();

    [v27 setTitle_];

    v29 = swift_allocObject();
    swift_weakInit();
    v30 = *(v9 + 16);
    v46[0] = v16;
    v31 = v51;
    v30(v12, v50);
    sub_22822BFC0(v49, v6);
    v32 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v33 = (v10 + *(v48 + 80) + v32) & ~*(v48 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    (*(v9 + 32))(v34 + v32, v12, v31);
    sub_2281E793C(v6, v34 + v33);
    v35 = objc_allocWithZone(MEMORY[0x277D12978]);

    v36 = [v35 initWithRootViewController_];

    v37 = [v27 navigationItem];
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    v38 = swift_allocObject();
    v38[2] = sub_228252ED8;
    v38[3] = v34;
    v38[4] = v36;

    v39 = v36;
    sub_228392C90();
    v40 = sub_228392640();
    [v37 setLeftBarButtonItem_];

    v41 = [v27 navigationItem];
    v42 = swift_allocObject();
    v42[2] = sub_228252170;
    v42[3] = 0;
    v42[4] = v39;
    v43 = v39;
    sub_228392C90();
    v44 = sub_228392640();
    [v41 setRightBarButtonItem_];

    v45 = v43;
    [v45 setModalPresentationStyle_];
    [v45 setModalInPresentation_];

    [v47 presentViewController:v45 animated:1 completion:0];

    sub_2281982F0(v49);
    return (*(v9 + 8))(v50, v51);
  }

  return result;
}

id sub_228252070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_228391850();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_228391850();
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_228252184()
{
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_228390010();

  sub_228391870();

  v10 = sub_22838F440();
  v11 = (*(*(v10 - 8) + 48))(v2, 1, v10);
  sub_2281982F0(v2);
  if (v11 != 1)
  {
    sub_228390000();
    (*(v4 + 8))(v9, v3);
    (*(v4 + 32))(v9, v7, v3);
  }

  sub_2283901C0();
  v12 = sub_2283900C0();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t sub_2282523D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838F6C0();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_22838F440();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v45 = &v40 - v20;
  if (sub_228392000() == a1 && v21 == a2)
  {
  }

  else
  {
    v23 = sub_228393460();

    if ((v23 & 1) == 0)
    {
      v40 = v3;

      sub_228391870();

      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        sub_2281982F0(v14);
        a3[3] = sub_22838FCC0();
        a3[4] = sub_22825303C(&qword_27D825EF8, MEMORY[0x277D10F20], MEMORY[0x277D10F18]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        return sub_22838FCB0();
      }

      else
      {
        (*(v16 + 32))(v45, v14, v15);
        sub_22819A064(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], 1);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_228397F40;
        sub_22838F680();

        sub_228391870();

        v32 = sub_22838F5F0();
        v33 = *(v16 + 8);
        v33(v19, v15);
        (*(v41 + 8))(v11, v9);
        v34 = MEMORY[0x277D83C10];
        *(v31 + 56) = MEMORY[0x277D83B88];
        *(v31 + 64) = v34;
        *(v31 + 32) = v32;
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        v35 = qword_280DDCF20;

        sub_22838F0C0();
        if (*(v31 + 16))
        {
          sub_228391FD0();
        }

        else
        {
        }

        v46 = 0x74497265746F6F46;
        v47 = 0xEB000000005F6D65;
        v36 = v42;
        sub_22838F490();
        v37 = sub_22838F450();
        v39 = v38;
        (*(v43 + 8))(v36, v44);
        MEMORY[0x22AAB5C80](v37, v39);

        a3[3] = sub_228390330();
        a3[4] = sub_22825303C(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        sub_228390320();
        return (v33)(v45, v15);
      }
    }
  }

  if (qword_27D823300 != -1)
  {
    swift_once();
  }

  v25 = sub_22838F0C0();
  v27 = v26;
  type metadata accessor for ScheduleHeaderCell();
  sub_22825303C(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
  v28 = sub_22838FBB0();
  v30 = v29;
  sub_22838FBB0();

  a3[3] = &type metadata for ScheduleHeaderItem;
  a3[4] = sub_228194464();
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = v25;
  *(result + 24) = v27;
  *(result + 32) = 0;
  *(result + 40) = nullsub_1;
  *(result + 48) = 0;
  *(result + 56) = v28;
  *(result + 64) = v30;
  return result;
}

uint64_t sub_228252B54()
{

  v1 = qword_27D825EE0;
  v2 = sub_22838FEF0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_228252BEC()
{
  v0 = sub_22838FFB0();

  v1 = qword_27D825EE0;
  v2 = sub_22838FEF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_228252CFC()
{
  type metadata accessor for ScheduleHeaderCell();
  sub_22825303C(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
  sub_2283926D0();
  type metadata accessor for ScheduleDurationCell();
  sub_22825303C(&qword_27D825810, type metadata accessor for ScheduleDurationCell, &protocol conformance descriptor for ScheduleDurationCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926C0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t sub_228252E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDurationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228252E7C(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleDurationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_228252ED8(void *a1)
{
  v3 = *(sub_22838F440() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_228252070(a1, v7, v1 + v4, v8);
}

uint64_t sub_228252FF4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_228253084(0);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_22825303C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228253084(uint64_t a1)
{
  if (!qword_27D825F00)
  {
    sub_22838F440();
    sub_228250B20(255, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D825F00);
    }
  }
}

uint64_t Dosage.description.getter()
{
  sub_2283931D0();
  MEMORY[0x22AAB5C80](0x656761736F44, 0xE600000000000000);
  MEMORY[0x22AAB5C80](0x3D64697575203ALL, 0xE700000000000000);
  sub_22838F4A0();
  sub_228253328(&qword_27D824618, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_228393420();
  MEMORY[0x22AAB5C80](v0);

  MEMORY[0x22AAB5C80](0x3D656D6974202CLL, 0xE700000000000000);
  type metadata accessor for Dosage(0);
  sub_22838F440();
  sub_228253328(&qword_27D8283D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v1 = sub_228393420();
  MEMORY[0x22AAB5C80](v1);

  MEMORY[0x22AAB5C80](0x746E756F6D61202CLL, 0xE90000000000003DLL);
  sub_228392400();
  return 0;
}

uint64_t type metadata accessor for Dosage(uint64_t a1)
{
  result = qword_27D825F08;
  if (!qword_27D825F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228253328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL static Dosage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_22838F470() & 1) != 0 && (v4 = type metadata accessor for Dosage(0), (sub_22838F3D0()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228253474(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    result = sub_22838F440();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228253534(uint64_t a1)
{
  v2 = sub_228253F1C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228253580(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22817E6C8(v1 + v3, v8);
  if (v9)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v4 = sub_2282537B4();
      [v4 setColor_];
    }

    v5 = a1;
  }

  else
  {
    sub_22819482C(a1);
    v5 = v8;
  }

  return sub_22819482C(v5);
}

uint64_t (*sub_228253664(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_2282536EC;
}

void sub_2282536EC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_22817E6C8(v3[8] + v3[9], v3);
    if (v3[3])
    {
      sub_22817A700();
      if (swift_dynamicCast())
      {
        v4 = v3[5];
        v5 = sub_2282537B4();
        [v5 setColor_];
      }
    }

    else
    {
      sub_22819482C(v3);
    }
  }

  free(v3);
}

id sub_2282537B4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_228253998()
{
  v1 = v0;
  v2 = sub_2282537B4();
  [v0 addSubview_];

  v3 = objc_opt_self();
  sub_228180ED0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228397F00;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView;
  v6 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView] heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  *(v4 + 32) = v7;
  v8 = [*&v1[v5] leadingAnchor];
  v9 = [v1 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:3.0];
  *(v4 + 40) = v11;
  v12 = [*&v1[v5] trailingAnchor];
  v13 = [v1 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-3.0];
  *(v4 + 48) = v15;
  v16 = [*&v1[v5] centerYAnchor];
  v17 = [v1 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v4 + 56) = v18;
  sub_2281BF1B8();
  v19 = sub_228392190();

  [v3 activateConstraints_];
}

id sub_228253C1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SeparatorHeaderCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_228253CC0(uint64_t *a1, int a2)
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

uint64_t sub_228253D08(uint64_t result, int a2, int a3)
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

uint64_t sub_228253D5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t (*sub_228253DB8(uint64_t **a1))()
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
  v2[4] = sub_228253664(v2);
  return sub_228194584;
}

uint64_t sub_228253E28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t (*sub_228253EA8(uint64_t **a1))()
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
  v2[4] = sub_228253664(v2);
  return sub_228194890;
}

unint64_t sub_228253F1C()
{
  result = qword_27D825F28;
  if (!qword_27D825F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825F28);
  }

  return result;
}

unint64_t sub_228253F70()
{
  result = qword_27D825F30;
  if (!qword_27D825F30)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D825F30);
  }

  return result;
}

uint64_t sub_228253FDC()
{
  sub_228182110(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F40;
  type metadata accessor for InteractionFactorsInfoDataSource(0);
  swift_allocObject();
  v1 = sub_22825F9D0();
  v2 = sub_228254048();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

unint64_t sub_228254048()
{
  result = qword_27D825F38;
  if (!qword_27D825F38)
  {
    type metadata accessor for InteractionFactorsInfoDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825F38);
  }

  return result;
}

void *sub_2282540A0()
{
  v1 = qword_27D825F48;
  if (*(v0 + qword_27D825F48))
  {
    v2 = *(v0 + qword_27D825F48);
  }

  else
  {
    v3 = sub_228254CCC(0);
    v4 = *(v0 + qword_27D825F58);
    v5 = *(v0 + qword_27D825F70);
    type metadata accessor for InteractionFactorsItem();
    v2 = swift_allocObject();
    type metadata accessor for InteractionFactorsCell();
    sub_228255408(&qword_27D825F60, type metadata accessor for InteractionFactorsCell, &protocol conformance descriptor for InteractionFactorsCell);

    v6 = sub_22838FBB0();
    v2[2] = v3;
    v2[3] = v6;
    v2[4] = v7;
    v2[5] = v4;
    v2[6] = v5;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2282541B0(uint64_t a1, uint64_t a2)
{
  sub_22825569C(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = v27 - v6;
  sub_228192918(0);
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x28223BE20](v7);
  v29 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282555C8(0);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x28223BE20](v10);
  v30 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_27D825F40;
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  *(v2 + v13) = sub_228390700();
  *(v2 + qword_27D825F48) = 0;
  *(v2 + qword_27D825F50) = 0;
  v32 = a1;
  *(v2 + qword_27D825F58) = a1;
  *(v2 + qword_27D825F70) = a2;

  v28 = sub_22838F920();
  swift_retain_n();

  v14 = sub_228390710();

  sub_22825569C(0, &qword_27D823D88, sub_2281929AC, MEMORY[0x277D84560]);
  sub_2281929AC();
  v27[1] = v15;
  *(swift_allocObject() + 16) = xmmword_228398270;
  sub_22817A958(0, &qword_27D823D90, 0x277CCD570);
  sub_228392670();
  sub_228392660();

  sub_228392690();
  sub_228392660();

  sub_228392680();
  sub_228392660();

  sub_228255408(&qword_27D823CD8, sub_2281929AC, MEMORY[0x277D113A0]);
  v16 = v29;
  sub_2283917C0();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v17 = sub_228392790();
  v37 = v17;
  v18 = sub_228392730();
  v19 = v31;
  (*(*(v18 - 8) + 56))(v31, 1, 1, v18);
  sub_228255408(&qword_27D823D10, sub_228192918, MEMORY[0x277CBCD48]);
  sub_2281A1504();
  v20 = v30;
  v21 = v33;
  sub_228391A70();
  sub_2281A16F0(v19);

  (*(v34 + 8))(v16, v21);
  swift_allocObject();
  v22 = v28;
  swift_weakInit();
  v23 = v22;

  sub_228255408(&qword_27D825F90, sub_2282555C8, MEMORY[0x277CBCD60]);
  v24 = v35;
  v25 = sub_228391A00();

  (*(v36 + 8))(v20, v24);
  *(v23 + qword_27D825F50) = v25;

  sub_22825498C();

  return v23;
}

uint64_t sub_228254818(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22825498C();
  }

  return result;
}

uint64_t sub_228254870(uint64_t a1, uint64_t a2)
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
  v9(v6, v2);
  v10 = sub_2283900C0();
  v9(v8, v2);
  return v10;
}

uint64_t sub_22825498C()
{
  v18 = sub_22838F4A0();
  v1 = *(v18 - 8);
  v2 = MEMORY[0x28223BE20](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228254CCC(v2);
  v6 = *(v0 + qword_27D825F58);
  v7 = *(v0 + qword_27D825F70);
  v8 = type metadata accessor for InteractionFactorsItem();
  v9 = swift_allocObject();
  type metadata accessor for InteractionFactorsCell();
  sub_228255408(&qword_27D825F60, type metadata accessor for InteractionFactorsCell, &protocol conformance descriptor for InteractionFactorsCell);

  v10 = sub_22838FBB0();
  v9[2] = v5;
  v9[3] = v10;
  v9[4] = v11;
  v9[5] = v6;
  v9[6] = v7;
  *(v0 + qword_27D825F48) = v9;

  sub_22838F910();
  sub_22838FCD0();

  v12 = MEMORY[0x277D84560];
  sub_22825569C(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  v13 = swift_allocObject();
  v17 = xmmword_228397F40;
  *(v13 + 16) = xmmword_228397F40;
  sub_22825569C(0, &qword_27D823918, sub_228182780, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  v15 = sub_2282540A0();
  *(v14 + 56) = v8;
  *(v14 + 64) = sub_228255408(&qword_27D825F98, type metadata accessor for InteractionFactorsItem, &protocol conformance descriptor for InteractionFactorsItem);
  *(v14 + 32) = v15;
  sub_22838F490();
  sub_22838F450();
  (*(v1 + 8))(v4, v18);
  sub_22838FED0();
  sub_22838FF50();
}

char *sub_228254CCC(uint64_t a1)
{
  if ((sub_228390770() & 1) == 0)
  {
    v1 = MEMORY[0x277D84F90];
    if ((sub_2283907C0() & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v1 = sub_228198B08(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_228198B08((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  *&v1[8 * v3 + 32] = 1;
  if (sub_2283907C0())
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_228198B08(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_228198B08((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    *&v1[8 * v5 + 32] = 2;
  }

LABEL_12:
  if (sub_228390790())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_228198B08(0, *(v1 + 2) + 1, 1, v1);
    }

    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_228198B08((v6 > 1), v7 + 1, 1, v1);
    }

    *(v1 + 2) = v7 + 1;
    *&v1[8 * v7 + 32] = 3;
  }

  return v1;
}

uint64_t sub_228254E90()
{
}

uint64_t InteractionFactorsDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return v1;
}

uint64_t InteractionFactorsDataSource.__deallocating_deinit(uint64_t a1)
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionFactorsDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionFactorsCell();
  sub_228255408(&qword_27D825F60, type metadata accessor for InteractionFactorsCell, &protocol conformance descriptor for InteractionFactorsCell);
  sub_2283926B0();
  sub_228390300();
  sub_2283926C0();
}

uint64_t sub_2282550D0()
{
  type metadata accessor for InteractionFactorsCell();
  sub_228255408(&qword_27D825F60, type metadata accessor for InteractionFactorsCell, &protocol conformance descriptor for InteractionFactorsCell);
  sub_2283926B0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t InteractionFactorsDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_228392000() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_228393460();

    if ((v12 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_228255408(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v17[0] = 0x74497265746F6F46;
  v17[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v14 = sub_22838F450();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x22AAB5C80](v14, v16);

  a3[3] = sub_228390330();
  a3[4] = sub_228255408(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

uint64_t sub_228255408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for InteractionFactorsDataSource(uint64_t a1)
{
  result = qword_27D825F78;
  if (!qword_27D825F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2282555C8(uint64_t a1)
{
  if (!qword_27D825F88)
  {
    sub_228192918(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228255408(&qword_27D823D10, sub_228192918, MEMORY[0x277CBCD48]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825F88);
    }
  }
}

void sub_22825569C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ManualStrengthDataSource(uint64_t a1)
{
  result = qword_27D825FD8;
  if (!qword_27D825FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282557D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27D825FA0;
  sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22839CC40;
  v12 = objc_opt_self();
  *(v11 + 32) = [v12 gramUnitWithMetricPrefix_];
  *(v11 + 40) = [v12 gramUnitWithMetricPrefix_];
  *(v11 + 48) = [v12 gramUnit];
  *(v11 + 56) = [v12 literUnitWithMetricPrefix_];
  *(v11 + 64) = [v12 percentUnit];
  *(v3 + v10) = v11;
  v13 = (v3 + qword_27D825FB8);
  v28[0] = sub_228392000();
  v28[1] = v14;

  MEMORY[0x22AAB5C80](0xD000000000000013, 0x80000002283AED60);

  v15 = v28[1];
  *v13 = v28[0];
  v13[1] = v15;
  v16 = qword_27D825FC0;
  sub_22819DF44(0);
  v28[0] = 0;
  v28[1] = 0;
  swift_allocObject();
  *(v3 + v16) = sub_228391890();
  v17 = qword_27D825FC8;
  v28[0] = 0;
  sub_228257A7C(0);
  swift_allocObject();
  *(v3 + v17) = sub_228391890();
  *(v3 + qword_27D825FD0) = MEMORY[0x277D84FA0];
  *(v3 + qword_27D825FB0) = a2;
  *(v3 + qword_27D825FA8) = a1;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  v27[1] = a1;

  sub_2283931D0();

  strcpy(v28, "MutableArray<");
  HIWORD(v28[1]) = -4864;
  sub_22838F490();
  v18 = sub_22838F450();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x22AAB5C80](v18, v20);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v21 = sub_22838FF30();
  sub_228257D4C(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v27[0] = *(*(sub_22838FEF0() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_228397F30;
  v22 = qword_280DDCF18;

  if (v22 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228257D4C(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_228397F40;
  *(v23 + 56) = type metadata accessor for FieldItem(0);
  *(v23 + 64) = sub_228257D04(&unk_27D828790, type metadata accessor for FieldItem, &protocol conformance descriptor for FieldItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  sub_228255E0C(boxed_opaque_existential_1);
  sub_22838FED0();
  sub_22838F0C0();
  v25 = sub_22825601C();
  sub_228194894(v25);

  sub_22838FED0();
  sub_22838FF50();

  sub_228256258();

  return v21;
}

uint64_t sub_228255E0C@<X0>(uint64_t a1@<X8>)
{
  sub_228391870();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  if (v23)
  {
    v2 = v23;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  if (v23)
  {
    v3 = v22;
  }

  else
  {
    v3 = 0;
  }

  v20 = v3;
  v21 = v2;
  v4 = sub_22838F0C0();
  v18 = v5;
  v19 = v4;
  v6 = swift_allocObject();
  swift_weakInit();

  sub_22838F490();
  v7 = type metadata accessor for FieldItem(0);
  v8 = (a1 + v7[5]);
  v9 = (a1 + v7[6]);
  v10 = a1 + v7[10];
  v11 = (a1 + v7[14]);
  v12 = (a1 + v7[15]);
  type metadata accessor for FieldCell();
  sub_228257D04(&qword_27D828780, type metadata accessor for FieldCell, &unk_2283A6C1C);
  v13 = sub_22838FBB0();
  v15 = v14;

  *v12 = v13;
  v12[1] = v15;
  *v8 = v20;
  v8[1] = v21;
  *v9 = v19;
  v9[1] = v18;
  *(a1 + v7[7]) = 0x404A000000000000;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + v7[9]) = 1;
  *(a1 + v7[8]) = 1;
  *(a1 + v7[12]) = 0;
  *v11 = 0;
  v11[1] = 0;
  v17 = (a1 + v7[13]);
  *v17 = sub_228257DB8;
  v17[1] = v6;
  *(a1 + v7[11]) = 0;
  return result;
}

void *sub_22825601C()
{
  v1 = *(v0 + qword_27D825FA0);
  if (v1 >> 62)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_2281C9DB4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v20;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAB6D80](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v18 = sub_228390170();
      v19 = sub_228257D04(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      sub_228256C54(v7, boxed_opaque_existential_1);

      v20 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2281C9DB4((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      v11 = v18;
      v12 = v19;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x28223BE20](v13);
      v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_2282E841C(v10, v15, &v20, v11, v12);
      __swift_destroy_boxed_opaque_existential_0(v17);
      v3 = v20;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_228256258()
{
  sub_228257B60(0);
  v2 = *(v1 - 8);
  v17 = v1;
  v18 = v2;
  MEMORY[0x28223BE20](v1);
  v16 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228257C48(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + qword_27D825FC8);
  v9 = v20;
  sub_228257A7C(0);
  v15 = v10;
  sub_228257B14();
  v11 = MEMORY[0x277CBCE48];
  sub_228257D04(&qword_27D826018, sub_228257A7C, MEMORY[0x277CBCE48]);

  sub_2283919A0();
  swift_allocObject();
  swift_weakInit();
  sub_228257D04(&qword_27D826028, sub_228257C48, MEMORY[0x277CBCB10]);
  sub_228391AC0();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v19 = *(v0 + qword_27D825FC0);
  v20 = v9;
  sub_22819DF44(0);
  sub_228257D04(&qword_27D824058, sub_22819DF44, v11);
  v12 = v16;
  sub_2283919E0();

  swift_allocObject();
  swift_weakInit();
  sub_228257D04(&qword_27D826030, sub_228257B60, MEMORY[0x277CBCAF0]);
  v13 = v17;
  sub_228391AC0();

  (*(v18 + 8))(v12, v13);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228256648(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228257D4C(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_228397F40;
    *(v3 + 56) = type metadata accessor for FieldItem(0);
    *(v3 + 64) = sub_228257D04(&unk_27D828790, type metadata accessor for FieldItem, &protocol conformance descriptor for FieldItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
    sub_228255E0C(boxed_opaque_existential_1);
    sub_22838FF60();

    v5 = sub_22825601C();
    sub_228194894(v5);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_228256794(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = *(a1 + 8) & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_6:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_228391850();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = v2;

    v8 = v7;
    sub_228391850();
  }
}

uint64_t sub_2282568DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_228391850();
  }

  return result;
}

unint64_t sub_22825697C@<X0>(uint64_t *a1@<X8>)
{
  sub_228257D4C(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_22838FEF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838FF40();
  result = sub_22838F750();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v9 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v5);

  sub_22838FEE0();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    v13 = sub_228390130();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    a1[3] = sub_228390150();
    a1[4] = sub_228257D04(&qword_27D824EC8, MEMORY[0x277D10FE8], MEMORY[0x277D10FD8]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_228390140();
  }

  else
  {
    a1[3] = sub_22838FC00();
    a1[4] = sub_228257D04(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_22838FBF0();
  }
}

uint64_t sub_228256C54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_228390460();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_228257D4C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v55 - v7;
  v8 = sub_22838FFC0();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391220();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228257D4C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v55 - v14;
  v63 = sub_228391250();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_228391590();
  v68 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391520();
  sub_228390890();
  sub_228390880();
  v19 = sub_228390830();

  v20 = [objc_allocWithZone(MEMORY[0x277CCDAC0]) initWithHealthStore_];

  v21 = a1;
  v22 = [v20 localizedDisplayNameForUnit:a1 value:0 nameContext:1];

  v23 = sub_228392000();
  v25 = v24;

  v61 = v23;
  sub_228391540();
  v59 = objc_opt_self();
  v26 = [v59 labelColor];
  v27 = sub_228391450();
  sub_228391420();
  v27(&v79, 0);
  sub_228391870();
  v28 = v79;
  if (v79)
  {
    sub_228257B14();
    v29 = v21;
    sub_228392C60();
  }

  v79 = 0x5F6D657469;
  v80 = 0xE500000000000000;
  v30 = [v21 unitString];
  v31 = sub_228392000();
  v33 = v32;

  MEMORY[0x22AAB5C80](v31, v33);

  v58 = v79;
  v57 = v80;
  v34 = v75;
  v81 = v75;
  v82 = MEMORY[0x277D74C30];
  v35 = __swift_allocate_boxed_opaque_existential_1(&v79);
  v36 = v68;
  v37 = *(v68 + 16);
  v56 = v18;
  v37(v35, v18, v34);
  sub_228257D4C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_2283912F0();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_228397F40;
  v55 = v38;
  v39 = sub_228391230();
  (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
  sub_228391240();
  v41 = v64;
  v40 = v65;
  (*(v64 + 104))(v12, *MEMORY[0x277D74A98], v65);
  sub_2283912E0();
  (*(v41 + 8))(v12, v40);
  (*(v62 + 8))(v16, v63);
  v42 = swift_allocObject();
  v43 = v76;
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = v21;
  v45 = v69;
  *v69 = 1;
  (*(v66 + 104))(v45, *MEMORY[0x277D10F90], v67);
  v46 = v21;

  v47 = v70;
  sub_228391390();
  v48 = [v59 secondarySystemBackgroundColor];
  sub_228391370();
  v49 = sub_2283913A0();
  (*(*(v49 - 8) + 56))(v47, 0, 1, v49);
  v51 = *(v43 + qword_27D825FB8);
  v50 = *(v43 + qword_27D825FB8 + 8);
  v77 = 0x6C654374696E552ELL;
  v78 = 0xEA00000000002E6CLL;
  MEMORY[0x22AAB5C80](v61, v25);

  v52 = v77;
  v53 = v78;
  v77 = v51;
  v78 = v50;

  MEMORY[0x22AAB5C80](v52, v53);

  (*(v72 + 104))(v71, *MEMORY[0x277D11140], v73);
  sub_228390160();
  (*(v36 + 8))(v56, v75);
}

uint64_t sub_22825757C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v5 = a3;
    sub_228391850();
  }

  return result;
}

uint64_t sub_228257640()
{
}

uint64_t sub_2282576C4()
{
  sub_22838FFB0();

  return swift_deallocClassInstance();
}

uint64_t sub_228257784()
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for FieldCell();
  sub_228257D04(&qword_27D828780, type metadata accessor for FieldCell, &unk_2283A6C1C);
  sub_2283926B0();
  type metadata accessor for SelectionOptionsCell();
  sub_228257D04(&qword_27D825FF8, type metadata accessor for SelectionOptionsCell, &protocol conformance descriptor for SelectionOptionsCell);
  return sub_2283926B0();
}

uint64_t sub_228257890(uint64_t a1, uint64_t a2)
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

unint64_t sub_228257A28()
{
  result = qword_27D825FF0;
  if (!qword_27D825FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825FF0);
  }

  return result;
}

void sub_228257A7C(uint64_t a1)
{
  if (!qword_27D8277E0)
  {
    sub_228257D4C(255, &qword_27D826008, sub_228257B14, MEMORY[0x277D83D88]);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8277E0);
    }
  }
}

unint64_t sub_228257B14()
{
  result = qword_27D8277F0;
  if (!qword_27D8277F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8277F0);
  }

  return result;
}

void sub_228257B60(uint64_t a1)
{
  if (!qword_27D826010)
  {
    sub_228257A7C(255);
    sub_22819DF44(255);
    v1 = MEMORY[0x277CBCE48];
    sub_228257D04(&qword_27D826018, sub_228257A7C, MEMORY[0x277CBCE48]);
    sub_228257D04(&qword_27D824058, sub_22819DF44, v1);
    v2 = sub_228391670();
    if (!v3)
    {
      atomic_store(v2, &qword_27D826010);
    }
  }
}

void sub_228257C48(uint64_t a1)
{
  if (!qword_27D826020)
  {
    sub_228257A7C(255);
    sub_228257B14();
    sub_228257D04(&qword_27D826018, sub_228257A7C, MEMORY[0x277CBCE48]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826020);
    }
  }
}

uint64_t sub_228257D04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228257D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228257DC0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228257E08(uint64_t a1)
{
  v2 = sub_228258F3C(&qword_27D824360, &unk_22839ED8C);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t MedicationSideEffectsItemCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228257EC8(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228257FA4();
  return sub_22819482C(v6);
}

uint64_t MedicationSideEffectsItemCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228257FA4();
  return sub_22819482C(a1);
}

void sub_228257FA4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v6], v27);
  if (v28)
  {
    sub_22817A700();
    type metadata accessor for MedicationSideEffectsItem();
    if (swift_dynamicCast())
    {
      v7 = v26;
      v8 = sub_228258468();

      v9 = sub_228391FC0();

      [v8 setText_];

      v10 = sub_2282585C0();
      if (*(v7 + 56))
      {

        v11 = sub_228391FC0();
      }

      else
      {
        v11 = 0;
      }

      [v10 setText_];

      v20 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel];
      if (*(v7 + 56))
      {
        v21 = v20;

        sub_2283920A0();
        v23 = v22;

        if (v23)
        {

          v24 = 0;
LABEL_15:
          [v21 setHidden_];

          return;
        }
      }

      else
      {
        v21 = v20;
      }

      v24 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_22819482C(v27);
  }

  sub_228391150();
  v12 = v1;
  v13 = sub_2283911A0();
  v14 = sub_2283925C0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    sub_22817E6C8(&v1[v6], v27);
    sub_228181D50(0);
    v17 = sub_228392040();
    v19 = sub_2281C96FC(v17, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22816B000, v13, v14, "Incorrect view model for MedicationSideEffectsItem: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAB7B80](v16, -1, -1);
    MEMORY[0x22AAB7B80](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

void (*MedicationSideEffectsItemCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22825835C;
}

void sub_22825835C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_228257FA4();
  }
}

id sub_228258390()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228258468()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v7 = v5;
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setNumberOfLines_];
    v8 = sub_228392190();
    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v7 setAccessibilityIdentifier_];
    v10 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_2282585C0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v7 = [objc_opt_self() secondaryLabelColor];
    [v5 setTextColor_];

    v8 = v5;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setNumberOfLines_];
    v9 = sub_228392190();
    v10 = HKUIJoinStringsForAutomationIdentifier();

    [v8 setAccessibilityIdentifier_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

char *sub_228258754(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_228391590();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel] = 0;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  [v15 setUserInteractionEnabled_];
  v16 = sub_228258390();
  v17 = sub_228258468();
  [v16 addArrangedSubview_];

  v18 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView;
  v19 = *&v15[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView];
  v20 = sub_2282585C0();
  [v19 addArrangedSubview_];

  v21 = [v15 contentView];
  [v21 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v11 + 8))(v13, v10);
  v30 = *&v15[v18];
  v31 = [v15 contentView];
  [v30 hk:v31 alignHorizontalConstraintsWithView:v23 insets:{v25, v27, v29}];

  v32 = objc_opt_self();
  sub_228180ED0();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_228397F20;
  v34 = [*&v15[v18] topAnchor];
  v35 = [v15 contentView];
  v36 = [v35 topAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:16.0];
  *(v33 + 32) = v37;
  v38 = [*&v15[v18] bottomAnchor];
  v39 = [v15 contentView];

  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:-16.0];

  *(v33 + 40) = v41;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v42 = sub_228392190();

  [v32 activateConstraints_];

  return v15;
}

id MedicationSideEffectsItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228258CB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228258D10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228257FA4();
  return sub_22819482C(a1);
}

void (*sub_228258D7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22825835C;
}

uint64_t getEnumTagSinglePayload for MedicationSideEffectsItemCell.Constants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MedicationSideEffectsItemCell.Constants(_WORD *result, int a2, int a3)
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

uint64_t sub_228258F3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationSideEffectsItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228258F7C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27D826060);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_228258FE8()
{
  v1 = (v0 + qword_27D826060);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_228259040(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D826060);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id InteractionFactorsViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  v2 = &v1[qword_27D826060];
  v7 = sub_228392000();
  v8 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000029, 0x80000002283AEED0);

  v4 = v8;
  *v2 = v7;
  v2[1] = v4;
  v6.receiver = v1;
  v6.super_class = v0;
  return objc_msgSendSuper2(&v6, sel_initWithCollectionViewLayout_, 0);
}

id InteractionFactorsViewController.init()()
{
  v1 = &v0[qword_27D826060];
  v6 = sub_228392000();
  v7 = v2;

  MEMORY[0x22AAB5C80](0xD000000000000029, 0x80000002283AEED0);

  v3 = v7;
  *v1 = v6;
  v1[1] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InteractionFactorsViewController(0);
  return objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, 0);
}

uint64_t type metadata accessor for InteractionFactorsViewController(uint64_t a1)
{
  result = qword_27D826070;
  if (!qword_27D826070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2282592B0(uint64_t a1)
{
  v1 = (a1 + qword_27D826060);
  v3 = sub_228392000();
  v4 = v2;

  MEMORY[0x22AAB5C80](0xD000000000000029, 0x80000002283AEED0);

  *v1 = v3;
  v1[1] = v4;
  sub_228393300();
  __break(1u);
}

uint64_t sub_228259374()
{
  v1 = type metadata accessor for InteractionFactorsDataSourceProvider();
  v2 = swift_allocObject();
  v15 = v1;
  v16 = sub_22825A0A0(&qword_27D826068, type metadata accessor for InteractionFactorsDataSourceProvider, &unk_2283A0A98);
  v14 = v2;
  sub_2283904B0();
  v3 = [v0 navigationItem];
  v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = v0;
  v6 = [v4 initWithBarButtonSystemItem:1 target:v5 action:sel_cancelButtonTapped_];
  [v3 setLeftBarButtonItem_];

  v7 = [v5 navigationItem];
  v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel_doneButtonTapped_];

  [v7 setRightBarButtonItem_];
  v13.receiver = v5;
  v13.super_class = type metadata accessor for InteractionFactorsViewController(0);
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v9 = &v5[qword_27D826060];
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];

  sub_228259590(v11, v10);
}

void sub_228259548(void *a1)
{
  v1 = a1;
  sub_228259374();
}

void sub_228259590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [v2 navigationItem];
  v5 = [v4 leftBarButtonItem];

  if (v5)
  {

    MEMORY[0x22AAB5C80](0x426C65636E61432ELL, 0xED00006E6F747475);
    v6 = sub_228391FC0();

    [v5 setAccessibilityIdentifier_];
  }

  v7 = [v3 navigationItem];
  v8 = [v7 rightBarButtonItem];

  if (v8)
  {

    MEMORY[0x22AAB5C80](0x747542656E6F442ELL, 0xEB000000006E6F74);
    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];
  }
}

uint64_t sub_228259740(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ABE84(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22825983C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  [v4 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

id sub_2282598B0()
{
  v1 = sub_228391DC0();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_228391DF0();
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391DD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v11 = sub_2283927C0();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_22825A080;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_12;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_228391DE0();
  v19 = MEMORY[0x277D84F90];
  sub_22825A0A0(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22817DFB0(0);
  sub_22825A0A0(&qword_280DDCEF0, sub_22817DFB0, MEMORY[0x277D83970]);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v6, v3, v13);
  _Block_release(v13);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);

  return [v14 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_228259C70(uint64_t a1)
{
  sub_228390470();
  v1 = sub_2283901E0();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    type metadata accessor for InteractionFactorsLifestyleOptionsDataSource(0);
    do
    {
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        sub_228213688();
        swift_unknownObjectRelease();
      }

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_228259D24(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_2282598B0();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

id InteractionFactorsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id InteractionFactorsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22825A0A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Collection<>.loggedDoseEvents.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_228392160();
}

BOOL sub_22825A1E0(uint64_t a1)
{
  v1 = sub_228390A10();
  v2 = [v1 logStatus];

  if (v2 == 4)
  {
    return 1;
  }

  v4 = sub_228390A10();
  v5 = [v4 logStatus];

  return v5 == 5;
}

uint64_t sub_22825A264@<X0>(void *a1@<X8>)
{
  v41 = sub_228390C80();
  v3 = *(v41 - 8);
  v4 = MEMORY[0x28223BE20](v41);
  v40 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = v32 - v6;
  v7 = sub_228390AF0();
  v8 = *(v7 + 16);
  if (v8)
  {
    v33 = a1;
    v34 = v1;
    v45 = MEMORY[0x277D84F90];
    sub_2281CA06C(0, v8, 0);
    v9 = v45;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = *(v10 + 64);
    v32[1] = v7;
    v13 = v7 + ((v12 + 32) & ~v12);
    v36 = *(v10 + 56);
    v37 = v11;
    v35 = (v10 - 8);
    v38 = v10;
    do
    {
      v14 = v39;
      v15 = v41;
      v16 = v37;
      v37(v39, v13, v41);
      v17 = v40;
      v16(v40, v14, v15);
      v18 = v9;
      v19 = sub_228390C70();
      v20 = [v19 semanticIdentifier];

      v21 = [v20 stringValue];
      v22 = sub_228392000();
      v43 = v23;
      v44 = v22;

      v9 = v18;
      v42 = sub_228390C50();
      v25 = v24;
      v26 = *v35;
      (*v35)(v17, v15);
      v26(v14, v15);
      v45 = v9;
      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2281CA06C((v27 > 1), v28 + 1, 1);
        v9 = v45;
      }

      *(v9 + 16) = v28 + 1;
      v29 = (v9 + 32 * v28);
      v30 = v43;
      v29[4] = v44;
      v29[5] = v30;
      v29[6] = v42;
      v29[7] = v25;
      v13 += v36;
      --v8;
    }

    while (v8);

    a1 = v33;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *a1 = v9;
  return result;
}

uint64_t sub_22825A528@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v49 = a2;
  v4 = sub_228390C80();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v8 = [v42 doses];
  sub_22825A9CC();
  v9 = sub_2283921A0();

  v50 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_36;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  v46 = v7;
  if (v10)
  {
    v12 = 0;
    v44 = v9 & 0xFFFFFFFFFFFFFF8;
    v45 = (v9 & 0xC000000000000001);
    v43 = v9;
    while (1)
    {
      if (v45)
      {
        v13 = MEMORY[0x22AAB6D80](v12, v9);
      }

      else
      {
        if (v12 >= *(v44 + 16))
        {
          goto LABEL_35;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v10 = sub_2283930D0();
        goto LABEL_3;
      }

      v16 = [v13 medicationIdentifier];
      v17 = sub_228392000();
      v7 = v18;

      v19 = [v49 semanticIdentifier];
      v20 = [v19 stringValue];

      v21 = sub_228392000();
      v23 = v22;

      if (v17 == v21 && v7 == v23)
      {
      }

      else
      {
        v25 = sub_228393460();

        if ((v25 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      v7 = &v50;
      sub_228393210();
      sub_228393250();
      sub_228393260();
      sub_228393220();
LABEL_7:
      v9 = v43;
      ++v12;
      if (v15 == v10)
      {
        v26 = v50;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }
  }

  v26 = MEMORY[0x277D84F90];
LABEL_21:

  if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      goto LABEL_24;
    }

LABEL_40:

    result = 0;
    goto LABEL_41;
  }

  if (!sub_2283930D0())
  {
    goto LABEL_40;
  }

  v27 = sub_2283930D0();
  if (!v27)
  {
    v40 = v42;

LABEL_33:
    sub_228390B00();
    swift_allocObject();
    result = sub_228390B10();
LABEL_41:
    *v41 = result;
    return result;
  }

LABEL_24:
  v50 = v11;
  v45 = v42;
  result = sub_2281CA1EC(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v30 = v50;
    v31 = v26;
    v43 = v48 + 32;
    v44 = v26 & 0xC000000000000001;
    v32 = v26;
    v33 = v27;
    do
    {
      if (v44)
      {
        MEMORY[0x22AAB6D80](v29, v31);
      }

      else
      {
        v34 = *(v31 + 8 * v29 + 32);
      }

      v35 = [v45 identifier];
      sub_228392000();

      v36 = v49;
      v37 = v46;
      sub_228390C90();
      v50 = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2281CA1EC((v38 > 1), v39 + 1, 1);
        v30 = v50;
      }

      ++v29;
      *(v30 + 16) = v39 + 1;
      (*(v48 + 32))(v30 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39, v37, v47);
      v31 = v32;
    }

    while (v33 != v29);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

unint64_t sub_22825A9CC()
{
  result = qword_27D826080;
  if (!qword_27D826080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D826080);
  }

  return result;
}

uint64_t sub_22825AA18()
{
  sub_228393520();
  sub_22838F4A0();
  sub_22825CE64(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_22825AAD8(uint64_t a1)
{
  sub_22838F4A0();
  sub_22825CE64(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_22825AB8C(uint64_t a1)
{
  sub_228393520();
  sub_22838F4A0();
  sub_22825CE64(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

unint64_t sub_22825AC48()
{
  sub_2283931D0();

  v0 = sub_228300540();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000013;
}

uint64_t sub_22825ACD8(uint64_t a1)
{
  v2 = sub_22825CE64(&qword_27D826128, type metadata accessor for MedicationLogDetailsTimeItem, &unk_22839EFC8);

  return MEMORY[0x282169440](a1, v2);
}

id sub_22825AD54()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView);
  }

  else
  {
    type metadata accessor for MedicationLogDetailsTimeView(0);
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22825ADE0()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22825CA7C(0, &qword_27D8260E8, type metadata accessor for MedicationLogDetailsTimeItem);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MedicationLogDetailsTimeItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell_item;
  swift_beginAccess();
  sub_22825CBEC(v1 + v13, v27, &qword_280DDCD50, sub_22817A700);
  if (v28)
  {
    sub_22817A700();
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_22825CB2C(v8, v12);
      v15 = sub_22825AD54();
      *&v15[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel] = *&v12[*(v9 + 20)];
      swift_retain_n();

      sub_22825BAFC();

      return sub_22825CB90(v12);
    }
  }

  else
  {
    sub_22825CC58(v27, &qword_280DDCD50, sub_22817A700);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_22825CC58(v8, &qword_27D8260E8, type metadata accessor for MedicationLogDetailsTimeItem);
  sub_228391150();
  v17 = v1;
  v18 = sub_2283911A0();
  v19 = sub_2283925C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 136315138;
    v25 = v2;
    v26 = v21;
    sub_22825CBEC(v1 + v13, v27, &qword_280DDCD50, sub_22817A700);
    sub_22825CA7C(0, &qword_280DDCD50, sub_22817A700);
    v22 = sub_228392040();
    v24 = sub_2281C96FC(v22, v23, &v26);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_22816B000, v18, v19, "Incorrect view model for MedicationLogDetailsTimeItem: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AAB7B80](v21, -1, -1);
    MEMORY[0x22AAB7B80](v20, -1, -1);

    return (*(v3 + 8))(v5, v25);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

char *sub_22825B238(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView] = 0;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell_item];
  v14 = type metadata accessor for MedicationLogDetailsTimeCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v30.receiver = v4;
  v30.super_class = v14;
  v15 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = sub_22825AD54();
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  v17 = [v15 contentView];
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView;
  [v17 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v10 + 8))(v12, v9);
  v27 = *&v15[v18];
  v28 = [v15 contentView];

  [v27 hk:v28 alignConstraintsWithView:v20 insets:{v22, v24, v26}];
  return v15;
}

uint64_t sub_22825B58C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell_item;
  swift_beginAccess();
  return sub_22825CBEC(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22825B600(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell_item;
  swift_beginAccess();
  sub_22825CCB4(a1, v1 + v3, &qword_280DDCD50, sub_22817A700);
  swift_endAccess();
  sub_22825ADE0();
  return sub_22825CC58(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22825B6A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22825B704;
}

uint64_t sub_22825B704(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22825ADE0();
  }

  return result;
}

id sub_22825B7AC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v4 setDateStyle_];
    [v4 setTimeStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22825B848(uint64_t a1)
{
  v3 = MEMORY[0x277CC9578];
  sub_22825CA7C(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_22838F440();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
  swift_beginAccess();
  sub_22825CCB4(a1, v1 + v11, &qword_280DDCDB0, v3);
  swift_endAccess();
  sub_22825CBEC(v1 + v11, v6, &qword_280DDCDB0, v3);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = MEMORY[0x277CC9578];
    sub_22825CC58(a1, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    return sub_22825CC58(v6, &qword_280DDCDB0, v12);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v14 = sub_22825BFD4();
    v15 = sub_22825B7AC();
    v16 = sub_22838F380();
    v17 = [v15 stringFromDate_];

    if (!v17)
    {
      sub_228392000();
      v17 = sub_228391FC0();
    }

    [v14 setText_];

    sub_22825CC58(a1, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_22825BAFC()
{
  sub_22825CA7C(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v2);
  v7 = &v15[-v6];
  v8 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel);
  if (v8)
  {

    v9 = sub_22825BDE0();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v10 = sub_228391FC0();

    [v9 setText_];

    v11 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
    swift_beginAccess();
    sub_22825CBEC(v0 + v11, v7, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v12 = sub_22838F440();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_22825CC58(v7, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      v14 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      (*(v13 + 16))(v4, v8 + v14, v12);
      (*(v13 + 56))(v4, 0, 1, v12);
      sub_22825B848(v4);
    }

    else
    {

      return sub_22825CC58(v7, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    }
  }

  return result;
}

id sub_22825BE00()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v7 = sub_228392000();
  v8 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AF0C0);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  return v3;
}

id sub_22825BFF4(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_22825C054()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  sub_22817A958(0, &unk_27D8260F0, 0x277D75128);
  [v0 setTextAlignment_];
  v9 = sub_228392000();
  v10 = v3;
  v4 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AF0C0);

  MEMORY[0x22AAB5C80](0x656D6954676F4C2ELL, 0xED00006C6562614CLL);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  [v4 setAdjustsFontForContentSizeCategory_];
  v7 = [v1 systemBlueColor];
  [v4 setTextColor_];

  return v4;
}

void sub_22825C2A4()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F20;
  *(v1 + 32) = sub_22825BDE0();
  *(v1 + 40) = sub_22825BFD4();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  v5 = v4;
  [v0 addSubview_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  [v8 setActive_];
  v9 = [v5 leadingAnchor];

  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  [v11 setActive_];
  v12 = [v5 trailingAnchor];

  v13 = [v0 trailingAnchor];
  if (qword_27D8232E0 != -1)
  {
    swift_once();
  }

  v14 = [v12 constraintEqualToAnchor:v13 constant:-*&qword_27D826090];

  [v14 setActive_];
  v15 = [v5 bottomAnchor];

  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  [v17 setActive_];
  v18 = qword_280DDCF18;
  v19 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v20 = sub_228391FC0();

  [v19 setText_];
}

id sub_22825C8C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_22825C9C0(uint64_t a1)
{
  sub_22825CA7C(319, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22825CA7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

double sub_22825CAF0()
{
  sub_228390360();
  sub_228390350();
  result = v0 * 0.5;
  qword_27D826090 = *&result;
  return result;
}

uint64_t sub_22825CB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsTimeItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22825CB90(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsTimeItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22825CBEC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22825CA7C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22825CC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22825CA7C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22825CCB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22825CA7C(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_22825CD48(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MedicationsDoseLogViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22825CE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22825CEAC(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  v5 = MEMORY[0x277D10D48];
  sub_22825F8D8(v7, v3 + v4, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  swift_endAccess();
  sub_22825EBA8();
  return sub_22825F95C(v7, &qword_280DDCD50, &qword_280DDCD60, v5);
}

uint64_t sub_22825CF5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22825CFB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x277D10D48];
  sub_22825F8D8(a1, v1 + v3, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  swift_endAccess();
  sub_22825EBA8();
  return sub_22825F95C(a1, &qword_280DDCD50, &qword_280DDCD60, v4);
}

uint64_t (*sub_22825D058(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22825D0BC;
}

uint64_t sub_22825D0BC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22825EBA8();
  }

  return result;
}

id sub_22825D0F0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___dismissLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___learnMoreLabel] = 0;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for InteractionCriticalAlertCell();
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a2, a3, a4, a5);
  sub_22825DE48();
  sub_22825E2BC();
  sub_22825F100(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228397F40;
  v13 = sub_228391640();
  v14 = MEMORY[0x277D74DB8];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v11;
}

id sub_22825D2EC(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___dismissLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___learnMoreLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionCriticalAlertCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_22825D3E8(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionCriticalAlertCell();
  objc_msgSendSuper2(&v6, sel_awakeFromNib);
  sub_22825DE48();
  sub_22825E2BC();
  sub_22825F100(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F40;
  v3 = sub_228391640();
  v4 = MEMORY[0x277D74DB8];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_22825D548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for InteractionCriticalAlertCell();
    if ((sub_228392820() & 1) == 0)
    {
      sub_22825E2BC();
    }
  }
}

uint64_t sub_22825D5B4()
{
  v1 = v0;
  sub_22825F100(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = sub_228391330();
  v12 = type metadata accessor for InteractionCriticalAlertCell();
  v19.receiver = v1;
  v19.super_class = v12;
  objc_msgSendSuper2(&v19, sel__bridgedUpdateConfigurationUsingState_, v11);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v13 = sub_2283913A0();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13))
    {
      sub_228205274(v10, v8);
      MEMORY[0x22AAB6420](v8);
      v14 = v10;
      return sub_228205308(v14);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v17 = v10;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v15 = sub_2283913A0();
    if ((*(*(v15 - 8) + 48))(v5, 1, v15))
    {
      sub_228205274(v5, v8);
      MEMORY[0x22AAB6420](v8);
      v14 = v5;
      return sub_228205308(v14);
    }

    v18 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_228391370();
    v17 = v5;
  }

  return MEMORY[0x22AAB6420](v17);
}

char *sub_22825D908()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for InteractionStackedMedmojiView());
    v6 = InteractionStackedMedmojiView.init(width:)(v5, 36.0);
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_22825D9B8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton);
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0xD000000000000014, 0x80000002283A7590);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_22825DAC4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v14 = sub_228392000();
    v15 = v7;
    v8 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

    MEMORY[0x22AAB5C80](0x6C7469746275532ELL, 0xEE006C6562614C65);

    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    v10 = [objc_opt_self() labelColor];
    [v8 setTextColor_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setNumberOfLines_];
    [v8 setAdjustsFontForContentSizeCategory_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_22825DCEC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22825DDE8(uint64_t *a1, uint64_t (*a2)(void))
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

uint64_t sub_22825DE48()
{
  v1 = v0;
  sub_22825F100(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_2283913A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391390();
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_228391370();
  (*(v6 + 16))(v4, v8, v5);
  v10 = *(v6 + 56);
  v33 = v5;
  v10(v4, 0, 1, v5);
  MEMORY[0x22AAB6420](v4);
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22839F000;
  *(inited + 32) = sub_22825D908();
  *(inited + 40) = sub_22825D998();
  *(inited + 48) = sub_22825D9B8();
  *(inited + 56) = sub_22825DAC4();
  *(inited + 64) = sub_22825DCEC();
  *(inited + 72) = sub_22825DDC8();
  v12 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v14 = i;
    v15 = [v1 contentView];
    [v15 addSubview_];

    if (v12)
    {
      v16 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_20;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    v18 = [v1 contentView];
    [v18 addSubview_];

    if (v12)
    {
      v19 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_20;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    v21 = [v1 contentView];
    [v21 addSubview_];

    if (v12)
    {
      v22 = MEMORY[0x22AAB6D80](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_20;
      }

      v22 = *(inited + 56);
    }

    v23 = v22;
    v24 = [v1 contentView];
    [v24 addSubview_];

    if (v12)
    {
      v25 = MEMORY[0x22AAB6D80](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_20;
      }

      v25 = *(inited + 64);
    }

    v26 = v25;
    v27 = [v1 contentView];
    [v27 addSubview_];

    if (v12)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v28 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v28 = MEMORY[0x22AAB6D80](5, inited);
LABEL_19:
  v29 = v28;
  v30 = [v1 contentView];
  [v30 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  return (*(v6 + 8))(v8, v33);
}

void sub_22825E2BC()
{
  v75 = objc_opt_self();
  v76 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_activeConstraints;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v1 = sub_228392190();

  [v75 deactivateConstraints_];

  sub_228180ED0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22839F010;
  v3 = sub_22825D908();
  v4 = [v3 leadingAnchor];

  v5 = [v0 contentView];
  v6 = [v5 &selRef_logTimeChanged_ + 1];

  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  *(v2 + 32) = v7;
  v74 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView;
  v8 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView) topAnchor];
  v9 = sub_22825DAC4();
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v2 + 40) = v11;
  v12 = sub_22825D998();
  v13 = [v12 trailingAnchor];

  v14 = [v0 &selRef_didTapDay_];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-16.0];
  *(v2 + 48) = v16;
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___dismissLabel;
  v18 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___dismissLabel) topAnchor];
  v19 = [v0 &selRef_didTapDay_];
  v20 = [v19 topAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:16.0];
  *(v2 + 56) = v21;
  v22 = sub_22825D9B8();
  v23 = [v22 leadingAnchor];

  v24 = [v0 &selRef_didTapDay_];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:16.0];
  *(v2 + 64) = v26;
  v27 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton;
  v28 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton) trailingAnchor];
  v29 = [*(v0 + v17) trailingAnchor];
  v30 = [v28 constraintLessThanOrEqualToAnchor:v29 constant:16.0];

  *(v2 + 72) = v30;
  v31 = [*(v0 + v27) topAnchor];
  v32 = [v0 contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:16.0];
  *(v2 + 80) = v34;
  v35 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel;
  v36 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel) leadingAnchor];
  v37 = [*(v0 + v74) trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];

  *(v2 + 88) = v38;
  v39 = [*(v0 + v35) trailingAnchor];
  v40 = [v0 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:-16.0];
  *(v2 + 96) = v42;
  v43 = [*(v0 + v35) topAnchor];
  v44 = [*(v0 + v27) bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:12.0];

  *(v2 + 104) = v45;
  v46 = sub_22825DCEC();
  v47 = [v46 leadingAnchor];

  v48 = [*(v0 + v35) leadingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v2 + 112) = v49;
  v50 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView;
  v51 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView) trailingAnchor];
  v52 = [v0 contentView];
  v53 = [v52 trailingAnchor];

  v54 = [v51 constraintEqualToAnchor_];
  *(v2 + 120) = v54;
  v55 = [*(v0 + v50) topAnchor];
  v56 = [*(v0 + v35) bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:12.0];

  *(v2 + 128) = v57;
  v58 = sub_22825DDC8();
  v59 = [v58 leadingAnchor];

  v60 = [*(v0 + v35) leadingAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v2 + 136) = v61;
  v62 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___learnMoreLabel;
  v63 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___learnMoreLabel) trailingAnchor];
  v64 = [v0 contentView];
  v65 = [v64 trailingAnchor];

  v66 = [v63 constraintLessThanOrEqualToAnchor_];
  *(v2 + 144) = v66;
  v67 = [*(v0 + v62) centerYAnchor];
  v68 = [*(v0 + v50) bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:22.0];

  *(v2 + 152) = v69;
  v70 = [v0 contentView];
  v71 = [v70 bottomAnchor];

  v72 = [*(v0 + v50) bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:44.0];

  *(v2 + 160) = v73;
  *&v76[v0] = v2;

  v77 = sub_228392190();

  [v75 activateConstraints_];
}

uint64_t sub_22825EBA8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v6, v39);
  if (v39[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for InteractionCriticalAlertItem();
    if (swift_dynamicCast())
    {
      v7 = v38[0];
      v8 = sub_22825DAC4();
      v36[1] = "$_interactionStackedMedmojiView";
      v37 = v8;
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v36[0] = qword_280DDCF20;
      sub_22825F870(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_228397F30;
      v10 = v7[5];
      v11 = v7[6];
      __swift_project_boxed_opaque_existential_0(v7 + 2, v10);
      v12 = (*(v11 + 24))(v10, v11);
      v14 = v13;
      v15 = MEMORY[0x277D837D0];
      *(v9 + 56) = MEMORY[0x277D837D0];
      v16 = sub_22818E210();
      *(v9 + 64) = v16;
      *(v9 + 32) = v12;
      *(v9 + 40) = v14;
      v18 = v7[5];
      v17 = v7[6];
      __swift_project_boxed_opaque_existential_0(v7 + 2, v18);
      v19 = (*(v17 + 48))(v18, v17);
      *(v9 + 96) = v15;
      *(v9 + 104) = v16;
      *(v9 + 72) = v19;
      *(v9 + 80) = v20;
      sub_22838F0C0();
      if (*(v9 + 16))
      {
        sub_228391FD0();
      }

      v30 = sub_228391FC0();

      v31 = v37;
      [v37 setText_];

      v32 = sub_22825D908();
      v33 = v7[5];
      v34 = v7[6];
      __swift_project_boxed_opaque_existential_0(v7 + 2, v33);
      (*(v34 + 16))(v39, v33, v34);
      v35 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
      swift_beginAccess();
      sub_22825F8D8(v39, &v32[v35], &qword_27D823888, &qword_27D826170, &protocol descriptor for InteractionStackedMedmojiDisplayable);
      swift_endAccess();
      sub_228226168();

      return sub_22825F95C(v39, &qword_27D823888, &qword_27D826170, &protocol descriptor for InteractionStackedMedmojiDisplayable);
    }
  }

  else
  {
    sub_22825F95C(v39, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  }

  sub_228391150();
  v21 = v1;
  v22 = sub_2283911A0();
  v23 = sub_2283925C0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38[0] = v25;
    *v24 = 136446210;
    sub_22817E6C8(v1 + v6, v39);
    sub_22825F870(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v26 = sub_228392040();
    v28 = sub_2281C96FC(v26, v27, v38);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_22816B000, v22, v23, "Incorrect view model for InteractionCriticalAlertItem: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAB7B80](v25, -1, -1);
    MEMORY[0x22AAB7B80](v24, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_22825F100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22825F2BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22820213C(a1);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = sub_22825D998();
  v13 = MEMORY[0x22AAB66C0](v11, v12, 36.0, 36.0);

  if ((v13 & 1) == 0)
  {

LABEL_7:
    sub_22817A958(0, &qword_27D825178, 0x277D75C68);
    sub_228205394();
    v17 = sub_228392470();
    v18 = type metadata accessor for InteractionCriticalAlertCell();
    v31.receiver = v3;
    v31.super_class = v18;
    objc_msgSendSuper2(&v31, sel_touchesEnded_withEvent_, v17, a2);

    return;
  }

  v14 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22817E6C8(v3 + v14, v29);
  if (v30)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for InteractionCriticalAlertItem();
    if (swift_dynamicCast())
    {
      v15 = v28[11];

      v15(v16);

      return;
    }
  }

  else
  {
    sub_22825F95C(v29, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  }

  sub_228391150();
  v19 = v3;
  v20 = sub_2283911A0();
  v21 = sub_2283925C0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136446210;
    sub_22817E6C8(v3 + v14, v29);
    sub_22825F870(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v24 = sub_228392040();
    v26 = sub_2281C96FC(v24, v25, &v28);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_22816B000, v20, v21, "Incorrect view model for InteractionCriticalAlertItem: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAB7B80](v23, -1, -1);
    MEMORY[0x22AAB7B80](v22, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

id InteractionCriticalAlertCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionCriticalAlertCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22825F870(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_22825F8D8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_22825F870(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 24))(a2, a1, v7);
  return a2;
}

uint64_t sub_22825F95C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_22825F870(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22825F9D0()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionFactorsInfoCell();
  sub_22825FF2C(&qword_27D826180, type metadata accessor for InteractionFactorsInfoCell, &protocol conformance descriptor for InteractionFactorsInfoCell);
  v4 = sub_22838FBB0();
  v18 = v5;
  v19 = v4;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2283931D0();

  v20 = 0xD00000000000001BLL;
  v21 = 0x80000002283AF260;
  sub_22838F490();
  v6 = sub_22838F450();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v3, v0);
  MEMORY[0x22AAB5C80](v6, v8);

  v10 = v20;
  v11 = v21;
  sub_22818272C(0, &qword_27D823910, MEMORY[0x277D10F78]);
  sub_22838FEF0();
  v12 = swift_allocObject();
  v17 = xmmword_228397F40;
  *(v12 + 16) = xmmword_228397F40;
  sub_22818272C(0, &qword_27D823918, sub_228182780);
  v13 = swift_allocObject();
  *(v13 + 16) = v17;
  *(v13 + 56) = &type metadata for InteractionFactorsInfoItem;
  *(v13 + 64) = sub_2282600D0();
  v14 = swift_allocObject();
  *(v13 + 32) = v14;
  v15 = v18;
  v14[2] = v19;
  v14[3] = v15;
  v14[4] = v10;
  v14[5] = v11;
  sub_22838F490();
  sub_22838F450();
  v9(v3, v0);
  sub_22838FED0();
  return sub_22838F920();
}

uint64_t sub_22825FCD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  sub_2283928D0();
  sub_2283900B0();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t InteractionFactorsInfoDataSource.__deallocating_deinit(uint64_t a1)
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionFactorsInfoDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionFactorsInfoCell();
  sub_22825FF2C(&qword_27D826180, type metadata accessor for InteractionFactorsInfoCell, &protocol conformance descriptor for InteractionFactorsInfoCell);
  sub_2283926B0();
}

uint64_t sub_22825FF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for InteractionFactorsInfoDataSource(uint64_t a1)
{
  result = qword_27D826190;
  if (!qword_27D826190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22825FFC0()
{
  type metadata accessor for InteractionFactorsInfoCell();
  sub_22825FF2C(&qword_27D826180, type metadata accessor for InteractionFactorsInfoCell, &protocol conformance descriptor for InteractionFactorsInfoCell);
  return sub_2283926B0();
}

unint64_t sub_2282600D0()
{
  result = qword_27D8261A0;
  if (!qword_27D8261A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8261A0);
  }

  return result;
}

uint64_t type metadata accessor for DosagesPerDaySectionDataSource(uint64_t a1)
{
  result = qword_27D8261E0;
  if (!qword_27D8261E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228260180(uint64_t a1)
{
  result = sub_22838F440();
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

uint64_t sub_228260260(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Dosage(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_228267820(a3 + v15 + v16 * v13, v12, type metadata accessor for Dosage);
      v17 = a1(v12);
      if (v3)
      {
        sub_228267A54(v12, type metadata accessor for Dosage);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_2282679EC(v12, v24, type metadata accessor for Dosage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2281CA23C(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2281CA23C((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_2282679EC(v24, v14 + v15 + v20 * v16, type metadata accessor for Dosage);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_228267A54(v12, type metadata accessor for Dosage);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_2282604EC()
{
  swift_getObjectType();
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_228392E50();
  v9 = v8;
  v10 = v7;
  if (!v8 || !v7)
  {
    v36 = result;
    v37 = v6;
    sub_228391170();

    v11 = v0;

    v12 = sub_2283911A0();
    v13 = sub_2283925C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v34 = v13;
      v15 = v14;
      v32 = swift_slowAlloc();
      v33 = v12;
      v16 = v32;
      v35 = swift_slowAlloc();
      v40 = v35;
      *v15 = 136315906;
      v17 = sub_228393600();
      v19 = sub_2281C96FC(v17, v18, &v40);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      v20 = [v11 identifier];
      *(v15 + 14) = v20;
      *v16 = v20;
      *(v15 + 22) = 2080;
      v38 = v36;
      v39 = v9;
      sub_228182AD4();

      v21 = sub_228392020();
      v23 = sub_2281C96FC(v21, v22, &v40);

      *(v15 + 24) = v23;
      *(v15 + 32) = 2080;
      v38 = v37;
      v39 = v10;

      v24 = sub_228392020();
      v26 = v25;

      v27 = sub_2281C96FC(v24, v26, &v40);

      *(v15 + 34) = v27;
      v28 = v33;
      _os_log_impl(&dword_22816B000, v33, v34, "[%s] Missing logging dose form for concept with ID %@: Singular = %s, Plural = %s", v15, 0x2Au);
      v29 = v32;
      sub_228267A54(v32, sub_2281933B0);
      MEMORY[0x22AAB7B80](v29, -1, -1);
      v30 = v35;
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v30, -1, -1);
      MEMORY[0x22AAB7B80](v15, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return result;
}

uint64_t sub_228260844(uint64_t a1, void *a2, uint64_t a3)
{
  v90 = a1;
  sub_228267710(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v68 - v7;
  v81 = type metadata accessor for Dosage(0);
  v8 = MEMORY[0x28223BE20](v81);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v69 = &v68 - v12;
  MEMORY[0x28223BE20](v11);
  v70 = &v68 - v13;
  v89 = sub_22838F4A0();
  v75 = *(v89 - 8);
  v76 = v75;
  MEMORY[0x28223BE20](v89);
  v88 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22838F440();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - v19;
  *(v3 + qword_27D8261A8) = 0x3FF0000000000000;
  *(v3 + qword_27D8261C8) = 0;
  v21 = (v3 + qword_27D828D18);
  v91[0] = sub_228392000();
  v91[1] = v22;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  v23 = v91[1];
  *v21 = v91[0];
  v21[1] = v23;
  v24 = v3;
  v25 = v90;
  *(v3 + qword_27D8261B0) = v90;
  *(v3 + qword_27D8261C0) = a3;
  *(v3 + qword_27D8261D0) = 0;
  v72 = v25;
  v73 = a3;

  sub_22838F430();
  v82 = v16;
  v26 = *(v16 + 32);
  v84 = v16 + 32;
  v85 = v20;
  v83 = v26;
  v26(v3 + qword_27D8261D8, v20, v15);
  v74 = a2;
  if (a2)
  {
    v27 = a2;
    v90 = sub_2282604EC();
    v29 = v28;
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v90 = 0;
    v29 = 0;
    v31 = 0;
    v33 = 0;
  }

  v34 = (v24 + qword_27D8261B8);
  *v34 = v90;
  v34[1] = v29;
  v34[2] = v31;
  v34[3] = v33;
  v91[0] = 0;
  v91[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v91, "MutableArray<");
  HIWORD(v91[1]) = -4864;
  v35 = v88;
  sub_22838F490();
  v36 = sub_22838F450();
  v38 = v37;
  v39 = v75 + 8;
  v40 = v89;
  v71 = *(v75 + 8);
  v71(v35, v89);
  MEMORY[0x22AAB5C80](v36, v38);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v41 = MEMORY[0x277D84F90];
  v42 = sub_22838FF30();
  v43 = qword_27D8261C0;

  sub_228391870();
  if (v91[0])
  {
    v44 = v91[0];
  }

  else
  {
    v44 = v41;
  }

  v45 = *(v44 + 16);

  if (!v45)
  {
    v68 = v43;
    v75 = v39;
    v79 = qword_27D8261D0;
    v80 = qword_27D8261D8;
    v46 = v87;
    sub_22838F350();
    v47 = v81;
    v48 = v42;
    v49 = v82 + 16;
    v50 = *(v82 + 16);
    v51 = v46;
    v52 = *(v81 + 20);
    v50(&v10[v52], v51, v15);
    sub_22838F490();
    v53 = *(v47 + 24);
    *&v10[v53] = 0x3FF0000000000000;
    v81 = v49 - 8;
    v82 = v49 + 40;
    v76 += 4;
    v77 = v53;
    v54 = 5;
    v78 = v52;
    while (1)
    {
      v55 = v86;
      v50(v86, &v10[v52], v15);
      (*v82)(v55, 0, 1, v15);
      sub_2283923E0();
      v56 = v10;
      v57 = sub_228266EF4(v10, v55);

      result = sub_22826797C(v55, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      if (v57)
      {
        break;
      }

      if (v54 == 0x8000000000000002)
      {
        __break(1u);
        return result;
      }

      v59 = v85;
      sub_22838F350();
      v60 = v87;
      (*v81)(v87, v15);
      v90 = v54;
      v61 = v83;
      v83(v60, v59, v15);
      v50(v59, v60, v15);
      v62 = v88;
      sub_22838F490();
      sub_228267A54(v56, type metadata accessor for Dosage);
      (*v76)(v56, v62, v89);
      v52 = v78;
      v61(v56 + v78, v59, v15);
      v63 = v90;
      v10 = v56;
      *(v56 + v77) = 0x3FF0000000000000;
      v54 = v63 + 5;
    }

    (*v81)(v87, v15);
    v64 = v69;
    sub_2282679EC(v10, v69, type metadata accessor for Dosage);
    v65 = v70;
    sub_2282679EC(v64, v70, type metadata accessor for Dosage);
    v42 = v48;
    sub_228391870();
    if (v91[0])
    {
      v66 = *(v91[0] + 16);

      if (!v66)
      {
        sub_2282633FC(v65);
      }
    }

    sub_228267A54(v65, type metadata accessor for Dosage);
    v35 = v88;
    v40 = v89;
  }

  sub_228267710(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v67 = sub_228261184();
  sub_228194894(v67);

  sub_22838F490();
  sub_22838F450();
  v71(v35, v40);
  sub_22838FED0();
  sub_22838FF50();

  return v42;
}

void *sub_228261184()
{
  v1 = v0;
  v2 = *v0;
  v133 = sub_22838F4A0();
  v139 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Dosage(0);
  v138 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v131 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v6;
  MEMORY[0x28223BE20](v5);
  v143 = (&v97 - v7);
  v144 = type metadata accessor for DosageItem(0);
  v8 = MEMORY[0x28223BE20](v144);
  v130 = (&v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v129 = &v97 - v10;
  v110 = sub_228390460();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228267710(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v97 - v13;
  v101 = sub_22838FFC0();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2283913A0();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v114 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_228391590();
  v102 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_228390170();
  v111 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = &v97 - v22;
  sub_228391870();
  if (v147)
  {
    v23 = v147;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v128 = *(v0 + qword_27D8261B0);
  v24 = *(v0 + qword_27D8261B8 + 8);
  v127 = *(v0 + qword_27D8261B8);
  v126 = v24;
  v25 = *(v0 + qword_27D8261B8 + 16);
  v141 = *(v0 + qword_27D8261B8 + 24);
  v142 = v25;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v2;
  v134 = v29;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = v26;
  v33 = v23;
  v34 = *(v1 + qword_27D828D18 + 8);
  v97 = *(v1 + qword_27D828D18);
  v35 = *(v33 + 16);
  v136 = v32;
  v106 = v28;
  v137 = v30;
  v135 = v31;
  v112 = v18;
  v118 = v21;
  v117 = v27;
  v113 = v17;
  v99 = v33;
  v98 = v34;
  if (v35)
  {
    v145 = MEMORY[0x277D84F90];

    v140 = v35;
    sub_2281C9DB4(0, v35, 0);
    v125 = type metadata accessor for DosageCollectionViewCell(0);
    v36 = v145;
    v124 = v138[80];
    v37 = (v124 + 32) & ~v124;
    v38 = v33 + v37;
    v122 = (v139 + 16);
    v123 = v37;
    v121 += v37;
    v120 = *(v138 + 9);
    v119 = (v139 + 32);
    v39 = v144;
    do
    {
      v144 = v36;
      v139 = v38;
      v40 = v143;
      sub_228267820(v38, v143, type metadata accessor for Dosage);
      v42 = v132;
      v41 = v133;
      (*v122)(v132, v40, v133);
      v43 = v40;
      v44 = v131;
      sub_228267820(v43, v131, type metadata accessor for Dosage);
      v45 = swift_allocObject();
      v46 = v136;
      *(v45 + 16) = sub_228267774;
      *(v45 + 24) = v46;
      sub_2282679EC(v44, v45 + v123, type metadata accessor for Dosage);
      sub_228264B30(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell, &protocol conformance descriptor for DosageCollectionViewCell);

      v47 = sub_22838FBB0();
      v48 = v130;
      *v130 = v47;
      v48[1] = v49;
      v48[2] = 0;
      v48[3] = 0xE000000000000000;
      v48[4] = 0;
      v48[5] = 0;
      v50 = (v48 + v39[11]);
      v51 = (v48 + v39[12]);
      v52 = v39[14];
      v138 = v48 + v39[13];
      v53 = (v48 + v52);
      (*v119)(v48 + v39[7], v42, v41);
      *(v48 + v39[8]) = 1;
      v54 = v128;
      *(v48 + v39[9]) = v128;
      v55 = (v48 + v39[10]);
      v56 = v127;
      v57 = v126;
      *v55 = v127;
      v55[1] = v57;
      v58 = v141;
      v55[2] = v142;
      v55[3] = v58;
      *v50 = sub_22826779C;
      v50[1] = v45;
      v59 = v134;
      v60 = v135;
      *v51 = sub_228267784;
      v51[1] = v59;
      v62 = v137;
      v61 = v138;
      *v53 = sub_22826778C;
      v53[1] = v62;
      v63 = v144;
      *v61 = sub_228267794;
      v61[1] = v60;
      v64 = v129;
      sub_228267820(v48, v129, type metadata accessor for DosageItem);
      v65 = v54;
      v66 = v56;
      v36 = v63;
      sub_228267888(v66, v57, v142, v141);

      sub_228267A54(v143, type metadata accessor for Dosage);
      sub_228267A54(v48, type metadata accessor for DosageItem);
      v145 = v63;
      v67 = *(v63 + 16);
      v68 = *(v36 + 24);
      if (v67 >= v68 >> 1)
      {
        sub_2281C9DB4((v68 > 1), v67 + 1, 1);
        v36 = v145;
      }

      v148 = v39;
      v149 = sub_228264B30(&qword_27D826210, type metadata accessor for DosageItem, &protocol conformance descriptor for DosageItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v147);
      sub_228267820(v64, boxed_opaque_existential_1, type metadata accessor for DosageItem);
      *(v36 + 16) = v67 + 1;
      sub_22816DFFC(&v147, v36 + 40 * v67 + 32);
      sub_228267A54(v64, type metadata accessor for DosageItem);
      v38 = v139 + v120;
      --v140;
    }

    while (v140);
    v17 = v113;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v144 = v36;
  sub_228391520();
  v70 = sub_228391FC0();
  v71 = [objc_opt_self() systemImageNamed_];

  sub_228391550();
  v72 = objc_opt_self();
  v73 = [v72 systemGreenColor];
  v74 = sub_228391480();
  sub_228391470();
  v74(&v147, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v75 = [v72 systemBlueColor];
  v76 = sub_228391450();
  sub_228391420();
  v76(&v147, 0);
  v77 = v114;
  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v78 = v115;
  v148 = v115;
  v149 = MEMORY[0x277D74C30];
  v79 = __swift_allocate_boxed_opaque_existential_1(&v147);
  v80 = v102;
  (*(v102 + 16))(v79, v17, v78);
  v81 = swift_allocObject();
  v82 = v117;
  *(v81 + 16) = sub_22826777C;
  *(v81 + 24) = v82;
  v83 = v104;
  *v104 = 1;
  (*(v100 + 104))(v83, *MEMORY[0x277D10F90], v101);
  v84 = v103;
  v85 = v107;
  v86 = v105;
  (*(v103 + 16))(v107, v77, v105);
  (*(v84 + 56))(v85, 0, 1, v86);
  v145 = v97;
  v146 = v98;

  MEMORY[0x22AAB5C80](0x656D69546464412ELL, 0xEC0000006C6C6543);
  (*(v109 + 104))(v108, *MEMORY[0x277D11140], v110);
  v87 = v116;
  sub_228390160();
  (*(v84 + 8))(v114, v86);
  (*(v80 + 8))(v113, v115);

  v88 = v111;
  v89 = v112;
  v143 = *(v111 + 16);
  (v143)(v118, v87, v112);
  v90 = v144;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v90 = sub_228198710(0, v90[2] + 1, 1, v90);
  }

  v92 = v90[2];
  v91 = v90[3];
  v144 = v92 + 1;
  if (v92 >= v91 >> 1)
  {
    v90 = sub_228198710((v91 > 1), v92 + 1, 1, v90);
  }

  v93 = *(v88 + 8);
  v93(v116, v89);
  v148 = v89;
  v149 = sub_228264B30(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  v94 = __swift_allocate_boxed_opaque_existential_1(&v147);
  v95 = v118;
  (v143)(v94, v118, v89);
  v90[2] = v144;
  sub_22816DFFC(&v147, &v90[5 * v92 + 4]);
  v93(v95, v89);

  return v90;
}

uint64_t sub_2282622C0@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return sub_228267820(a1, a3, type metadata accessor for Dosage);
  }

  sub_22826311C(a1, a3);
}

uint64_t sub_228262358(uint64_t a1)
{
  v51 = sub_22838F4A0();
  v1 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228267710(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v40 - v4;
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = type metadata accessor for Dosage(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v41 = v17;
    v42 = v19;
    v47 = qword_27D8261D0;
    v48 = qword_27D8261D8;
    v55 = result;
    sub_22838F350();
    v21 = *(v11 + 20);
    v24 = *(v6 + 16);
    v22 = v6 + 16;
    v23 = v24;
    v53 = v10;
    v24(&v14[v21], v10, v5);
    sub_22838F490();
    v46 = *(v11 + 24);
    *&v14[v46] = 0x3FF0000000000000;
    v54 = (v22 + 40);
    v52 = (v22 - 8);
    v44 = v21;
    v45 = (v22 + 16);
    v43 = (v1 + 32);
    for (i = 5; ; i = v36 + 5)
    {
      v26 = &v14[v21];
      v27 = v56;
      v28 = v14;
      v29 = v23;
      v23(v56, v26, v5);
      (*v54)(v27, 0, 1, v5);
      sub_2283923E0();
      v30 = v28;
      v31 = sub_228266EF4(v28, v27);

      result = sub_22826797C(v27, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      if (v31)
      {
        (*v52)(v53, v5);
        v37 = v41;
        sub_2282679EC(v28, v41, type metadata accessor for Dosage);
        v38 = v42;
        sub_2282679EC(v37, v42, type metadata accessor for Dosage);
        sub_2282633FC(v38);
        v39 = sub_228261184();
        sub_228194894(v39);

        sub_22838FF60();

        return sub_228267A54(v38, type metadata accessor for Dosage);
      }

      if (i == 0x8000000000000002)
      {
        break;
      }

      v32 = v49;
      sub_22838F350();
      v33 = v53;
      (*v52)(v53, v5);
      v57 = i;
      v34 = *v45;
      (*v45)(v33, v32, v5);
      v23 = v29;
      v29(v32, v33, v5);
      v35 = v50;
      sub_22838F490();
      v14 = v30;
      sub_228267A54(v30, type metadata accessor for Dosage);
      (*v43)(v30, v35, v51);
      v21 = v44;
      v34((v30 + v44), v32, v5);
      v36 = v57;
      *(v30 + v46) = 0x3FF0000000000000;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282628F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v5 = sub_2283911B0();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - v8;
  sub_228267710(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = type metadata accessor for Dosage(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  sub_2282678FC(a2, v14, &qword_27D826200, type metadata accessor for Dosage);
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) != 1)
  {
    sub_2282679EC(v14, v20, type metadata accessor for Dosage);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_228391870();

      if (v53[0])
      {
        v32 = v53[0];
      }

      else
      {
        v32 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v31);
      *(&v46 - 2) = v20;
      sub_2282CD7B8(sub_228267AB4, v32, v12);

      if (v21(v12, 1, v15) != 1)
      {
        sub_22826797C(v12, &qword_27D826200, type metadata accessor for Dosage);
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_228263A44(v20);
        }

        return sub_228267A54(v20, type metadata accessor for Dosage);
      }
    }

    else
    {
      (*(v16 + 56))(v12, 1, 1, v15);
    }

    sub_22826797C(v12, &qword_27D826200, type metadata accessor for Dosage);
    v33 = v48;
    sub_228391150();
    v34 = v47;
    sub_228267820(v20, v47, type metadata accessor for Dosage);
    v35 = sub_2283911A0();
    v36 = sub_2283925C0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53[0] = v38;
      *v37 = 136315394;
      v39 = sub_228393600();
      v41 = sub_2281C96FC(v39, v40, v53);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      sub_22838F4A0();
      sub_228264B30(&qword_27D824618, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_228393420();
      v44 = v43;
      sub_228267A54(v34, type metadata accessor for Dosage);
      v45 = sub_2281C96FC(v42, v44, v53);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_22816B000, v35, v36, "[%s] Unable to find dosage with uuid = %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v38, -1, -1);
      MEMORY[0x22AAB7B80](v37, -1, -1);
    }

    else
    {

      sub_228267A54(v34, type metadata accessor for Dosage);
    }

    (*(v51 + 8))(v33, v52);
    return sub_228267A54(v20, type metadata accessor for Dosage);
  }

  sub_22826797C(v14, &qword_27D826200, type metadata accessor for Dosage);
  v22 = v50;
  sub_228391150();
  v23 = sub_2283911A0();
  v24 = sub_2283925C0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v54[0] = v26;
    *v25 = 136315138;
    v27 = sub_228393600();
    v29 = sub_2281C96FC(v27, v28, v54);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_22816B000, v23, v24, "[%s] Unable to update dosage. Dosage was nil", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAB7B80](v26, -1, -1);
    MEMORY[0x22AAB7B80](v25, -1, -1);
  }

  return (*(v51 + 8))(v22, v52);
}

uint64_t sub_228262FF4(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228263F0C(a2);
    v5 = sub_228261184();
    sub_228194894(v5);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22826308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = type metadata accessor for DosageItem(0);
    v8 = sub_228266EF4(a1 + *(v7 + 28), a2);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_22826311C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228267710(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  sub_228391870();
  if (v16)
  {
    v10 = v16;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v15 = a1;
  sub_2282CD7B8(sub_2282676E0, v10, v9);

  sub_2282678FC(v9, v7, &qword_27D826200, type metadata accessor for Dosage);
  v11 = type metadata accessor for Dosage(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22826797C(v7, &qword_27D826200, type metadata accessor for Dosage);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_2283931D0();

    v16 = 0xD00000000000001DLL;
    v17 = 0x80000002283AF410;
    sub_22838F4A0();
    sub_228264B30(&qword_27D824618, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_228393420();
    MEMORY[0x22AAB5C80](v13);

    result = sub_228393300();
    __break(1u);
  }

  else
  {
    sub_22826797C(v9, &qword_27D826200, type metadata accessor for Dosage);
    return sub_2282679EC(v7, a2, type metadata accessor for Dosage);
  }

  return result;
}

uint64_t sub_2282633FC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for Dosage(0);
  v64 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - v8;
  v10 = sub_2283911B0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  sub_228391150();
  v61 = a1;
  sub_228267820(a1, v9, type metadata accessor for Dosage);
  v17 = sub_2283911A0();
  v18 = sub_2283925A0();
  v19 = os_log_type_enabled(v17, v18);
  v59 = v4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v58 = v14;
    v22 = v21;
    v66 = v21;
    *v20 = 136315394;
    v23 = sub_228393600();
    v25 = sub_2281C96FC(v23, v24, &v66);
    v60 = v2;
    v26 = v11;
    v27 = v10;
    v28 = v25;

    *(v20 + 4) = v28;
    *(v20 + 12) = 2080;
    v29 = Dosage.description.getter();
    v31 = v30;
    sub_228267A54(v9, type metadata accessor for Dosage);
    v32 = sub_2281C96FC(v29, v31, &v66);
    v10 = v27;
    v11 = v26;
    v2 = v60;

    *(v20 + 14) = v32;
    _os_log_impl(&dword_22816B000, v17, v18, "[%s] Request to add dosage = %s.", v20, 0x16u);
    swift_arrayDestroy();
    v33 = v22;
    v14 = v58;
    MEMORY[0x22AAB7B80](v33, -1, -1);
    MEMORY[0x22AAB7B80](v20, -1, -1);
  }

  else
  {

    sub_228267A54(v9, type metadata accessor for Dosage);
  }

  v62 = *(v11 + 8);
  v62(v16, v10);
  v34 = *(v2 + qword_27D8261C0);
  sub_228391870();
  if (v66)
  {
    v35 = v66;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v36 = v63;
  sub_228267820(v61, v63, type metadata accessor for Dosage);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_2281984E8(0, v35[2] + 1, 1, v35);
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_2281984E8((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  sub_2282679EC(v36, v35 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v38, type metadata accessor for Dosage);
  sub_228391150();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v39 = sub_2283911A0();
  v40 = sub_2283925A0();
  v41 = os_log_type_enabled(v39, v40);
  v60 = v34;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v64 = v11;
    v44 = v43;
    v66 = v43;
    *v42 = 136315650;
    v45 = sub_228393600();
    v47 = sub_2281C96FC(v45, v46, &v66);
    v63 = v10;
    v48 = v47;

    *(v42 + 4) = v48;
    *(v42 + 12) = 2048;
    sub_228391870();
    if (v65)
    {
      v49 = v65;
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }

    v50 = v14;
    v51 = *(v49 + 16);

    *(v42 + 14) = v51;

    *(v42 + 22) = 2048;
    v52 = v35[2];

    *(v42 + 24) = v52;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_22816B000, v39, v40, "[%s] Dosage count before add = %ld. Dosage count after add = %ld.", v42, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x22AAB7B80](v44, -1, -1);
    MEMORY[0x22AAB7B80](v42, -1, -1);

    result = (v62)(v50, v63);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v62(v14, v10);
  }

  v54 = *(v2 + qword_27D8261D0);
  v55 = __OFADD__(v54, 1);
  v56 = v54 + 1;
  if (v55)
  {
    __break(1u);
  }

  else
  {
    *(v2 + qword_27D8261D0) = v56;
    v66 = v35;
    sub_228391850();
  }

  return result;
}

uint64_t sub_228263A44(uint64_t a1)
{
  v39 = *v1;
  v3 = type metadata accessor for Dosage(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_2283911B0();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  sub_228267820(a1, v9, type metadata accessor for Dosage);
  sub_228267820(a1, v7, type metadata accessor for Dosage);
  v13 = sub_2283911A0();
  v14 = sub_2283925A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = v4;
    v16 = v15;
    v37 = swift_slowAlloc();
    v41[0] = v37;
    *v16 = 136315650;
    v17 = sub_228393600();
    v19 = sub_2281C96FC(v17, v18, v41);
    v39 = a1;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_22838F4A0();
    sub_228264B30(&qword_27D824618, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_228393420();
    v23 = v22;
    v36 = v10;
    sub_228267A54(v9, type metadata accessor for Dosage);
    v24 = sub_2281C96FC(v21, v23, v41);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = Dosage.description.getter();
    v27 = v26;
    sub_228267A54(v7, type metadata accessor for Dosage);
    v28 = sub_2281C96FC(v25, v27, v41);
    a1 = v39;

    *(v16 + 24) = v28;
    _os_log_impl(&dword_22816B000, v13, v14, "[%s] Request to update dosage uuid = %s with updated dosage = %s.", v16, 0x20u);
    v29 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v29, -1, -1);
    v30 = v16;
    v4 = v38;
    MEMORY[0x22AAB7B80](v30, -1, -1);

    (*(v40 + 8))(v12, v36);
  }

  else
  {

    sub_228267A54(v7, type metadata accessor for Dosage);
    sub_228267A54(v9, type metadata accessor for Dosage);
    (*(v40 + 8))(v12, v10);
  }

  v31 = sub_228391870();
  if (v41[0])
  {
    v32 = v41[0];
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v31);
  *(&v36 - 2) = a1;
  v33 = sub_2283298B0(sub_22826767C, (&v36 - 4), v32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_2281D9378(v33);
  }

  v34 = v33[2];
  v41[0] = v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v41[1] = v34;
  sub_2282653D4(v41);
  v41[0] = v33;
  sub_228391850();
}

uint64_t sub_228263F0C(uint64_t (*a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for Dosage(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2283911B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  sub_228391150();
  v50 = a1;
  sub_228267820(a1, v7, type metadata accessor for Dosage);
  v15 = sub_2283911A0();
  v16 = sub_2283925A0();
  v17 = os_log_type_enabled(v15, v16);
  v51 = v12;
  v52 = v9;
  v49 = v4;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v54 = v19;
    *v18 = 136315394;
    v20 = sub_228393600();
    v22 = sub_2281C96FC(v20, v21, &v54);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_22838F4A0();
    sub_228264B30(&qword_27D824618, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_228393420();
    v25 = v24;
    sub_228267A54(v7, type metadata accessor for Dosage);
    v26 = sub_2281C96FC(v23, v25, &v54);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_22816B000, v15, v16, "[%s] Request to delete dosage with uuid = %s", v18, 0x16u);
    swift_arrayDestroy();
    v27 = v19;
    v9 = v52;
    MEMORY[0x22AAB7B80](v27, -1, -1);
    v28 = v18;
    v12 = v51;
    MEMORY[0x22AAB7B80](v28, -1, -1);
  }

  else
  {

    sub_228267A54(v7, type metadata accessor for Dosage);
  }

  v29 = *(v9 + 8);
  v29(v14, v8);
  v30 = sub_228391870();
  MEMORY[0x28223BE20](v30);
  *(&v48 - 2) = v50;
  v32 = sub_228260260(sub_22826765C, (&v48 - 4), v31);
  sub_228391150();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v33 = sub_2283911A0();
  v34 = sub_2283925A0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v54 = v36;
    *v35 = 136315650;
    v37 = sub_228393600();
    v39 = sub_2281C96FC(v37, v38, &v54);
    v50 = v29;
    v40 = v39;

    *(v35 + 4) = v40;
    *(v35 + 12) = 2048;
    sub_228391870();
    if (v53)
    {
      v41 = v53;
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

    v49 = v8;
    v42 = *(v41 + 16);

    *(v35 + 14) = v42;

    *(v35 + 22) = 2048;
    v43 = *(v32 + 16);

    *(v35 + 24) = v43;

    _os_log_impl(&dword_22816B000, v33, v34, "[%s] Dosage count before delete = %ld. Dosage count after delete = %ld.", v35, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AAB7B80](v36, -1, -1);
    MEMORY[0x22AAB7B80](v35, -1, -1);

    result = v50(v51, v49);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    result = v29(v12, v8);
  }

  v45 = *(v2 + qword_27D8261D0);
  v46 = __OFSUB__(v45, 1);
  v47 = v45 - 1;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    *(v2 + qword_27D8261D0) = v47 & ~(v47 >> 63);
    v54 = v32;
    sub_228391850();
  }

  return result;
}

BOOL sub_2282644AC(uint64_t a1, uint64_t a2)
{
  sub_22838F4A0();
  sub_228264B30(&qword_27D826208, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return (sub_228391FB0() & 1) == 0;
}

uint64_t sub_228264570()
{
  sub_228267618(*(v0 + qword_27D8261B8), *(v0 + qword_27D8261B8 + 8), *(v0 + qword_27D8261B8 + 16), *(v0 + qword_27D8261B8 + 24));

  v1 = qword_27D8261D8;
  v2 = sub_22838F440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_228264634()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8261B0);

  sub_228267618(*(v0 + qword_27D8261B8), *(v0 + qword_27D8261B8 + 8), *(v0 + qword_27D8261B8 + 16), *(v0 + qword_27D8261B8 + 24));

  v2 = qword_27D8261D8;
  v3 = sub_22838F440();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_22826474C()
{
  type metadata accessor for ScheduleHeaderCell();
  sub_228264B30(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
  sub_2283926D0();
  type metadata accessor for DosageCollectionViewCell(0);
  sub_228264B30(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell, &protocol conformance descriptor for DosageCollectionViewCell);
  sub_2283926B0();
  sub_2283904F0();
  return sub_2283926B0();
}

void *sub_228264824(uint64_t a1, uint64_t a2)
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

uint64_t sub_228264978@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v2 = sub_22838F0C0();
  v4 = v3;
  type metadata accessor for ScheduleHeaderCell();
  sub_228264B30(&qword_27D825830, type metadata accessor for ScheduleHeaderCell, &unk_2283989A4);
  v5 = sub_22838FBB0();
  v7 = v6;
  sub_22838FBB0();

  a1[3] = &type metadata for ScheduleHeaderItem;
  a1[4] = sub_228194464();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = nullsub_1;
  *(result + 48) = 0;
  *(result + 56) = v5;
  *(result + 64) = v7;
  return result;
}

uint64_t sub_228264B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_228264B78(uint64_t a1)
{
  sub_228267710(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v56 - v3;
  v66 = sub_22838F6A0();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Dosage(0);
  v6 = *(v74 - 8);
  v7 = MEMORY[0x28223BE20](v74);
  v69 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = sub_22838F6C0();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2281A8AE4(MEMORY[0x277D84F90]);
  v68 = v13;
  sub_22838F680();
  v14 = *(a1 + 16);
  v58 = v11;
  v56 = v6;
  if (!v14)
  {
LABEL_20:
    v50 = v70;
    v51 = *(v70 + 16);
    if (v51)
    {
      v52 = sub_2281D77A0(*(v70 + 16), 0);
      v53 = sub_228266A44(&v75, v52 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v51, v50);
      v54 = v75;

      sub_228176F04(v54);
      if (v53 == v51)
      {
LABEL_24:
        (*(v57 + 8))(v68, v58);

        return v52;
      }

      __break(1u);
    }

    v52 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v16 = *(v6 + 72);
  v64 = *MEMORY[0x277CC9980];
  v62 = (v4 + 8);
  v63 = (v4 + 104);
  v61 = *MEMORY[0x277CC99A0];
  v60 = (v6 + 56);
  v59 = v16;
  v17 = v65;
  while (1)
  {
    v71 = v15;
    v72 = v14;
    sub_228267820(v15, v10, type metadata accessor for Dosage);
    v21 = *v63;
    v22 = v66;
    (*v63)(v17, v64, v66);
    v73 = sub_22838F6B0();
    v23 = *v62;
    (*v62)(v17, v22);
    v21(v17, v61, v22);
    v24 = sub_22838F6B0();
    v23(v17, v22);
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_228392400();
    MEMORY[0x22AAB5C80](95, 0xE100000000000000);
    v77 = v73;
    v25 = sub_228393420();
    MEMORY[0x22AAB5C80](v25);

    MEMORY[0x22AAB5C80](95, 0xE100000000000000);
    v77 = v24;
    v26 = sub_228393420();
    MEMORY[0x22AAB5C80](v26);

    v27 = v75;
    v28 = v76;
    v29 = v70;
    if (*(v70 + 16))
    {
      v30 = sub_2281A76E0(v75, v76);
      if (v31)
      {
        v32 = v30;

        v20 = v59;
        v33 = v29[7] + v32 * v59;
        v34 = v67;
        sub_228267820(v33, v67, type metadata accessor for Dosage);
        sub_228267A54(v10, type metadata accessor for Dosage);
        (*v60)(v34, 0, 1, v74);
        sub_22826797C(v34, &qword_27D826200, type metadata accessor for Dosage);
        goto LABEL_5;
      }
    }

    v35 = v67;
    (*v60)(v67, 1, 1, v74);
    sub_22826797C(v35, &qword_27D826200, type metadata accessor for Dosage);
    sub_228267820(v10, v69, type metadata accessor for Dosage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v29;
    v38 = sub_2281A76E0(v27, v28);
    v39 = v29[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v29[3] >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v37 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_22829B6CC();
        if ((v42 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_22829A334(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_2281A76E0(v27, v28);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_27;
      }

      v38 = v43;
      if ((v42 & 1) == 0)
      {
LABEL_16:
        v18 = v75;
        v75[(v38 >> 6) + 8] |= 1 << v38;
        v45 = (v18[6] + 16 * v38);
        *v45 = v27;
        v45[1] = v28;
        v46 = v18[7] + v38 * v59;
        v20 = v59;
        sub_2282679EC(v69, v46, type metadata accessor for Dosage);
        v47 = v18[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_26;
        }

        v18[2] = v49;
        goto LABEL_4;
      }
    }

    v18 = v75;
    v19 = v75[7] + v38 * v59;
    v20 = v59;
    sub_2282675B4(v69, v19);
LABEL_4:
    v70 = v18;
    sub_228267A54(v10, type metadata accessor for Dosage);
LABEL_5:
    v15 = v71 + v20;
    v14 = v72 - 1;
    if (v72 == 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2283934A0();
  __break(1u);
  return result;
}