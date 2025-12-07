uint64_t sub_2282B19B0()
{
  v1 = *(v0[3] + 120);
  if (v1)
  {
    sub_228180ED0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_228397F20;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = sub_22838EF00();
    v6 = [v3 predicateForSamplesWithinDateInterval:v5 options:0];

    *(v2 + 32) = v6;
    v7 = [v4 semanticIdentifier];
    v8 = [v7 stringValue];

    if (!v8)
    {
      sub_228392000();
      v8 = sub_228391FC0();
    }

    v9 = [v3 predicateForMedicationDoseEventWithMedicationIdentifier_];

    *(v2 + 40) = v9;
    sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
    v10 = sub_228392190();

    v11 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    v12 = objc_opt_self();
    v10 = sub_22838EF00();
    v11 = [v12 predicateForSamplesWithinDateInterval:v10 options:0];
  }

  v0[11] = v11;
  v13 = v0[3];

  v14 = MEMORY[0x277CCB570];
  sub_2282B2780(0, &qword_27D8270C8, &qword_27D8270D0, MEMORY[0x277CCB570]);
  sub_2282B27D8(0, &qword_27D8270D0, v14);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v15 = [objc_opt_self() medicationDoseEventType];
  sub_22817A958(0, &unk_280DDB968, 0x277CCD8A8);
  v16 = v11;
  sub_228391E60();

  v17 = MEMORY[0x277CC89F0];
  sub_2282B2780(0, &qword_27D8270D8, &qword_27D8270E0, MEMORY[0x277CC89F0]);
  sub_2282B27D8(0, &qword_27D8270E0, v17);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  KeyPath = swift_getKeyPath();
  MEMORY[0x22AAB2C30](KeyPath, 0);
  sub_228391E80();
  v19 = *(v13 + 112);
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_2282B1E18;
  v21 = v0[8];

  return MEMORY[0x282120380](v19, v21);
}

uint64_t sub_2282B1E18(uint64_t a1)
{
  v4 = *v2;
  v4[13] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_2282B218C;
  }

  else
  {
    v4[14] = a1;
    v6 = sub_2282B1F54;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2282B1F54()
{
  v25 = v0;
  v1 = sub_2281BFDA8(v0[14]);

  if (v1)
  {
    v2 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  else
  {
    sub_228391190();
    v3 = sub_2283911A0();
    v4 = sub_2283925C0();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[10];
    v7 = v0[11];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[5];
    if (v5)
    {
      v22 = v0[7];
      v23 = v0[8];
      v13 = swift_slowAlloc();
      v21 = v7;
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      v15 = sub_228393600();
      v20 = v6;
      v17 = sub_2281C96FC(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_22816B000, v3, v4, "[%s] Error fetching medication dose event samples", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAB7B80](v14, -1, -1);
      MEMORY[0x22AAB7B80](v13, -1, -1);

      (*(v10 + 8))(v22, v12);
      (*(v8 + 8))(v20, v23);
    }

    else
    {

      (*(v10 + 8))(v11, v12);
      (*(v8 + 8))(v6, v9);
    }

    v1 = MEMORY[0x277D84F90];
  }

  v18 = v0[1];

  return v18(v1);
}

uint64_t sub_2282B218C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_2282B2228(id *a1)
{
  v1 = [*a1 startDate];
  sub_22838F3E0();
}

uint64_t sub_2282B2288(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2282B27D8(0, &qword_27D8270E8, MEMORY[0x277CCB650]);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2282B2368, v2, 0);
}

uint64_t sub_2282B2368()
{
  v1 = *(v0[4] + 120);
  if (v1)
  {
    sub_228180ED0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_228397F20;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = sub_22838EF00();
    v6 = [v3 predicateForSamplesWithinDateInterval:v5 options:0];

    *(v2 + 32) = v6;
    v7 = [v4 semanticIdentifier];
    v8 = [v7 stringValue];

    if (!v8)
    {
      sub_228392000();
      v8 = sub_228391FC0();
    }

    v9 = [v3 predicateForMedicationDoseEventWithMedicationIdentifier_];

    *(v2 + 40) = v9;
    sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
    v10 = sub_228392190();

    v11 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    v12 = objc_opt_self();
    v10 = sub_22838EF00();
    v11 = [v12 predicateForSamplesWithinDateInterval:v10 options:0];
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];

  v16 = MEMORY[0x277CCB570];
  sub_2282B2780(0, &qword_27D8270C8, &qword_27D8270D0, MEMORY[0x277CCB570]);
  sub_2282B27D8(0, &qword_27D8270D0, v16);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v17 = [objc_opt_self() medicationDoseEventType];
  sub_22817A958(0, &unk_280DDB968, 0x277CCD8A8);
  v18 = v11;
  sub_228391E60();

  sub_228391ED0();
  sub_228391EF0();

  (*(v14 + 8))(v13, v15);

  v19 = v0[1];

  return v19();
}

uint64_t MedicationDoseEventDataSource.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_2282B2780(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2282B27D8(255, a3, a4);
    v5 = sub_228393430();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2282B27D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22817A958(255, &unk_280DDB968, 0x277CCD8A8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t dispatch thunk of MedicationDoseEventDataSource.fetchDoseEvents(in:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2282B29C4;

  return v6(a1);
}

uint64_t sub_2282B29C4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MedicationDoseEventDataSource.observeDoseEvents(in:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22819D87C;

  return v8(a1, a2);
}

id sub_2282B2BEC(double a1, double a2, double a3, double a4)
{
  sub_2282B41F4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell_item];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___boltIconImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___labelView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___secondaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___settingsButton] = 0;
  v13 = type metadata accessor for ConnectivityIssueCell();
  v18.receiver = v4;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setSelectedBackgroundView_];
  v15 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v14 setBackgroundColor_];

  sub_228391380();
  v16 = sub_2283913A0();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  MEMORY[0x22AAB6420](v11);

  sub_2282B39E0();
  return v14;
}

id sub_2282B2EB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setContentMode_];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithPointSize_];
  v3 = sub_228391FC0();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_opt_self() secondarySystemFillColor];
    v6 = [v1 configurationWithHierarchicalColor_];

    v7 = [v4 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v7 = 0;
  }

  [v0 setImage_];

  return v0;
}

id sub_2282B3044()
{
  v0 = sub_228391430();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_228391590();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setNumberOfLines_];
  v9 = [objc_opt_self() labelColor];
  [v8 setTextColor_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v10 = sub_228391FC0();

  [v8 setText_];

  sub_228391500();
  sub_228391460();
  (*(v5 + 8))(v7, v4);
  v11 = sub_228391400();
  (*(v1 + 8))(v3, v0);
  [v8 setFont_];

  return v8;
}

id sub_2282B3304(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_2282B3364()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    MobileGestalt_get_wapiCapability();

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    v4 = sub_228391FC0();

    [v0 setText_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2282B34F4()
{
  v1 = v0;
  v2 = sub_228392DE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___settingsButton;
  v10 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___settingsButton);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell____lazy_storage___settingsButton);
  }

  else
  {
    sub_228392DA0();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228392DB0();
    v12 = [objc_opt_self() tintColor];
    sub_228392D60();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    (*(v3 + 16))(v6, v8, v2);
    v13 = sub_228392DF0();
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    v14 = sub_228392C90();
    [v13 addAction:v14 forControlEvents:64];

    (*(v3 + 8))(v8, v2);
    v15 = *(v1 + v9);
    *(v1 + v9) = v13;
    v11 = v13;

    v10 = 0;
  }

  v16 = v10;
  return v11;
}

id sub_2282B378C()
{
  sub_2282B41F4(0, &qword_27D824530, MEMORY[0x277CC9260]);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  v6 = [objc_opt_self() internalSettingsURLString];
  sub_228392000();

  sub_22838F1E0();

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    sub_2282B4188(v5, v3, &qword_27D824530, MEMORY[0x277CC9260]);
    v9 = sub_22838F1F0();
    v10 = *(v9 - 8);
    v11 = 0;
    if ((*(v10 + 48))(v3, 1, v9) != 1)
    {
      v11 = sub_22838F1C0();
      (*(v10 + 8))(v3, v9);
    }

    sub_2281A8644(MEMORY[0x277D84F90]);
    v12 = sub_228391F10();

    [v8 openSensitiveURL:v11 withOptions:v12];

    return sub_2282B4248(v5, &qword_27D824530, MEMORY[0x277CC9260]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2282B39E0()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F00;
  *(v1 + 32) = sub_2282B2E90();
  *(v1 + 40) = sub_2282B3024();
  *(v1 + 48) = sub_2282B32E4();
  *(v1 + 56) = sub_2282B34F4();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAlignment_];
  [v4 setAxis_];
  [v4 setSpacing_];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v0 contentView];
  [v6 addSubview_];

  v26 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228397F00;
  v8 = [v5 centerXAnchor];
  v9 = [v0 contentView];
  v10 = [v9 centerXAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v11;
  v12 = [v5 centerYAnchor];
  v13 = [v0 contentView];
  v14 = [v13 centerYAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v7 + 40) = v15;
  v16 = [v5 leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 leadingAnchor];
  v20 = [v16 constraintEqualToAnchor_];

  *(v7 + 48) = v20;
  v21 = [v5 trailingAnchor];

  v22 = [v0 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor_];

  *(v7 + 56) = v25;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v27 = sub_228392190();

  [v26 activateConstraints_];
}

id sub_2282B3DEC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConnectivityIssueCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2282B3EDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell_item;
  swift_beginAccess();
  return sub_2282B4188(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2282B3F50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI21ConnectivityIssueCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2282B4034()
{
  type metadata accessor for ConnectivityIssueCell();
  sub_2282B4144(&qword_27D8239E0, type metadata accessor for ConnectivityIssueCell, &unk_2283A1AC0);
  return sub_22838FBB0();
}

uint64_t sub_2282B4098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_2282B4144(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2282B4188(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2282B41F4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2282B41F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2282B4248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282B41F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for MedicationSourceListDataSource(uint64_t a1)
{
  result = qword_27D827148;
  if (!qword_27D827148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282B4368(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

void sub_2282B4424(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2283930D0();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
  v5 = sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
  v18[1] = MEMORY[0x22AAB6030](v3, v4, v5);
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = sub_2283932B0() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v6 = v1 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 64);
  }

  v12 = 0;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_2283932F0() || (swift_dynamicCast(), (v17 = v18[0]) == 0))
    {
LABEL_21:
      sub_228176F04(v1);
      return;
    }

LABEL_11:
    sub_2282D6998(v18, v17);
  }

  v13 = v12;
  v14 = v8;
  v15 = v12;
  if (v8)
  {
LABEL_17:
    v16 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v8 = (v14 - 1) & v14;
    v12 = v15;
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_2282B4618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2283922A0();
  v4[4] = sub_228392290();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_2282B46C8;

  return sub_2282B5388();
}

uint64_t sub_2282B46C8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_228392250();

  return MEMORY[0x2822009F8](sub_2282B480C, v3, v2);
}

uint64_t sub_2282B480C()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = *(v2 + qword_27D827120);
  sub_2282B9240(v1, sub_2281DB0C4, sub_2282668A8);

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v4 = sub_228392790();
  v5 = objc_allocWithZone(MEMORY[0x277D12AD0]);
  sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
  v6 = sub_228392190();

  v7 = [v5 initWithHealthStore:v3 sources:v6 queue:v4];

  [v7 registerObserver_];
  [v7 setShouldFetchAppIcons_];
  [v7 setShouldFetchAppInstallationStatus_];
  [v7 fetchSources];
  v8 = *(v2 + qword_27D827128);
  *(v2 + qword_27D827128) = v7;

  v9 = v0[1];

  return v9();
}

uint64_t sub_2282B49B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282B90F4(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v42 - v12;
  v14 = sub_22838F750();
  if (v14 == 2)
  {
    if (sub_228392000() == a1 && v27 == a2)
    {
    }

    else
    {
      v29 = sub_228393460();

      if ((v29 & 1) == 0)
      {
        if (sub_228392000() == a1 && v30 == a2)
        {
        }

        else
        {
          v32 = sub_228393460();

          if ((v32 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        if (qword_27D823308 == -1)
        {
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }

    if (qword_27D823308 != -1)
    {
      goto LABEL_55;
    }

LABEL_45:
    sub_22838F0C0();
    v34 = sub_228390130();
    (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
    a3[3] = sub_228390150();
    a3[4] = sub_2282B9560(&qword_27D824EC8, MEMORY[0x277D10FE8], MEMORY[0x277D10FD8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_228390140();
  }

  if (v14 == 1)
  {
    if (sub_228392000() == a1 && v21 == a2)
    {
    }

    else
    {
      v23 = sub_228393460();

      if ((v23 & 1) == 0)
      {
        if (sub_228392000() == a1 && v24 == a2)
        {
        }

        else
        {
          v26 = sub_228393460();

          if ((v26 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        if (qword_27D823308 == -1)
        {
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }

    if (qword_27D823308 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

  if (v14)
  {
    goto LABEL_36;
  }

  if (sub_228392000() == a1 && v15 == a2)
  {

LABEL_44:
    if (qword_27D823308 == -1)
    {
      goto LABEL_45;
    }

LABEL_55:
    swift_once();
    goto LABEL_45;
  }

  v17 = sub_228393460();

  if (v17)
  {
    goto LABEL_44;
  }

  if (sub_228392000() == a1 && v18 == a2)
  {

    goto LABEL_53;
  }

  v20 = sub_228393460();

  if ((v20 & 1) == 0)
  {
LABEL_36:
    a3[3] = sub_22838FC00();
    a3[4] = sub_2282B9560(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_22838FBF0();
  }

LABEL_53:
  if (qword_27D823308 != -1)
  {
LABEL_56:
    swift_once();
  }

LABEL_54:
  sub_22838F0C0();
  sub_228241A58(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_228397F40;
  v42[0] = *(v3 + qword_27D827118);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v36 = sub_228390F20();
  v38 = v37;
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = sub_22818E210();
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  sub_228392010();

  v42[0] = 0x74497265746F6F46;
  v42[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v39 = sub_22838F450();
  v41 = v40;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x22AAB5C80](v39, v41);

  a3[3] = sub_228390330();
  a3[4] = sub_2282B9560(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

uint64_t sub_2282B5388()
{
  v1[175] = v0;
  sub_2283922A0();
  v1[176] = sub_228392290();
  v3 = sub_228392250();
  v1[177] = v3;
  v1[178] = v2;

  return MEMORY[0x2822009F8](sub_2282B5424, v3, v2);
}

uint64_t sub_2282B5424()
{
  sub_2282B9CF8(0);
  *(v0 + 1432) = v1;
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 16, v0 + 1384, sub_2282B54F4, v0 + 1296);
}

uint64_t sub_2282B5510()
{
  *(v0 + 1368) = *(v0 + 1384);

  return MEMORY[0x282200928](v0 + 656, v0 + 1392, sub_2282B5580, v0 + 1296);
}

uint64_t sub_2282B559C()
{
  v0[172] = v0[174];
  v4 = MEMORY[0x277D84FA0];

  sub_2282B5A68(v1);

  sub_2282B5A68(v2);
  swift_arrayDestroy();
  v0[180] = v4;

  return MEMORY[0x282200920](v0 + 82, v0 + 174, sub_2282B5660, v0 + 162);
}

uint64_t sub_2282B56B8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1440);

  return v1(v2);
}

uint64_t sub_2282B571C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2282B57B0;

  return sub_2282B5C60();
}

uint64_t sub_2282B57B0(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2282B9E38, 0, 0);
}

uint64_t sub_2282B58B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2282B5944;

  return sub_2282B6490();
}

uint64_t sub_2282B5944(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2282B5A44, 0, 0);
}

void sub_2282B5A68(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_228393080();
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    sub_2283924C0();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_228176F04(v1);
      return;
    }

    while (1)
    {
      sub_2282D6998(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_228393100())
      {
        sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2282B5C60()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = sub_2283911B0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_2282B9B8C(0);
  v1[8] = swift_task_alloc();
  sub_2282B9BF4(0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  sub_2283922A0();
  v1[12] = sub_228392290();
  v5 = sub_228392250();
  v1[13] = v5;
  v1[14] = v4;

  return MEMORY[0x2822009F8](sub_2282B5E04, v5, v4);
}

uint64_t sub_2282B5E04()
{
  v1 = v0[3];
  v2 = [*(v1 + qword_27D827118) semanticIdentifier];
  v3 = [v2 healthConceptIdentifier];
  v0[15] = v3;

  sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
  v4 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  v5 = [objc_opt_self() predicateForMedicationDoseEventWithMedicationConceptIdentifier_];
  sub_22817A958(0, &unk_280DDB968, 0x277CCD8A8);
  sub_228391E60();

  sub_228391EB0();
  v6 = *(v1 + qword_27D827120);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_2282B5FB0;
  v8 = v0[9];

  return MEMORY[0x282120390](v6, v8);
}

uint64_t sub_2282B5FB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_2282B61D0;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_2282B60D8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2282B60D8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];

  v6 = sub_2282B97D0(v1, &qword_27D824240, 0x277CCDA00, &qword_27D827840, sub_2282D6998);

  (*(v5 + 8))(v3, v4);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_2282B61D0()
{
  v33 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];

  (*(v5 + 8))(v3, v4);
  sub_228391190();
  v6 = v1;
  v7 = sub_2283911A0();
  v8 = sub_2283925C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[17];
    v10 = v0[6];
    v31 = v0[7];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315394;
    v14 = sub_228393600();
    v16 = sub_2281C96FC(v14, v15, &v32);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[2] = v9;
    v17 = v9;
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
    v18 = sub_228392020();
    v20 = sub_2281C96FC(v18, v19, &v32);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_22816B000, v7, v8, "[%s] %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v10 + 8))(v31, v11);
  }

  else
  {
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];

    (*(v22 + 8))(v21, v23);
  }

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v24 = v0[17];
LABEL_6:
    v25 = MEMORY[0x277D84FA0];
    goto LABEL_7;
  }

  v28 = sub_2283930D0();
  v24 = v0[17];
  if (!v28)
  {
    goto LABEL_6;
  }

  v29 = v0[17];
  sub_2281F0334(MEMORY[0x277D84F90]);
  v25 = v30;
  v24 = v29;
LABEL_7:

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_2282B6490()
{
  v1[20] = v0;
  v1[21] = *v0;
  v2 = sub_2283911B0();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  sub_2283922A0();
  v1[25] = sub_228392290();
  v4 = sub_228392250();
  v1[26] = v4;
  v1[27] = v3;

  return MEMORY[0x2822009F8](sub_2282B65AC, v4, v3);
}

uint64_t sub_2282B65AC()
{
  v1 = v0[20];
  v2 = [*(v1 + qword_27D827118) semanticIdentifier];
  v3 = [v2 healthConceptIdentifier];
  v0[28] = v3;

  v4 = *(v1 + qword_27D827130);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2282B6718;
  v5 = swift_continuation_init();
  sub_2282B95A8(0);
  v0[17] = v6;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2282B6CC4;
  v0[13] = &block_descriptor_5_1;
  v0[14] = v5;
  [v4 fetchAuthorizationStatusesForHealthConceptIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2282B6718()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_2282B6A38;
  }

  else
  {
    v5 = sub_2282B6848;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void *sub_2282B6848()
{

  v1 = v0[18];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = v0[18];
    }

    else
    {
      v2 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = sub_2282B9928(v2);
LABEL_6:
    v4 = v0[28];
    *(v0[20] + qword_27D827138) = v3;

    sub_2282B4424(v1);
    v6 = v5;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    sub_22829BC4C(0);
    result = sub_228393330();
    v3 = result;
    v9 = 0;
    v10 = 1 << *(v1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v1 + 64);
    v13 = (v10 + 63) >> 6;
    v23 = result + 8;
    if (v12)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_18:
        v17 = v14 | (v9 << 6);
        v18 = *(*(v1 + 56) + 8 * v17);
        v19 = *(*(v1 + 48) + 8 * v17);
        result = [v18 integerValue];
        *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(v3[6] + 8 * v17) = v19;
        *(v3[7] + 8 * v17) = result;
        v20 = v3[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          break;
        }

        v3[2] = v22;
        if (!v12)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v15 = v9;
      while (1)
      {
        v9 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v9 >= v13)
        {
          goto LABEL_6;
        }

        v16 = *(v1 + 64 + 8 * v9);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v12 = (v16 - 1) & v16;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282B6A38()
{
  v30 = v0;
  v2 = v0[28];
  v1 = v0[29];

  swift_willThrow();

  sub_228391190();
  v3 = v1;
  v4 = sub_2283911A0();
  v5 = sub_2283925C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = v0[23];
    v28 = v0[24];
    v8 = v0[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136315394;
    v11 = sub_228393600();
    v13 = sub_2281C96FC(v11, v12, v29);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[19] = v6;
    v14 = v6;
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
    v15 = sub_228392020();
    v17 = sub_2281C96FC(v15, v16, v29);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_22816B000, v4, v5, "[%s] %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    (*(v7 + 8))(v28, v8);
  }

  else
  {
    v19 = v0[23];
    v18 = v0[24];
    v20 = v0[22];

    (*(v19 + 8))(v18, v20);
  }

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v21 = v0[29];
LABEL_6:
    v22 = MEMORY[0x277D84FA0];
    goto LABEL_7;
  }

  v25 = sub_2283930D0();
  v21 = v0[29];
  if (!v25)
  {
    goto LABEL_6;
  }

  v26 = v0[29];
  sub_2281F0334(MEMORY[0x277D84F90]);
  v22 = v27;
  v21 = v26;
LABEL_7:

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_2282B6CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    **(*(v4 + 64) + 40) = sub_228391F20();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_2282B6E38()
{

  v1 = *(v0 + qword_27D827140);
  v2 = *(v0 + qword_27D827140 + 8);

  return sub_228176EC8(v1, v2);
}

uint64_t sub_2282B6EBC()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D827118);

  sub_228176EC8(*(v0 + qword_27D827140), *(v0 + qword_27D827140 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_2282B6F74(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_228390010();
  sub_228390000();
  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_228390060();
  v10 = sub_2283900C0();
  v9(v8, v2);
  return v10;
}

uint64_t sub_2282B7098()
{
  type metadata accessor for MedicationSourceListCell(0);
  sub_2283926B0();
  type metadata accessor for MedicationSourceListNoneCell(0);
  sub_2283926B0();
  sub_228390120();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  sub_2283903E0();
  sub_2283926D0();
  sub_2283926C0();
  sub_228390190();
  return sub_2283926B0();
}

uint64_t sub_2282B71E8(uint64_t a1, char a2)
{
  *(v3 + 201) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  *(v3 + 224) = *v2;
  v4 = sub_2283911B0();
  *(v3 + 232) = v4;
  *(v3 + 240) = *(v4 - 8);
  *(v3 + 248) = swift_task_alloc();
  sub_2282B90F4(0, &qword_27D827160, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  *(v3 + 256) = swift_task_alloc();
  sub_2283922A0();
  *(v3 + 264) = sub_228392290();
  v6 = sub_228392250();
  *(v3 + 272) = v6;
  *(v3 + 280) = v5;

  return MEMORY[0x2822009F8](sub_2282B7364, v6, v5);
}

uint64_t sub_2282B7364()
{
  if (*(v0 + 201))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = [*(v0 + 208) bundleIdentifier];
  if (!v2)
  {
    sub_228392000();
    v2 = sub_228391FC0();
  }

  *(v0 + 288) = v2;
  v3 = *(v0 + 256);
  v4 = [*(*(v0 + 216) + qword_27D827118) semanticIdentifier];
  v5 = [v4 healthConceptIdentifier];
  *(v0 + 296) = v5;

  sub_2282B90F4(0, &qword_27D827168, sub_2282B9158, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F40;
  *(inited + 32) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = v5;
  *(inited + 40) = [v7 initWithInteger_];
  sub_2281A88DC(inited);
  swift_setDeallocating();
  sub_2282B9318(inited + 32, sub_2282B9158);
  v9 = sub_22838F4A0();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  sub_22817A958(0, &qword_27D824258, 0x277CCD4B0);
  sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
  sub_2281A89C4(&qword_27D824260, &qword_27D824258, 0x277CCD4B0);
  v11 = sub_228391F10();

  v12 = 0;
  if ((*(v10 + 48))(v3, 1, v9) != 1)
  {
    v13 = *(v0 + 256);
    v12 = sub_22838F460();
    (*(v10 + 8))(v13, v9);
  }

  v14 = *(v0 + 216);
  v15 = [objc_allocWithZone(MEMORY[0x277CCD718]) initWithObjectAuthorizationStatuses:v11 sessionIdentifier:v12];
  *(v0 + 304) = v15;

  v16 = *(v14 + qword_27D827130);
  v17 = [objc_opt_self() userAnnotatedMedicationType];
  *(v0 + 312) = v17;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2282B7758;
  v18 = swift_continuation_init();
  sub_2281E0600(0);
  *(v0 + 136) = v19;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2282B4368;
  *(v0 + 104) = &block_descriptor_20;
  *(v0 + 112) = v18;
  [v16 setObjectAuthorizationStatusContext:v15 forObjectType:v17 bundleIdentifier:v2 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2282B7758()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_2282B7950;
  }

  else
  {
    v5 = sub_2282B7888;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2282B7888()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);

  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  sub_228393590();

  v5 = *(v0 + 192);
  v6 = *(v0 + 200);

  v7 = *(v0 + 8);

  return v7(v5, v6);
}

uint64_t sub_2282B7950()
{
  v28 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);

  swift_willThrow();

  sub_228391190();
  v5 = v1;
  v6 = sub_2283911A0();
  v7 = sub_2283925C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 320);
    v9 = *(v0 + 240);
    v26 = *(v0 + 248);
    v24 = *(v0 + 296);
    v25 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    v13 = sub_228393600();
    v15 = sub_2281C96FC(v13, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22816B000, v6, v7, "[%s] %@", v10, 0x16u);
    sub_2282B9318(v11, sub_2281933B0);
    MEMORY[0x22AAB7B80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAB7B80](v12, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);

    (*(v9 + 8))(v26, v25);
  }

  else
  {
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 320);

  v22 = *(v0 + 8);

  return v22(v21, 1);
}

uint64_t sub_2282B7BB0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2282B7C54;

  return sub_2282B71E8(a1, a2);
}

uint64_t sub_2282B7C54(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_2282B7D58(void *a1)
{
  v2 = v1;
  v4 = sub_22838F4A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 sources];
  v136 = v1;
  if (!v8)
  {
    sub_2282B90F4(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v62 = *(sub_22838FEF0() - 8);
    v135 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v63 = swift_allocObject();
    v134 = xmmword_228397F40;
    *(v63 + 16) = xmmword_228397F40;
    sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
    v64 = v5;
    v65 = swift_allocObject();
    *(v65 + 16) = v134;
    v66 = type metadata accessor for MedicationSourceListNoneItem();
    v67 = swift_allocObject();
    type metadata accessor for MedicationSourceListNoneCell(0);
    v67[2] = sub_22838FBB0();
    v67[3] = v68;
    sub_22838F490();
    v69 = sub_22838F450();
    v71 = v70;
    v72 = *(v64 + 8);
    v72(v7, v4);
    v67[4] = v69;
    v67[5] = v71;
    *(v65 + 56) = v66;
    *(v65 + 64) = sub_2282B9560(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem, &unk_2283A0CA0);
    *(v65 + 32) = v67;
    sub_22838F490();
    sub_22838F450();
    v72(v7, v4);
    v73 = v136;
    sub_22838FED0();
    sub_22838FF50();
    goto LABEL_60;
  }

  v135 = v7;
  *&v134 = v4;
  v9 = v8;
  v10 = [v8 orderedAppSources];
  sub_22817A958(0, &qword_27D824A00, 0x277D12AC0);
  v11 = sub_2283921A0();

  v12 = [v9 orderedUninstalledAppSources];
  v13 = sub_2283921A0();

  v137 = v11;
  sub_2281D5E8C(v13);
  v14 = v137;
  v15 = [v9 orderedResearchStudySources];
  v16 = sub_2283921A0();

  v126 = v9;
  v17 = [v9 orderedDeviceSources];
  v18 = sub_2283921A0();

  v19 = v14;
  if (v14 >> 62)
  {
    v92 = v14;
    v20 = sub_2283930D0();
    v19 = v92;
  }

  else
  {
    v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  v127 = v5;
  v132 = v16;
  v133 = v18;
  if (v20)
  {
    v22 = v19;
    v137 = MEMORY[0x277D84F90];
    result = sub_228393240();
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    v24 = objc_opt_self();
    v25 = 0;
    v26 = v22;
    v128 = v22 & 0xC000000000000001;
    v129 = v24;
    v130 = v20;
    v131 = v22;
    do
    {
      if (v128)
      {
        v32 = MEMORY[0x22AAB6D80](v25, v26);
      }

      else
      {
        v32 = v26[v25 + 4];
      }

      v33 = v32;
      v34 = [v32 source];
      v35 = sub_2282B8DCC(v34);

      v36 = [v129 tertiarySystemBackgroundColor];
      type metadata accessor for MedicationSourceListToggleItem(0);
      v37 = swift_allocObject();
      *(v37 + qword_27D8251F8 + 8) = 0;
      v38 = swift_unknownObjectWeakInit();
      *(v37 + qword_27D825200) = 0;
      *(v37 + qword_27D825208) = v33;
      *(v37 + qword_27D8251F0) = v35 == 2;
      *(v38 + 8) = &off_283B6BAB8;
      swift_unknownObjectWeakAssign();
      v39 = v33;
      v40 = [v39 icon];
      v27 = v40;
      if (!v40)
      {
        sub_22838FAC0();
        v41 = sub_22838FAB0();
        if (!v41)
        {
          v41 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        }

        v27 = v41;
      }

      ++v25;
      v28 = v40;
      v29 = v27;
      v30 = [v39 source];
      v31 = [v30 name];

      sub_228392000();
      sub_2283901A0();

      sub_228393210();
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v26 = v131;
    }

    while (v130 != v25);

    v2 = v136;
    v128 = v137;
    v5 = v127;
    v16 = v132;
    v18 = v133;
    v21 = MEMORY[0x277D84F90];
    if (!(v132 >> 62))
    {
LABEL_16:
      v42 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        goto LABEL_17;
      }

LABEL_31:

      v61 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }
  }

  else
  {

    v128 = MEMORY[0x277D84F90];
    if (!(v16 >> 62))
    {
      goto LABEL_16;
    }
  }

  v42 = sub_2283930D0();
  if (!v42)
  {
    goto LABEL_31;
  }

LABEL_17:
  v137 = v21;
  result = sub_228393240();
  if (v42 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v43 = objc_opt_self();
  v44 = 0;
  v45 = v16;
  v129 = (v16 & 0xC000000000000001);
  v130 = v43;
  v131 = v42;
  do
  {
    if (v129)
    {
      v51 = MEMORY[0x22AAB6D80](v44, v45);
    }

    else
    {
      v51 = *(v45 + 8 * v44 + 32);
    }

    v52 = v51;
    v53 = [v51 source];
    v54 = sub_2282B8DCC(v53);

    v55 = [v130 tertiarySystemBackgroundColor];
    type metadata accessor for MedicationSourceListToggleItem(0);
    v56 = swift_allocObject();
    *(v56 + qword_27D8251F8 + 8) = 0;
    v57 = swift_unknownObjectWeakInit();
    *(v56 + qword_27D825200) = 0;
    *(v56 + qword_27D825208) = v52;
    *(v56 + qword_27D8251F0) = v54 == 2;
    *(v57 + 8) = &off_283B6BAB8;
    swift_unknownObjectWeakAssign();
    v58 = v52;
    v59 = [v58 icon];
    v46 = v59;
    if (!v59)
    {
      sub_22838FAC0();
      v60 = sub_22838FAB0();
      if (!v60)
      {
        v60 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      v46 = v60;
    }

    v44 = (v44 + 1);
    v47 = v59;
    v48 = v46;
    v49 = [v58 source];
    v50 = [v49 name];

    sub_228392000();
    sub_2283901A0();

    sub_228393210();
    sub_228393250();
    sub_228393260();
    sub_228393220();
    v45 = v132;
  }

  while (v131 != v44);

  v2 = v136;
  v61 = v137;
  v5 = v127;
  v18 = v133;
  v21 = MEMORY[0x277D84F90];
LABEL_32:
  v125 = v61;
  if (!(v18 >> 62))
  {
    v74 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74)
    {
      goto LABEL_34;
    }

LABEL_43:

    v91 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v74 = sub_2283930D0();
  if (!v74)
  {
    goto LABEL_43;
  }

LABEL_34:
  v137 = v21;
  result = sub_228393240();
  if (v74 < 0)
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v75 = type metadata accessor for MedicationSourceListCell(0);
  v76 = 0;
  v131 = *(v2 + qword_27D827118);
  v132 = v75;
  v77 = *(v2 + qword_27D827120);
  v78 = v18;
  v129 = (v18 & 0xC000000000000001);
  v130 = v77;
  v79 = (v5 + 8);
  do
  {
    v90 = v74;
    if (v129)
    {
      v80 = MEMORY[0x22AAB6D80](v76);
    }

    else
    {
      v80 = *(v78 + 8 * v76 + 32);
    }

    v81 = v80;
    ++v76;
    type metadata accessor for MedicationSourceListItem();
    v82 = swift_allocObject();
    v83 = v131;
    v84 = v130;
    v82[5] = sub_22838FBB0();
    v82[6] = v85;
    v86 = v135;
    sub_22838F490();
    v87 = sub_22838F450();
    v89 = v88;
    (*v79)(v86, v134);
    v82[7] = v87;
    v82[8] = v89;
    v82[2] = v83;
    v82[3] = v81;
    v82[4] = v84;
    sub_228393210();
    sub_228393250();
    sub_228393260();
    sub_228393220();
    v74 = v90;
    v78 = v133;
  }

  while (v90 != v76);

  v91 = v137;
  v5 = v127;
LABEL_44:
  sub_2282B90F4(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v133 = *(*(sub_22838FEF0() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_228398270;
  v93 = v128;
  if (v128 >> 62)
  {
    if (sub_2283930D0())
    {
      goto LABEL_46;
    }
  }

  else if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_46:
    sub_22819665C(v93);

    v94 = v134;
    v95 = v135;
    goto LABEL_49;
  }

  sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_228397F40;
  v97 = type metadata accessor for MedicationSourceListNoneItem();
  v98 = swift_allocObject();
  type metadata accessor for MedicationSourceListNoneCell(0);
  v98[2] = sub_22838FBB0();
  v98[3] = v99;
  v95 = v135;
  sub_22838F490();
  v100 = sub_22838F450();
  v102 = v101;
  v94 = v134;
  (*(v127 + 8))(v95, v134);
  v98[4] = v100;
  v98[5] = v102;
  v5 = v127;
  *(v96 + 56) = v97;
  *(v96 + 64) = sub_2282B9560(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem, &unk_2283A0CA0);
  *(v96 + 32) = v98;
LABEL_49:
  sub_22838F490();
  sub_22838F450();
  v103 = *(v5 + 8);
  v103(v95, v94);
  sub_22838FED0();
  v104 = v125;
  v105 = v95;
  if (v125 >> 62)
  {
    if (sub_2283930D0())
    {
      goto LABEL_51;
    }
  }

  else if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_51:
    sub_22819665C(v104);

    goto LABEL_54;
  }

  sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_228397F40;
  v107 = type metadata accessor for MedicationSourceListNoneItem();
  v108 = swift_allocObject();
  type metadata accessor for MedicationSourceListNoneCell(0);
  v108[2] = sub_22838FBB0();
  v108[3] = v109;
  sub_22838F490();
  v110 = sub_22838F450();
  v112 = v111;
  v103(v135, v134);
  v108[4] = v110;
  v108[5] = v112;
  *(v106 + 56) = v107;
  *(v106 + 64) = sub_2282B9560(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem, &unk_2283A0CA0);
  *(v106 + 32) = v108;
  v105 = v135;
  v94 = v134;
LABEL_54:
  sub_22838F490();
  sub_22838F450();
  v103(v105, v94);
  sub_22838FED0();
  if (v91 >> 62)
  {
    if (sub_2283930D0())
    {
      goto LABEL_56;
    }

LABEL_58:

    sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_228397F40;
    v115 = type metadata accessor for MedicationSourceListNoneItem();
    v116 = swift_allocObject();
    type metadata accessor for MedicationSourceListNoneCell(0);
    v116[2] = sub_22838FBB0();
    v116[3] = v117;
    sub_22838F490();
    v118 = sub_22838F450();
    v120 = v119;
    v113 = v134;
    v103(v135, v134);
    v116[4] = v118;
    v116[5] = v120;
    *(v114 + 56) = v115;
    *(v114 + 64) = sub_2282B9560(&qword_27D826AF8, type metadata accessor for MedicationSourceListNoneItem, &unk_2283A0CA0);
    *(v114 + 32) = v116;
    v105 = v135;
    goto LABEL_59;
  }

  if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_58;
  }

LABEL_56:
  sub_2281966A4(v91);

  v113 = v134;
LABEL_59:
  sub_22838F490();
  sub_22838F450();
  v103(v105, v113);
  sub_22838FED0();
  v73 = v136;
  sub_22838FF50();

LABEL_60:

  v121 = *(v73 + qword_27D827140);
  if (v121)
  {
    v122 = *(v73 + qword_27D827140 + 8);

    v121(v123);
    return sub_228176EC8(v121, v122);
  }

  return result;
}

uint64_t sub_2282B8DCC(void *a1)
{
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + qword_27D827138);
  if (*(v7 + 16))
  {

    v8 = sub_2281A7870(a1);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      return v10;
    }
  }

  sub_228391190();
  v12 = a1;
  v13 = sub_2283911A0();
  v14 = sub_2283925C0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v3;
    v24 = v17;
    v18 = v17;
    *v15 = 136315394;
    v19 = sub_228393600();
    v21 = sub_2281C96FC(v19, v20, &v24);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v12;
    v22 = v12;
    _os_log_impl(&dword_22816B000, v13, v14, "[%s] Concept authorization status for %@ not found in cache", v15, 0x16u);
    sub_2282B9318(v16, sub_2281933B0);
    MEMORY[0x22AAB7B80](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAB7B80](v18, -1, -1);
    MEMORY[0x22AAB7B80](v15, -1, -1);

    (*(v4 + 8))(v6, v23);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t sub_2282B905C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_2282B7D58(v3);
}

void sub_2282B90F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2282B9158(uint64_t a1)
{
  if (!qword_27D827170)
  {
    sub_22817A958(255, &qword_27D824258, 0x277CCD4B0);
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827170);
    }
  }
}

char *sub_2282B9240(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_2283930D0();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_228176F04(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_2282B9318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282B9378(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D827128) = 0;
  *(v3 + qword_27D827138) = MEMORY[0x277D84F98];
  v10 = (v3 + qword_27D827140);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + qword_27D827118) = a1;
  *(v3 + qword_27D827120) = a2;
  v11 = objc_allocWithZone(MEMORY[0x277CCD060]);
  v12 = a1;
  v13 = [v11 initWithHealthStore_];
  *(v3 + qword_27D827130) = v13;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v18, "MutableArray<");
  HIWORD(v18[1]) = -4864;
  sub_22838F490();
  v14 = sub_22838F450();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x22AAB5C80](v14, v16);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  return sub_22838FF30();
}

uint64_t sub_2282B9560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2282B95A8(uint64_t a1)
{
  if (!qword_27D827178)
  {
    sub_2282B9628(255);
    sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v1 = sub_228392350();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827178);
    }
  }
}

void sub_2282B9628(uint64_t a1)
{
  if (!qword_27D827180)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v1 = sub_228391F40();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827180);
    }
  }
}

uint64_t sub_2282B9714(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22827C388();
  result = MEMORY[0x22AAB6030](v2, &type metadata for ScheduledDoseIdentifier, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_2282D6520(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t *sub_2282B97D0(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v12 = sub_22817A958(0, a2, a3);
    v13 = sub_2281A89C4(a4, a2, a3);
    result = MEMORY[0x22AAB6030](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AAB6D80](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_2283930D0();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2282B9928(uint64_t a1)
{
  if (sub_2283930D0())
  {
    sub_22829BC4C(0);
    v1 = sub_228393360();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v19 = v1;
  sub_2283932B0();
  swift_unknownObjectRetain();
  v2 = sub_2283932E0();
  if (v2)
  {
    v3 = v2;
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    v4 = v3;
    do
    {
      v17 = v4;
      swift_dynamicCast();
      sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
      swift_dynamicCast();
      v11 = [v17 integerValue];

      v12 = *(v1 + 16);
      if (*(v1 + 24) <= v12)
      {
        sub_22829A680(v12 + 1, 1);
      }

      v1 = v19;
      result = sub_228392C50();
      v6 = v19 + 64;
      v7 = -1 << *(v19 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = 0;
        v14 = (63 - v7) >> 6;
        do
        {
          if (++v9 == v14 && (v13 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v15 = v9 == v14;
          if (v9 == v14)
          {
            v9 = 0;
          }

          v13 |= v15;
          v16 = *(v6 + 8 * v9);
        }

        while (v16 == -1);
        v10 = __clz(__rbit64(~v16)) + (v9 << 6);
      }

      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v19 + 48) + 8 * v10) = v18;
      *(*(v19 + 56) + 8 * v10) = v11;
      ++*(v19 + 16);
      v4 = sub_2283932E0();
    }

    while (v4);
  }

  return v1;
}

void sub_2282B9B8C(uint64_t a1)
{
  if (!qword_27D8270D0)
  {
    sub_22817A958(255, &unk_280DDB968, 0x277CCD8A8);
    v1 = sub_228391E70();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8270D0);
    }
  }
}

void sub_2282B9BF4(uint64_t a1)
{
  if (!qword_27D827188)
  {
    sub_22817A958(255, &unk_280DDB968, 0x277CCD8A8);
    v1 = sub_228391EC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827188);
    }
  }
}

uint64_t sub_2282B9C5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22819DA1C;

  return sub_2282B571C(a1);
}

void sub_2282B9CF8(uint64_t a1)
{
  if (!qword_27D827190)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v1 = sub_2283924D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827190);
    }
  }
}

uint64_t sub_2282B9D8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22819D87C;

  return sub_2282B58B0(a1);
}

char *sub_2282B9E3C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView);
  }

  else
  {
    v4 = sub_2281E99A4(*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView_severityLevel));
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1144750080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v5];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282B9EDC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v13 = sub_228392000();
    v14 = v7;
    v8 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001FLL, 0x80000002283B1AE0);

    MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B1B00);

    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    [v8 setNumberOfLines_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_2282BA0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView_severityLevel] = a1;
  v4 = &v3[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView_interactionContent];
  *v4 = a2;
  *(v4 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for InteractionDetailEducationView();
  v5 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = sub_2282B9E3C();
  [v5 addSubview_];

  v7 = sub_2282B9EDC();
  [v5 addSubview_];

  v8 = *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel];
  v9 = sub_228391FC0();
  [v8 setText_];

  sub_2282BA308();
  return v5;
}

id InteractionDetailEducationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InteractionDetailEducationView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2282BA308()
{
  v27 = objc_opt_self();
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399E10;
  v2 = sub_2282B9E3C();
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___severityLevelView] leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] bottomAnchor];
  v14 = sub_2282B9EDC();
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-8.0];
  *(v1 + 56) = v16;
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel;
  v18 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI30InteractionDetailEducationView____lazy_storage___interactionContentLabel] leadingAnchor];
  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v1 + 64) = v20;
  v21 = [*&v0[v17] trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v1 + 72) = v23;
  v24 = [*&v0[v17] bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v1 + 80) = v26;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v28 = sub_228392190();

  [v27 activateConstraints_];
}

id InteractionDetailEducationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionDetailEducationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionDetailEducationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationStrengthsDataSource(uint64_t a1)
{
  result = qword_27D8271C0;
  if (!qword_27D8271C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282BA860(uint64_t a1)
{
  result = sub_228390C30();
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

void *sub_2282BA900(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    sub_228390040();
    v9 = sub_2283900C0();
    (*(v5 + 8))(v7, v4);
    [v9 contentInsets];
    [v9 setContentInsets_];
    [v9 contentInsets];
    [v9 setContentInsets_];
    return v9;
  }

  if (a1)
  {
    sub_228390040();
    v9 = sub_2283900C0();
    (*(v5 + 8))(v7, v4);
    return v9;
  }

  return sub_22833C758(0, a2);
}

void *sub_2282BAA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2282BC7D4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = (v3 + qword_27D828E28);
  v27 = sub_228392000();
  v28 = v12;

  MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B1C30);

  v13 = v28;
  *v11 = v27;
  v11[1] = v13;
  v14 = qword_27D8271B8;
  v15 = sub_228390C30();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v4 + v14, a3, v15);
  sub_2282BC8D4(a1, v10, type metadata accessor for MedicationSearchItem);
  v17 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);

  v18 = sub_228340F30(v10, a2);

  v19 = sub_2282BAE24();
  v20 = v19;
  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x22AAB6D80](0, v20);
    goto LABEL_6;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);
LABEL_6:
    v23 = v22;

    v24 = sub_2282BAE24();
    if (v24 >> 62)
    {
      v25 = sub_2283930D0();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25 == 1)
    {
      v28 = 0;
      v29 = 0;
      v27 = v23;
      v30 = 0;
      v26 = v23;
      sub_228391850();

      (*(v16 + 8))(a3, v15);
      sub_2282BC93C(a1, type metadata accessor for MedicationSearchItem);

      return v18;
    }

LABEL_13:

    (*(v16 + 8))(a3, v15);
    sub_2282BC93C(a1, type metadata accessor for MedicationSearchItem);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_2282BAE24()
{
  v1 = sub_228390FB0();
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_228390B70();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  sub_2282BC7D4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for MedicationSearchItem.Source(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  sub_228181FB4(v0 + qword_27D828B70, v12);
  v22 = type metadata accessor for MedicationSearchItem(0);
  if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
  {
    sub_228287628(v12);
  }

  else
  {
    v28 = v1;
    sub_2282BC8D4(v12, v19, type metadata accessor for MedicationSearchItem.Source);
    sub_2282BC93C(v12, type metadata accessor for MedicationSearchItem);
    sub_2282BC99C(v19, v21);
    sub_2282BC8D4(v21, v16, type metadata accessor for MedicationSearchItem.Source);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v29;
      v24 = v16;
      v25 = v30;
      (*(v29 + 32))(v9, v24, v30);
      (*(v23 + 16))(v7, v9, v25);
      sub_228390FC0();
      sub_228390F90();
      swift_getKeyPath();
      v26 = sub_228392200();

      (*(v31 + 8))(v3, v28);
      (*(v23 + 8))(v9, v25);
      sub_2282BC93C(v21, type metadata accessor for MedicationSearchItem.Source);
      return v26;
    }

    sub_2282BC93C(v16, type metadata accessor for MedicationSearchItem.Source);
    sub_2282BC93C(v21, type metadata accessor for MedicationSearchItem.Source);
  }

  return MEMORY[0x277D84F90];
}

void *sub_2282BB27C(unint64_t a1, uint64_t a2)
{
  result = sub_22833C758(a1, a2);
  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      if (!result)
      {
        return result;
      }

      v8 = result;
      v7 = result;
      [v7 contentInsets];
      [v7 setContentInsets_];
    }

    else
    {
      v5 = result;
      v6 = sub_2282BA900(a1, a2);
      v7 = v5;
      v8 = v6;
    }

    return v8;
  }

  return result;
}

void *sub_2282BB30C()
{
  v20 = *v0;
  v21 = v0;
  v1 = sub_2282BAE24();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v26 = MEMORY[0x277D84F90];
      result = sub_2281C9DB4(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v26;
      v18 = v2 & 0xFFFFFFFFFFFFFF8;
      v19 = v2 & 0xC000000000000001;
      while (1)
      {
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v19)
        {
          v8 = MEMORY[0x22AAB6D80](v5, v2);
        }

        else
        {
          if (v5 >= *(v18 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        v22 = v8;
        sub_2282BB56C(&v22, v21, v23);

        v26 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2281C9DB4((v10 > 1), v11 + 1, 1);
        }

        v12 = v24;
        v13 = v25;
        v14 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
        MEMORY[0x28223BE20](v14);
        v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v16);
        sub_2282E841C(v11, v16, &v26, v12, v13);
        __swift_destroy_boxed_opaque_existential_0(v23);
        v6 = v26;
        ++v5;
        if (v7 == v3)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v3 = sub_2283930D0();
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2282BB56C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v75 = a4;
  v6 = sub_228390460();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v74 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2282BC7D4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v56 - v10;
  v11 = sub_22838FFC0();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v71 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228391220();
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x28223BE20](v13);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282BC7D4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v8);
  MEMORY[0x28223BE20](v15 - 8);
  v60 = &v56 - v16;
  v64 = sub_228391250();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_228391590();
  v57 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  sub_228391520();
  sub_228392E80();
  sub_228391540();
  v62 = objc_opt_self();
  v22 = [v62 labelColor];
  v83 = v20;
  v23 = sub_228391450();
  sub_228391420();
  v23(&v78, 0);
  v70 = a2;
  sub_228391870();
  v24 = v81;
  if (v81 == 255)
  {
    goto LABEL_4;
  }

  v25 = v79;
  v26 = v80;
  if (v81)
  {
    sub_2281CCAC8(v78, v79, v80, v81);
LABEL_4:
    v27 = 0;
    goto LABEL_6;
  }

  v28 = v78;
  v27 = [v78 identifier];
  sub_2281CCAC8(v28, v25, v26, v24);
LABEL_6:
  v29 = [v21 identifier];
  v30 = v29;
  if (v27)
  {
    if (v29)
    {
      sub_2282BC888();
      sub_228392C60();
    }
  }

  else if (v29)
  {
  }

  v78 = sub_228393600();
  v79 = v31;
  MEMORY[0x22AAB5C80](0x74676E657274735FLL, 0xE900000000000068);
  v32 = sub_228392E40();
  MEMORY[0x22AAB5C80](v32);

  v59 = v78;
  v58 = v79;
  v81 = v18;
  v82 = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
  v34 = v57;
  (*(v57 + 16))(boxed_opaque_existential_1, v83, v18);
  sub_2282BC7D4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_2283912F0();
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v35 = sub_228391230();
  (*(*(v35 - 8) + 56))(v60, 1, 1, v35);
  v36 = v61;
  sub_228391240();
  v37 = v65;
  v38 = v66;
  v39 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x277D74A98], v67);
  sub_2283912E0();
  (*(v38 + 8))(v37, v39);
  (*(v63 + 8))(v36, v64);
  v40 = swift_allocObject();
  v41 = v70;
  swift_weakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v21;
  v67 = v18;
  v43 = v71;
  *v71 = 1;
  (*(v68 + 104))(v43, *MEMORY[0x277D10F90], v69);

  v44 = v21;
  v45 = v76;
  sub_228391390();
  v46 = [v62 secondarySystemBackgroundColor];
  sub_228391370();
  v47 = sub_2283913A0();
  (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
  v49 = *(v41 + qword_27D828E28);
  v48 = *(v41 + qword_27D828E28 + 8);
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v77, ".StrengthCell.");
  HIBYTE(v77[1]) = -18;
  v50 = sub_228392E80();
  MEMORY[0x22AAB5C80](v50);

  v51 = v77[0];
  v52 = v77[1];
  v77[0] = v49;
  v77[1] = v48;

  MEMORY[0x22AAB5C80](v51, v52);

  (*(v72 + 104))(v74, *MEMORY[0x277D11140], v73);
  v53 = sub_228390170();
  v54 = v75;
  v75[3] = v53;
  v54[4] = sub_2282BC840(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  __swift_allocate_boxed_opaque_existential_1(v54);
  sub_228390160();
  (*(v34 + 8))(v83, v67);
}

uint64_t sub_2282BBF08(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t sub_2282BBFA8()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391870();
  v4 = v24;
  if (v24 == 255)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v21;
  v6 = v22;
  v7 = v23;
  if ((v24 & 1) != 0 || (v8 = sub_228392E60()) == 0)
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = v8;
    v10 = sub_228392E90();
    v20 = v6;
    v11 = v10;
    v13 = v12;

    sub_2282BC7D4(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_228397F40;
    v19 = sub_2283408CC(v11, v13);

    v21 = 0x74497265746F6F46;
    v22 = 0xEB000000005F6D65;
    sub_22838F490();
    v15 = sub_22838F450();
    v17 = v16;
    (*(v1 + 8))(v3, v0);
    MEMORY[0x22AAB5C80](v15, v17);
    v6 = v20;

    *(v14 + 56) = sub_228390330();
    *(v14 + 64) = sub_2282BC840(&qword_27D8258C8, MEMORY[0x277D110D8], MEMORY[0x277D110D0]);
    __swift_allocate_boxed_opaque_existential_1((v14 + 32));
    sub_228390310();
  }

  sub_2281CCAC8(v5, v6, v7, v4);
  return v14;
}

uint64_t sub_2282BC22C()
{
  sub_228390120();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for CustomStrengthOptionCell();
  sub_2282BC840(&qword_27D8271D8, type metadata accessor for CustomStrengthOptionCell, &unk_2283A426C);
  return sub_2283926B0();
}

uint64_t sub_2282BC304()
{
  sub_2282BC7D4(0, &qword_280DDB8D0, sub_22817A700, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F40;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v1 = sub_22838F0C0();
  v3 = v2;
  v4 = sub_22838F0C0();
  v6 = v5;
  v7 = swift_allocObject();
  swift_weakInit();
  *(v0 + 56) = &type metadata for CustomStrengthOptionItem;
  *(v0 + 64) = sub_2282BC780();
  v8 = swift_allocObject();
  *(v0 + 32) = v8;
  type metadata accessor for CustomStrengthOptionCell();
  sub_2282BC840(&qword_27D8271D8, type metadata accessor for CustomStrengthOptionCell, &unk_2283A426C);
  v8[8] = sub_22838FBB0();
  v8[9] = v9;
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v6;
  v8[6] = sub_2282BC778;
  v8[7] = v7;
  return v0;
}

uint64_t sub_2282BC520(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_228391850();
  }

  return result;
}

uint64_t sub_2282BC5DC()
{
  v1 = qword_27D8271B8;
  v2 = sub_228390C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_2282BC658()
{
  v0 = sub_22838FFB0();

  sub_228287628(v0 + qword_27D828B70);

  v1 = qword_27D8271B8;
  v2 = sub_228390C30();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_2282BC780()
{
  result = qword_27D8271D0;
  if (!qword_27D8271D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8271D0);
  }

  return result;
}

void sub_2282BC7D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282BC840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2282BC888()
{
  result = qword_27D823BE0;
  if (!qword_27D823BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D823BE0);
  }

  return result;
}

uint64_t sub_2282BC8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282BC93C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282BC99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationSearchItem.Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2282BCA40(uint64_t *a1, uint64_t (*a2)(void))
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

void sub_2282BCAA0()
{
  v1 = sub_2282BCA00();
  [v0 addSubview_];

  v2 = sub_2282BCA20();
  [v0 addSubview_];

  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___titleLabel;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___formStrengthLabel;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___formStrengthLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [*&v0[v3] topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:30.0];

  [v7 setActive_];
  v8 = [*&v0[v3] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 &selRef_resignFirstResponder + 6];

  [v10 setActive_];
  v11 = [*&v0[v3] trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  [v13 setActive_];
  v14 = [*&v0[v4] topAnchor];
  v15 = [*&v0[v3] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:4.0];

  [v16 setActive_];
  v17 = [*&v0[v4] leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:4.0];

  [v19 setActive_];
  v20 = [*&v0[v4] trailingAnchor];
  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  [v22 setActive_];
  v23 = [*&v0[v4] bottomAnchor];
  v24 = [v0 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-20.0];

  [v25 setActive_];
}

uint64_t sub_2282BCFBC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282BDAA8(0, &qword_27D827218, type metadata accessor for MedicationLogDetailsHeaderItem);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for MedicationLogDetailsHeaderItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v13, v30);
  if (v31)
  {
    sub_22817A700();
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_2282BDB58(v8, v12);
      v15 = sub_2282BCA00();
      v16 = sub_228391FC0();
      [v15 setText_];

      v17 = sub_2282BCA20();
      v18 = sub_228391FC0();
      [v17 setText_];

      return sub_2282BDBBC(v12);
    }
  }

  else
  {
    sub_2282BDAFC(v30, &qword_280DDCD50, sub_22817A700);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_2282BDAFC(v8, &qword_27D827218, type metadata accessor for MedicationLogDetailsHeaderItem);
  sub_228391150();
  v20 = v1;
  v21 = sub_2283911A0();
  v22 = sub_2283925C0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    sub_22817E6C8(v1 + v13, v30);
    sub_2282BDAA8(0, &qword_280DDCD50, sub_22817A700);
    v25 = sub_228392040();
    v27 = sub_2281C96FC(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22816B000, v21, v22, "Incorrect view model for MedicationLogDetailsHeaderItem: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAB7B80](v24, -1, -1);
    MEMORY[0x22AAB7B80](v23, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_2282BD400()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationLogDetailsHeader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationLogDetailsHeaderItem(uint64_t a1)
{
  result = qword_27D8271F8;
  if (!qword_27D8271F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282BD538(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2282BD5B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_2282BD60C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_2282BCFBC();
  return sub_2282BDAFC(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2282BD698(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_2282BD700;
}

uint64_t sub_2282BD700(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282BCFBC();
  }

  return result;
}

uint64_t sub_2282BD750(int *a1)
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2282BD7C8(uint64_t a1, int *a2)
{
  sub_2283920B0();
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t sub_2282BD838(uint64_t a1, int *a2)
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2282BD8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (v10 || (v11 = sub_228393460(), result = 0, (v11 & 1) != 0))
  {
    v13 = *(a3 + 28);
    v14 = *(a1 + v13);
    v15 = *(a1 + v13 + 8);
    v16 = (a2 + v13);
    if (v14 == *v16 && v15 == v16[1])
    {
      return 1;
    }

    else
    {

      return sub_228393460();
    }
  }

  return result;
}

unint64_t sub_2282BD958()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000015;
}

uint64_t sub_2282BD9D8(uint64_t a1)
{
  v2 = sub_2282BDC18(&qword_27D827220, &unk_2283A1DD8);

  return MEMORY[0x282169440](a1, v2);
}

void sub_2282BDAA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2282BDAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282BDAA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282BDB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsHeaderItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282BDBBC(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsHeaderItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2282BDC18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationLogDetailsHeaderItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2282BDC5C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  v11 = sub_228392000();
  v12 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B1CB0);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTextAlignment_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle_];
  v7 = [v6 fontDescriptor];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    v9 = v8;
    [v6 pointSize];
    v10 = [v5 fontWithDescriptor:v9 size:?];

    [v3 setFont_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2282BDEC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setNumberOfLines_];
  v7 = sub_228392000();
  v8 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B1CB0);

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283B1CD0);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  return v2;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2282BE0D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = [v2 medication];
  v4 = [v3 semanticIdentifier];

  v5 = [v4 description];
  v6 = sub_228392000();
  v8 = v7;

  MEMORY[0x22AAB5C80](v6, v8);

  [v2 interactionType];
  type metadata accessor for HKDismissedPregnancyLactationInteractionType(0);
  v9 = sub_228392020();
  v11 = v10;

  MEMORY[0x22AAB5C80](v9, v11);

  return v1;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.showMoreAction.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.dismissAction.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void *PregnancyLactationInteractionCriticalAlertItem.__allocating_init(interaction:showMoreAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_2282BE910(&qword_27D827228, 255, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell, &protocol conformance descriptor for PregnancyLactationInteractionCriticalAlertCell);
  v11 = sub_22838FBB0();
  v10[2] = a1;
  v10[3] = v11;
  v10[4] = v12;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;
  v10[8] = a5;
  return v10;
}

void *PregnancyLactationInteractionCriticalAlertItem.init(interaction:showMoreAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_2282BE910(&qword_27D827228, 255, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell, &protocol conformance descriptor for PregnancyLactationInteractionCriticalAlertCell);
  v11 = sub_22838FBB0();
  v5[2] = a1;
  v5[3] = v11;
  v5[4] = v12;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  v5[8] = a5;
  return v5;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.deinit()
{

  return v0;
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2282BE488()
{
  sub_228393520();
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2282BE544(uint64_t a1)
{
  sub_228393520();
  v2 = *(*v1 + 16);
  sub_228392C70();

  return sub_228393570();
}

uint64_t sub_2282BE5B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t PregnancyLactationInteractionCriticalAlertItem.deselectionBehavior(in:)(uint64_t a1)
{
  type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
  sub_2282BE910(&qword_27D827230, v1, type metadata accessor for PregnancyLactationInteractionCriticalAlertItem, &protocol conformance descriptor for PregnancyLactationInteractionCriticalAlertItem);
  return sub_22838FE80();
}

BOOL _s19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2281A2270();
  v4 = *(a1 + 16);
  v5 = [v4 medication];
  v6 = [v5 semanticIdentifier];

  v7 = *(a2 + 16);
  v8 = [v7 medication];
  v9 = [v8 semanticIdentifier];

  v10 = sub_228392C60();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = [v4 interactionType];
  return v11 == [v7 interactionType];
}

uint64_t sub_2282BE910(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *InteractionFactorsItem.__allocating_init(factors:analyticsManager:roomType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  type metadata accessor for InteractionFactorsCell();
  sub_2282BF08C(&qword_27D825F60, 255, type metadata accessor for InteractionFactorsCell, &protocol conformance descriptor for InteractionFactorsCell);
  v7 = sub_22838FBB0();
  v6[2] = a1;
  v6[3] = v7;
  v6[4] = v8;
  v6[5] = a2;
  v6[6] = a3;
  return v6;
}

uint64_t InteractionFactorsItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *InteractionFactorsItem.init(factors:analyticsManager:roomType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for InteractionFactorsCell();
  sub_2282BF08C(&qword_27D825F60, 255, type metadata accessor for InteractionFactorsCell, &protocol conformance descriptor for InteractionFactorsCell);
  v7 = sub_22838FBB0();
  v3[2] = a1;
  v3[3] = v7;
  v3[4] = v8;
  v3[5] = a2;
  v3[6] = a3;
  return v3;
}

uint64_t static InteractionFactorsItem.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282BEBDC(uint64_t a1)
{
  sub_2283920B0();
  v2 = *(v1 + 16);
  result = MEMORY[0x22AAB70D0](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x22AAB70D0](v6);
      --v4;
    }

    while (v4);
  }

  return result;
}

void *InteractionFactorsItem.deinit()
{

  return v0;
}

uint64_t InteractionFactorsItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2282BECB8()
{
  sub_228393520();
  sub_2283920B0();
  v1 = *(v0 + 16);
  MEMORY[0x22AAB70D0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x22AAB70D0](v4);
      --v2;
    }

    while (v2);
  }

  return sub_228393570();
}

uint64_t sub_2282BEDB0(uint64_t a1)
{
  sub_228393520();
  v2 = *v1;
  sub_2283920B0();
  v3 = *(v2 + 16);
  MEMORY[0x22AAB70D0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x22AAB70D0](v6);
      --v4;
    }

    while (v4);
  }

  return sub_228393570();
}

uint64_t sub_2282BEE2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

void sub_2282BEE90(void *a1)
{
  v2 = type metadata accessor for InteractionFactorsViewController(0);
  v3 = objc_allocWithZone(v2);
  v4 = &v3[qword_27D826060];
  v10 = sub_228392000();
  v11 = v5;

  MEMORY[0x22AAB5C80](0xD000000000000029, 0x80000002283AEED0);

  v6 = v11;
  *v4 = v10;
  v4[1] = v6;
  v9.receiver = v3;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCollectionViewLayout_, 0);
  v8 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v8 setModalPresentationStyle_];
  [v8 setModalInPresentation_];
  [a1 presentViewController:v8 animated:1 completion:0];

  sub_228390FE0();
}

uint64_t sub_2282BF08C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_2282BF198()
{
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_logDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MedicationsRecordAllButton();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2282BF41C();
  [v1 addTarget:v1 action:sel_didTapRecord_ forControlEvents:64];
  sub_2282C16E0(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
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

  return v1;
}

void sub_2282BF31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2282BF878();
  }
}

uint64_t sub_2282BF41C()
{
  sub_2282C16E0(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v25 - v1;
  v3 = sub_228392D80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228392CC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228392DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228392DC0();
  (*(v8 + 104))(v10, *MEMORY[0x277D74FD8], v7);
  sub_228392CD0();
  (*(v4 + 104))(v6, *MEMORY[0x277D75030], v3);
  sub_228392CB0();
  v15 = objc_opt_self();
  v16 = [v15 systemBlueColor];
  sub_228392D60();
  v17 = [v15 secondarySystemGroupedBackgroundColor];
  sub_228392D50();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392DB0();
  (*(v12 + 16))(v2, v14, v11);
  (*(v12 + 56))(v2, 0, 1, v11);
  v18 = v25[1];
  sub_228392E10();
  [v18 setRole_];
  v19 = [v18 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 setTextAlignment_];
  }

  v21 = [v18 titleLabel];
  if (v21)
  {
    v22 = v21;
    [v21 setAdjustsFontForContentSizeCategory_];
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v23) = 1144750080;
  [v18 setContentHuggingPriority:0 forAxis:v23];
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2282BF878()
{
  v1 = v0;
  sub_2282C16E0(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  sub_228392E00();
  v8 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel];
  if (v8)
  {
    v9 = sub_228392DE0();
    if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
    {
      v10 = objc_opt_self();

      v11 = [v10 systemBlueColor];
      v12 = v11;
      v13 = 0.5;
      if (*(v8 + 16))
      {
        v13 = 1.0;
      }

      v14 = [v11 colorWithAlphaComponent_];

      sub_228392D60();
    }
  }

  sub_2282C1744(v7, v5);
  sub_228392E10();
  [v1 setNeedsUpdateConfiguration];
  return sub_2282C17D8(v7, &qword_280DDB950, MEMORY[0x277D75058]);
}

void sub_2282BFA5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel);
  if (v1 && *(v1 + 16) == 1 && swift_unknownObjectWeakLoadStrong())
  {

    sub_2282D2B6C();

    swift_unknownObjectRelease();
  }
}

id sub_2282BFBF8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(type metadata accessor for MedicationsRecordAllButton()) init];
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

uint64_t sub_2282BFCAC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282C16E0(0, &unk_27D827288, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for MedicationDoseRecordAllItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell_item;
  swift_beginAccess();
  sub_2282C1618(&v1[v13], v30, sub_228181D50);
  if (v31)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_2282C156C(v8, v12);
      v15 = sub_2282BFBF8();
      v16 = &v12[*(v9 + 28)];
      swift_unknownObjectWeakLoadStrong();
      *&v15[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_logDelegate + 8] = *(v16 + 1);
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      v17 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton];
      *&v17[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel] = *&v12[*(v9 + 24)];
      swift_retain_n();
      v18 = v17;

      sub_2282BF878();

      return sub_2282C1680(v12, type metadata accessor for MedicationDoseRecordAllItem);
    }
  }

  else
  {
    sub_2282C1680(v30, sub_228181D50);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_2282C17D8(v8, &unk_27D827288, type metadata accessor for MedicationDoseRecordAllItem);
  sub_228391150();
  v20 = v1;
  v21 = sub_2283911A0();
  v22 = sub_2283925C0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    sub_2282C1618(&v1[v13], v30, sub_228181D50);
    sub_228181D50(0);
    v25 = sub_228392040();
    v27 = sub_2281C96FC(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22816B000, v21, v22, "Incorrect view model for MedicationDoseRecordAllItem: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAB7B80](v24, -1, -1);
    MEMORY[0x22AAB7B80](v23, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

char *sub_2282C0154(double a1, double a2, double a3, double a4)
{
  sub_2282C16E0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - v10;
  v12 = sub_2283913A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton] = 0;
  v16 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell_item];
  v17 = type metadata accessor for MedicationDoseRecordAllCell();
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v53.receiver = v4;
  v53.super_class = v17;
  v18 = objc_msgSendSuper2(&v53, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228391390();
  v19 = [objc_opt_self() clearColor];
  v20 = [v19 colorWithAlphaComponent_];

  sub_228391370();
  v21 = *(v13 + 16);
  v52 = v12;
  v21(v11, v15, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  MEMORY[0x22AAB6420](v11);
  v22 = [v18 contentView];
  v23 = sub_2282BFBF8();
  [v22 addSubview_];

  v24 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton;
  v25 = [*&v18[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell____lazy_storage___recordAllButton] topAnchor];
  v26 = [v18 contentView];
  v27 = [v26 topAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:30.0];
  [v28 setActive_];

  v29 = [*&v18[v24] heightAnchor];
  v30 = [v29 constraintGreaterThanOrEqualToConstant_];

  [v30 setActive_];
  v31 = [*&v18[v24] widthAnchor];
  v32 = [v31 constraintGreaterThanOrEqualToConstant_];

  [v32 setActive_];
  v33 = [*&v18[v24] leadingAnchor];
  v34 = [v18 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintGreaterThanOrEqualToAnchor_];
  [v36 setActive_];

  v37 = [*&v18[v24] trailingAnchor];
  v38 = [v18 contentView];
  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintLessThanOrEqualToAnchor_];
  [v40 setActive_];

  v41 = [*&v18[v24] bottomAnchor];
  v42 = [v18 contentView];
  v43 = [v42 bottomAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  [v44 setActive_];

  v45 = [*&v18[v24] centerXAnchor];
  v46 = [v18 contentView];

  v47 = [v46 safeAreaLayoutGuide];
  v48 = [v47 centerXAnchor];

  v49 = [v45 constraintEqualToAnchor_];
  [v49 setActive_];

  (*(v13 + 8))(v15, v52);
  return v18;
}

id sub_2282C0848(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2282C0918(uint64_t a1)
{
  result = type metadata accessor for MedicationsDoseLogHeaderItem(319);
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

uint64_t sub_2282C09C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell_item;
  swift_beginAccess();
  return sub_2282C1618(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_2282C0A34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseRecordAllCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282BFCAC();
  return sub_2282C1680(a1, sub_228181D50);
}

uint64_t (*sub_2282C0AB4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282C0B18;
}

uint64_t sub_2282C0B18(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282BFCAC();
  }

  return result;
}

uint64_t sub_2282C0B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *(a1 + *(a3 + 24));
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI32MedicationDoseRecordAllViewModel_logDate;
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v11, v12 + v13, v5);
  v15 = *(v20 + *(a3 + 24));
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI32MedicationDoseRecordAllViewModel_logDate;
  swift_beginAccess();
  v14(v9, v15 + v16, v5);
  LOBYTE(v15) = sub_22838F3D0();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v17(v11, v5);
  return v15 & 1;
}

unint64_t sub_2282C0CF8()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000012;
}

uint64_t sub_2282C0D78(uint64_t a1)
{
  v2 = sub_2282C15D0(&qword_280DDC1F8, 255, type metadata accessor for MedicationDoseRecordAllItem, &unk_2283A2364);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2282C0DF8()
{
  v1 = sub_22838F4A0();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D84560];
  sub_2282C16E0(0, &qword_280DDB8A0, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D84560]);
  v5 = (type metadata accessor for MedicationDoseRecordAllItem(0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  v17 = xmmword_228397F40;
  *(v7 + 16) = xmmword_228397F40;
  v8 = v7 + v6;
  v18 = v0;
  v9 = *(v0 + qword_280DDF3D8);
  v10 = v0 + qword_280DDF3C8;
  swift_unknownObjectWeakLoadStrong();
  v11 = *(v10 + 8);

  sub_22838F490();
  v12 = (v8 + v5[7]);
  type metadata accessor for MedicationDoseRecordAllCell();
  sub_2282C15D0(&qword_280DDC200, v13, type metadata accessor for MedicationDoseRecordAllCell, &unk_2283A22C0);
  *v12 = sub_22838FBB0();
  v12[1] = v14;
  *(v8 + v5[9] + 8) = 0;
  v15 = swift_unknownObjectWeakInit();
  *(v8 + v5[8]) = v9;
  *(v15 + 8) = v11;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_2282C16E0(0, &qword_27D823910, MEMORY[0x277D10F78], v4);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = v17;
  sub_2281958B0(v7);
  swift_setDeallocating();
  sub_2282C1680(v8, type metadata accessor for MedicationDoseRecordAllItem);
  swift_deallocClassInstance();
  sub_22838F490();
  sub_22838F450();
  (*(v19 + 8))(v3, v20);
  sub_22838FED0();
  sub_22838FF50();
}

uint64_t sub_2282C11A0()
{
  sub_2282C1680(v0 + qword_280DDF3D0, type metadata accessor for MedicationsDoseLogHeaderItem);

  v1 = v0 + qword_280DDF3C8;

  return sub_22818B730(v1);
}

uint64_t sub_2282C1204()
{
  v0 = sub_22838FFB0();
  v1 = qword_280DDF3D0;

  sub_2282C1680(v2 + v1, type metadata accessor for MedicationsDoseLogHeaderItem);

  sub_22818B730(v0 + qword_280DDF3C8);

  return swift_deallocClassInstance();
}

uint64_t sub_2282C12C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_2282C1394()
{
  type metadata accessor for MedicationDoseRecordAllCell();
  sub_2282C15D0(&qword_280DDC200, v0, type metadata accessor for MedicationDoseRecordAllCell, &unk_2283A22C0);
  return sub_2283926B0();
}

uint64_t sub_2282C1400@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = qword_280DDF3D0;
  a1[3] = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  a1[4] = sub_2282C15D0(&qword_27D824498, 255, type metadata accessor for MedicationsDoseLogHeaderItem, &unk_228399630);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2282C1618(v3 + v4, boxed_opaque_existential_1, type metadata accessor for MedicationsDoseLogHeaderItem);
}

uint64_t sub_2282C156C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationDoseRecordAllItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282C15D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2282C1618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282C1680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2282C16E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282C1744(uint64_t a1, uint64_t a2)
{
  sub_2282C16E0(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282C17D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282C16E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282C1850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v30 = a2;
  v29 = sub_22838F4A0();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_280DDF3C8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_2282C1618(a2, v4 + qword_280DDF3D0, type metadata accessor for MedicationsDoseLogHeaderItem);
  *(v4 + qword_280DDF3D8) = a1;
  v10 = MEMORY[0x277D84560];
  sub_2282C16E0(0, &qword_280DDB8A0, type metadata accessor for MedicationDoseRecordAllItem, MEMORY[0x277D84560]);
  v11 = (type metadata accessor for MedicationDoseRecordAllItem(0) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  v26 = xmmword_228397F40;
  *(v13 + 16) = xmmword_228397F40;
  v14 = v13 + v12;
  swift_retain_n();
  sub_22838F490();
  v15 = (v14 + v11[7]);
  type metadata accessor for MedicationDoseRecordAllCell();
  sub_2282C15D0(&qword_280DDC200, v16, type metadata accessor for MedicationDoseRecordAllCell, &unk_2283A22C0);
  *v15 = sub_22838FBB0();
  v15[1] = v17;
  *(v14 + v11[9] + 8) = 0;
  v18 = swift_unknownObjectWeakInit();
  *(v14 + v11[8]) = a1;
  *(v18 + 8) = v27;
  swift_unknownObjectWeakAssign();
  sub_2282C16E0(0, &qword_27D823910, MEMORY[0x277D10F78], v10);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = v26;
  sub_2281958B0(v13);
  swift_setDeallocating();
  sub_2282C1680(v14, type metadata accessor for MedicationDoseRecordAllItem);
  swift_deallocClassInstance();
  sub_22838F490();
  sub_22838F450();
  v19 = *(v7 + 8);
  v20 = v29;
  v19(v9, v29);
  sub_22838FED0();
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v31, "MutableArray<");
  HIWORD(v31[1]) = -4864;
  sub_22838F490();
  v21 = sub_22838F450();
  v23 = v22;
  v19(v9, v20);
  MEMORY[0x22AAB5C80](v21, v23);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v24 = sub_22838FF30();
  sub_2282C1680(v30, type metadata accessor for MedicationsDoseLogHeaderItem);
  return v24;
}

uint64_t sub_2282C1CD4(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MedicationDoseRecordAllViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MedicationLogDetailsViewController(uint64_t a1)
{
  result = qword_27D8272E0;
  if (!qword_27D8272E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282C1ED0(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      v6 = v5 >> 5;
      if (v5 >> 5 > 2)
      {
        if (v6 == 3)
        {
          if (v4 == 96)
          {
            if (a1 == 96)
            {
              return 1;
            }
          }

          else if (a1 == 97)
          {
            return 1;
          }
        }

        else if (v6 == 4)
        {
          if (v4 == 128)
          {
            if (a1 == 128)
            {
              return 1;
            }
          }

          else if (a1 == 129)
          {
            return 1;
          }
        }

        else if (v4 == 160)
        {
          if (a1 == 160)
          {
            return 1;
          }
        }

        else if (a1 == 161)
        {
          return 1;
        }
      }

      else
      {
        if (!v6)
        {
          if (a1 > 0x1Fu)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }

        if (v6 == 1)
        {
          if ((a1 & 0xE0) != 0x20)
          {
            goto LABEL_4;
          }

LABEL_16:
          if (((v4 ^ a1) & 1) == 0)
          {
            return 1;
          }

          goto LABEL_4;
        }

        if (v4 == 64)
        {
          if (a1 == 64)
          {
            return 1;
          }
        }

        else if (a1 == 65)
        {
          return 1;
        }
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  return 0;
}

void sub_2282C201C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2282C4D98(0);
    [v2 addGestureRecognizer_];

    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      v7 = sub_2282C4D98(1);
      [v6 addGestureRecognizer_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2282C2118(void *a1)
{
  v1 = a1;
  sub_2282C21A4();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MedicationLogDetailsViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 setPreservesSuperviewLayoutMargins_];

    sub_2282C201C();
  }

  else
  {
    __break(1u);
  }
}

void sub_2282C21A4()
{
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_didTapCancel];
  [v1 setLeftBarButtonItem_];

  v5 = [v3 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v3 action:sel_didTapDone_];

  [v5 setRightBarButtonItem_];
}

id sub_2282C22C8()
{
  v1 = qword_27D8272D8;
  v2 = *(v0 + qword_27D8272D8);
  if (v2)
  {
    v3 = *(v0 + qword_27D8272D8);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v4 setTimeStyle_];
    [v4 setDateStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2282C23C4()
{

  sub_22818B730(v0 + qword_27D8272B8);

  v1 = *(v0 + qword_27D8272D8);
}

id sub_2282C2444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationLogDetailsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282C247C(uint64_t a1)
{

  sub_22818B730(a1 + qword_27D8272B8);

  v2 = *(a1 + qword_27D8272D8);
}

void sub_2282C2510(char *a1)
{
  v2 = v1;
  v4 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v4 animated:0];

  v5 = sub_22838F750();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v6 = qword_27D8272D0;
  v7 = *(v1 + qword_27D8272D0);
  if (v5 >= *(v7 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = *(v7 + v5 + 32);
  v9 = sub_22838F750();
  v10 = *(v1 + v6);
  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v9 >= *(v10 + 16))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (*(v10 + v9 + 32) != 1)
  {
    return;
  }

  v11 = sub_22838F750();
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v12 = *(v1 + v6);
  if (v11 >= *(v12 + 16))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = *(v12 + v11 + 32);
  v14 = sub_22838F740();
  v15 = v14;
  if (v13)
  {
    a1 = qword_27D8272C8;
    v9 = swift_beginAccess();
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v10 = *&a1[v2];
    if (v15 >= *(v10 + 16))
    {
      __break(1u);
LABEL_13:
      if ((v9 & 0x8000000000000000) == 0)
      {
        if (v9 < *(v10 + 16))
        {
          v16 = *(v10 + v9 + 32);
          v17 = sub_22838F740();
          if ((v16 & 1) == 0)
          {
            goto LABEL_19;
          }

          v18 = qword_27D8272C8;
          swift_beginAccess();
          if ((v17 & 0x8000000000000000) == 0)
          {
            v19 = *(v2 + v18);
            if (v17 < *(v19 + 16))
            {
              goto LABEL_21;
            }

            __break(1u);
LABEL_19:
            if ((v17 & 0x8000000000000000) == 0)
            {
              v19 = *(v2 + qword_27D8272C0);
              if (v17 < *(v19 + 16))
              {
LABEL_21:
                if (!*(v19 + v17 + 32))
                {
                  v20 = sub_22838F710();
                  v21 = [a1 cellForItemAtIndexPath_];

                  if (v21)
                  {
                    type metadata accessor for MedicationLogDetailsUnitCell();
                    if (swift_dynamicCastClass())
                    {
                      v22 = sub_228214130();
                      v23 = sub_228215168();
                      v24 = [v23 isFirstResponder];

                      if (v24)
                      {
                        [v22 endEditing_];
                      }

                      else
                      {
                        v30 = *&v22[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueTextField];
                        [v30 becomeFirstResponder];
                      }
                    }
                  }

                  v31 = qword_27D8272C8;
                  swift_beginAccess();
                  v32 = *(v2 + v31);
                  v33 = *(v32 + 16);
                  v34 = (v32 + 32);
                  while (v33)
                  {
                    v35 = *v34++;
                    --v33;
                    if (v35 == 2)
                    {
                      goto LABEL_40;
                    }
                  }
                }

                return;
              }

              goto LABEL_52;
            }

            goto LABEL_50;
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_47;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v10 = *(v2 + qword_27D8272C0);
    if (v14 >= *(v10 + 16))
    {
LABEL_55:
      __break(1u);
      return;
    }
  }

  if (*(v10 + v15 + 32) == 1)
  {
    v25 = qword_27D8272C8;
    swift_beginAccess();
    v26 = *(v2 + v25);
    v27 = *(v26 + 16);
    v28 = (v26 + 32);
    do
    {
      if (!v27)
      {
        sub_2282C2B84();
        return;
      }

      v29 = *v28++;
      --v27;
    }

    while (v29 != 2);
LABEL_40:
    sub_2282C2854();
  }
}

void sub_2282C2854()
{
  v1 = v0;
  v2 = sub_22838F760();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_27D8272C8;
  swift_beginAccess();
  v7 = *&v1[v6];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (*(v10 + v9) != 2)
    {
      if (v8 == ++v9)
      {
        return;
      }
    }

    v11 = [v1 collectionView];
    if (v11)
    {
      v12 = v11;
      MEMORY[0x22AAB32D0](v9, 1);
      v13 = sub_22838F710();
      (*(v3 + 8))(v5, v2);
      v14 = [v12 cellForItemAtIndexPath_];

      if (v14)
      {
        type metadata accessor for MedicationLogDetailsTimePickerCell();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = v15;
          swift_beginAccess();
          sub_2282A35B8(v9);
          swift_endAccess();
          v17 = objc_opt_self();
          v18 = swift_allocObject();
          v18[2] = v16;
          v18[3] = v1;
          v18[4] = v9;
          v30 = sub_2282C58C4;
          v31 = v18;
          aBlock = MEMORY[0x277D85DD0];
          v27 = 1107296256;
          v28 = sub_228191E9C;
          v29 = &block_descriptor_18;
          v19 = _Block_copy(&aBlock);
          v20 = v14;
          v21 = v1;

          v22 = swift_allocObject();
          *(v22 + 16) = v16;
          v30 = sub_2282C58D0;
          v31 = v22;
          aBlock = MEMORY[0x277D85DD0];
          v27 = 1107296256;
          v28 = sub_2282C49D0;
          v29 = &block_descriptor_24_0;
          v23 = _Block_copy(&aBlock);
          v24 = v20;

          [v17 animateWithDuration:v19 animations:v23 completion:0.4];
          _Block_release(v23);
          _Block_release(v19);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2282C2B84()
{
  v1 = sub_22838F760();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_27D8272C8;
  result = swift_beginAccess();
  v7 = *(v0 + v5);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (*(v10 + v9) != 1)
    {
      if (v8 == ++v9)
      {
        return result;
      }
    }

    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      result = swift_beginAccess();
      if (v8 >= v11)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          sub_2282C4E64(v11, v11, 2);
          swift_endAccess();
          v19 = *(v0 + qword_27D8272A8);
          v18 = *(v19 + qword_27D829090);
          v12 = type metadata accessor for MedicationLogDetailsTimePickerItem(0);
          v20[3] = v12;
          v20[4] = sub_2282C58D8(&qword_27D823C88, type metadata accessor for MedicationLogDetailsTimePickerItem, &unk_228398738);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);

          sub_22838F490();
          v14 = boxed_opaque_existential_1 + v12[6];
          *(v14 + 1) = 0;
          swift_unknownObjectWeakInit();
          v15 = v2;
          v16 = (boxed_opaque_existential_1 + v12[7]);
          type metadata accessor for MedicationLogDetailsTimePickerCell();
          sub_2282C58D8(&qword_27D827308, type metadata accessor for MedicationLogDetailsTimePickerCell, &unk_2283985F4);
          *v16 = sub_22838FBB0();
          v16[1] = v17;
          *(boxed_opaque_existential_1 + v12[5]) = v18;
          *(v14 + 1) = &off_283B6BBB8;
          swift_unknownObjectWeakAssign();
          MEMORY[0x22AAB32D0](v11, 1);
          sub_22838FF80();
          (*(v15 + 8))(v4, v1);
          return __swift_destroy_boxed_opaque_existential_0(v20);
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2282C2E40(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2282C2510(v10);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2282C2F3C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + qword_27D8272D0);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = qword_27D8272C8;
    v8 = qword_27D8272C0;
    v9 = v4 + 32;
    swift_beginAccess();
    for (i = 0; i != v5; ++i)
    {
      if (*(v9 + i))
      {
        v11 = 0;
        v12 = *(v2 + v7);
        v13 = *(v12 + 16);
        v14 = v12 + 32;
        while (v13 != v11)
        {
          v15 = v11 + 1;
          v16 = *(v14 + v11++);
          if (v16 == v6)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = *(v2 + v8);
        v19 = *(v18 + 16);
        v20 = v18 + 32;
        while (v19 != v17)
        {
          v15 = v17 + 1;
          v21 = *(v20 + v17++);
          if (v21 == v6)
          {
LABEL_14:
            MEMORY[0x22AAB32D0](v15 - 1);
            v22 = 0;
            goto LABEL_15;
          }
        }
      }
    }
  }

  v22 = 1;
LABEL_15:
  v23 = sub_22838F760();
  return (*(*(v23 - 8) + 56))(a2, v22, 1, v23);
}

id sub_2282C308C(uint64_t a1)
{
  v143 = a1;
  ObjectType = swift_getObjectType();
  v147 = sub_22838F6C0();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v137 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D83D88];
  sub_2282C56E0(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v144 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v153 = (&v137 - v7);
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v148 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v137 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v152 = &v137 - v15;
  MEMORY[0x28223BE20](v14);
  v149 = &v137 - v16;
  v17 = sub_2283911B0();
  v158 = *(v17 - 8);
  v159 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v155 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v137 - v20;
  sub_2282C56E0(0, &qword_27D827300, MEMORY[0x277CC9AF8], v3);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v156 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v137 - v25;
  v27 = sub_22838F760();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v154 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v137 - v31;
  v160 = swift_allocBox();
  v151 = v33;
  sub_2282C2F3C(0, v26);
  v34 = *(v28 + 48);
  if (v34(v26, 1, v27) == 1)
  {
    sub_2282C57A4(v26, &qword_27D827300, MEMORY[0x277CC9AF8]);
LABEL_12:
    sub_228391190();
    v48 = sub_2283911A0();
    v49 = sub_2283925C0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock = v51;
      *v50 = 136315138;
      v52 = sub_228393600();
      v54 = sub_2281C96FC(v52, v53, &aBlock);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_22816B000, v48, v49, "[%s] Couldn't reference unit value", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAB7B80](v51, -1, -1);
      MEMORY[0x22AAB7B80](v50, -1, -1);
    }

    (*(v158 + 1))(v21, v159);
    return swift_deallocBox();
  }

  v141 = v9;
  v139 = v8;
  v140 = *(v28 + 32);
  v140(v32, v26, v27);
  v142 = v1;
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v36 = result;
  v37 = sub_22838F710();
  v38 = [v36 cellForItemAtIndexPath_];

  if (!v38)
  {
LABEL_11:
    (*(v28 + 8))(v32, v27);
    goto LABEL_12;
  }

  type metadata accessor for MedicationLogDetailsUnitCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_11;
  }

  v39 = sub_228214130();
  v138 = sub_228215CFC();
  v41 = v40;

  v42 = *(v28 + 8);
  v42(v32, v27);
  if (v41)
  {
    goto LABEL_12;
  }

  v43 = v156;
  v44 = v142;
  sub_2282C2F3C(1u, v156);
  if (v34(v43, 1, v27) == 1)
  {
    v45 = &qword_27D827300;
    v46 = MEMORY[0x277CC9AF8];
    v47 = v43;
LABEL_9:
    sub_2282C57A4(v47, v45, v46);
LABEL_23:
    v67 = v155;
    sub_228391190();
    v68 = sub_2283911A0();
    v69 = sub_2283925C0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136315138;
      v72 = sub_228393600();
      v74 = sub_2281C96FC(v72, v73, &aBlock);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_22816B000, v68, v69, "[%s] Couldn't reference date value", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AAB7B80](v71, -1, -1);
      MEMORY[0x22AAB7B80](v70, -1, -1);
    }

    (*(v158 + 1))(v67, v159);
    return swift_deallocBox();
  }

  v55 = v42;
  v56 = v154;
  v140(v154, v43, v27);
  result = [v44 collectionView];
  if (!result)
  {
    goto LABEL_42;
  }

  v57 = result;
  v58 = sub_22838F710();
  v59 = [v57 cellForItemAtIndexPath_];

  v60 = v141;
  if (!v59)
  {
LABEL_22:
    v55(v56, v27);
    goto LABEL_23;
  }

  type metadata accessor for MedicationLogDetailsTimeCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_22;
  }

  v61 = sub_22825AD54();

  v55(v56, v27);
  v62 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
  swift_beginAccess();
  v63 = v61 + v62;
  v64 = v153;
  sub_22822BFC0(v63, v153);

  v65 = v60[6];
  v66 = v139;
  if (v65(v64, 1, v139) == 1)
  {
    v45 = &qword_280DDCDB0;
    v46 = MEMORY[0x277CC9578];
    v47 = v64;
    goto LABEL_9;
  }

  v158 = v65;
  v75 = v60[4];
  v76 = v149;
  v75(v149, v64, v66);
  v77 = v151;
  v155 = (v60 + 4);
  v154 = v75;
  v75(v151, v76, v66);
  v159 = swift_allocObject();
  *(v159 + 16) = v44;
  ObjectType = *&v44[qword_27D8272A8];
  v156 = qword_27D829090;
  v78 = *&ObjectType[qword_27D829090];
  v79 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  swift_beginAccess();
  v80 = v60[2];
  v81 = v152;
  v80(v152, v78 + v79, v66);
  v82 = v150;
  v80(v150, v77, v66);
  sub_2282C58D8(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v83 = v142;
  LOBYTE(v78) = sub_228391FB0();
  v84 = v60[1];
  v84(v82, v66);
  v141 = v60 + 1;
  v84(v81, v66);
  v85 = v83;
  if ((v78 & 1) != 0 || v83[qword_27D8272B0] != 1)
  {
    v100 = *&v138;
    v101 = v152;
    v102 = v139;
    v80(v152, v151, v139);
    sub_2282C4474(v101, 0, v83, v100);

    v84(v101, v102);
  }

  else
  {
    v153 = v84;
    v86 = ObjectType;
    v87 = v156;

    v88 = v144;
    sub_22830071C(v144);

    v89 = v139;
    v90 = v158;
    if (v158(v88, 1, v139) == 1)
    {
      v91 = v87;
      v92 = v85;
      v93 = *&v91[v86];
      v94 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v95 = v93 + v94;
      v85 = v92;
      v80(v148, v95, v89);
      v96 = v90(v88, 1, v89);
      v97 = v147;
      v98 = v146;
      v99 = v145;
      if (v96 != 1)
      {
        sub_2282C57A4(v88, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      (v154)(v148, v88, v89);
      v97 = v147;
      v98 = v146;
      v99 = v145;
    }

    sub_22838F680();
    sub_22838F5A0();
    (*(v98 + 8))(v99, v97);
    v103 = sub_2282C22C8();
    v104 = sub_228391FC0();

    v105 = sub_22838F380();
    v106 = v85;
    v107 = [v103 hm:v104 localizableTimeStringKeyWithPrefix:v105 date:?];

    v158 = sub_228392000();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v109 = qword_280DDCF20;
    v108 = *algn_280DDCF28;
    sub_2282C5C6C(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_228397F40;
    ObjectType = v106;
    v111 = *&v106[qword_27D8272D8];
    v112 = sub_22838F380();
    v113 = [v111 stringFromDate_];

    v114 = sub_228392000();
    v116 = v115;

    *(v110 + 56) = MEMORY[0x277D837D0];
    *(v110 + 64) = sub_22818E210();
    *(v110 + 32) = v114;
    *(v110 + 40) = v116;
    sub_22838F0C0();

    if (*(v110 + 16))
    {
      sub_228391FD0();
    }

    v117 = sub_228391FC0();

    v118 = [objc_opt_self() alertControllerWithTitle:0 message:v117 preferredStyle:0];

    v158 = v118;
    v119 = [v118 popoverPresentationController];
    if (v119)
    {
      v120 = v119;
      [v119 setSourceItem_];
    }

    v152 = v109;
    sub_22838F0C0();
    v121 = sub_228391FC0();

    v154 = objc_opt_self();
    v156 = [v154 actionWithTitle:v121 style:1 handler:0];

    sub_22838F0C0();
    v122 = swift_allocObject();
    v151 = v108;
    v123 = v122;
    v124 = v159;
    v125 = v160;
    v122[2] = sub_2282C5814;
    v122[3] = v124;
    v126 = v138;
    v122[4] = v138;
    v122[5] = v125;

    v127 = sub_228391FC0();

    v165 = sub_2282C581C;
    v166 = v123;
    aBlock = MEMORY[0x277D85DD0];
    v162 = 1107296256;
    v163 = sub_228281980;
    v164 = &block_descriptor_21;
    v128 = _Block_copy(&aBlock);

    v129 = v154;
    v155 = [v154 actionWithTitle:v127 style:0 handler:v128];
    _Block_release(v128);

    sub_22838F0C0();
    v130 = swift_allocObject();
    v130[2] = sub_2282C5814;
    v130[3] = v124;
    v130[4] = v126;
    v130[5] = v125;

    v131 = sub_228391FC0();

    v165 = sub_2282C589C;
    v166 = v130;
    aBlock = MEMORY[0x277D85DD0];
    v162 = 1107296256;
    v163 = sub_228281980;
    v164 = &block_descriptor_12_0;
    v132 = _Block_copy(&aBlock);

    v133 = [v129 actionWithTitle:v131 style:0 handler:v132];
    _Block_release(v132);

    v134 = v158;
    v135 = v156;
    [v158 addAction_];
    [v134 addAction_];
    v136 = v155;
    [v134 addAction_];
    [ObjectType presentViewController:v134 animated:1 completion:0];

    v153(v148, v139);
  }
}

uint64_t sub_2282C4474(uint64_t a1, char a2, char *a3, double a4)
{
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 dismissViewControllerAnimated:1 completion:0];
  v12 = *(*&a3[qword_27D8272A8] + qword_27D829090);
  *(v12 + 40) = a4;
  (*(v9 + 16))(v11, a1, v8);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  swift_beginAccess();
  v14 = *(v9 + 40);

  v14(v12 + v13, v11, v8);
  swift_endAccess();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_2282D196C(v16, a2 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2282C4630(double a1, uint64_t a2, void (*a3)(char *, uint64_t, double), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_22838F440();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  a3(v12, a6, a1);
  return (*(v10 + 8))(v12, v9);
}

void sub_2282C476C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2282C308C(v4);
}

uint64_t sub_2282C47E8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22818E638();
  [v9 setAlpha_];

  v10 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  MEMORY[0x22AAB32D0](a3, 1);
  sub_22838FF00();
  return (*(v6 + 8))(v8, v5);
}

void sub_2282C4938(char a1, void *a2)
{
  if (a1)
  {
    v3 = sub_22818E638();
    [v3 setAlpha_];

    v4 = [objc_opt_self() systemBackgroundColor];
    [a2 setBackgroundColor_];
  }
}

uint64_t sub_2282C49D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_2282C4A24(uint64_t a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_2282C56E0(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  sub_2282C56E0(0, &qword_27D827300, MEMORY[0x277CC9AF8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_22838F760();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282C2F3C(1u, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2282C57A4(v9, &qword_27D827300, MEMORY[0x277CC9AF8]);
  }

  (*(v11 + 32))(v13, v9, v10);
  result = [v1 collectionView];
  if (result)
  {
    v15 = result;
    v16 = sub_22838F710();
    v17 = [v15 cellForItemAtIndexPath_];

    if (v17)
    {
      type metadata accessor for MedicationLogDetailsTimeCell();
      if (swift_dynamicCastClass())
      {
        v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        [v18 setDateStyle_];
        [v18 setTimeStyle_];
        v19 = sub_22825AD54();
        v20 = sub_22838F440();
        v21 = *(v20 - 8);
        (*(v21 + 16))(v6, a1, v20);
        (*(v21 + 56))(v6, 0, 1, v20);
        sub_22825B848(v6);
      }

      else
      {
      }
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2282C4D98(char a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v7 = v3;
    sub_22818FDE4();
    v4 = sub_228393450();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_endEditing_];
  swift_unknownObjectRelease();
  [v5 setCancelsTouchesInView_];
  return v5;
}

char *sub_2282C4E64(char *result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_228199A30(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_2282C4F38(v7, a2, 1, v12);
  *v3 = v5;
  return result;
}

char *sub_2282C4F38(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_2282C4FF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_22818217C(0, &qword_280DDCD60, MEMORY[0x277D10D48], 1);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_10:
  if (a3 >= 1)
  {
    result = sub_228180FB0(a4, v10);
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return sub_2282C5BE4(a4);
}

char *sub_2282C5114(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v45 = a2;
  *&v46 = a7;
  v47 = a4;
  v48 = a6;
  v13 = type metadata accessor for MedicationLogDetailsHeaderItem(0);
  v14 = (v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v20 = v9 + qword_27D8272B8;
  *(v9 + qword_27D8272B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + qword_27D8272C0) = &unk_283B66BF0;
  *(v9 + qword_27D8272C8) = &unk_283B66C18;
  *(v9 + qword_27D8272D0) = &unk_283B66BC8;
  *(v9 + qword_27D8272D8) = 0;
  *(v9 + qword_27D8272B0) = a8;

  sub_22838F490();
  v21 = v14[7];

  v22 = &v19[v21];
  *v22 = 0xD00000000000001ALL;
  *(v22 + 1) = 0x80000002283B20E0;
  v23 = &v19[v14[8]];
  *v23 = v45;
  v23[1] = a3;
  v24 = &v19[v14[9]];
  *v24 = v47;
  v24[1] = a5;
  v47 = v19;
  sub_2282C567C(v19, v17);
  type metadata accessor for MedicationLogDetailsDataSource(0);
  swift_allocObject();

  v26 = sub_228351A24(v25, v17);

  v27 = qword_27D8272A8;
  *(v9 + qword_27D8272A8) = v26;
  *(v20 + 8) = v46;
  swift_unknownObjectWeakAssign();
  sub_2283901F0();
  sub_228182110(0);
  v28 = swift_allocObject();
  v46 = xmmword_228397F40;
  *(v28 + 16) = xmmword_228397F40;
  v29 = MEMORY[0x277D10F80];
  *(v28 + 32) = *(v9 + v27);
  *(v28 + 40) = v29;

  sub_228390220();
  v30 = sub_228390480();
  v31 = *&v30[qword_27D8272A8];
  v32 = v31 + qword_27D829098;
  *(v31 + qword_27D829098 + 8) = &off_283B6BBB8;
  swift_unknownObjectWeakAssign();
  sub_2282C56E0(0, &qword_27D8272F0, type metadata accessor for MedicationLogDetailsUnitItem, MEMORY[0x277D84560]);
  v33 = (type metadata accessor for MedicationLogDetailsUnitItem(0) - 8);
  v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v46;
  v36 = v35 + v34;
  v37 = *(v31 + qword_27D829090);
  swift_unknownObjectWeakLoadStrong();
  *&v46 = *(v32 + 8);
  v38 = v30;

  sub_22838F490();
  v39 = v35 + v34 + v33[8];
  *(v39 + 8) = 0;
  swift_unknownObjectWeakInit();
  v40 = (v35 + v34 + v33[9]);
  type metadata accessor for MedicationLogDetailsUnitCell();
  sub_2282C58D8(&qword_27D8272F8, type metadata accessor for MedicationLogDetailsUnitCell, &unk_22839C700);
  *v40 = sub_22838FBB0();
  v40[1] = v41;
  *(v36 + v33[7]) = v37;
  *(v39 + 8) = v46;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_228195AA4(v35);
  swift_setDeallocating();
  sub_2282C5744(v36, type metadata accessor for MedicationLogDetailsUnitItem);
  swift_deallocClassInstance();
  sub_22838FF60();

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v42 = sub_228391FC0();

  [v38 setTitle_];
  swift_unknownObjectRelease();

  sub_2282C5744(v47, type metadata accessor for MedicationLogDetailsHeaderItem);
  return v38;
}

uint64_t sub_2282C567C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsHeaderItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2282C56E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282C5744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282C57A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282C56E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2282C58D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2282C5920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Dosage(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2282C5A68(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2281984E8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2282C5920(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_2282C5B28()
{
  *(v0 + qword_27D8272B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_27D8272C0) = &unk_283B66EE8;
  *(v0 + qword_27D8272C8) = &unk_283B66F10;
  *(v0 + qword_27D8272D0) = &unk_283B66BC8;
  *(v0 + qword_27D8272D8) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2282C5BE4(uint64_t a1)
{
  sub_2282C5C6C(0, &qword_27D827310, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D84220]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2282C5C6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22818217C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2282C5CF0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_identifier;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicationsDayHistoryEmptyItem(uint64_t a1)
{
  result = qword_27D827318;
  if (!qword_27D827318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282C5E08(uint64_t a1)
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

uint64_t sub_2282C5EA4()
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2282C5F10(uint64_t a1)
{
  sub_228393520();

  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2282C5F78()
{
  v1 = *(*v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_reuseIdentifier);

  return v1;
}

uint64_t sub_2282C5FB8(void *a1, uint64_t *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText);
  if (*v2 == *(*a2 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText) && v2[1] == *(*a2 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText + 8))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

unint64_t sub_2282C5FF4()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000014;
}

uint64_t sub_2282C607C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_2282C6148(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationsDayHistoryEmptyItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2282C618C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2282C84EC();
  return sub_22819482C(v6);
}

uint64_t sub_2282C61FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282C6254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282C84EC();
  return sub_22819482C(a1);
}

uint64_t (*sub_2282C62C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282C6324;
}

uint64_t sub_2282C6324(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282C84EC();
  }

  return result;
}

id sub_2282C6358()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_2282C63B8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282C63B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v1 = sub_228392AD0();
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  v7 = sub_228392000();
  v8 = v3;
  v4 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B23A0);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setNumberOfLines_];
  [v4 setAdjustsFontForContentSizeCategory_];
  return v4;
}

id sub_2282C659C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel);
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

    v14 = sub_228392000();
    v15 = v8;
    v9 = v5;

    MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B23A0);

    MEMORY[0x22AAB5C80](0x6C7469746275532ELL, 0xEE006C6562614C65);

    v10 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];

    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setNumberOfLines_];
    [v9 setAdjustsFontForContentSizeCategory_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_2282C67C4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton);
  }

  else
  {
    v4 = sub_2282C6828(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282C6828(uint64_t a1)
{
  sub_2282C8874(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_228392DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v16[0] = sub_228392000();
  v16[1] = v10;
  v11 = v9;

  MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B23A0);

  MEMORY[0x22AAB5C80](0x747542746964452ELL, 0xEB000000006E6F74);

  v12 = sub_228391FC0();

  [v11 setAccessibilityIdentifier_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v13) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v13];
  v14 = v11;
  [v14 addTarget:a1 action:sel_editButtonTapped_ forControlEvents:64];
  [v14 setContentHorizontalAlignment_];

  sub_228392DA0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392DB0();
  sub_228392CF0();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_228392E10();
  (*(v6 + 8))(v8, v5);
  return v14;
}

void sub_2282C6BA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints) = a1;

  v4 = sub_228210990(v3, v2);

  if (v4)
  {
  }

  else
  {
    v5 = objc_opt_self();
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v6 = sub_228392190();

    [v5 deactivateConstraints_];

    v7 = sub_228392190();

    [v5 activateConstraints_];
  }
}

id sub_2282C6CDC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton] = 0;
  v5[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints] = MEMORY[0x277D84F90];
  v13.receiver = v5;
  v13.super_class = type metadata accessor for InteractionFactorsCell();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
  sub_2282C6F24();

  return v11;
}

id sub_2282C6DE0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton] = 0;
  v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_currentConstraints] = MEMORY[0x277D84F90];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionFactorsCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_2282C6F24()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 contentView];
  v3 = sub_2282C6358();
  [v2 addSubview_];

  v4 = [v0 contentView];
  v5 = sub_2282C659C();
  [v4 addSubview_];

  v6 = [v0 contentView];
  v7 = sub_2282C67C4();
  [v6 addSubview_];

  sub_2282C7B48(*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout));
  sub_2282C8874(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F30;
  v9 = sub_2283915A0();
  v10 = MEMORY[0x277D74C50];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v11 = sub_228391640();
  v12 = MEMORY[0x277D74DB8];
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_2282C7124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_228391150();
    v10 = sub_2283911A0();
    v11 = sub_2283925B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      v14 = sub_228393600();
      v16 = sub_2281C96FC(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22816B000, v10, v11, "[%{public}s] traitCollectionDidChange", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AAB7B80](v13, -1, -1);
      MEMORY[0x22AAB7B80](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    [v9 invalidateIntrinsicContentSize];
    [v9 setNeedsLayout];
  }
}

uint64_t sub_2282C7318()
{
  v1 = v0;
  sub_2282C8874(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = sub_228391330();
  v9 = type metadata accessor for InteractionFactorsCell();
  v15.receiver = v1;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, sel__bridgedUpdateConfigurationUsingState_, v8);

  MEMORY[0x22AAB6410]();
  v10 = sub_2283913A0();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    sub_228205274(v7, v5);
    MEMORY[0x22AAB6420](v5);
    return sub_228205308(v7);
  }

  else
  {
    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    v12 = objc_opt_self();
    v13 = [v12 systemBackgroundColor];
    v14 = [v12 secondarySystemBackgroundColor];
    sub_228392B80();

    sub_228391370();
    return MEMORY[0x22AAB6420](v7);
  }
}

id sub_2282C75FC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v6 = sub_2283911A0();
  v7 = sub_2283925B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_228393600();
    v12 = sub_2281C96FC(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_22816B000, v6, v7, "[%{public}s] layoutSubviews", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAB7B80](v9, -1, -1);
    MEMORY[0x22AAB7B80](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = type metadata accessor for InteractionFactorsCell();
  v17.receiver = v1;
  v17.super_class = v13;
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  return sub_2282C7818();
}

id sub_2282C7818()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  CGRectGetWidth(v30);
  v6 = sub_2282C67C4();
  v7 = [v6 titleLabel];

  if (v7)
  {
    sub_228392AF0();
  }

  v8 = sub_2282C6358();
  sub_228392AF0();
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel];
  sub_228392AF0();
  v13 = v12;

  sub_228391150();
  v14 = v1;
  v15 = sub_2283911A0();
  v16 = sub_2283925B0();
  if (os_log_type_enabled(v15, v16))
  {
    v27 = v2;
    v26 = v10 < v13;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446722;
    v19 = sub_228393600();
    v21 = sub_2281C96FC(v19, v20, &v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v26;
    *(v17 + 18) = 1024;
    v22 = v14[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout];

    *(v17 + 20) = v22;
    _os_log_impl(&dword_22816B000, v15, v16, "[%{public}s] shouldUseVerticalLayout: %{BOOL}d, isUsingVerticalLayout: %{BOOL}d", v17, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAB7B80](v18, -1, -1);
    MEMORY[0x22AAB7B80](v17, -1, -1);

    result = (*(v3 + 8))(v5, v27);
  }

  else
  {

    result = (*(v3 + 8))(v5, v2);
  }

  if (v10 < v13 != v14[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout])
  {
    sub_2282C7B48(v10 < v13);
    [v14 invalidateIntrinsicContentSize];
    v24 = type metadata accessor for InteractionFactorsCell();
    v29.receiver = v14;
    v29.super_class = v24;
    return objc_msgSendSuper2(&v29, sel_layoutSubviews);
  }

  return result;
}

void sub_2282C7B48(char a1)
{
  if (a1)
  {
    v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout] = 1;
    sub_228180ED0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_228399D50;
    v3 = sub_2282C6358();
    v4 = [v3 leadingAnchor];

    v5 = [v1 contentView];
    v6 = [v5 layoutMarginsGuide];

    v7 = [v6 &selRef_logTimeChanged_ + 1];
    v8 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v8;
    v9 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel;
    v10 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel] topAnchor];
    v11 = [v1 contentView];
    v12 = [v11 topAnchor];

    v13 = [v10 constraintEqualToAnchor:v12 constant:16.0];
    *(v2 + 40) = v13;
    v14 = [*&v1[v9] trailingAnchor];
    v15 = [v1 contentView];
    v16 = [v15 layoutMarginsGuide];

    v17 = [v16 trailingAnchor];
    v18 = [v14 constraintEqualToAnchor_];

    *(v2 + 48) = v18;
    v19 = sub_2282C659C();
    v20 = [v19 leadingAnchor];

    v21 = [*&v1[v9] leadingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v2 + 56) = v22;
    v23 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel;
    v24 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel] topAnchor];
    v25 = [*&v1[v9] bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v2 + 64) = v26;
    v27 = [*&v1[v23] trailingAnchor];
    v28 = [v1 contentView];
    v29 = [v28 layoutMarginsGuide];

    v30 = [v29 trailingAnchor];
    v31 = [v27 constraintEqualToAnchor_];

    *(v2 + 72) = v31;
    v32 = sub_2282C67C4();
    v33 = [v32 leadingAnchor];

    v34 = [v1 contentView];
    v35 = [v34 &selRef_addSubview_ + 1];

    v36 = [v35 leadingAnchor];
    v37 = [v33 constraintEqualToAnchor_];

    *(v2 + 80) = v37;
    v38 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton];
    v39 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton] topAnchor];
    v40 = [*&v1[v23] bottomAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v2 + 88) = v41;
    v42 = [*v38 trailingAnchor];
    v43 = [v1 contentView];
    v44 = [v43 layoutMarginsGuide];

    v45 = [v44 trailingAnchor];
    v46 = &off_2785F4000;
    v47 = [v42 constraintEqualToAnchor_];

    *(v2 + 96) = v47;
    v48 = (v2 + 104);
  }

  else
  {
    v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_isUsingVerticalLayout] = 0;
    sub_228180ED0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2283A25D0;
    v49 = sub_2282C6358();
    v50 = [v49 leadingAnchor];

    v51 = [v1 contentView];
    v52 = [v51 layoutMarginsGuide];

    v53 = [v52 &selRef_logTimeChanged_ + 1];
    v54 = [v50 constraintEqualToAnchor_];

    *(v2 + 32) = v54;
    v55 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel;
    v56 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___titleLabel] topAnchor];
    v57 = [v1 contentView];
    v58 = [v57 topAnchor];

    v59 = [v56 constraintEqualToAnchor:v58 constant:16.0];
    *(v2 + 40) = v59;
    v60 = sub_2282C67C4();
    v61 = [v60 &selRef_logTimeChanged_ + 1];

    v62 = [*&v1[v55] trailingAnchor];
    v63 = [v61 constraintGreaterThanOrEqualToAnchor:v62 constant:16.0];

    *(v2 + 48) = v63;
    v64 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton;
    v65 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___editButton] firstBaselineAnchor];
    v66 = [*&v1[v55] firstBaselineAnchor];
    v67 = [v65 constraintEqualToAnchor_];

    *(v2 + 56) = v67;
    v68 = *&v1[v64];
    v46 = &off_2785F4000;
    v69 = [v68 trailingAnchor];
    v70 = [v1 contentView];
    v71 = [v70 trailingAnchor];

    v72 = [v69 &selRef_resignFirstResponder + 6];
    *(v2 + 64) = v72;
    v73 = sub_2282C659C();
    v74 = [v73 leadingAnchor];

    v75 = [*&v1[v55] leadingAnchor];
    v76 = [v74 constraintEqualToAnchor_];

    *(v2 + 72) = v76;
    v38 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel];
    v77 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell____lazy_storage___subtitleLabel] topAnchor];
    v78 = [*&v1[v55] bottomAnchor];
    v79 = [v77 constraintEqualToAnchor_];

    *(v2 + 80) = v79;
    v80 = [*v38 trailingAnchor];
    v81 = [*&v1[v55] trailingAnchor];
    v82 = [v80 constraintEqualToAnchor_];

    *(v2 + 88) = v82;
    v48 = (v2 + 96);
  }

  v83 = [*v38 bottomAnchor];
  v84 = [v1 v46[84]];
  v85 = [v84 bottomAnchor];

  v86 = [v83 constraintEqualToAnchor:v85 constant:-16.0];
  *v48 = v86;

  sub_2282C6BA8(v2);
}

uint64_t sub_2282C84EC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v6, v23);
  if (v24)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for InteractionFactorsItem();
    if (swift_dynamicCast())
    {
      v7 = sub_2282C6358();
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_22838F0C0();
      v8 = sub_228391FC0();

      [v7 setText_];

      v9 = sub_2282C659C();

      Array<A>.displayString()(v10);

      v11 = sub_228391FC0();

      [v9 setText_];

      sub_2282C7818();
    }
  }

  else
  {
    sub_22819482C(v23);
  }

  sub_228391150();
  v13 = v1;
  v14 = sub_2283911A0();
  v15 = sub_2283925C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136446210;
    sub_22817E6C8(v1 + v6, v23);
    sub_228181D50(0);
    v18 = sub_228392040();
    v20 = sub_2281C96FC(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_22816B000, v14, v15, "Incorrect view model for InteractionFactorsItem: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AAB7B80](v17, -1, -1);
    MEMORY[0x22AAB7B80](v16, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_2282C8874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Array<A>.displayString()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2281C9E44(0, v1, 0);
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 32 + 8 * v3);
      if (v4 > 1)
      {
        break;
      }

      if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_30;
        }

        v6 = 0xE700000000000000;
        v7 = 0x4C4F484F434C41;
LABEL_12:
        sub_2283931D0();

        MEMORY[0x22AAB5C80](v7, v6);

        MEMORY[0x22AAB5C80](95, 0xE100000000000000);
        if (v3)
        {
          v8 = 0x4445444445424D45;
        }

        else
        {
          v8 = 0x4F4C41444E415453;
        }

        if (v3)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xEA0000000000454ELL;
        }

        MEMORY[0x22AAB5C80](v8, v9);

        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        v4 = sub_22838F0C0();
        v5 = v10;

        goto LABEL_21;
      }

      v5 = 0xE000000000000000;
LABEL_21:
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9E44((v11 > 1), v12 + 1, 1);
      }

      ++v3;
      *(v19 + 16) = v12 + 1;
      v13 = v19 + 16 * v12;
      *(v13 + 32) = v4;
      *(v13 + 40) = v5;
      if (v1 == v3)
      {
        v14 = [objc_allocWithZone(MEMORY[0x277CCAAF0]) init];
        sub_2281966EC(v19);

        v15 = sub_228392190();

        v16 = [v14 stringFromItems_];

        if (v16)
        {
          v17 = sub_228392000();

          return v17;
        }

        else
        {

          return 0;
        }
      }
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
      v7 = 0x4F434341424F54;
    }

    else
    {
      if (v4 != 2)
      {
LABEL_30:
        result = sub_228393300();
        __break(1u);
        return result;
      }

      v6 = 0xE900000000000041;
      v7 = 0x4E41554A4952414DLL;
    }

    goto LABEL_12;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  return sub_22838F0C0();
}

void sub_2282C8CC0()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI22InteractionFactorsCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v6, v19);
  if (v20)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for InteractionFactorsItem();
    if (swift_dynamicCast())
    {
      v7 = [v1 viewController];
      if (v7)
      {
        v8 = v7;
        sub_2282BEE90(v7);

        return;
      }
    }
  }

  else
  {
    sub_22819482C(v19);
  }

  sub_228391150();
  v9 = v1;
  v10 = sub_2283911A0();
  v11 = sub_2283925C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    sub_22817E6C8(v1 + v6, v19);
    sub_228181D50(0);
    v14 = sub_228392040();
    v16 = sub_2281C96FC(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22816B000, v10, v11, "Incorrect view model for InteractionFactorsItem: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

id InteractionFactorsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2282C9114()
{
  sub_2283931D0();

  v1 = sub_228393420();
  MEMORY[0x22AAB5C80](v1);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](*(v0 + 16), *(v0 + 24));
  MEMORY[0x22AAB5C80](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2282C91E4(uint64_t a1)
{
  v2 = sub_2282CB510(&qword_27D823E78, type metadata accessor for ScheduleIntervalItem, &unk_2283A2738);

  return MEMORY[0x282169440](a1, v2);
}

id sub_2282C9260()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setAdjustsFontForContentSizeCategory_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_2282C93EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v8 = sub_228392190();
    v9 = [v7 initWithArrangedSubviews_];

    [v9 setAxis_];
    [v9 setAlignment_];
    [v9 setDistribution_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setSpacing_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_2282C950C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView);
  }

  else
  {
    v4 = sub_2282C9570();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282C9570()
{
  sub_228180ED0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F20;
  *(v0 + 32) = sub_2282C93CC();
  *(v0 + 40) = sub_2282C93DC();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_228392190();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 addArrangedSubview_];

  return v3;
}

void sub_2282C9838()
{
  v1 = [v0 contentView];
  v2 = sub_2282C9260();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_2282C950C();
  [v3 addSubview_];

  v44 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228399190;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel] topAnchor];
  v8 = [v0 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:12.0];
  *(v5 + 32) = v10;
  v11 = [*&v0[v6] leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 &selRef_logTimeChanged_ + 1];
  v15 = [v11 constraintEqualToAnchor_];

  *(v5 + 40) = v15;
  v16 = [*&v0[v6] trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 &selRef_addSubview_ + 1];

  v19 = [v18 trailingAnchor];
  v20 = [v16 constraintEqualToAnchor_];

  *(v5 + 48) = v20;
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView;
  v22 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView] topAnchor];
  v23 = [*&v0[v6] bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:12.0];

  *(v5 + 56) = v24;
  v25 = [*&v0[v21] bottomAnchor];
  v26 = [v0 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-12.0];
  *(v5 + 64) = v28;
  v29 = [*&v0[v21] leadingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor_];

  *(v5 + 72) = v33;
  v34 = [*&v0[v21] trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v34 constraintEqualToAnchor:v37 constant:8.0];

  *(v5 + 80) = v38;
  v39 = sub_2282C93CC();
  v40 = [v39 trailingAnchor];

  v41 = sub_2282C93DC();
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:-8.0];
  *(v5 + 88) = v43;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v45 = sub_228392190();

  [v44 activateConstraints_];
}

uint64_t sub_2282C9DB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v60 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2282CA85C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v56 - v7);
  v9 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282CA85C(0, &qword_27D827398, type metadata accessor for ScheduleIntervalItem, v5);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - v13;
  v15 = type metadata accessor for ScheduleIntervalItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v19], v62);
  if (!v63)
  {
    sub_2282CA90C(v62, &qword_280DDCD50, sub_22817A700);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_8:
    sub_2282CA90C(v14, &qword_27D827398, type metadata accessor for ScheduleIntervalItem);
    sub_228391150();
    v42 = v1;
    v43 = sub_2283911A0();
    v44 = sub_2283925C0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v58 = v2;
      v47 = v46;
      v61 = v46;
      *v45 = 136446466;
      v48 = sub_228393600();
      v50 = sub_2281C96FC(v48, v49, &v61);
      v51 = v60;
      v52 = v50;

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      sub_22817E6C8(&v1[v19], v62);
      sub_2282CA85C(0, &qword_280DDCD50, sub_22817A700, MEMORY[0x277D83D88]);
      v53 = sub_228392040();
      v55 = sub_2281C96FC(v53, v54, &v61);

      *(v45 + 14) = v55;
      _os_log_impl(&dword_22816B000, v43, v44, "%{public}s Incorrect view model for %s Expecting ScheduleIntervalItem", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v47, -1, -1);
      MEMORY[0x22AAB7B80](v45, -1, -1);

      return v51[1](v4, v58);
    }

    else
    {

      return v60[1](v4, v2);
    }
  }

  sub_22817A700();
  v20 = swift_dynamicCast();
  (*(v16 + 56))(v14, v20 ^ 1u, 1, v15);
  v21 = *(v16 + 48);
  v57 = v15;
  if (v21(v14, 1, v15) == 1)
  {
    goto LABEL_8;
  }

  v60 = v8;
  sub_2282CA97C(v14, v18);
  v22 = sub_2282C9260();
  v23 = sub_228391FC0();
  [v22 setText_];

  v24 = sub_2282C93CC();
  sub_228392B10();

  v25 = sub_2282C93DC();
  sub_228392B10();

  ObjectType = v18;
  v26 = *(v18 + 5);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___timesStackView;
    v29 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___dosesStackView;
    v30 = v26 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v31 = *(v58 + 72);
    do
    {
      sub_2282CB134(v30, v11);
      v32 = sub_2282CAEA8(v11);
      v34 = v33;
      sub_2282CB198(v11, type metadata accessor for ScheduleDataSource.DoseItem);
      [*&v1[v28] addArrangedSubview_];
      [*&v1[v29] addArrangedSubview_];

      v30 += v31;
      --v27;
    }

    while (v27);
  }

  v35 = *(v57 + 32);
  v36 = sub_2283913A0();
  v37 = *(v36 - 8);
  v38 = ObjectType;
  v39 = ObjectType + v35;
  v40 = v60;
  (*(v37 + 16))(v60, v39, v36);
  (*(v37 + 56))(v40, 0, 1, v36);
  MEMORY[0x22AAB6420](v40);
  return sub_2282CB198(v38, type metadata accessor for ScheduleIntervalItem);
}

id sub_2282CA4C0(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setAttributedText_];
  if (a2)
  {
    type metadata accessor for UILayoutPriority(0);
    sub_2282CB510(&qword_280DDBAE0, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
    sub_2283911C0();
    LODWORD(v5) = v7;
  }

  else
  {
    LODWORD(v5) = 1144750080;
  }

  [v4 setContentHuggingPriority:0 forAxis:v5];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setNumberOfLines_];
  [v4 setMaximumContentSizeCategory_];
  return v4;
}

id sub_2282CA600(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleIntervalCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2282CA6E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282CA73C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282C9DB4();
  return sub_2282CA90C(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2282CA7C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282CA828;
}

uint64_t sub_2282CA828(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282C9DB4();
  }

  return result;
}

void sub_2282CA85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ScheduleIntervalItem(uint64_t a1)
{
  result = qword_27D8273D0;
  if (!qword_27D8273D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282CA90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282CA85C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282CA97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleIntervalItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2282CA9E0(uint64_t a1, uint64_t a2, double a3)
{
  v31 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v30 = sub_228392AD0();
  v29 = [v30 fontDescriptor];
  sub_2282CB1F8(0, &qword_27D8273A0, &qword_27D8242B8, type metadata accessor for AttributeName, MEMORY[0x277D84F70] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F40;
  v4 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  sub_2282CA85C(0, &qword_27D8273A8, sub_2282CB254, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F40;
  sub_2282CB1F8(0, &qword_27D8273B8, &qword_27D8273C0, type metadata accessor for FeatureKey, MEMORY[0x277D83B88]);
  v6 = swift_initStackObject();
  v7 = MEMORY[0x277D76908];
  *(v6 + 16) = xmmword_228397F30;
  v8 = *v7;
  *(v6 + 32) = *v7;
  v9 = *MEMORY[0x277D76900];
  *(v6 + 40) = 6;
  *(v6 + 48) = v9;
  *(v6 + 56) = 0;
  v10 = v4;
  v11 = v8;
  v12 = v9;
  v13 = sub_2281A8CA8(v6);
  swift_setDeallocating();
  sub_2282CB358(0, &qword_27D8273C0, type metadata accessor for FeatureKey, MEMORY[0x277D83B88]);
  swift_arrayDestroy();
  *(v5 + 32) = v13;
  sub_2282CA85C(0, &qword_27D8273C8, sub_2282CB254, MEMORY[0x277D83940]);
  *(inited + 64) = v14;
  *(inited + 40) = v5;
  sub_2281A8D88(inited);
  swift_setDeallocating();
  sub_2282CB2F0(inited + 32, &qword_27D8242B8, type metadata accessor for AttributeName);
  type metadata accessor for AttributeName(0);
  sub_2282CB510(&qword_27D8236C8, type metadata accessor for AttributeName, &unk_228397C64);
  v15 = MEMORY[0x277D84F70];
  v16 = sub_228391F10();

  v17 = [v29 fontDescriptorByAddingAttributes_];

  [v30 pointSize];
  v19 = [objc_opt_self() fontWithDescriptor:v17 size:v18];

  sub_2282CB1F8(0, &qword_280DDB880, &qword_280DDBA20, type metadata accessor for Key, v15 + 8);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_228397F40;
  v21 = *MEMORY[0x277D740A8];
  *(v20 + 32) = *MEMORY[0x277D740A8];
  *(v20 + 64) = v31;
  *(v20 + 40) = v19;
  v22 = v21;
  v23 = v19;
  sub_2281A859C(v20);
  swift_setDeallocating();
  sub_2282CB2F0(v20 + 32, &qword_280DDBA20, type metadata accessor for Key);
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_228391FC0();
  type metadata accessor for Key(0);
  sub_2282CB510(&qword_280DDBA40, type metadata accessor for Key, &unk_22839759C);
  v26 = sub_228391F10();

  v27 = [v24 initWithString:v25 attributes:v26];

  return v27;
}

id sub_2282CAEA8(uint64_t a1)
{
  v2 = sub_22838F250();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F270();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F260();
  sub_22838F240();
  v10 = sub_22838F400();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v13 = sub_2282CA9E0(v10, v12, *MEMORY[0x277D74420]);

  v14 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  v15 = sub_2282CA9E0(*(a1 + *(v14 + 20)), *(a1 + *(v14 + 20) + 8), *MEMORY[0x277D74418]);
  v16 = sub_2282CA4C0(v13, 1);
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setAttributedText_];
  v18 = v17;
  LODWORD(v19) = 1144750080;
  [v18 setContentHuggingPriority:0 forAxis:v19];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setNumberOfLines_];
  [v18 setMaximumContentSizeCategory_];

  return v16;
}

uint64_t sub_2282CB134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282CB198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2282CB1F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_2282CB358(255, a3, a4, a5);
    v6 = sub_228393430();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2282CB254(uint64_t a1)
{
  if (!qword_27D8273B0)
  {
    type metadata accessor for FeatureKey(255);
    sub_2282CB510(&qword_27D8236B8, type metadata accessor for FeatureKey, &unk_228397CA8);
    v1 = sub_228391F40();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8273B0);
    }
  }
}

uint64_t sub_2282CB2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282CB358(0, a2, a3, MEMORY[0x277D84F70] + 8);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2282CB358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2282CB3EC(uint64_t a1)
{
  type metadata accessor for HKMedicationScheduleType(319);
  if (v1 <= 0x3F)
  {
    sub_2282CA85C(319, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2283913A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2282CB510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2282CB58C(uint64_t a1)
{
  v2 = sub_2282CC240();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2282CB5D8()
{
  swift_getObjectType();
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v5, v15);
  if (v15[3])
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      sub_2282CB948(v14[0], v14[1], v14[2], v14[3]);
    }
  }

  else
  {
    sub_22819482C(v15);
  }

  sub_228391150();
  v7 = sub_2283911A0();
  v8 = sub_2283925C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136315138;
    v11 = sub_228393600();
    v13 = sub_2281C96FC(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22816B000, v7, v8, "[%s]: Unexpected view model.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_2282CB948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary];
  v7 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary];
  v8 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary + 8];
  v9 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary + 16];
  v10 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary + 24];
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;

  sub_228267618(v7, v8, v9, v10);
  v11 = *v6;
  v12 = v6[1];
  v13 = v6[2];
  v14 = v6[3];
  v22 = *v6;
  v23 = v12;
  sub_2282CC2DC(0);
  objc_allocWithZone(v15);
  sub_228267888(v11, v12, v13, v14);
  v16 = sub_228391C30();
  v17 = [v16 view];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor_];

    v20 = [v5 contentView];
    [v20 addSubview_];

    v21 = *&v5[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummaryView];
    *&v5[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummaryView] = v18;
  }

  sub_2282CBAB8();
}

void sub_2282CBAB8()
{
  v1 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummaryView];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = objc_opt_self();
    sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22839CC40;
    v6 = [v2 separatorLayoutGuide];
    v7 = [v6 leadingAnchor];

    v8 = [v2 contentView];
    v9 = [v8 leadingAnchor];

    v10 = [v7 constraintEqualToAnchor_];
    *(v5 + 32) = v10;
    v11 = [v3 leadingAnchor];
    v12 = [v2 contentView];
    v13 = [v12 leadingAnchor];

    v14 = [v11 constraintEqualToAnchor:v13 constant:8.0];
    *(v5 + 40) = v14;
    v15 = [v3 trailingAnchor];
    v16 = [v2 contentView];
    v17 = [v16 trailingAnchor];

    v18 = [v15 constraintEqualToAnchor:v17 constant:-8.0];
    *(v5 + 48) = v18;
    v19 = [v3 topAnchor];
    v20 = [v2 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:12.0];
    *(v5 + 56) = v22;
    v23 = [v3 bottomAnchor];
    v24 = [v2 contentView];
    v25 = [v24 bottomAnchor];

    v26 = [v23 constraintEqualToAnchor:v25 constant:-12.0];
    *(v5 + 64) = v26;
    sub_2281BF1B8();
    v27 = sub_228392190();

    [v4 activateConstraints_];
  }
}

id sub_2282CBE68(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2282CBF38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282CBF90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282CB5D8();
  return sub_22819482C(a1);
}

uint64_t (*sub_2282CBFFC(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282CC454;
}

uint64_t sub_2282CC060@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_2282CC0BC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_2282CB5D8();
  return sub_22819482C(a1);
}

uint64_t (*sub_2282CC12C(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_2282CC194;
}

uint64_t sub_2282CC198(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282CB5D8();
  }

  return result;
}

unint64_t sub_2282CC240()
{
  result = qword_27D827400;
  if (!qword_27D827400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827400);
  }

  return result;
}

unint64_t sub_2282CC294()
{
  result = qword_27D827408;
  if (!qword_27D827408)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D827408);
  }

  return result;
}

void sub_2282CC2DC(uint64_t a1)
{
  if (!qword_27D827410)
  {
    sub_2281E00EC(255, &qword_27D827418, &type metadata for MedicationSummaryView, MEMORY[0x277D83D88]);
    sub_2282CC364();
    v1 = sub_228391C40();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827410);
    }
  }
}

unint64_t sub_2282CC364()
{
  result = qword_27D827420;
  if (!qword_27D827420)
  {
    sub_2281E00EC(255, &qword_27D827418, &type metadata for MedicationSummaryView, MEMORY[0x277D83D88]);
    sub_2282CC400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827420);
  }

  return result;
}

unint64_t sub_2282CC400()
{
  result = qword_27D827428;
  if (!qword_27D827428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827428);
  }

  return result;
}

uint64_t CycleData.localizedDescription.getter()
{
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = CycleData.calculateTotalActiveDays()();
  v6 = *v0;
  v7 = [*v0 scheduleType];
  if (v7 == 7)
  {
    v8 = 1;
  }

  else
  {
    if (v7 != 8)
    {
      goto LABEL_19;
    }

    v8 = 0;
    active /= 7;
  }

  v9 = CycleData.calculateTotalPauseDays()();
  v10 = [v6 scheduleType];
  if (v10 != 7)
  {
    if (v10 == 8)
    {
      if ((v8 & 1) == 0)
      {
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();
        sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_228397F30;
        v20 = MEMORY[0x277D83B88];
        v21 = MEMORY[0x277D83C10];
        *(v19 + 56) = MEMORY[0x277D83B88];
        *(v19 + 64) = v21;
        *(v19 + 32) = active;
        *(v19 + 96) = v20;
        *(v19 + 104) = v21;
        *(v19 + 72) = v9 / 7;
        v14 = sub_228391FD0();

        goto LABEL_18;
      }

      goto LABEL_12;
    }

LABEL_19:
    result = sub_228393300();
    __break(1u);
    return result;
  }

  if (v8)
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_228397F30;
    v12 = MEMORY[0x277D83B88];
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v13;
    *(v11 + 32) = active;
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 72) = v9;
    v14 = sub_228391FD0();

LABEL_18:

    return v14;
  }

LABEL_12:
  sub_228391150();
  v15 = sub_2283911A0();
  v16 = sub_2283925C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22816B000, v15, v16, "Attempted to display mismatched units for localizeDescription of CycleData", v17, 2u);
    MEMORY[0x22AAB7B80](v17, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t CycleData.localizedNextPhaseDateChangeDescription.getter()
{
  sub_2282CE218(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12[-v1 - 8];
  v3 = sub_22838F440();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  CycleData.nextCycleChangeDate.getter(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2281982F0(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  CycleData.currentPhase.getter(v12);
  if (v14 == 255)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (!v13)
  {
    if (v14)
    {
      if (qword_280DDCF18 == -1)
      {
        goto LABEL_16;
      }
    }

    else if (qword_280DDCF18 == -1)
    {
LABEL_16:
      v10 = sub_22838F0C0();
      goto LABEL_17;
    }

    swift_once();
    goto LABEL_16;
  }

  if (v14)
  {
    if (qword_280DDCF18 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_14:
  sub_22838F0C0();
  sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F40;
  v9 = Date.formattedWithYearIfDifferent()();
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22818E210();
  *(v8 + 32) = v9;
  v10 = sub_228391FD0();

LABEL_17:
  (*(v4 + 8))(v6, v3);
  return v10;
}

void CycleData.currentPhase.getter(uint64_t a1@<X8>)
{
  v3 = sub_22838F440();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F430();
  v7 = *v1;
  v8 = sub_22838F380();
  type metadata accessor for CycleData(0);
  v9 = sub_22838F610();
  v10 = [v7 dayInCycleFor:v8 calendar:v9];

  if (!v10)
  {
    (*(v4 + 8))(v6, v3);
    *a1 = 0;
    *(a1 + 8) = 0;
    v15 = -1;
    goto LABEL_8;
  }

  v11 = [v10 daysIntoCycle];
  if ([v10 isInPauseInterval])
  {
    v12 = CycleData.calculateTotalPauseDays()();

    v13 = __OFSUB__(v11, v12);
    v14 = &v11[-v12];
    if (!v13)
    {
      if ((v14 & 0x8000000000000000) == 0 || (v13 = __OFSUB__(0, v14), v14 = -v14, !v13))
      {
        (*(v4 + 8))(v6, v3);
        *a1 = v11;
        *(a1 + 8) = v14;
        v15 = 1;
LABEL_8:
        *(a1 + 16) = v15;
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  active = CycleData.calculateTotalActiveDays()();

  v13 = __OFSUB__(v11, active);
  v17 = &v11[-active];
  if (v13)
  {
    goto LABEL_15;
  }

  if (v17 < 0)
  {
    v13 = __OFSUB__(0, v17);
    v17 = -v17;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  (*(v4 + 8))(v6, v3);
  *a1 = v11;
  *(a1 + 8) = v17;
  *(a1 + 16) = 0;
}

uint64_t CycleData.nextCycleChangeDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22838F440();
  v12 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6 - 8];
  CycleData.currentPhase.getter(v13);
  if (v15 == 255)
  {
    v11 = *(v12 + 56);

    return v11(a1, 1, 1, v2);
  }

  else
  {
    v8 = v14;
    sub_22838F430();
    sub_22838F3C0();
    v9 = *(v12 + 8);
    result = v9(v5, v2);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      sub_22838F350();
      v9(v7, v2);
      return (*(v12 + 56))(a1, 0, 1, v2);
    }
  }

  return result;
}

uint64_t CycleData.localizeCurrentPhaseDescription.getter()
{
  CycleData.currentPhase.getter(&v12);
  if (v14 == 255)
  {
    return 0;
  }

  v1 = v13;
  if (!v13)
  {
    if (v14)
    {
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }
    }

    else if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    swift_once();
    return sub_22838F0C0();
  }

  if (v14)
  {
    return CycleData.localizedNextPhaseDateChangeDescription.getter();
  }

  v3 = *v0;
  if ([*v0 scheduleType] == 7)
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    *(v4 + 16) = xmmword_228397F30;
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v1;
    v7 = CycleData.calculateTotalPauseDays()();
    v8 = [v3 scheduleType];
    if (v8 == 7)
    {
      goto LABEL_23;
    }

    if (v8 == 8)
    {
      v7 = 7 * (v7 / 7);
LABEL_23:
      *(v4 + 96) = v5;
      *(v4 + 104) = v6;
      *(v4 + 72) = v7;
      v10 = sub_228391FD0();

      return v10;
    }
  }

  else if ([v3 scheduleType] == 8)
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2282CE218(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    *(v4 + 16) = xmmword_228397F30;
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v1;
    v7 = CycleData.calculateTotalPauseDays()();
    v9 = [v3 scheduleType];
    if (v9 == 7)
    {
      goto LABEL_23;
    }

    if (v9 == 8)
    {
      v7 /= 7;
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_2283931D0();
    MEMORY[0x22AAB5C80](0xD000000000000059, 0x80000002283B2700);
    [v3 scheduleType];
    v11 = sub_228393420();
    MEMORY[0x22AAB5C80](v11);
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

void *sub_2282CD5E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB6D80](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_2282CD6F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 48); ; i += 3)
  {
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v12[0] = v7;
    v12[1] = v8;
    v12[2] = v9;

    v10 = a1(v12);
    if (v3)
    {
      break;
    }

    if (v10)
    {
      return v7;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2282CD7B8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Dosage(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_2282112C8(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_22821132C(v10);
      }

      if (v14)
      {
        break;
      }

      sub_22821132C(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_2282CEAC4(v10, v18, type metadata accessor for Dosage);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_2282CD948@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CycleData(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 scheduleType] - 7 > 1)
  {
    sub_228391150();
    v20 = sub_2283911A0();
    v21 = sub_2283925C0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29 = a2;
      v23 = a3;
      v24 = v22;
      *v22 = 0;
      v25 = v24;
      a3 = v23;
      a2 = v29;
      MEMORY[0x22AAB7B80](v25, -1, -1);
    }

    v26 = sub_22838F6C0();
    (*(*(v26 - 8) + 8))(a2, v26);
    (*(v7 + 8))(v9, v6);
    v19 = 1;
  }

  else
  {
    *v13 = a1;
    v14 = *(v10 + 24);
    v15 = sub_22838F6C0();
    v16 = *(v15 - 8);
    (*(v16 + 16))(&v13[v14], a2, v15);
    v17 = a1;
    *(v13 + 1) = _s19HealthMedicationsUI9CycleDataV22calculateTakeIntervals8scheduleSaySo028HKMedicationScheduleIntervalE0CGSo0jK0C_tFZ_0(v17);
    IntervalIndex8scheduleSiSo20HKMedicationScheduleC_tFZ_0 = _s19HealthMedicationsUI9CycleDataV26calculateLastIntervalIndex8scheduleSiSo20HKMedicationScheduleC_tFZ_0(v17);

    (*(v16 + 8))(a2, v15);
    *&v13[*(v10 + 28)] = IntervalIndex8scheduleSiSo20HKMedicationScheduleC_tFZ_0;
    sub_2282CEAC4(v13, a3, type metadata accessor for CycleData);
    v19 = 0;
  }

  return (*(v11 + 56))(a3, v19, 1, v10);
}

Swift::Int __swiftcall CycleData.calculateTotalActiveDays()()
{
  result = type metadata accessor for CycleData(0);
  v2 = *(v0 + *(result + 28));
  if (v2 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v3 = 0;
    if (v2)
    {
      v4 = 0;
      v17 = *(v0 + *(result + 28));
      v18 = *v0;
      do
      {
        v5 = [v18 timeIntervals];
        sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
        v6 = sub_2283921A0();

        if (v6 >> 62)
        {
          result = sub_2283930D0();
          v7 = result;
          if (!result)
          {
LABEL_20:

            v15 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v7)
          {
            goto LABEL_20;
          }
        }

        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x22AAB6D80](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            result = *(v6 + 8 * v8 + 32);
          }

          v9 = result;
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v11 = [result cycleIndex];
          if (v11)
          {
            v12 = v11;
            v13 = [v11 integerValue];

            if (v13 == v4)
            {
              break;
            }
          }

          ++v8;
          if (v10 == v7)
          {
            goto LABEL_20;
          }
        }

        v14 = [v9 cycleIntervalDays];

        if (v14)
        {
          v15 = [v14 integerValue];
        }

        else
        {
          v15 = 0;
        }

LABEL_21:
        v16 = __OFADD__(v3, v15);
        v3 += v15;
        if (v16)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        ++v4;
      }

      while (v4 != v17);
    }

    return v3;
  }

  return result;
}

Swift::Int __swiftcall CycleData.calculateTotalPauseDays()()
{
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = [*v0 timeIntervals];
  sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
  v7 = sub_2283921A0();

  if (v7 >> 62)
  {
    v8 = sub_2283930D0();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = [v5 timeIntervals];
    v5 = sub_2283921A0();

    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v5 + 8 * v10 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return result;
    }
  }

  v13 = MEMORY[0x22AAB6D80](v10, v5);
LABEL_8:
  v14 = v13;

  v15 = [v14 cycleIntervalDays];

  if (v15)
  {
    v16 = [v15 integerValue];

    return v16;
  }

  else
  {
    sub_228391150();
    v17 = sub_2283911A0();
    v18 = sub_2283925C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22816B000, v17, v18, "Failed to get the cycle Interval days for the last time interval on the schedule during CycleData calculation.", v19, 2u);
      MEMORY[0x22AAB7B80](v19, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }
}